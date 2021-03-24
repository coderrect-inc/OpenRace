; ModuleID = 'DRB004-antidep2-var-yes.c'
source_filename = "DRB004-antidep2-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [39 x i8] c";DRB004-antidep2-var-yes.c;main;67;1;;\00", align 1
@2 = private unnamed_addr constant [40 x i8] c";DRB004-antidep2-var-yes.c;main;67;36;;\00", align 1
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
  store i32 20, i32* %len, align 4, !dbg !23
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
  %5 = load i32, i32* %len, align 4, !dbg !32
  %6 = zext i32 %5 to i64, !dbg !33
  %7 = load i32, i32* %len, align 4, !dbg !34
  %8 = zext i32 %7 to i64, !dbg !33
  %9 = call i8* @llvm.stacksave(), !dbg !33
  store i8* %9, i8** %saved_stack, align 8, !dbg !33
  %10 = mul nuw i64 %6, %8, !dbg !33
  %vla = alloca double, i64 %10, align 16, !dbg !33
  store i64 %6, i64* %__vla_expr0, align 8, !dbg !33
  store i64 %8, i64* %__vla_expr1, align 8, !dbg !33
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !35, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !38, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata double* %vla, metadata !39, metadata !DIExpression()), !dbg !45
  store i32 0, i32* %i, align 4, !dbg !46
  br label %for.cond, !dbg !48

for.cond:                                         ; preds = %for.inc8, %if.end
  %11 = load i32, i32* %i, align 4, !dbg !49
  %12 = load i32, i32* %len, align 4, !dbg !51
  %cmp1 = icmp slt i32 %11, %12, !dbg !52
  br i1 %cmp1, label %for.body, label %for.end10, !dbg !53

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !54
  br label %for.cond2, !dbg !56

for.cond2:                                        ; preds = %for.inc, %for.body
  %13 = load i32, i32* %j, align 4, !dbg !57
  %14 = load i32, i32* %len, align 4, !dbg !59
  %cmp3 = icmp slt i32 %13, %14, !dbg !60
  br i1 %cmp3, label %for.body4, label %for.end, !dbg !61

for.body4:                                        ; preds = %for.cond2
  %15 = load i32, i32* %i, align 4, !dbg !62
  %idxprom = sext i32 %15 to i64, !dbg !63
  %16 = mul nsw i64 %idxprom, %8, !dbg !63
  %arrayidx5 = getelementptr inbounds double, double* %vla, i64 %16, !dbg !63
  %17 = load i32, i32* %j, align 4, !dbg !64
  %idxprom6 = sext i32 %17 to i64, !dbg !63
  %arrayidx7 = getelementptr inbounds double, double* %arrayidx5, i64 %idxprom6, !dbg !63
  store double 5.000000e-01, double* %arrayidx7, align 8, !dbg !65
  br label %for.inc, !dbg !63

for.inc:                                          ; preds = %for.body4
  %18 = load i32, i32* %j, align 4, !dbg !66
  %inc = add nsw i32 %18, 1, !dbg !66
  store i32 %inc, i32* %j, align 4, !dbg !66
  br label %for.cond2, !dbg !67, !llvm.loop !68

for.end:                                          ; preds = %for.cond2
  br label %for.inc8, !dbg !69

for.inc8:                                         ; preds = %for.end
  %19 = load i32, i32* %i, align 4, !dbg !70
  %inc9 = add nsw i32 %19, 1, !dbg !70
  store i32 %inc9, i32* %i, align 4, !dbg !70
  br label %for.cond, !dbg !71, !llvm.loop !72

