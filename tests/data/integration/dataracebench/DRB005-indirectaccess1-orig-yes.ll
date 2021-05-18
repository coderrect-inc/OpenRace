; ModuleID = 'integration/dataracebench/DRB005-indirectaccess1-orig-yes.c'
source_filename = "integration/dataracebench/DRB005-indirectaccess1-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [33 x i8] c"Error in malloc(). Aborting ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [74 x i8] c";integration/dataracebench/DRB005-indirectaccess1-orig-yes.c;main;124;1;;\00", align 1
@indexSet = dso_local global [180 x i32] [i32 521, i32 523, i32 525, i32 527, i32 529, i32 531, i32 547, i32 549, i32 551, i32 553, i32 555, i32 557, i32 573, i32 575, i32 577, i32 579, i32 581, i32 583, i32 599, i32 601, i32 603, i32 605, i32 607, i32 609, i32 625, i32 627, i32 629, i32 631, i32 633, i32 635, i32 651, i32 653, i32 655, i32 657, i32 659, i32 661, i32 859, i32 861, i32 863, i32 865, i32 867, i32 869, i32 885, i32 887, i32 889, i32 891, i32 893, i32 895, i32 911, i32 913, i32 915, i32 917, i32 919, i32 923, i32 937, i32 939, i32 941, i32 943, i32 945, i32 947, i32 963, i32 965, i32 967, i32 969, i32 971, i32 973, i32 989, i32 991, i32 993, i32 995, i32 997, i32 999, i32 1197, i32 1199, i32 1201, i32 1203, i32 1205, i32 1207, i32 1223, i32 1225, i32 1227, i32 1229, i32 1231, i32 1233, i32 1249, i32 1251, i32 1253, i32 1255, i32 1257, i32 1259, i32 1275, i32 1277, i32 1279, i32 1281, i32 1283, i32 1285, i32 1301, i32 1303, i32 1305, i32 1307, i32 1309, i32 1311, i32 1327, i32 1329, i32 1331, i32 1333, i32 1335, i32 1337, i32 1535, i32 1537, i32 1539, i32 1541, i32 1543, i32 1545, i32 1561, i32 1563, i32 1565, i32 1567, i32 1569, i32 1571, i32 1587, i32 1589, i32 1591, i32 1593, i32 1595, i32 1597, i32 1613, i32 1615, i32 1617, i32 1619, i32 1621, i32 1623, i32 1639, i32 1641, i32 1643, i32 1645, i32 1647, i32 1649, i32 1665, i32 1667, i32 1669, i32 1671, i32 1673, i32 1675, i32 1873, i32 1875, i32 1877, i32 1879, i32 1881, i32 1883, i32 1899, i32 1901, i32 1903, i32 1905, i32 1907, i32 1909, i32 1925, i32 1927, i32 1929, i32 1931, i32 1933, i32 1935, i32 1951, i32 1953, i32 1955, i32 1957, i32 1959, i32 1961, i32 1977, i32 1979, i32 1981, i32 1983, i32 1985, i32 1987, i32 2003, i32 2005, i32 2007, i32 2009, i32 2011, i32 2013], align 16, !dbg !0
@2 = private unnamed_addr constant [75 x i8] c";integration/dataracebench/DRB005-indirectaccess1-orig-yes.c;main;124;44;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"x1[999]=%f xa2[1285]=%f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !22 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %base = alloca double*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %xa1 = alloca double*, align 8
  %xa2 = alloca double*, align 8
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !35
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !29, metadata !DIExpression()), !dbg !39
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !30, metadata !DIExpression()), !dbg !42
  %2 = bitcast double** %base to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #6, !dbg !43
  call void @llvm.dbg.declare(metadata double** %base, metadata !31, metadata !DIExpression()), !dbg !44
  %call = call noalias i8* @malloc(i64 16208) #6, !dbg !45
  %3 = bitcast i8* %call to double*, !dbg !46
  store double* %3, double** %base, align 8, !dbg !44, !tbaa !40
  %4 = load double*, double** %base, align 8, !dbg !47, !tbaa !40
  %cmp = icmp eq double* %4, null, !dbg !49
  br i1 %cmp, label %if.then, label %if.end, !dbg !50

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)), !dbg !51
  store i32 1, i32* %retval, align 4, !dbg !53
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !53

