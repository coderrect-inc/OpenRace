; ModuleID = 'DRB032-truedepfirstdimension-var-yes.c'
source_filename = "DRB032-truedepfirstdimension-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [52 x i8] c";DRB032-truedepfirstdimension-var-yes.c;main;66;1;;\00", align 1
@2 = private unnamed_addr constant [53 x i8] c";DRB032-truedepfirstdimension-var-yes.c;main;66;36;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
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
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %j, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %len, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 1000, i32* %len, align 4, !dbg !23
  %2 = load i32, i32* %argc.addr, align 4, !dbg !24
  %cmp = icmp sgt i32 %2, 1, !dbg !26
  br i1 %cmp, label %if.then, label %if.end, !dbg !27

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %argv.addr, align 8, !dbg !28
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !28
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !28
  %call = call i32 @atoi(i8* %4) #6, !dbg !29
  store i32 %call, i32* %len, align 4, !dbg !30
  br label %if.end, !dbg !31

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %n, metadata !32, metadata !DIExpression()), !dbg !33
  %5 = load i32, i32* %len, align 4, !dbg !34
  store i32 %5, i32* %n, align 4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %m, metadata !35, metadata !DIExpression()), !dbg !36
  %6 = load i32, i32* %len, align 4, !dbg !37
  store i32 %6, i32* %m, align 4, !dbg !36
  %7 = load i32, i32* %len, align 4, !dbg !38
  %8 = zext i32 %7 to i64, !dbg !39
  %9 = load i32, i32* %len, align 4, !dbg !40
  %10 = zext i32 %9 to i64, !dbg !39
  %11 = call i8* @llvm.stacksave(), !dbg !39
  store i8* %11, i8** %saved_stack, align 8, !dbg !39
  %12 = mul nuw i64 %8, %10, !dbg !39
  %vla = alloca double, i64 %12, align 16, !dbg !39
  store i64 %8, i64* %__vla_expr0, align 8, !dbg !39
  store i64 %10, i64* %__vla_expr1, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !41, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !44, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata double* %vla, metadata !45, metadata !DIExpression()), !dbg !51
  store i32 0, i32* %i, align 4, !dbg !52
  br label %for.cond, !dbg !54

for.cond:                                         ; preds = %for.inc8, %if.end
  %13 = load i32, i32* %i, align 4, !dbg !55
  %14 = load i32, i32* %n, align 4, !dbg !57
  %cmp1 = icmp slt i32 %13, %14, !dbg !58
  br i1 %cmp1, label %for.body, label %for.end10, !dbg !59

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !60
  br label %for.cond2, !dbg !62

for.cond2:                                        ; preds = %for.inc, %for.body
  %15 = load i32, i32* %j, align 4, !dbg !63
  %16 = load i32, i32* %m, align 4, !dbg !65
  %cmp3 = icmp slt i32 %15, %16, !dbg !66
  br i1 %cmp3, label %for.body4, label %for.end, !dbg !67

for.body4:                                        ; preds = %for.cond2
  %17 = load i32, i32* %i, align 4, !dbg !68
  %idxprom = sext i32 %17 to i64, !dbg !69
  %18 = mul nsw i64 %idxprom, %10, !dbg !69
  %arrayidx5 = getelementptr inbounds double, double* %vla, i64 %18, !dbg !69
  %19 = load i32, i32* %j, align 4, !dbg !70
  %idxprom6 = sext i32 %19 to i64, !dbg !69
  %arrayidx7 = getelementptr inbounds double, double* %arrayidx5, i64 %idxprom6, !dbg !69
  store double 5.000000e-01, double* %arrayidx7, align 8, !dbg !71
  br label %for.inc, !dbg !69

for.inc:                                          ; preds = %for.body4
  %20 = load i32, i32* %j, align 4, !dbg !72
  %inc = add nsw i32 %20, 1, !dbg !72
  store i32 %inc, i32* %j, align 4, !dbg !72
  br label %for.cond2, !dbg !73, !llvm.loop !74

for.end:                                          ; preds = %for.cond2
  br label %for.inc8, !dbg !75

for.inc8:                                         ; preds = %for.end
  %21 = load i32, i32* %i, align 4, !dbg !76
  %inc9 = add nsw i32 %21, 1, !dbg !76
  store i32 %inc9, i32* %i, align 4, !dbg !76
  br label %for.cond, !dbg !77, !llvm.loop !78