for.end10:                                        ; preds = %for.cond
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !74
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1, i32 0, i32 0), i8** %20, align 8, !dbg !74
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %6, i64 %8, double* %vla), !dbg !74
  store i32 0, i32* %retval, align 4, !dbg !75
  %21 = load i8*, i8** %saved_stack, align 8, !dbg !76
  call void @llvm.stackrestore(i8* %21), !dbg !76
  %22 = load i32, i32* %retval, align 4, !dbg !76
  ret i32 %22, !dbg !76
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i64 %vla1, double* dereferenceable(8) %a) #4 !dbg !77 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %a.addr = alloca double*, align 8
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
  %i7 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !86, metadata !DIExpression()), !dbg !87
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !88, metadata !DIExpression()), !dbg !87
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !89, metadata !DIExpression()), !dbg !90
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !91, metadata !DIExpression()), !dbg !87
  store i64 %vla1, i64* %vla.addr2, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !92, metadata !DIExpression()), !dbg !87
  store double* %a, double** %a.addr, align 8
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !93, metadata !DIExpression()), !dbg !94
  %2 = load i32*, i32** %len.addr, align 8, !dbg !95
  %3 = load i64, i64* %vla.addr, align 8, !dbg !95
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !95
  %5 = load double*, double** %a.addr, align 8, !dbg !95
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !96, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !97, metadata !DIExpression()), !dbg !87
  %6 = load i32, i32* %2, align 4, !dbg !98
  %sub = sub nsw i32 %6, 1, !dbg !99
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !97, metadata !DIExpression()), !dbg !87
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !99
  %sub4 = sub nsw i32 %7, 0, !dbg !95
  %sub5 = sub nsw i32 %sub4, 1, !dbg !95
  %add = add nsw i32 %sub5, 1, !dbg !95
  %div = sdiv i32 %add, 1, !dbg !95
  %sub6 = sub nsw i32 %div, 1, !dbg !95
  store i32 %sub6, i32* %.capture_expr.3, align 4, !dbg !95
  call void @llvm.dbg.declare(metadata i32* %i, metadata !100, metadata !DIExpression()), !dbg !87
  store i32 0, i32* %i, align 4, !dbg !101
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !99
  %cmp = icmp slt i32 0, %8, !dbg !95
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !95

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !102, metadata !DIExpression()), !dbg !87
  store i32 0, i32* %.omp.lb, align 4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !104, metadata !DIExpression()), !dbg !87
  %9 = load i32, i32* %.capture_expr.3, align 4, !dbg !95
  store i32 %9, i32* %.omp.ub, align 4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !105, metadata !DIExpression()), !dbg !87
  store i32 1, i32* %.omp.stride, align 4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !106, metadata !DIExpression()), !dbg !87
  store i32 0, i32* %.omp.is_last, align 4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %j, metadata !107, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata i32* %i7, metadata !100, metadata !DIExpression()), !dbg !87
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !95
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !95
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !95
  %12 = load i32, i32* %11, align 4, !dbg !95
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !95
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !103
  %14 = load i32, i32* %.capture_expr.3, align 4, !dbg !95
  %cmp8 = icmp sgt i32 %13, %14, !dbg !103
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !103

cond.true:                                        ; preds = %omp.precond.then
  %15 = load i32, i32* %.capture_expr.3, align 4, !dbg !95
  br label %cond.end, !dbg !103

