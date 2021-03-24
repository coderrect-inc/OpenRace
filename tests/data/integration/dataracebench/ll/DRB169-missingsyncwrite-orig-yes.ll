; ModuleID = 'DRB169-missingsyncwrite-orig-yes.c'
source_filename = "DRB169-missingsyncwrite-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [48 x i8] c";DRB169-missingsyncwrite-orig-yes.c;main;34;3;;\00", align 1
@2 = private unnamed_addr constant [49 x i8] c";DRB169-missingsyncwrite-orig-yes.c;main;34;56;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
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
  call void @llvm.dbg.declare(metadata i32* %i, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %j, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %k, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata [8 x double]* %r1, metadata !17, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [8 x [8 x [8 x double]]]* %r, metadata !23, metadata !DIExpression()), !dbg !26
  store i32 0, i32* %i, align 4, !dbg !27
  br label %for.cond, !dbg !29

for.cond:                                         ; preds = %for.inc14, %entry
  %2 = load i32, i32* %i, align 4, !dbg !30
  %cmp = icmp slt i32 %2, 8, !dbg !32
  br i1 %cmp, label %for.body, label %for.end16, !dbg !33

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !34
  br label %for.cond1, !dbg !37

for.cond1:                                        ; preds = %for.inc11, %for.body
  %3 = load i32, i32* %j, align 4, !dbg !38
  %cmp2 = icmp slt i32 %3, 8, !dbg !40
  br i1 %cmp2, label %for.body3, label %for.end13, !dbg !41

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4, !dbg !42
  br label %for.cond4, !dbg !45

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %k, align 4, !dbg !46
  %cmp5 = icmp slt i32 %4, 8, !dbg !48
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !49

for.body6:                                        ; preds = %for.cond4
  %5 = load i32, i32* %i, align 4, !dbg !50
  %conv = sitofp i32 %5 to double, !dbg !50
  %6 = load i32, i32* %i, align 4, !dbg !52
  %idxprom = sext i32 %6 to i64, !dbg !53
  %arrayidx = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %r, i64 0, i64 %idxprom, !dbg !53
  %7 = load i32, i32* %j, align 4, !dbg !54
  %idxprom7 = sext i32 %7 to i64, !dbg !53
  %arrayidx8 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %arrayidx, i64 0, i64 %idxprom7, !dbg !53
  %8 = load i32, i32* %k, align 4, !dbg !55
  %idxprom9 = sext i32 %8 to i64, !dbg !53
  %arrayidx10 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx8, i64 0, i64 %idxprom9, !dbg !53
  store double %conv, double* %arrayidx10, align 8, !dbg !56
  br label %for.inc, !dbg !57

for.inc:                                          ; preds = %for.body6
  %9 = load i32, i32* %k, align 4, !dbg !58
  %inc = add nsw i32 %9, 1, !dbg !58
  store i32 %inc, i32* %k, align 4, !dbg !58
  br label %for.cond4, !dbg !59, !llvm.loop !60

for.end:                                          ; preds = %for.cond4
  br label %for.inc11, !dbg !62

for.inc11:                                        ; preds = %for.end
  %10 = load i32, i32* %j, align 4, !dbg !63
  %inc12 = add nsw i32 %10, 1, !dbg !63
  store i32 %inc12, i32* %j, align 4, !dbg !63
  br label %for.cond1, !dbg !64, !llvm.loop !65

for.end13:                                        ; preds = %for.cond1
  br label %for.inc14, !dbg !67

for.inc14:                                        ; preds = %for.end13
  %11 = load i32, i32* %i, align 4, !dbg !68
  %inc15 = add nsw i32 %11, 1, !dbg !68
  store i32 %inc15, i32* %i, align 4, !dbg !68
  br label %for.cond, !dbg !69, !llvm.loop !70

for.end16:                                        ; preds = %for.cond
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !72
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %12, align 8, !dbg !72
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [8 x double]*, [8 x [8 x [8 x double]]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [8 x double]* %r1, [8 x [8 x [8 x double]]]* %r), !dbg !72
  store i32 0, i32* %k, align 4, !dbg !73
  br label %for.cond17, !dbg !75

for.cond17:                                       ; preds = %for.inc23, %for.end16
  %13 = load i32, i32* %k, align 4, !dbg !76
  %cmp18 = icmp slt i32 %13, 8, !dbg !78
  br i1 %cmp18, label %for.body20, label %for.end25, !dbg !79