for.end10:                                        ; preds = %for.cond
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !80
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1, i32 0, i32 0), i8** %22, align 8, !dbg !80
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i64, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %n, i32* %m, i64 %8, i64 %10, double* %vla), !dbg !80
  store i32 0, i32* %retval, align 4, !dbg !81
  %23 = load i8*, i8** %saved_stack, align 8, !dbg !82
  call void @llvm.stackrestore(i8* %23), !dbg !82
  %24 = load i32, i32* %retval, align 4, !dbg !82
  ret i32 %24, !dbg !82
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n, i32* dereferenceable(4) %m, i64 %vla, i64 %vla1, double* dereferenceable(8) %b) #4 !dbg !83 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !92, metadata !DIExpression()), !dbg !93
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !94, metadata !DIExpression()), !dbg !93
  store i32* %n, i32** %n.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !95, metadata !DIExpression()), !dbg !96
  store i32* %m, i32** %m.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !97, metadata !DIExpression()), !dbg !98
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !99, metadata !DIExpression()), !dbg !93
  store i64 %vla1, i64* %vla.addr2, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !100, metadata !DIExpression()), !dbg !93
  store double* %b, double** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !101, metadata !DIExpression()), !dbg !102
  %2 = load i32*, i32** %n.addr, align 8, !dbg !103
  %3 = load i32*, i32** %m.addr, align 8, !dbg !103
  %4 = load i64, i64* %vla.addr, align 8, !dbg !103
  %5 = load i64, i64* %vla.addr2, align 8, !dbg !103
  %6 = load double*, double** %b.addr, align 8, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !104, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !105, metadata !DIExpression()), !dbg !93
  %7 = load i32, i32* %2, align 4, !dbg !106
  store i32 %7, i32* %.capture_expr., align 4, !dbg !106
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !105, metadata !DIExpression()), !dbg !93
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !106
  %sub = sub nsw i32 %8, 1, !dbg !103
  %sub4 = sub nsw i32 %sub, 1, !dbg !103
  %add = add nsw i32 %sub4, 1, !dbg !103
  %div = sdiv i32 %add, 1, !dbg !103
  %sub5 = sub nsw i32 %div, 1, !dbg !103
  store i32 %sub5, i32* %.capture_expr.3, align 4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %i, metadata !107, metadata !DIExpression()), !dbg !93
  store i32 1, i32* %i, align 4, !dbg !108
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !106
  %cmp = icmp slt i32 1, %9, !dbg !103
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !103

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !109, metadata !DIExpression()), !dbg !93
  store i32 0, i32* %.omp.lb, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !111, metadata !DIExpression()), !dbg !93
  %10 = load i32, i32* %.capture_expr.3, align 4, !dbg !103
  store i32 %10, i32* %.omp.ub, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !112, metadata !DIExpression()), !dbg !93
  store i32 1, i32* %.omp.stride, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !113, metadata !DIExpression()), !dbg !93
  store i32 0, i32* %.omp.is_last, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %j, metadata !114, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %i6, metadata !107, metadata !DIExpression()), !dbg !93
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !103
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !103
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !103
  %13 = load i32, i32* %12, align 4, !dbg !103
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !103
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !110
  %15 = load i32, i32* %.capture_expr.3, align 4, !dbg !103
  %cmp7 = icmp sgt i32 %14, %15, !dbg !110
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !110

cond.true:                                        ; preds = %omp.precond.then
  %16 = load i32, i32* %.capture_expr.3, align 4, !dbg !103
  br label %cond.end, !dbg !110