cond.false:                                       ; preds = %omp.precond.then
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !103
  br label %cond.end, !dbg !103

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ %16, %cond.false ], !dbg !103
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !103
  %17 = load i32, i32* %.omp.lb, align 4, !dbg !103
  store i32 %17, i32* %.omp.iv, align 4, !dbg !103
  br label %omp.inner.for.cond, !dbg !95

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !103
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !103
  %cmp9 = icmp sle i32 %18, %19, !dbg !95
  br i1 %cmp9, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !95

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !103
  %mul = mul nsw i32 %20, 1, !dbg !101
  %add10 = add nsw i32 0, %mul, !dbg !101
  store i32 %add10, i32* %i7, align 4, !dbg !101
  store i32 0, i32* %j, align 4, !dbg !108
  br label %for.cond, !dbg !111

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %21 = load i32, i32* %j, align 4, !dbg !112
  %22 = load i32, i32* %2, align 4, !dbg !114
  %cmp11 = icmp slt i32 %21, %22, !dbg !115
  br i1 %cmp11, label %for.body, label %for.end, !dbg !116

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i7, align 4, !dbg !117
  %add12 = add nsw i32 %23, 1, !dbg !119
  %idxprom = sext i32 %add12 to i64, !dbg !120
  %24 = mul nsw i64 %idxprom, %4, !dbg !120
  %arrayidx = getelementptr inbounds double, double* %5, i64 %24, !dbg !120
  %25 = load i32, i32* %j, align 4, !dbg !121
  %idxprom13 = sext i32 %25 to i64, !dbg !120
  %arrayidx14 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom13, !dbg !120
  %26 = load double, double* %arrayidx14, align 8, !dbg !120
  %27 = load i32, i32* %i7, align 4, !dbg !122
  %idxprom15 = sext i32 %27 to i64, !dbg !123
  %28 = mul nsw i64 %idxprom15, %4, !dbg !123
  %arrayidx16 = getelementptr inbounds double, double* %5, i64 %28, !dbg !123
  %29 = load i32, i32* %j, align 4, !dbg !124
  %idxprom17 = sext i32 %29 to i64, !dbg !123
  %arrayidx18 = getelementptr inbounds double, double* %arrayidx16, i64 %idxprom17, !dbg !123
  %30 = load double, double* %arrayidx18, align 8, !dbg !125
  %add19 = fadd double %30, %26, !dbg !125
  store double %add19, double* %arrayidx18, align 8, !dbg !125
  br label %for.inc, !dbg !126

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %j, align 4, !dbg !127
  %add20 = add nsw i32 %31, 1, !dbg !127
  store i32 %add20, i32* %j, align 4, !dbg !127
  br label %for.cond, !dbg !128, !llvm.loop !129

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !131

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !132

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %32 = load i32, i32* %.omp.iv, align 4, !dbg !103
  %add21 = add nsw i32 %32, 1, !dbg !95
  store i32 %add21, i32* %.omp.iv, align 4, !dbg !95
  br label %omp.inner.for.cond, !dbg !132, !llvm.loop !133

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !132

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %33 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !132
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2, i32 0, i32 0), i8** %33, align 8, !dbg !132
  %34 = load i32*, i32** %.global_tid..addr, align 8, !dbg !132
  %35 = load i32, i32* %34, align 4, !dbg !132
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %35), !dbg !132
  br label %omp.precond.end, !dbg !132

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i64 %vla1, double* dereferenceable(8) %a) #4 !dbg !136 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %a.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !137, metadata !DIExpression()), !dbg !138
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !139, metadata !DIExpression()), !dbg !138
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !140, metadata !DIExpression()), !dbg !138
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !141, metadata !DIExpression()), !dbg !138
  store i64 %vla1, i64* %vla.addr2, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !142, metadata !DIExpression()), !dbg !138
  store double* %a, double** %a.addr, align 8
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !143, metadata !DIExpression()), !dbg !138
  %0 = load i32*, i32** %len.addr, align 8, !dbg !144
  %1 = load i64, i64* %vla.addr, align 8, !dbg !144
  %2 = load i64, i64* %vla.addr2, align 8, !dbg !144
  %3 = load double*, double** %a.addr, align 8, !dbg !144
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !144
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !144
  %6 = load i32*, i32** %len.addr, align 8, !dbg !144
  %7 = load double*, double** %a.addr, align 8, !dbg !144
  call void @.omp_outlined._debug__(i32* %4, i32* %5, i32* %6, i64 %1, i64 %2, double* %7) #3, !dbg !144
  ret void, !dbg !144
}