if.end:                                           ; preds = %entry
  %5 = bitcast double** %xa1 to i8*, !dbg !54
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #6, !dbg !54
  call void @llvm.dbg.declare(metadata double** %xa1, metadata !32, metadata !DIExpression()), !dbg !55
  %6 = load double*, double** %base, align 8, !dbg !56, !tbaa !40
  store double* %6, double** %xa1, align 8, !dbg !55, !tbaa !40
  %7 = bitcast double** %xa2 to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #6, !dbg !57
  call void @llvm.dbg.declare(metadata double** %xa2, metadata !33, metadata !DIExpression()), !dbg !58
  %8 = load double*, double** %xa1, align 8, !dbg !59, !tbaa !40
  %add.ptr = getelementptr inbounds double, double* %8, i64 12, !dbg !60
  store double* %add.ptr, double** %xa2, align 8, !dbg !58, !tbaa !40
  %9 = bitcast i32* %i to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #6, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %i, metadata !34, metadata !DIExpression()), !dbg !62
  store i32 521, i32* %i, align 4, !dbg !63, !tbaa !35
  br label %for.cond, !dbg !65

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !dbg !66, !tbaa !35
  %cmp2 = icmp sle i32 %10, 2025, !dbg !68
  br i1 %cmp2, label %for.body, label %for.end, !dbg !69

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !dbg !70, !tbaa !35
  %conv = sitofp i32 %11 to double, !dbg !70
  %mul = fmul double 5.000000e-01, %conv, !dbg !72
  %12 = load double*, double** %base, align 8, !dbg !73, !tbaa !40
  %13 = load i32, i32* %i, align 4, !dbg !74, !tbaa !35
  %idxprom = sext i32 %13 to i64, !dbg !73
  %arrayidx = getelementptr inbounds double, double* %12, i64 %idxprom, !dbg !73
  store double %mul, double* %arrayidx, align 8, !dbg !75, !tbaa !76
  br label %for.inc, !dbg !78

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !79, !tbaa !35
  %inc = add nsw i32 %14, 1, !dbg !79
  store i32 %inc, i32* %i, align 4, !dbg !79, !tbaa !35
  br label %for.cond, !dbg !80, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !83
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @1, i32 0, i32 0), i8** %15, align 8, !dbg !83, !tbaa !84
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), double** %xa1, double** %xa2), !dbg !83
  %16 = load double*, double** %xa1, align 8, !dbg !86, !tbaa !40
  %arrayidx3 = getelementptr inbounds double, double* %16, i64 999, !dbg !86
  %17 = load double, double* %arrayidx3, align 8, !dbg !86, !tbaa !76
  %18 = load double*, double** %xa2, align 8, !dbg !87, !tbaa !40
  %arrayidx4 = getelementptr inbounds double, double* %18, i64 1285, !dbg !87
  %19 = load double, double* %arrayidx4, align 8, !dbg !87, !tbaa !76
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), double %17, double %19), !dbg !88
  %20 = load double*, double** %base, align 8, !dbg !89, !tbaa !40
  %21 = bitcast double* %20 to i8*, !dbg !89
  call void @free(i8* %21) #6, !dbg !90
  store i32 0, i32* %retval, align 4, !dbg !91
  store i32 1, i32* %cleanup.dest.slot, align 4
  %22 = bitcast i32* %i to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #6, !dbg !92
  %23 = bitcast double** %xa2 to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %23) #6, !dbg !92
  %24 = bitcast double** %xa1 to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %24) #6, !dbg !92
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %25 = bitcast double** %base to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %25) #6, !dbg !92
  %26 = load i32, i32* %retval, align 4, !dbg !92
  ret i32 %26, !dbg !92
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., double** dereferenceable(8) %xa1, double** dereferenceable(8) %xa2) #5 !dbg !93 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %xa1.addr = alloca double**, align 8
  %xa2.addr = alloca double**, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %idx = alloca i32, align 4
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !102, metadata !DIExpression()), !dbg !114
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !103, metadata !DIExpression()), !dbg !114
  store double** %xa1, double*** %xa1.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double*** %xa1.addr, metadata !104, metadata !DIExpression()), !dbg !115
  store double** %xa2, double*** %xa2.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double*** %xa2.addr, metadata !105, metadata !DIExpression()), !dbg !116
  %2 = load double**, double*** %xa1.addr, align 8, !dbg !117, !tbaa !40
  %3 = load double**, double*** %xa2.addr, align 8, !dbg !117, !tbaa !40
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #6, !dbg !117
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !106, metadata !DIExpression()), !dbg !114
  %5 = bitcast i32* %.omp.lb to i8*, !dbg !117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #6, !dbg !117
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !107, metadata !DIExpression()), !dbg !114
  store i32 0, i32* %.omp.lb, align 4, !dbg !118, !tbaa !35
  %6 = bitcast i32* %.omp.ub to i8*, !dbg !117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #6, !dbg !117
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !108, metadata !DIExpression()), !dbg !114
  store i32 179, i32* %.omp.ub, align 4, !dbg !118, !tbaa !35
  %7 = bitcast i32* %.omp.stride to i8*, !dbg !117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #6, !dbg !117
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !109, metadata !DIExpression()), !dbg !114
  store i32 1, i32* %.omp.stride, align 4, !dbg !118, !tbaa !35
  %8 = bitcast i32* %.omp.is_last to i8*, !dbg !117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #6, !dbg !117
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !110, metadata !DIExpression()), !dbg !114
  store i32 0, i32* %.omp.is_last, align 4, !dbg !118, !tbaa !35
  %9 = bitcast i32* %i to i8*, !dbg !117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #6, !dbg !117
  call void @llvm.dbg.declare(metadata i32* %i, metadata !111, metadata !DIExpression()), !dbg !114
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !117
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !117, !tbaa !84
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !117
  %12 = load i32, i32* %11, align 4, !dbg !117, !tbaa !35
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 33, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !117
  br label %omp.dispatch.cond, !dbg !117