for.body20:                                       ; preds = %for.cond17
  %14 = load i32, i32* %k, align 4, !dbg !80
  %idxprom21 = sext i32 %14 to i64, !dbg !81
  %arrayidx22 = getelementptr inbounds [8 x double], [8 x double]* %r1, i64 0, i64 %idxprom21, !dbg !81
  %15 = load double, double* %arrayidx22, align 8, !dbg !81
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), double %15), !dbg !82
  br label %for.inc23, !dbg !82

for.inc23:                                        ; preds = %for.body20
  %16 = load i32, i32* %k, align 4, !dbg !83
  %inc24 = add nsw i32 %16, 1, !dbg !83
  store i32 %inc24, i32* %k, align 4, !dbg !83
  br label %for.cond17, !dbg !84, !llvm.loop !85

for.end25:                                        ; preds = %for.cond17
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !87
  ret i32 0, !dbg !88
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [8 x double]* dereferenceable(64) %r1, [8 x [8 x [8 x double]]]* dereferenceable(4096) %r) #2 !dbg !89 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !98, metadata !DIExpression()), !dbg !99
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !100, metadata !DIExpression()), !dbg !99
  store [8 x double]* %r1, [8 x double]** %r1.addr, align 8
  call void @llvm.dbg.declare(metadata [8 x double]** %r1.addr, metadata !101, metadata !DIExpression()), !dbg !102
  store [8 x [8 x [8 x double]]]* %r, [8 x [8 x [8 x double]]]** %r.addr, align 8
  call void @llvm.dbg.declare(metadata [8 x [8 x [8 x double]]]** %r.addr, metadata !103, metadata !DIExpression()), !dbg !104
  %2 = load [8 x double]*, [8 x double]** %r1.addr, align 8, !dbg !105
  %3 = load [8 x [8 x [8 x double]]]*, [8 x [8 x [8 x double]]]** %r.addr, align 8, !dbg !105
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !106, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !107, metadata !DIExpression()), !dbg !99
  store i32 0, i32* %.omp.lb, align 4, !dbg !108
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !109, metadata !DIExpression()), !dbg !99
  store i32 5, i32* %.omp.ub, align 4, !dbg !108
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !110, metadata !DIExpression()), !dbg !99
  store i32 1, i32* %.omp.stride, align 4, !dbg !108
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !111, metadata !DIExpression()), !dbg !99
  store i32 0, i32* %.omp.is_last, align 4, !dbg !108
  call void @llvm.dbg.declare(metadata i32* %j, metadata !112, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.declare(metadata i32* %k, metadata !113, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.declare(metadata i32* %i, metadata !114, metadata !DIExpression()), !dbg !99
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !105
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !105
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !105
  %6 = load i32, i32* %5, align 4, !dbg !105
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !105
  %7 = load i32, i32* %.omp.ub, align 4, !dbg !108
  %cmp = icmp sgt i32 %7, 5, !dbg !108
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !108

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !108

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %.omp.ub, align 4, !dbg !108
  br label %cond.end, !dbg !108

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 5, %cond.true ], [ %8, %cond.false ], !dbg !108
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !108
  %9 = load i32, i32* %.omp.lb, align 4, !dbg !108
  store i32 %9, i32* %.omp.iv, align 4, !dbg !108
  br label %omp.inner.for.cond, !dbg !105

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %10 = load i32, i32* %.omp.iv, align 4, !dbg !108
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !108
  %cmp1 = icmp sle i32 %10, %11, !dbg !105
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !105

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !108
  %mul = mul nsw i32 %12, 1, !dbg !115
  %add = add nsw i32 1, %mul, !dbg !115
  store i32 %add, i32* %i, align 4, !dbg !115
  store i32 1, i32* %j, align 4, !dbg !116
  br label %for.cond, !dbg !119

for.cond:                                         ; preds = %for.inc36, %omp.inner.for.body
  %13 = load i32, i32* %j, align 4, !dbg !120
  %cmp2 = icmp slt i32 %13, 7, !dbg !122
  br i1 %cmp2, label %for.body, label %for.end38, !dbg !123

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !124
  br label %for.cond3, !dbg !127

for.cond3:                                        ; preds = %for.inc, %for.body
  %14 = load i32, i32* %k, align 4, !dbg !128
  %cmp4 = icmp slt i32 %14, 8, !dbg !130
  br i1 %cmp4, label %for.body5, label %for.end, !dbg !131

for.body5:                                        ; preds = %for.cond3
  %15 = load i32, i32* %i, align 4, !dbg !132
  %idxprom = sext i32 %15 to i64, !dbg !134
  %arrayidx = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %3, i64 0, i64 %idxprom, !dbg !134
  %16 = load i32, i32* %j, align 4, !dbg !135
  %sub = sub nsw i32 %16, 1, !dbg !136
  %idxprom6 = sext i32 %sub to i64, !dbg !134
  %arrayidx7 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %arrayidx, i64 0, i64 %idxprom6, !dbg !134
  %17 = load i32, i32* %k, align 4, !dbg !137
  %idxprom8 = sext i32 %17 to i64, !dbg !134
  %arrayidx9 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx7, i64 0, i64 %idxprom8, !dbg !134
  %18 = load double, double* %arrayidx9, align 8, !dbg !134
  %19 = load i32, i32* %i, align 4, !dbg !138
  %idxprom10 = sext i32 %19 to i64, !dbg !139
  %arrayidx11 = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %3, i64 0, i64 %idxprom10, !dbg !139
  %20 = load i32, i32* %j, align 4, !dbg !140
  %add12 = add nsw i32 %20, 1, !dbg !141
  %idxprom13 = sext i32 %add12 to i64, !dbg !139
  %arrayidx14 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %arrayidx11, i64 0, i64 %idxprom13, !dbg !139
  %21 = load i32, i32* %k, align 4, !dbg !142
  %idxprom15 = sext i32 %21 to i64, !dbg !139
  %arrayidx16 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx14, i64 0, i64 %idxprom15, !dbg !139
  %22 = load double, double* %arrayidx16, align 8, !dbg !139
  %add17 = fadd double %18, %22, !dbg !143
  %23 = load i32, i32* %i, align 4, !dbg !144
  %sub18 = sub nsw i32 %23, 1, !dbg !145
  %idxprom19 = sext i32 %sub18 to i64, !dbg !146
  %arrayidx20 = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %3, i64 0, i64 %idxprom19, !dbg !146
  %24 = load i32, i32* %j, align 4, !dbg !147
  %idxprom21 = sext i32 %24 to i64, !dbg !146
  %arrayidx22 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %arrayidx20, i64 0, i64 %idxprom21, !dbg !146
  %25 = load i32, i32* %k, align 4, !dbg !148
  %idxprom23 = sext i32 %25 to i64, !dbg !146
  %arrayidx24 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx22, i64 0, i64 %idxprom23, !dbg !146
  %26 = load double, double* %arrayidx24, align 8, !dbg !146
  %add25 = fadd double %add17, %26, !dbg !149
  %27 = load i32, i32* %i, align 4, !dbg !150
  %add26 = add nsw i32 %27, 1, !dbg !151
  %idxprom27 = sext i32 %add26 to i64, !dbg !152
  %arrayidx28 = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %3, i64 0, i64 %idxprom27, !dbg !152
  %28 = load i32, i32* %j, align 4, !dbg !153
  %idxprom29 = sext i32 %28 to i64, !dbg !152
  %arrayidx30 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %arrayidx28, i64 0, i64 %idxprom29, !dbg !152
  %29 = load i32, i32* %k, align 4, !dbg !154
  %idxprom31 = sext i32 %29 to i64, !dbg !152
  %arrayidx32 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx30, i64 0, i64 %idxprom31, !dbg !152
  %30 = load double, double* %arrayidx32, align 8, !dbg !152
  %add33 = fadd double %add25, %30, !dbg !155
  %31 = load i32, i32* %k, align 4, !dbg !156
  %idxprom34 = sext i32 %31 to i64, !dbg !157
  %arrayidx35 = getelementptr inbounds [8 x double], [8 x double]* %2, i64 0, i64 %idxprom34, !dbg !157
  store double %add33, double* %arrayidx35, align 8, !dbg !158
  br label %for.inc, !dbg !159

for.inc:                                          ; preds = %for.body5
  %32 = load i32, i32* %k, align 4, !dbg !160
  %inc = add nsw i32 %32, 1, !dbg !160
  store i32 %inc, i32* %k, align 4, !dbg !160
  br label %for.cond3, !dbg !161, !llvm.loop !162

for.end:                                          ; preds = %for.cond3
  br label %for.inc36, !dbg !164

for.inc36:                                        ; preds = %for.end
  %33 = load i32, i32* %j, align 4, !dbg !165
  %inc37 = add nsw i32 %33, 1, !dbg !165
  store i32 %inc37, i32* %j, align 4, !dbg !165
  br label %for.cond, !dbg !166, !llvm.loop !167

for.end38:                                        ; preds = %for.cond
  br label %omp.body.continue, !dbg !169

omp.body.continue:                                ; preds = %for.end38
  br label %omp.inner.for.inc, !dbg !170

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %34 = load i32, i32* %.omp.iv, align 4, !dbg !108
  %add39 = add nsw i32 %34, 1, !dbg !105
  store i32 %add39, i32* %.omp.iv, align 4, !dbg !105
  br label %omp.inner.for.cond, !dbg !170, !llvm.loop !171

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !170

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %35 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !170
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2, i32 0, i32 0), i8** %35, align 8, !dbg !170
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !170
  ret void, !dbg !173
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [8 x double]* dereferenceable(64) %r1, [8 x [8 x [8 x double]]]* dereferenceable(4096) %r) #2 !dbg !174 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %r1.addr = alloca [8 x double]*, align 8
  %r.addr = alloca [8 x [8 x [8 x double]]]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !175, metadata !DIExpression()), !dbg !176
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !177, metadata !DIExpression()), !dbg !176
  store [8 x double]* %r1, [8 x double]** %r1.addr, align 8
  call void @llvm.dbg.declare(metadata [8 x double]** %r1.addr, metadata !178, metadata !DIExpression()), !dbg !176
  store [8 x [8 x [8 x double]]]* %r, [8 x [8 x [8 x double]]]** %r.addr, align 8
  call void @llvm.dbg.declare(metadata [8 x [8 x [8 x double]]]** %r.addr, metadata !179, metadata !DIExpression()), !dbg !176
  %0 = load [8 x double]*, [8 x double]** %r1.addr, align 8, !dbg !180
  %1 = load [8 x [8 x [8 x double]]]*, [8 x [8 x [8 x double]]]** %r.addr, align 8, !dbg !180
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !180
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !180
  %4 = load [8 x double]*, [8 x double]** %r1.addr, align 8, !dbg !180
  %5 = load [8 x [8 x [8 x double]]]*, [8 x [8 x [8 x double]]]** %r.addr, align 8, !dbg !180
  call void @.omp_outlined._debug__(i32* %2, i32* %3, [8 x double]* %4, [8 x [8 x [8 x double]]]* %5) #5, !dbg !180
  ret void, !dbg !180
}