cond.false:                                       ; preds = %omp.precond.then
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !110
  br label %cond.end, !dbg !110

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !110
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !110
  %18 = load i32, i32* %.omp.lb, align 4, !dbg !110
  store i32 %18, i32* %.omp.iv, align 4, !dbg !110
  br label %omp.inner.for.cond, !dbg !103

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !110
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !110
  %cmp8 = icmp sle i32 %19, %20, !dbg !103
  br i1 %cmp8, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !103

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !110
  %mul = mul nsw i32 %21, 1, !dbg !108
  %add9 = add nsw i32 1, %mul, !dbg !108
  store i32 %add9, i32* %i6, align 4, !dbg !108
  store i32 1, i32* %j, align 4, !dbg !115
  br label %for.cond, !dbg !117

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %22 = load i32, i32* %j, align 4, !dbg !118
  %23 = load i32, i32* %3, align 4, !dbg !120
  %cmp10 = icmp slt i32 %22, %23, !dbg !121
  br i1 %cmp10, label %for.body, label %for.end, !dbg !122

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i6, align 4, !dbg !123
  %sub11 = sub nsw i32 %24, 1, !dbg !124
  %idxprom = sext i32 %sub11 to i64, !dbg !125
  %25 = mul nsw i64 %idxprom, %5, !dbg !125
  %arrayidx = getelementptr inbounds double, double* %6, i64 %25, !dbg !125
  %26 = load i32, i32* %j, align 4, !dbg !126
  %sub12 = sub nsw i32 %26, 1, !dbg !127
  %idxprom13 = sext i32 %sub12 to i64, !dbg !125
  %arrayidx14 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom13, !dbg !125
  %27 = load double, double* %arrayidx14, align 8, !dbg !125
  %28 = load i32, i32* %i6, align 4, !dbg !128
  %idxprom15 = sext i32 %28 to i64, !dbg !129
  %29 = mul nsw i64 %idxprom15, %5, !dbg !129
  %arrayidx16 = getelementptr inbounds double, double* %6, i64 %29, !dbg !129
  %30 = load i32, i32* %j, align 4, !dbg !130
  %idxprom17 = sext i32 %30 to i64, !dbg !129
  %arrayidx18 = getelementptr inbounds double, double* %arrayidx16, i64 %idxprom17, !dbg !129
  store double %27, double* %arrayidx18, align 8, !dbg !131
  br label %for.inc, !dbg !129

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %j, align 4, !dbg !132
  %inc = add nsw i32 %31, 1, !dbg !132
  store i32 %inc, i32* %j, align 4, !dbg !132
  br label %for.cond, !dbg !133, !llvm.loop !134

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !135

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !136

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %32 = load i32, i32* %.omp.iv, align 4, !dbg !110
  %add19 = add nsw i32 %32, 1, !dbg !103
  store i32 %add19, i32* %.omp.iv, align 4, !dbg !103
  br label %omp.inner.for.cond, !dbg !136, !llvm.loop !137

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !136

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %33 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !136
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2, i32 0, i32 0), i8** %33, align 8, !dbg !136
  %34 = load i32*, i32** %.global_tid..addr, align 8, !dbg !136
  %35 = load i32, i32* %34, align 4, !dbg !136
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %35), !dbg !136
  br label %omp.precond.end, !dbg !136

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n, i32* dereferenceable(4) %m, i64 %vla, i64 %vla1, double* dereferenceable(8) %b) #4 !dbg !140 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !141, metadata !DIExpression()), !dbg !142
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !143, metadata !DIExpression()), !dbg !142
  store i32* %n, i32** %n.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !144, metadata !DIExpression()), !dbg !142
  store i32* %m, i32** %m.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !145, metadata !DIExpression()), !dbg !142
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !146, metadata !DIExpression()), !dbg !142
  store i64 %vla1, i64* %vla.addr2, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !147, metadata !DIExpression()), !dbg !142
  store double* %b, double** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !148, metadata !DIExpression()), !dbg !142
  %0 = load i32*, i32** %n.addr, align 8, !dbg !149
  %1 = load i32*, i32** %m.addr, align 8, !dbg !149
  %2 = load i64, i64* %vla.addr, align 8, !dbg !149
  %3 = load i64, i64* %vla.addr2, align 8, !dbg !149
  %4 = load double*, double** %b.addr, align 8, !dbg !149
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !149
  %6 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !149
  %7 = load i32*, i32** %n.addr, align 8, !dbg !149
  %8 = load i32*, i32** %m.addr, align 8, !dbg !149
  %9 = load double*, double** %b.addr, align 8, !dbg !149
  call void @.omp_outlined._debug__(i32* %5, i32* %6, i32* %7, i32* %8, i64 %2, i64 %3, double* %9) #3, !dbg !149
  ret void, !dbg !149
}