omp.dispatch.cond:                                ; preds = %omp.dispatch.inc, %entry
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !118, !tbaa !35
  %cmp = icmp sgt i32 %13, 179, !dbg !118
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !118

cond.true:                                        ; preds = %omp.dispatch.cond
  br label %cond.end, !dbg !118

cond.false:                                       ; preds = %omp.dispatch.cond
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !118, !tbaa !35
  br label %cond.end, !dbg !118

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 179, %cond.true ], [ %14, %cond.false ], !dbg !118
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !118, !tbaa !35
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !118, !tbaa !35
  store i32 %15, i32* %.omp.iv, align 4, !dbg !118, !tbaa !35
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !118, !tbaa !35
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !118, !tbaa !35
  %cmp1 = icmp sle i32 %16, %17, !dbg !117
  br i1 %cmp1, label %omp.dispatch.body, label %omp.dispatch.cleanup, !dbg !117

omp.dispatch.cleanup:                             ; preds = %cond.end
  br label %omp.dispatch.end, !dbg !117

omp.dispatch.body:                                ; preds = %cond.end
  br label %omp.inner.for.cond, !dbg !117

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.dispatch.body
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !118, !tbaa !35
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !118, !tbaa !35
  %cmp2 = icmp sle i32 %18, %19, !dbg !117
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !117

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !117

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !118, !tbaa !35
  %mul = mul nsw i32 %20, 1, !dbg !119
  %add = add nsw i32 0, %mul, !dbg !119
  store i32 %add, i32* %i, align 4, !dbg !119, !tbaa !35
  %21 = bitcast i32* %idx to i8*, !dbg !120
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #6, !dbg !120
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !112, metadata !DIExpression()), !dbg !121
  %22 = load i32, i32* %i, align 4, !dbg !122, !tbaa !35
  %idxprom = sext i32 %22 to i64, !dbg !123
  %arrayidx = getelementptr inbounds [180 x i32], [180 x i32]* @indexSet, i64 0, i64 %idxprom, !dbg !123
  %23 = load i32, i32* %arrayidx, align 4, !dbg !123, !tbaa !35
  store i32 %23, i32* %idx, align 4, !dbg !121, !tbaa !35
  %24 = load i32, i32* %i, align 4, !dbg !124, !tbaa !35
  %conv = sitofp i32 %24 to double, !dbg !124
  %add3 = fadd double 1.000000e+00, %conv, !dbg !125
  %25 = load double*, double** %2, align 8, !dbg !126, !tbaa !40
  %26 = load i32, i32* %idx, align 4, !dbg !127, !tbaa !35
  %idxprom4 = sext i32 %26 to i64, !dbg !126
  %arrayidx5 = getelementptr inbounds double, double* %25, i64 %idxprom4, !dbg !126
  %27 = load double, double* %arrayidx5, align 8, !dbg !128, !tbaa !76
  %add6 = fadd double %27, %add3, !dbg !128
  store double %add6, double* %arrayidx5, align 8, !dbg !128, !tbaa !76
  %28 = load i32, i32* %i, align 4, !dbg !129, !tbaa !35
  %conv7 = sitofp i32 %28 to double, !dbg !129
  %add8 = fadd double 3.000000e+00, %conv7, !dbg !130
  %29 = load double*, double** %3, align 8, !dbg !131, !tbaa !40
  %30 = load i32, i32* %idx, align 4, !dbg !132, !tbaa !35
  %idxprom9 = sext i32 %30 to i64, !dbg !131
  %arrayidx10 = getelementptr inbounds double, double* %29, i64 %idxprom9, !dbg !131
  %31 = load double, double* %arrayidx10, align 8, !dbg !133, !tbaa !76
  %add11 = fadd double %31, %add8, !dbg !133
  store double %add11, double* %arrayidx10, align 8, !dbg !133, !tbaa !76
  %32 = bitcast i32* %idx to i8*, !dbg !134
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #6, !dbg !134
  br label %omp.body.continue, !dbg !135

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !136

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %33 = load i32, i32* %.omp.iv, align 4, !dbg !118, !tbaa !35
  %add12 = add nsw i32 %33, 1, !dbg !117
  store i32 %add12, i32* %.omp.iv, align 4, !dbg !117, !tbaa !35
  br label %omp.inner.for.cond, !dbg !136, !llvm.loop !137

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.dispatch.inc, !dbg !136

