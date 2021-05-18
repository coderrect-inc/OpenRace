; ModuleID = 'integration/dataracebench/DRB014-outofbounds-orig-yes.c'
source_filename = "integration/dataracebench/DRB014-outofbounds-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [69 x i8] c";integration/dataracebench/DRB014-outofbounds-orig-yes.c;main;72;1;;\00", align 1
@2 = private unnamed_addr constant [70 x i8] c";integration/dataracebench/DRB014-outofbounds-orig-yes.c;main;72;36;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"b[50][50]=%f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
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
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !30
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !15, metadata !DIExpression()), !dbg !34
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !37
  %2 = bitcast i32* %i to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !39
  %3 = bitcast i32* %j to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %j, metadata !18, metadata !DIExpression()), !dbg !40
  %4 = bitcast i32* %n to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %n, metadata !19, metadata !DIExpression()), !dbg !42
  store i32 100, i32* %n, align 4, !dbg !42, !tbaa !30
  %5 = bitcast i32* %m to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %m, metadata !20, metadata !DIExpression()), !dbg !43
  store i32 100, i32* %m, align 4, !dbg !43, !tbaa !30
  %6 = load i32, i32* %n, align 4, !dbg !44, !tbaa !30
  %7 = zext i32 %6 to i64, !dbg !45
  %8 = load i32, i32* %m, align 4, !dbg !46, !tbaa !30
  %9 = zext i32 %8 to i64, !dbg !45
  %10 = call i8* @llvm.stacksave(), !dbg !45
  store i8* %10, i8** %saved_stack, align 8, !dbg !45
  %11 = mul nuw i64 %7, %9, !dbg !45
  %vla = alloca double, i64 %11, align 16, !dbg !45
  store i64 %7, i64* %__vla_expr0, align 8, !dbg !45
  store i64 %9, i64* %__vla_expr1, align 8, !dbg !45
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !21, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !23, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata double* %vla, metadata !24, metadata !DIExpression()), !dbg !48
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !49
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @1, i32 0, i32 0), i8** %12, align 8, !dbg !49, !tbaa !50
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i64, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %n, i32* %m, i64 %7, i64 %9, double* %vla), !dbg !49
  %13 = mul nsw i64 50, %9, !dbg !52
  %arrayidx = getelementptr inbounds double, double* %vla, i64 %13, !dbg !52
  %arrayidx1 = getelementptr inbounds double, double* %arrayidx, i64 50, !dbg !52
  %14 = load double, double* %arrayidx1, align 8, !dbg !52, !tbaa !53
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), double %14), !dbg !55
  store i32 0, i32* %retval, align 4, !dbg !56
  %15 = load i8*, i8** %saved_stack, align 8, !dbg !57
  call void @llvm.stackrestore(i8* %15), !dbg !57
  %16 = bitcast i32* %m to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #3, !dbg !57
  %17 = bitcast i32* %n to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #3, !dbg !57
  %18 = bitcast i32* %j to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3, !dbg !57
  %19 = bitcast i32* %i to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #3, !dbg !57
  %20 = load i32, i32* %retval, align 4, !dbg !57
  ret i32 %20, !dbg !57
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n, i32* dereferenceable(4) %m, i64 %vla, i64 %vla1, double* dereferenceable(8) %b) #4 !dbg !58 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.3 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j = alloca i32, align 4
  %i6 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !68, metadata !DIExpression()), !dbg !83
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !69, metadata !DIExpression()), !dbg !83
  store i32* %n, i32** %n.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !70, metadata !DIExpression()), !dbg !84
  store i32* %m, i32** %m.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !71, metadata !DIExpression()), !dbg !85
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !72, metadata !DIExpression()), !dbg !83
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !73, metadata !DIExpression()), !dbg !83
  store double* %b, double** %b.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !74, metadata !DIExpression()), !dbg !88
  %2 = load i32*, i32** %n.addr, align 8, !dbg !89, !tbaa !35
  %3 = load i32*, i32** %m.addr, align 8, !dbg !89, !tbaa !35
  %4 = load i64, i64* %vla.addr, align 8, !dbg !89, !tbaa !86
  %5 = load i64, i64* %vla.addr2, align 8, !dbg !89, !tbaa !86
  %6 = load double*, double** %b.addr, align 8, !dbg !89, !tbaa !35
  %7 = bitcast i32* %.omp.iv to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !75, metadata !DIExpression()), !dbg !83
  %8 = bitcast i32* %.capture_expr. to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !76, metadata !DIExpression()), !dbg !83
  %9 = load i32, i32* %2, align 4, !dbg !90, !tbaa !30
  store i32 %9, i32* %.capture_expr., align 4, !dbg !90, !tbaa !30
  %10 = bitcast i32* %.capture_expr.3 to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !76, metadata !DIExpression()), !dbg !83
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !90, !tbaa !30
  %sub = sub nsw i32 %11, 1, !dbg !89
  %sub4 = sub nsw i32 %sub, 1, !dbg !89
  %add = add nsw i32 %sub4, 1, !dbg !89
  %div = sdiv i32 %add, 1, !dbg !89
  %sub5 = sub nsw i32 %div, 1, !dbg !89
  store i32 %sub5, i32* %.capture_expr.3, align 4, !dbg !89, !tbaa !30
  %12 = bitcast i32* %i to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %i, metadata !77, metadata !DIExpression()), !dbg !83
  store i32 1, i32* %i, align 4, !dbg !91, !tbaa !30
  %13 = bitcast i32* %i to i8*, !dbg !89
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #3, !dbg !89
  %14 = load i32, i32* %.capture_expr., align 4, !dbg !90, !tbaa !30
  %cmp = icmp slt i32 1, %14, !dbg !89
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !89