declare !callback !150 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB032-truedepfirstdimension-var-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !8, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 52, type: !10)
!15 = !DILocation(line: 52, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 52, type: !11)
!17 = !DILocation(line: 52, column: 26, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 54, type: !10)
!19 = !DILocation(line: 54, column: 7, scope: !7)
!20 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 54, type: !10)
!21 = !DILocation(line: 54, column: 9, scope: !7)
!22 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 55, type: !10)
!23 = !DILocation(line: 55, column: 7, scope: !7)
!24 = !DILocation(line: 56, column: 7, scope: !25)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 56, column: 7)
!26 = !DILocation(line: 56, column: 11, scope: !25)
!27 = !DILocation(line: 56, column: 7, scope: !7)
!28 = !DILocation(line: 57, column: 16, scope: !25)
!29 = !DILocation(line: 57, column: 11, scope: !25)
!30 = !DILocation(line: 57, column: 9, scope: !25)
!31 = !DILocation(line: 57, column: 5, scope: !25)
!32 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 59, type: !10)
!33 = !DILocation(line: 59, column: 7, scope: !7)
!34 = !DILocation(line: 59, column: 9, scope: !7)
!35 = !DILocalVariable(name: "m", scope: !7, file: !1, line: 59, type: !10)
!36 = !DILocation(line: 59, column: 14, scope: !7)
!37 = !DILocation(line: 59, column: 16, scope: !7)
!38 = !DILocation(line: 60, column: 12, scope: !7)
!39 = !DILocation(line: 60, column: 3, scope: !7)
!40 = !DILocation(line: 60, column: 17, scope: !7)
!41 = !DILocalVariable(name: "__vla_expr0", scope: !7, type: !42, flags: DIFlagArtificial)
!42 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!43 = !DILocation(line: 0, scope: !7)
!44 = !DILocalVariable(name: "__vla_expr1", scope: !7, type: !42, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 60, type: !46)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, elements: !48)
!47 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!48 = !{!49, !50}
!49 = !DISubrange(count: !41)
!50 = !DISubrange(count: !44)
!51 = !DILocation(line: 60, column: 10, scope: !7)
!52 = !DILocation(line: 62, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !7, file: !1, line: 62, column: 3)
!54 = !DILocation(line: 62, column: 8, scope: !53)
!55 = !DILocation(line: 62, column: 13, scope: !56)
!56 = distinct !DILexicalBlock(scope: !53, file: !1, line: 62, column: 3)
!57 = !DILocation(line: 62, column: 15, scope: !56)
!58 = !DILocation(line: 62, column: 14, scope: !56)
!59 = !DILocation(line: 62, column: 3, scope: !53)
!60 = !DILocation(line: 63, column: 11, scope: !61)
!61 = distinct !DILexicalBlock(scope: !56, file: !1, line: 63, column: 5)
!62 = !DILocation(line: 63, column: 10, scope: !61)
!63 = !DILocation(line: 63, column: 15, scope: !64)
!64 = distinct !DILexicalBlock(scope: !61, file: !1, line: 63, column: 5)
!65 = !DILocation(line: 63, column: 17, scope: !64)
!66 = !DILocation(line: 63, column: 16, scope: !64)
!67 = !DILocation(line: 63, column: 5, scope: !61)
!68 = !DILocation(line: 64, column: 9, scope: !64)
!69 = !DILocation(line: 64, column: 7, scope: !64)
!70 = !DILocation(line: 64, column: 12, scope: !64)
!71 = !DILocation(line: 64, column: 15, scope: !64)
!72 = !DILocation(line: 63, column: 21, scope: !64)
!73 = !DILocation(line: 63, column: 5, scope: !64)
!74 = distinct !{!74, !67, !75}
!75 = !DILocation(line: 64, column: 17, scope: !61)
!76 = !DILocation(line: 62, column: 19, scope: !56)
!77 = !DILocation(line: 62, column: 3, scope: !56)
!78 = distinct !{!78, !59, !79}
!79 = !DILocation(line: 64, column: 17, scope: !53)
!80 = !DILocation(line: 66, column: 1, scope: !7)
!81 = !DILocation(line: 71, column: 3, scope: !7)
!82 = !DILocation(line: 72, column: 1, scope: !7)
!83 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 67, type: !84, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86, !86, !90, !90, !42, !42, !91}
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!90 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !47, size: 64)
!92 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !83, type: !86, flags: DIFlagArtificial)
!93 = !DILocation(line: 0, scope: !83)
!94 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !83, type: !86, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "n", arg: 3, scope: !83, file: !1, line: 59, type: !90)
!96 = !DILocation(line: 59, column: 7, scope: !83)
!97 = !DILocalVariable(name: "m", arg: 4, scope: !83, file: !1, line: 59, type: !90)
!98 = !DILocation(line: 59, column: 14, scope: !83)
!99 = !DILocalVariable(name: "vla", arg: 5, scope: !83, type: !42, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: "vla", arg: 6, scope: !83, type: !42, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: "b", arg: 7, scope: !83, file: !1, line: 60, type: !91)
!102 = !DILocation(line: 60, column: 10, scope: !83)
!103 = !DILocation(line: 67, column: 3, scope: !83)
!104 = !DILocalVariable(name: ".omp.iv", scope: !83, type: !10, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: ".capture_expr.", scope: !83, type: !10, flags: DIFlagArtificial)
!106 = !DILocation(line: 67, column: 14, scope: !83)
!107 = !DILocalVariable(name: "i", scope: !83, type: !10, flags: DIFlagArtificial)
!108 = !DILocation(line: 67, column: 16, scope: !83)
!109 = !DILocalVariable(name: ".omp.lb", scope: !83, type: !10, flags: DIFlagArtificial)
!110 = !DILocation(line: 67, column: 8, scope: !83)
!111 = !DILocalVariable(name: ".omp.ub", scope: !83, type: !10, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: ".omp.stride", scope: !83, type: !10, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: ".omp.is_last", scope: !83, type: !10, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "j", scope: !83, type: !10, flags: DIFlagArtificial)
!115 = !DILocation(line: 68, column: 11, scope: !116)
!116 = distinct !DILexicalBlock(scope: !83, file: !1, line: 68, column: 5)
!117 = !DILocation(line: 68, column: 10, scope: !116)
!118 = !DILocation(line: 68, column: 14, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !1, line: 68, column: 5)
!120 = !DILocation(line: 68, column: 16, scope: !119)
!121 = !DILocation(line: 68, column: 15, scope: !119)
!122 = !DILocation(line: 68, column: 5, scope: !116)
!123 = !DILocation(line: 69, column: 17, scope: !119)
!124 = !DILocation(line: 69, column: 18, scope: !119)
!125 = !DILocation(line: 69, column: 15, scope: !119)
!126 = !DILocation(line: 69, column: 22, scope: !119)
!127 = !DILocation(line: 69, column: 23, scope: !119)
!128 = !DILocation(line: 69, column: 9, scope: !119)
!129 = !DILocation(line: 69, column: 7, scope: !119)
!130 = !DILocation(line: 69, column: 12, scope: !119)
!131 = !DILocation(line: 69, column: 14, scope: !119)
!132 = !DILocation(line: 68, column: 19, scope: !119)
!133 = !DILocation(line: 68, column: 5, scope: !119)
!134 = distinct !{!134, !122, !135}
!135 = !DILocation(line: 69, column: 25, scope: !116)
!136 = !DILocation(line: 66, column: 1, scope: !83)
!137 = distinct !{!137, !136, !138}
!138 = !DILocation(line: 66, column: 36, scope: !83)
!139 = !DILocation(line: 69, column: 25, scope: !83)
!140 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 67, type: !84, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!141 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !140, type: !86, flags: DIFlagArtificial)
!142 = !DILocation(line: 0, scope: !140)
!143 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !140, type: !86, flags: DIFlagArtificial)
!144 = !DILocalVariable(name: "n", arg: 3, scope: !140, type: !90, flags: DIFlagArtificial)
!145 = !DILocalVariable(name: "m", arg: 4, scope: !140, type: !90, flags: DIFlagArtificial)
!146 = !DILocalVariable(name: "vla", arg: 5, scope: !140, type: !42, flags: DIFlagArtificial)
!147 = !DILocalVariable(name: "vla", arg: 6, scope: !140, type: !42, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: "b", arg: 7, scope: !140, type: !91, flags: DIFlagArtificial)
!149 = !DILocation(line: 67, column: 3, scope: !140)
!150 = !{!151}
!151 = !{i64 2, i64 -1, i64 -1, i1 true}