declare !callback !145 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "DRB004-antidep2-var-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !8, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 53, type: !10)
!15 = !DILocation(line: 53, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 53, type: !11)
!17 = !DILocation(line: 53, column: 25, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 55, type: !10)
!19 = !DILocation(line: 55, column: 7, scope: !7)
!20 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 55, type: !10)
!21 = !DILocation(line: 55, column: 10, scope: !7)
!22 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 56, type: !10)
!23 = !DILocation(line: 56, column: 7, scope: !7)
!24 = !DILocation(line: 58, column: 7, scope: !25)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 58, column: 7)
!26 = !DILocation(line: 58, column: 11, scope: !25)
!27 = !DILocation(line: 58, column: 7, scope: !7)
!28 = !DILocation(line: 59, column: 16, scope: !25)
!29 = !DILocation(line: 59, column: 11, scope: !25)
!30 = !DILocation(line: 59, column: 9, scope: !25)
!31 = !DILocation(line: 59, column: 5, scope: !25)
!32 = !DILocation(line: 61, column: 12, scope: !7)
!33 = !DILocation(line: 61, column: 3, scope: !7)
!34 = !DILocation(line: 61, column: 17, scope: !7)
!35 = !DILocalVariable(name: "__vla_expr0", scope: !7, type: !36, flags: DIFlagArtificial)
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 0, scope: !7)
!38 = !DILocalVariable(name: "__vla_expr1", scope: !7, type: !36, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 61, type: !40)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, elements: !42)
!41 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!42 = !{!43, !44}
!43 = !DISubrange(count: !35)
!44 = !DISubrange(count: !38)
!45 = !DILocation(line: 61, column: 10, scope: !7)
!46 = !DILocation(line: 63, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !7, file: !1, line: 63, column: 3)
!48 = !DILocation(line: 63, column: 8, scope: !47)
!49 = !DILocation(line: 63, column: 13, scope: !50)
!50 = distinct !DILexicalBlock(scope: !47, file: !1, line: 63, column: 3)
!51 = !DILocation(line: 63, column: 16, scope: !50)
!52 = !DILocation(line: 63, column: 14, scope: !50)
!53 = !DILocation(line: 63, column: 3, scope: !47)
!54 = !DILocation(line: 64, column: 11, scope: !55)
!55 = distinct !DILexicalBlock(scope: !50, file: !1, line: 64, column: 5)
!56 = !DILocation(line: 64, column: 10, scope: !55)
!57 = !DILocation(line: 64, column: 15, scope: !58)
!58 = distinct !DILexicalBlock(scope: !55, file: !1, line: 64, column: 5)
!59 = !DILocation(line: 64, column: 17, scope: !58)
!60 = !DILocation(line: 64, column: 16, scope: !58)
!61 = !DILocation(line: 64, column: 5, scope: !55)
!62 = !DILocation(line: 65, column: 9, scope: !58)
!63 = !DILocation(line: 65, column: 7, scope: !58)
!64 = !DILocation(line: 65, column: 12, scope: !58)
!65 = !DILocation(line: 65, column: 15, scope: !58)
!66 = !DILocation(line: 64, column: 23, scope: !58)
!67 = !DILocation(line: 64, column: 5, scope: !58)
!68 = distinct !{!68, !61, !69}
!69 = !DILocation(line: 65, column: 17, scope: !55)
!70 = !DILocation(line: 63, column: 22, scope: !50)
!71 = !DILocation(line: 63, column: 3, scope: !50)
!72 = distinct !{!72, !53, !73}
!73 = !DILocation(line: 65, column: 17, scope: !47)
!74 = !DILocation(line: 67, column: 1, scope: !7)
!75 = !DILocation(line: 73, column: 3, scope: !7)
!76 = !DILocation(line: 74, column: 1, scope: !7)
!77 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 68, type: !78, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !80, !80, !84, !36, !36, !85}
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!84 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !41, size: 64)
!86 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !77, type: !80, flags: DIFlagArtificial)
!87 = !DILocation(line: 0, scope: !77)
!88 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !77, type: !80, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: "len", arg: 3, scope: !77, file: !1, line: 56, type: !84)
!90 = !DILocation(line: 56, column: 7, scope: !77)
!91 = !DILocalVariable(name: "vla", arg: 4, scope: !77, type: !36, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: "vla", arg: 5, scope: !77, type: !36, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: "a", arg: 6, scope: !77, file: !1, line: 61, type: !85)
!94 = !DILocation(line: 61, column: 10, scope: !77)
!95 = !DILocation(line: 68, column: 3, scope: !77)
!96 = !DILocalVariable(name: ".omp.iv", scope: !77, type: !10, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: ".capture_expr.", scope: !77, type: !10, flags: DIFlagArtificial)
!98 = !DILocation(line: 68, column: 19, scope: !77)
!99 = !DILocation(line: 68, column: 23, scope: !77)
!100 = !DILocalVariable(name: "i", scope: !77, type: !10, flags: DIFlagArtificial)
!101 = !DILocation(line: 68, column: 28, scope: !77)
!102 = !DILocalVariable(name: ".omp.lb", scope: !77, type: !10, flags: DIFlagArtificial)
!103 = !DILocation(line: 68, column: 8, scope: !77)
!104 = !DILocalVariable(name: ".omp.ub", scope: !77, type: !10, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: ".omp.stride", scope: !77, type: !10, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: ".omp.is_last", scope: !77, type: !10, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: "j", scope: !77, type: !10, flags: DIFlagArtificial)
!108 = !DILocation(line: 69, column: 12, scope: !109)
!109 = distinct !DILexicalBlock(scope: !110, file: !1, line: 69, column: 5)
!110 = distinct !DILexicalBlock(scope: !77, file: !1, line: 68, column: 36)
!111 = !DILocation(line: 69, column: 10, scope: !109)
!112 = !DILocation(line: 69, column: 17, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !1, line: 69, column: 5)
!114 = !DILocation(line: 69, column: 21, scope: !113)
!115 = !DILocation(line: 69, column: 19, scope: !113)
!116 = !DILocation(line: 69, column: 5, scope: !109)
!117 = !DILocation(line: 70, column: 20, scope: !118)
!118 = distinct !DILexicalBlock(scope: !113, file: !1, line: 69, column: 35)
!119 = !DILocation(line: 70, column: 22, scope: !118)
!120 = !DILocation(line: 70, column: 18, scope: !118)
!121 = !DILocation(line: 70, column: 27, scope: !118)
!122 = !DILocation(line: 70, column: 9, scope: !118)
!123 = !DILocation(line: 70, column: 7, scope: !118)
!124 = !DILocation(line: 70, column: 12, scope: !118)
!125 = !DILocation(line: 70, column: 15, scope: !118)
!126 = !DILocation(line: 71, column: 5, scope: !118)
!127 = !DILocation(line: 69, column: 29, scope: !113)
!128 = !DILocation(line: 69, column: 5, scope: !113)
!129 = distinct !{!129, !116, !130}
!130 = !DILocation(line: 71, column: 5, scope: !109)
!131 = !DILocation(line: 72, column: 3, scope: !110)
!132 = !DILocation(line: 67, column: 1, scope: !77)
!133 = distinct !{!133, !132, !134}
!134 = !DILocation(line: 67, column: 36, scope: !77)
!135 = !DILocation(line: 72, column: 3, scope: !77)
!136 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 68, type: !78, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!137 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !136, type: !80, flags: DIFlagArtificial)
!138 = !DILocation(line: 0, scope: !136)
!139 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !136, type: !80, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: "len", arg: 3, scope: !136, type: !84, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: "vla", arg: 4, scope: !136, type: !36, flags: DIFlagArtificial)
!142 = !DILocalVariable(name: "vla", arg: 5, scope: !136, type: !36, flags: DIFlagArtificial)
!143 = !DILocalVariable(name: "a", arg: 6, scope: !136, type: !85, flags: DIFlagArtificial)
!144 = !DILocation(line: 68, column: 3, scope: !136)
!145 = !{!146}
!146 = !{i64 2, i64 -1, i64 -1, i1 true}