omp.precond.then:                                 ; preds = %entry
  %15 = bitcast i32* %.omp.lb to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !78, metadata !DIExpression()), !dbg !83
  store i32 0, i32* %.omp.lb, align 4, !dbg !92, !tbaa !30
  %16 = bitcast i32* %.omp.ub to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !79, metadata !DIExpression()), !dbg !83
  %17 = load i32, i32* %.capture_expr.3, align 4, !dbg !89, !tbaa !30
  store i32 %17, i32* %.omp.ub, align 4, !dbg !92, !tbaa !30
  %18 = bitcast i32* %.omp.stride to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !80, metadata !DIExpression()), !dbg !83
  store i32 1, i32* %.omp.stride, align 4, !dbg !92, !tbaa !30
  %19 = bitcast i32* %.omp.is_last to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !81, metadata !DIExpression()), !dbg !83
  store i32 0, i32* %.omp.is_last, align 4, !dbg !92, !tbaa !30
  %20 = bitcast i32* %j to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %j, metadata !82, metadata !DIExpression()), !dbg !83
  %21 = bitcast i32* %i6 to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #3, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %i6, metadata !77, metadata !DIExpression()), !dbg !83
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !89
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @1, i32 0, i32 0), i8** %22, align 8, !dbg !89, !tbaa !50
  %23 = load i32*, i32** %.global_tid..addr, align 8, !dbg !89
  %24 = load i32, i32* %23, align 4, !dbg !89, !tbaa !30
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %24, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !89
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !92, !tbaa !30
  %26 = load i32, i32* %.capture_expr.3, align 4, !dbg !89, !tbaa !30
  %cmp7 = icmp sgt i32 %25, %26, !dbg !92
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !92

cond.true:                                        ; preds = %omp.precond.then
  %27 = load i32, i32* %.capture_expr.3, align 4, !dbg !89, !tbaa !30
  br label %cond.end, !dbg !92