omp.dispatch.inc:                                 ; preds = %omp.inner.for.end
  %34 = load i32, i32* %.omp.lb, align 4, !dbg !118, !tbaa !35
  %35 = load i32, i32* %.omp.stride, align 4, !dbg !118, !tbaa !35
  %add13 = add nsw i32 %34, %35, !dbg !117
  store i32 %add13, i32* %.omp.lb, align 4, !dbg !117, !tbaa !35
  %36 = load i32, i32* %.omp.ub, align 4, !dbg !118, !tbaa !35
  %37 = load i32, i32* %.omp.stride, align 4, !dbg !118, !tbaa !35
  %add14 = add nsw i32 %36, %37, !dbg !117
  store i32 %add14, i32* %.omp.ub, align 4, !dbg !117, !tbaa !35
  br label %omp.dispatch.cond, !dbg !136, !llvm.loop !139

omp.dispatch.end:                                 ; preds = %omp.dispatch.cleanup
  %38 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !136
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @2, i32 0, i32 0), i8** %38, align 8, !dbg !136, !tbaa !84
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %12), !dbg !136
  %39 = bitcast i32* %i to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #6, !dbg !136
  %40 = bitcast i32* %.omp.is_last to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #6, !dbg !136
  %41 = bitcast i32* %.omp.stride to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #6, !dbg !136
  %42 = bitcast i32* %.omp.ub to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #6, !dbg !136
  %43 = bitcast i32* %.omp.lb to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #6, !dbg !136
  %44 = bitcast i32* %.omp.iv to i8*, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #6, !dbg !136
  ret void, !dbg !134
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., double** dereferenceable(8) %xa1, double** dereferenceable(8) %xa2) #5 !dbg !140 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %xa1.addr = alloca double**, align 8
  %xa2.addr = alloca double**, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !142, metadata !DIExpression()), !dbg !146
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !143, metadata !DIExpression()), !dbg !146
  store double** %xa1, double*** %xa1.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double*** %xa1.addr, metadata !144, metadata !DIExpression()), !dbg !146
  store double** %xa2, double*** %xa2.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double*** %xa2.addr, metadata !145, metadata !DIExpression()), !dbg !146
  %0 = load double**, double*** %xa1.addr, align 8, !dbg !147, !tbaa !40
  %1 = load double**, double*** %xa2.addr, align 8, !dbg !147, !tbaa !40
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !147, !tbaa !40
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !147, !tbaa !40
  %4 = load double**, double*** %xa1.addr, align 8, !dbg !147, !tbaa !40
  %5 = load double**, double*** %xa2.addr, align 8, !dbg !147, !tbaa !40
  call void @.omp_outlined._debug__(i32* %2, i32* %3, double** %4, double** %5) #6, !dbg !147
  ret void, !dbg !147
}