declare !callback !181 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB169-missingsyncwrite-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !8, scopeLine: 21, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 22, type: !10)
!12 = !DILocation(line: 22, column: 7, scope: !7)
!13 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 22, type: !10)
!14 = !DILocation(line: 22, column: 9, scope: !7)
!15 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 22, type: !10)
!16 = !DILocation(line: 22, column: 11, scope: !7)
!17 = !DILocalVariable(name: "r1", scope: !7, file: !1, line: 23, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !20)
!19 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!20 = !{!21}
!21 = !DISubrange(count: 8)
!22 = !DILocation(line: 23, column: 10, scope: !7)
!23 = !DILocalVariable(name: "r", scope: !7, file: !1, line: 23, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32768, elements: !25)
!25 = !{!21, !21, !21}
!26 = !DILocation(line: 23, column: 17, scope: !7)
!27 = !DILocation(line: 25, column: 10, scope: !28)
!28 = distinct !DILexicalBlock(scope: !7, file: !1, line: 25, column: 3)
!29 = !DILocation(line: 25, column: 8, scope: !28)
!30 = !DILocation(line: 25, column: 15, scope: !31)
!31 = distinct !DILexicalBlock(scope: !28, file: !1, line: 25, column: 3)
!32 = !DILocation(line: 25, column: 17, scope: !31)
!33 = !DILocation(line: 25, column: 3, scope: !28)
!34 = !DILocation(line: 26, column: 12, scope: !35)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 26, column: 5)
!36 = distinct !DILexicalBlock(scope: !31, file: !1, line: 25, column: 27)
!37 = !DILocation(line: 26, column: 10, scope: !35)
!38 = !DILocation(line: 26, column: 17, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !1, line: 26, column: 5)
!40 = !DILocation(line: 26, column: 19, scope: !39)
!41 = !DILocation(line: 26, column: 5, scope: !35)
!42 = !DILocation(line: 27, column: 14, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 27, column: 7)
!44 = distinct !DILexicalBlock(scope: !39, file: !1, line: 26, column: 29)
!45 = !DILocation(line: 27, column: 12, scope: !43)
!46 = !DILocation(line: 27, column: 19, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 27, column: 7)
!48 = !DILocation(line: 27, column: 21, scope: !47)
!49 = !DILocation(line: 27, column: 7, scope: !43)
!50 = !DILocation(line: 28, column: 22, scope: !51)
!51 = distinct !DILexicalBlock(scope: !47, file: !1, line: 27, column: 31)
!52 = !DILocation(line: 28, column: 11, scope: !51)
!53 = !DILocation(line: 28, column: 9, scope: !51)
!54 = !DILocation(line: 28, column: 14, scope: !51)
!55 = !DILocation(line: 28, column: 17, scope: !51)
!56 = !DILocation(line: 28, column: 20, scope: !51)
!57 = !DILocation(line: 29, column: 7, scope: !51)
!58 = !DILocation(line: 27, column: 27, scope: !47)
!59 = !DILocation(line: 27, column: 7, scope: !47)
!60 = distinct !{!60, !49, !61}
!61 = !DILocation(line: 29, column: 7, scope: !43)
!62 = !DILocation(line: 30, column: 5, scope: !44)
!63 = !DILocation(line: 26, column: 25, scope: !39)
!64 = !DILocation(line: 26, column: 5, scope: !39)
!65 = distinct !{!65, !41, !66}
!66 = !DILocation(line: 30, column: 5, scope: !35)
!67 = !DILocation(line: 31, column: 3, scope: !36)
!68 = !DILocation(line: 25, column: 23, scope: !31)
!69 = !DILocation(line: 25, column: 3, scope: !31)
!70 = distinct !{!70, !33, !71}
!71 = !DILocation(line: 31, column: 3, scope: !28)
!72 = !DILocation(line: 34, column: 3, scope: !7)
!73 = !DILocation(line: 43, column: 10, scope: !74)
!74 = distinct !DILexicalBlock(scope: !7, file: !1, line: 43, column: 3)
!75 = !DILocation(line: 43, column: 8, scope: !74)
!76 = !DILocation(line: 43, column: 15, scope: !77)
!77 = distinct !DILexicalBlock(scope: !74, file: !1, line: 43, column: 3)
!78 = !DILocation(line: 43, column: 17, scope: !77)
!79 = !DILocation(line: 43, column: 3, scope: !74)
!80 = !DILocation(line: 43, column: 43, scope: !77)
!81 = !DILocation(line: 43, column: 40, scope: !77)
!82 = !DILocation(line: 43, column: 27, scope: !77)
!83 = !DILocation(line: 43, column: 23, scope: !77)
!84 = !DILocation(line: 43, column: 3, scope: !77)
!85 = distinct !{!85, !79, !86}
!86 = !DILocation(line: 43, column: 45, scope: !74)
!87 = !DILocation(line: 45, column: 3, scope: !7)
!88 = !DILocation(line: 47, column: 3, scope: !7)
!89 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 35, type: !90, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !92, !92, !96, !97}
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!96 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !18, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !24, size: 64)
!98 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !89, type: !92, flags: DIFlagArtificial)
!99 = !DILocation(line: 0, scope: !89)
!100 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !89, type: !92, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: "r1", arg: 3, scope: !89, file: !1, line: 23, type: !96)
!102 = !DILocation(line: 23, column: 10, scope: !89)
!103 = !DILocalVariable(name: "r", arg: 4, scope: !89, file: !1, line: 23, type: !97)
!104 = !DILocation(line: 23, column: 17, scope: !89)
!105 = !DILocation(line: 35, column: 3, scope: !89)
!106 = !DILocalVariable(name: ".omp.iv", scope: !89, type: !10, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: ".omp.lb", scope: !89, type: !10, flags: DIFlagArtificial)
!108 = !DILocation(line: 35, column: 8, scope: !89)
!109 = !DILocalVariable(name: ".omp.ub", scope: !89, type: !10, flags: DIFlagArtificial)
!110 = !DILocalVariable(name: ".omp.stride", scope: !89, type: !10, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: ".omp.is_last", scope: !89, type: !10, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: "j", scope: !89, type: !10, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: "k", scope: !89, type: !10, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "i", scope: !89, type: !10, flags: DIFlagArtificial)
!115 = !DILocation(line: 35, column: 24, scope: !89)
!116 = !DILocation(line: 36, column: 12, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !1, line: 36, column: 5)
!118 = distinct !DILexicalBlock(scope: !89, file: !1, line: 35, column: 29)
!119 = !DILocation(line: 36, column: 10, scope: !117)
!120 = !DILocation(line: 36, column: 17, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 36, column: 5)
!122 = !DILocation(line: 36, column: 19, scope: !121)
!123 = !DILocation(line: 36, column: 5, scope: !117)
!124 = !DILocation(line: 37, column: 14, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !1, line: 37, column: 7)
!126 = distinct !DILexicalBlock(scope: !121, file: !1, line: 36, column: 31)
!127 = !DILocation(line: 37, column: 12, scope: !125)
!128 = !DILocation(line: 37, column: 19, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 37, column: 7)
!130 = !DILocation(line: 37, column: 21, scope: !129)
!131 = !DILocation(line: 37, column: 7, scope: !125)
!132 = !DILocation(line: 38, column: 19, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !1, line: 37, column: 31)
!134 = !DILocation(line: 38, column: 17, scope: !133)
!135 = !DILocation(line: 38, column: 22, scope: !133)
!136 = !DILocation(line: 38, column: 23, scope: !133)
!137 = !DILocation(line: 38, column: 27, scope: !133)
!138 = !DILocation(line: 38, column: 34, scope: !133)
!139 = !DILocation(line: 38, column: 32, scope: !133)
!140 = !DILocation(line: 38, column: 37, scope: !133)
!141 = !DILocation(line: 38, column: 38, scope: !133)
!142 = !DILocation(line: 38, column: 42, scope: !133)
!143 = !DILocation(line: 38, column: 30, scope: !133)
!144 = !DILocation(line: 38, column: 49, scope: !133)
!145 = !DILocation(line: 38, column: 50, scope: !133)
!146 = !DILocation(line: 38, column: 47, scope: !133)
!147 = !DILocation(line: 38, column: 54, scope: !133)
!148 = !DILocation(line: 38, column: 57, scope: !133)
!149 = !DILocation(line: 38, column: 45, scope: !133)
!150 = !DILocation(line: 38, column: 64, scope: !133)
!151 = !DILocation(line: 38, column: 65, scope: !133)
!152 = !DILocation(line: 38, column: 62, scope: !133)
!153 = !DILocation(line: 38, column: 69, scope: !133)
!154 = !DILocation(line: 38, column: 72, scope: !133)
!155 = !DILocation(line: 38, column: 60, scope: !133)
!156 = !DILocation(line: 38, column: 12, scope: !133)
!157 = !DILocation(line: 38, column: 9, scope: !133)
!158 = !DILocation(line: 38, column: 15, scope: !133)
!159 = !DILocation(line: 39, column: 7, scope: !133)
!160 = !DILocation(line: 37, column: 27, scope: !129)
!161 = !DILocation(line: 37, column: 7, scope: !129)
!162 = distinct !{!162, !131, !163}
!163 = !DILocation(line: 39, column: 7, scope: !125)
!164 = !DILocation(line: 40, column: 5, scope: !126)
!165 = !DILocation(line: 36, column: 27, scope: !121)
!166 = !DILocation(line: 36, column: 5, scope: !121)
!167 = distinct !{!167, !123, !168}
!168 = !DILocation(line: 40, column: 5, scope: !117)
!169 = !DILocation(line: 41, column: 3, scope: !118)
!170 = !DILocation(line: 34, column: 3, scope: !89)
!171 = distinct !{!171, !170, !172}
!172 = !DILocation(line: 34, column: 56, scope: !89)
!173 = !DILocation(line: 41, column: 3, scope: !89)
!174 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 35, type: !90, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!175 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !174, type: !92, flags: DIFlagArtificial)
!176 = !DILocation(line: 0, scope: !174)
!177 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !174, type: !92, flags: DIFlagArtificial)
!178 = !DILocalVariable(name: "r1", arg: 3, scope: !174, type: !96, flags: DIFlagArtificial)
!179 = !DILocalVariable(name: "r", arg: 4, scope: !174, type: !97, flags: DIFlagArtificial)
!180 = !DILocation(line: 35, column: 3, scope: !174)
!181 = !{!182}
!182 = !{i64 2, i64 -1, i64 -1, i1 true}