cond.false:                                       ; preds = %omp.precond.then
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !92, !tbaa !30
  br label %cond.end, !dbg !92

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ %28, %cond.false ], !dbg !92
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !92, !tbaa !30
  %29 = load i32, i32* %.omp.lb, align 4, !dbg !92, !tbaa !30
  store i32 %29, i32* %.omp.iv, align 4, !dbg !92, !tbaa !30
  br label %omp.inner.for.cond, !dbg !89

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %30 = load i32, i32* %.omp.iv, align 4, !dbg !92, !tbaa !30
  %31 = load i32, i32* %.omp.ub, align 4, !dbg !92, !tbaa !30
  %cmp8 = icmp sle i32 %30, %31, !dbg !89
  br i1 %cmp8, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !89

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !89

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %32 = load i32, i32* %.omp.iv, align 4, !dbg !92, !tbaa !30
  %mul = mul nsw i32 %32, 1, !dbg !91
  %add9 = add nsw i32 1, %mul, !dbg !91
  store i32 %add9, i32* %i6, align 4, !dbg !91, !tbaa !30
  store i32 0, i32* %j, align 4, !dbg !93, !tbaa !30
  br label %for.cond, !dbg !95

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %33 = load i32, i32* %j, align 4, !dbg !96, !tbaa !30
  %34 = load i32, i32* %3, align 4, !dbg !98, !tbaa !30
  %cmp10 = icmp slt i32 %33, %34, !dbg !99
  br i1 %cmp10, label %for.body, label %for.end, !dbg !100

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %i6, align 4, !dbg !101, !tbaa !30
  %idxprom = sext i32 %35 to i64, !dbg !102
  %36 = mul nsw i64 %idxprom, %5, !dbg !102
  %arrayidx = getelementptr inbounds double, double* %6, i64 %36, !dbg !102
  %37 = load i32, i32* %j, align 4, !dbg !103, !tbaa !30
  %sub11 = sub nsw i32 %37, 1, !dbg !104
  %idxprom12 = sext i32 %sub11 to i64, !dbg !102
  %arrayidx13 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom12, !dbg !102
  %38 = load double, double* %arrayidx13, align 8, !dbg !102, !tbaa !53
  %39 = load i32, i32* %i6, align 4, !dbg !105, !tbaa !30
  %idxprom14 = sext i32 %39 to i64, !dbg !106
  %40 = mul nsw i64 %idxprom14, %5, !dbg !106
  %arrayidx15 = getelementptr inbounds double, double* %6, i64 %40, !dbg !106
  %41 = load i32, i32* %j, align 4, !dbg !107, !tbaa !30
  %idxprom16 = sext i32 %41 to i64, !dbg !106
  %arrayidx17 = getelementptr inbounds double, double* %arrayidx15, i64 %idxprom16, !dbg !106
  store double %38, double* %arrayidx17, align 8, !dbg !108, !tbaa !53
  br label %for.inc, !dbg !106

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %j, align 4, !dbg !109, !tbaa !30
  %inc = add nsw i32 %42, 1, !dbg !109
  store i32 %inc, i32* %j, align 4, !dbg !109, !tbaa !30
  br label %for.cond, !dbg !110, !llvm.loop !111

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !112

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !113

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %43 = load i32, i32* %.omp.iv, align 4, !dbg !92, !tbaa !30
  %add18 = add nsw i32 %43, 1, !dbg !89
  store i32 %add18, i32* %.omp.iv, align 4, !dbg !89, !tbaa !30
  br label %omp.inner.for.cond, !dbg !113, !llvm.loop !114

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !113

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %44 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !113
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @2, i32 0, i32 0), i8** %44, align 8, !dbg !113, !tbaa !50
  %45 = load i32*, i32** %.global_tid..addr, align 8, !dbg !113
  %46 = load i32, i32* %45, align 4, !dbg !113, !tbaa !30
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %46), !dbg !113
  %47 = bitcast i32* %i6 to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #3, !dbg !113
  %48 = bitcast i32* %j to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #3, !dbg !113
  %49 = bitcast i32* %.omp.is_last to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #3, !dbg !113
  %50 = bitcast i32* %.omp.stride to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #3, !dbg !113
  %51 = bitcast i32* %.omp.ub to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #3, !dbg !113
  %52 = bitcast i32* %.omp.lb to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #3, !dbg !113
  br label %omp.precond.end, !dbg !113

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %53 = bitcast i32* %.capture_expr.3 to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #3, !dbg !113
  %54 = bitcast i32* %.capture_expr. to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #3, !dbg !113
  %55 = bitcast i32* %.omp.iv to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #3, !dbg !113
  ret void, !dbg !116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n, i32* dereferenceable(4) %m, i64 %vla, i64 %vla1, double* dereferenceable(8) %b) #4 !dbg !117 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !119, metadata !DIExpression()), !dbg !126
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !120, metadata !DIExpression()), !dbg !126
  store i32* %n, i32** %n.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !121, metadata !DIExpression()), !dbg !126
  store i32* %m, i32** %m.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !122, metadata !DIExpression()), !dbg !126
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !123, metadata !DIExpression()), !dbg !126
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !124, metadata !DIExpression()), !dbg !126
  store double* %b, double** %b.addr, align 8, !tbaa !35
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !125, metadata !DIExpression()), !dbg !126
  %0 = load i32*, i32** %n.addr, align 8, !dbg !127, !tbaa !35
  %1 = load i32*, i32** %m.addr, align 8, !dbg !127, !tbaa !35
  %2 = load i64, i64* %vla.addr, align 8, !dbg !127, !tbaa !86
  %3 = load i64, i64* %vla.addr2, align 8, !dbg !127, !tbaa !86
  %4 = load double*, double** %b.addr, align 8, !dbg !127, !tbaa !35
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !127, !tbaa !35
  %6 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !127, !tbaa !35
  %7 = load i32*, i32** %n.addr, align 8, !dbg !127, !tbaa !35
  %8 = load i32*, i32** %m.addr, align 8, !dbg !127, !tbaa !35
  %9 = load double*, double** %b.addr, align 8, !dbg !127, !tbaa !35
  call void @.omp_outlined._debug__(i32* %5, i32* %6, i32* %7, i32* %8, i64 %2, i64 %3, double* %9) #3, !dbg !127
  ret void, !dbg !127
}