declare !callback !148 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind
declare !dbg !8 dso_local void @free(i8*) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "indexSet", scope: !2, file: !3, line: 66, type: !14, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB005-indirectaccess1-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !DISubprogram(name: "free", scope: !9, file: !9, line: 565, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!9 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !{!0}
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 5760, elements: !16)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!17}
!17 = !DISubrange(count: 180)
!18 = !{i32 7, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{!"clang version 10.0.1 "}
!22 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 103, type: !23, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !28)
!23 = !DISubroutineType(types: !24)
!24 = !{!15, !15, !25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !{!29, !30, !31, !32, !33, !34}
!29 = !DILocalVariable(name: "argc", arg: 1, scope: !22, file: !3, line: 103, type: !15)
!30 = !DILocalVariable(name: "argv", arg: 2, scope: !22, file: !3, line: 103, type: !25)
!31 = !DILocalVariable(name: "base", scope: !22, file: !3, line: 107, type: !6)
!32 = !DILocalVariable(name: "xa1", scope: !22, file: !3, line: 114, type: !6)
!33 = !DILocalVariable(name: "xa2", scope: !22, file: !3, line: 115, type: !6)
!34 = !DILocalVariable(name: "i", scope: !22, file: !3, line: 116, type: !15)
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 103, column: 15, scope: !22)
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !37, i64 0}
!42 = !DILocation(line: 103, column: 27, scope: !22)
!43 = !DILocation(line: 107, column: 3, scope: !22)
!44 = !DILocation(line: 107, column: 12, scope: !22)
!45 = !DILocation(line: 107, column: 29, scope: !22)
!46 = !DILocation(line: 107, column: 19, scope: !22)
!47 = !DILocation(line: 108, column: 7, scope: !48)
!48 = distinct !DILexicalBlock(scope: !22, file: !3, line: 108, column: 7)
!49 = !DILocation(line: 108, column: 12, scope: !48)
!50 = !DILocation(line: 108, column: 7, scope: !22)
!51 = !DILocation(line: 110, column: 5, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !3, line: 109, column: 3)
!53 = !DILocation(line: 111, column: 5, scope: !52)
!54 = !DILocation(line: 114, column: 3, scope: !22)
!55 = !DILocation(line: 114, column: 12, scope: !22)
!56 = !DILocation(line: 114, column: 18, scope: !22)
!57 = !DILocation(line: 115, column: 3, scope: !22)
!58 = !DILocation(line: 115, column: 12, scope: !22)
!59 = !DILocation(line: 115, column: 18, scope: !22)
!60 = !DILocation(line: 115, column: 22, scope: !22)
!61 = !DILocation(line: 116, column: 3, scope: !22)
!62 = !DILocation(line: 116, column: 7, scope: !22)
!63 = !DILocation(line: 119, column: 10, scope: !64)
!64 = distinct !DILexicalBlock(scope: !22, file: !3, line: 119, column: 3)
!65 = !DILocation(line: 119, column: 8, scope: !64)
!66 = !DILocation(line: 119, column: 16, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !3, line: 119, column: 3)
!68 = !DILocation(line: 119, column: 17, scope: !67)
!69 = !DILocation(line: 119, column: 3, scope: !64)
!70 = !DILocation(line: 121, column: 17, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !3, line: 120, column: 3)
!72 = !DILocation(line: 121, column: 16, scope: !71)
!73 = !DILocation(line: 121, column: 5, scope: !71)
!74 = !DILocation(line: 121, column: 10, scope: !71)
!75 = !DILocation(line: 121, column: 12, scope: !71)
!76 = !{!77, !77, i64 0}
!77 = !{!"double", !37, i64 0}
!78 = !DILocation(line: 122, column: 3, scope: !71)
!79 = !DILocation(line: 119, column: 26, scope: !67)
!80 = !DILocation(line: 119, column: 3, scope: !67)
!81 = distinct !{!81, !69, !82}
!82 = !DILocation(line: 122, column: 3, scope: !64)
!83 = !DILocation(line: 124, column: 1, scope: !22)
!84 = !{!85, !41, i64 16}
!85 = !{!"ident_t", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !41, i64 16}
!86 = !DILocation(line: 132, column: 39, scope: !22)
!87 = !DILocation(line: 132, column: 49, scope: !22)
!88 = !DILocation(line: 132, column: 3, scope: !22)
!89 = !DILocation(line: 133, column: 9, scope: !22)
!90 = !DILocation(line: 133, column: 3, scope: !22)
!91 = !DILocation(line: 134, column: 3, scope: !22)
!92 = !DILocation(line: 135, column: 1, scope: !22)
!93 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 125, type: !94, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !101)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !96, !96, !100, !100}
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!100 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6, size: 64)
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112}
!102 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !93, type: !96, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !93, type: !96, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: "xa1", arg: 3, scope: !93, file: !3, line: 114, type: !100)
!105 = !DILocalVariable(name: "xa2", arg: 4, scope: !93, file: !3, line: 115, type: !100)
!106 = !DILocalVariable(name: ".omp.iv", scope: !93, type: !15, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: ".omp.lb", scope: !93, type: !15, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: ".omp.ub", scope: !93, type: !15, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: ".omp.stride", scope: !93, type: !15, flags: DIFlagArtificial)
!110 = !DILocalVariable(name: ".omp.is_last", scope: !93, type: !15, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: "i", scope: !93, type: !15, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: "idx", scope: !113, file: !3, line: 127, type: !15)
!113 = distinct !DILexicalBlock(scope: !93, file: !3, line: 126, column: 3)
!114 = !DILocation(line: 0, scope: !93)
!115 = !DILocation(line: 114, column: 12, scope: !93)
!116 = !DILocation(line: 115, column: 12, scope: !93)
!117 = !DILocation(line: 125, column: 3, scope: !93)
!118 = !DILocation(line: 125, column: 8, scope: !93)
!119 = !DILocation(line: 125, column: 20, scope: !93)
!120 = !DILocation(line: 127, column: 5, scope: !113)
!121 = !DILocation(line: 127, column: 9, scope: !113)
!122 = !DILocation(line: 127, column: 24, scope: !113)
!123 = !DILocation(line: 127, column: 15, scope: !113)
!124 = !DILocation(line: 128, column: 22, scope: !113)
!125 = !DILocation(line: 128, column: 20, scope: !113)
!126 = !DILocation(line: 128, column: 5, scope: !113)
!127 = !DILocation(line: 128, column: 9, scope: !113)
!128 = !DILocation(line: 128, column: 13, scope: !113)
!129 = !DILocation(line: 129, column: 22, scope: !113)
!130 = !DILocation(line: 129, column: 20, scope: !113)
!131 = !DILocation(line: 129, column: 5, scope: !113)
!132 = !DILocation(line: 129, column: 9, scope: !113)
!133 = !DILocation(line: 129, column: 13, scope: !113)
!134 = !DILocation(line: 130, column: 3, scope: !93)
!135 = !DILocation(line: 130, column: 3, scope: !113)
!136 = !DILocation(line: 124, column: 1, scope: !93)
!137 = distinct !{!137, !136, !138}
!138 = !DILocation(line: 124, column: 44, scope: !93)
!139 = distinct !{!139, !136, !138}
!140 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 125, type: !94, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !141)
!141 = !{!142, !143, !144, !145}
!142 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !140, type: !96, flags: DIFlagArtificial)
!143 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !140, type: !96, flags: DIFlagArtificial)
!144 = !DILocalVariable(name: "xa1", arg: 3, scope: !140, type: !100, flags: DIFlagArtificial)
!145 = !DILocalVariable(name: "xa2", arg: 4, scope: !140, type: !100, flags: DIFlagArtificial)
!146 = !DILocation(line: 0, scope: !140)
!147 = !DILocation(line: 125, column: 3, scope: !140)
!148 = !{!149}
!149 = !{i64 2, i64 -1, i64 -1, i1 true}