declare !callback !128 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB014-outofbounds-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 67, type: !8, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !23, !24}
!15 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 67, type: !10)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 67, type: !11)
!17 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 69, type: !10)
!18 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 69, type: !10)
!19 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 70, type: !10)
!20 = !DILocalVariable(name: "m", scope: !7, file: !1, line: 70, type: !10)
!21 = !DILocalVariable(name: "__vla_expr0", scope: !7, type: !22, flags: DIFlagArtificial)
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DILocalVariable(name: "__vla_expr1", scope: !7, type: !22, flags: DIFlagArtificial)
!24 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 71, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, elements: !27)
!26 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!27 = !{!28, !29}
!28 = !DISubrange(count: !21)
!29 = !DISubrange(count: !23)
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C/C++ TBAA"}
!34 = !DILocation(line: 67, column: 14, scope: !7)
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !32, i64 0}
!37 = !DILocation(line: 67, column: 26, scope: !7)
!38 = !DILocation(line: 69, column: 3, scope: !7)
!39 = !DILocation(line: 69, column: 7, scope: !7)
!40 = !DILocation(line: 69, column: 9, scope: !7)
!41 = !DILocation(line: 70, column: 3, scope: !7)
!42 = !DILocation(line: 70, column: 7, scope: !7)
!43 = !DILocation(line: 70, column: 14, scope: !7)
!44 = !DILocation(line: 71, column: 12, scope: !7)
!45 = !DILocation(line: 71, column: 3, scope: !7)
!46 = !DILocation(line: 71, column: 15, scope: !7)
!47 = !DILocation(line: 0, scope: !7)
!48 = !DILocation(line: 71, column: 10, scope: !7)
!49 = !DILocation(line: 72, column: 1, scope: !7)
!50 = !{!51, !36, i64 16}
!51 = !{!"ident_t", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !36, i64 16}
!52 = !DILocation(line: 77, column: 28, scope: !7)
!53 = !{!54, !54, i64 0}
!54 = !{!"double", !32, i64 0}
!55 = !DILocation(line: 77, column: 3, scope: !7)
!56 = !DILocation(line: 79, column: 3, scope: !7)
!57 = !DILocation(line: 80, column: 1, scope: !7)
!58 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 73, type: !59, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !67)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !61, !61, !65, !65, !22, !22, !66}
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!65 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !26, size: 64)
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !76, !77, !78, !79, !80, !81, !82, !77}
!68 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !58, type: !61, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !58, type: !61, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: "n", arg: 3, scope: !58, file: !1, line: 70, type: !65)
!71 = !DILocalVariable(name: "m", arg: 4, scope: !58, file: !1, line: 70, type: !65)
!72 = !DILocalVariable(name: "vla", arg: 5, scope: !58, type: !22, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "vla", arg: 6, scope: !58, type: !22, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "b", arg: 7, scope: !58, file: !1, line: 71, type: !66)
!75 = !DILocalVariable(name: ".omp.iv", scope: !58, type: !10, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".capture_expr.", scope: !58, type: !10, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "i", scope: !58, type: !10, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".omp.lb", scope: !58, type: !10, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".omp.ub", scope: !58, type: !10, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".omp.stride", scope: !58, type: !10, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.is_last", scope: !58, type: !10, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "j", scope: !58, type: !10, flags: DIFlagArtificial)
!83 = !DILocation(line: 0, scope: !58)
!84 = !DILocation(line: 70, column: 7, scope: !58)
!85 = !DILocation(line: 70, column: 14, scope: !58)
!86 = !{!87, !87, i64 0}
!87 = !{!"long", !32, i64 0}
!88 = !DILocation(line: 71, column: 10, scope: !58)
!89 = !DILocation(line: 73, column: 3, scope: !58)
!90 = !DILocation(line: 73, column: 14, scope: !58)
!91 = !DILocation(line: 73, column: 16, scope: !58)
!92 = !DILocation(line: 73, column: 8, scope: !58)
!93 = !DILocation(line: 74, column: 11, scope: !94)
!94 = distinct !DILexicalBlock(scope: !58, file: !1, line: 74, column: 5)
!95 = !DILocation(line: 74, column: 10, scope: !94)
!96 = !DILocation(line: 74, column: 14, scope: !97)
!97 = distinct !DILexicalBlock(scope: !94, file: !1, line: 74, column: 5)
!98 = !DILocation(line: 74, column: 16, scope: !97)
!99 = !DILocation(line: 74, column: 15, scope: !97)
!100 = !DILocation(line: 74, column: 5, scope: !94)
!101 = !DILocation(line: 75, column: 17, scope: !97)
!102 = !DILocation(line: 75, column: 15, scope: !97)
!103 = !DILocation(line: 75, column: 20, scope: !97)
!104 = !DILocation(line: 75, column: 21, scope: !97)
!105 = !DILocation(line: 75, column: 9, scope: !97)
!106 = !DILocation(line: 75, column: 7, scope: !97)
!107 = !DILocation(line: 75, column: 12, scope: !97)
!108 = !DILocation(line: 75, column: 14, scope: !97)
!109 = !DILocation(line: 74, column: 19, scope: !97)
!110 = !DILocation(line: 74, column: 5, scope: !97)
!111 = distinct !{!111, !100, !112}
!112 = !DILocation(line: 75, column: 23, scope: !94)
!113 = !DILocation(line: 72, column: 1, scope: !58)
!114 = distinct !{!114, !113, !115}
!115 = !DILocation(line: 72, column: 36, scope: !58)
!116 = !DILocation(line: 75, column: 23, scope: !58)
!117 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 73, type: !59, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !118)
!118 = !{!119, !120, !121, !122, !123, !124, !125}
!119 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !117, type: !61, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !117, type: !61, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: "n", arg: 3, scope: !117, type: !65, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: "m", arg: 4, scope: !117, type: !65, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "vla", arg: 5, scope: !117, type: !22, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "vla", arg: 6, scope: !117, type: !22, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: "b", arg: 7, scope: !117, type: !66, flags: DIFlagArtificial)
!126 = !DILocation(line: 0, scope: !117)
!127 = !DILocation(line: 73, column: 3, scope: !117)
!128 = !{!129}
!129 = !{i64 2, i64 -1, i64 -1, i1 true}
