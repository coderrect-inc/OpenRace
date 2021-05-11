; ModuleID = 'integration/dataracebench/DRB052-indirectaccesssharebase-orig-no.c'
source_filename = "integration/dataracebench/DRB052-indirectaccesssharebase-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [47 x i8] c"Error, malloc() returns NULL. End execution. \0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [81 x i8] c";integration/dataracebench/DRB052-indirectaccesssharebase-orig-no.c;main;115;1;;\00", align 1
@indexSet = dso_local global [180 x i32] [i32 521, i32 523, i32 525, i32 527, i32 529, i32 531, i32 547, i32 549, i32 551, i32 553, i32 555, i32 557, i32 573, i32 575, i32 577, i32 579, i32 581, i32 583, i32 599, i32 601, i32 603, i32 605, i32 607, i32 609, i32 625, i32 627, i32 629, i32 631, i32 633, i32 635, i32 651, i32 653, i32 655, i32 657, i32 659, i32 661, i32 859, i32 861, i32 863, i32 865, i32 867, i32 869, i32 885, i32 887, i32 889, i32 891, i32 893, i32 895, i32 911, i32 913, i32 915, i32 917, i32 919, i32 921, i32 937, i32 939, i32 941, i32 943, i32 945, i32 947, i32 963, i32 965, i32 967, i32 969, i32 971, i32 973, i32 989, i32 991, i32 993, i32 995, i32 997, i32 999, i32 1197, i32 1199, i32 1201, i32 1203, i32 1205, i32 1207, i32 1223, i32 1225, i32 1227, i32 1229, i32 1231, i32 1233, i32 1249, i32 1251, i32 1253, i32 1255, i32 1257, i32 1259, i32 1275, i32 1277, i32 1279, i32 1281, i32 1283, i32 1285, i32 1301, i32 1303, i32 1305, i32 1307, i32 1309, i32 1311, i32 1327, i32 1329, i32 1331, i32 1333, i32 1335, i32 1337, i32 1535, i32 1537, i32 1539, i32 1541, i32 1543, i32 1545, i32 1561, i32 1563, i32 1565, i32 1567, i32 1569, i32 1571, i32 1587, i32 1589, i32 1591, i32 1593, i32 1595, i32 1597, i32 1613, i32 1615, i32 1617, i32 1619, i32 1621, i32 1623, i32 1639, i32 1641, i32 1643, i32 1645, i32 1647, i32 1649, i32 1665, i32 1667, i32 1669, i32 1671, i32 1673, i32 1675, i32 1873, i32 1875, i32 1877, i32 1879, i32 1881, i32 1883, i32 1899, i32 1901, i32 1903, i32 1905, i32 1907, i32 1909, i32 1925, i32 1927, i32 1929, i32 1931, i32 1933, i32 1935, i32 1951, i32 1953, i32 1955, i32 1957, i32 1959, i32 1961, i32 1977, i32 1979, i32 1981, i32 1983, i32 1985, i32 1987, i32 2003, i32 2005, i32 2007, i32 2009, i32 2011, i32 2013], align 16, !dbg !0
@2 = private unnamed_addr constant [82 x i8] c";integration/dataracebench/DRB052-indirectaccesssharebase-orig-no.c;main;115;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"base[i]!=4.0\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"integration/dataracebench/DRB052-indirectaccesssharebase-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1

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
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #7, !dbg !43
  call void @llvm.dbg.declare(metadata double** %base, metadata !31, metadata !DIExpression()), !dbg !44
  %call = call noalias i8* @malloc(i64 16208) #7, !dbg !45
  %3 = bitcast i8* %call to double*, !dbg !46
  store double* %3, double** %base, align 8, !dbg !44, !tbaa !40
  %4 = load double*, double** %base, align 8, !dbg !47, !tbaa !40
  %cmp = icmp eq double* %4, null, !dbg !49
  br i1 %cmp, label %if.then, label %if.end, !dbg !50

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0)), !dbg !51
  store i32 1, i32* %retval, align 4, !dbg !53
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !53

if.end:                                           ; preds = %entry
  %5 = bitcast double** %xa1 to i8*, !dbg !54
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #7, !dbg !54
  call void @llvm.dbg.declare(metadata double** %xa1, metadata !32, metadata !DIExpression()), !dbg !55
  %6 = load double*, double** %base, align 8, !dbg !56, !tbaa !40
  store double* %6, double** %xa1, align 8, !dbg !55, !tbaa !40
  %7 = bitcast double** %xa2 to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #7, !dbg !57
  call void @llvm.dbg.declare(metadata double** %xa2, metadata !33, metadata !DIExpression()), !dbg !58
  %8 = load double*, double** %base, align 8, !dbg !59, !tbaa !40
  %add.ptr = getelementptr inbounds double, double* %8, i64 12, !dbg !60
  store double* %add.ptr, double** %xa2, align 8, !dbg !58, !tbaa !40
  %9 = bitcast i32* %i to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #7, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %i, metadata !34, metadata !DIExpression()), !dbg !62
  store i32 521, i32* %i, align 4, !dbg !63, !tbaa !35
  br label %for.cond, !dbg !65

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !dbg !66, !tbaa !35
  %cmp2 = icmp sle i32 %10, 2025, !dbg !68
  br i1 %cmp2, label %for.body, label %for.end, !dbg !69

for.body:                                         ; preds = %for.cond
  %11 = load double*, double** %base, align 8, !dbg !70, !tbaa !40
  %12 = load i32, i32* %i, align 4, !dbg !72, !tbaa !35
  %idxprom = sext i32 %12 to i64, !dbg !70
  %arrayidx = getelementptr inbounds double, double* %11, i64 %idxprom, !dbg !70
  store double 0.000000e+00, double* %arrayidx, align 8, !dbg !73, !tbaa !74
  br label %for.inc, !dbg !76

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !77, !tbaa !35
  %inc = add nsw i32 %13, 1, !dbg !77
  store i32 %inc, i32* %i, align 4, !dbg !77, !tbaa !35
  br label %for.cond, !dbg !78, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !81
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @1, i32 0, i32 0), i8** %14, align 8, !dbg !81, !tbaa !82
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), double** %xa1, double** %xa2), !dbg !81
  store i32 521, i32* %i, align 4, !dbg !84, !tbaa !35
  br label %for.cond3, !dbg !86

for.cond3:                                        ; preds = %for.inc11, %for.end
  %15 = load i32, i32* %i, align 4, !dbg !87, !tbaa !35
  %cmp4 = icmp sle i32 %15, 2025, !dbg !89
  br i1 %cmp4, label %for.body5, label %for.end13, !dbg !90

for.body5:                                        ; preds = %for.cond3
  %16 = load double*, double** %base, align 8, !dbg !91, !tbaa !40
  %17 = load i32, i32* %i, align 4, !dbg !91, !tbaa !35
  %idxprom6 = sext i32 %17 to i64, !dbg !91
  %arrayidx7 = getelementptr inbounds double, double* %16, i64 %idxprom6, !dbg !91
  %18 = load double, double* %arrayidx7, align 8, !dbg !91, !tbaa !74
  %cmp8 = fcmp une double %18, 4.000000e+00, !dbg !91
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !95

if.then9:                                         ; preds = %for.body5
  br label %if.end10, !dbg !95

if.else:                                          ; preds = %for.body5
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 127, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8, !dbg !91
  unreachable, !dbg !91

if.end10:                                         ; preds = %if.then9
  br label %for.inc11, !dbg !96

for.inc11:                                        ; preds = %if.end10
  %19 = load i32, i32* %i, align 4, !dbg !97, !tbaa !35
  %inc12 = add nsw i32 %19, 1, !dbg !97
  store i32 %inc12, i32* %i, align 4, !dbg !97, !tbaa !35
  br label %for.cond3, !dbg !98, !llvm.loop !99

for.end13:                                        ; preds = %for.cond3
  %20 = load double*, double** %base, align 8, !dbg !101, !tbaa !40
  %21 = bitcast double* %20 to i8*, !dbg !101
  call void @free(i8* %21) #7, !dbg !102
  store i32 0, i32* %retval, align 4, !dbg !103
  store i32 1, i32* %cleanup.dest.slot, align 4
  %22 = bitcast i32* %i to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #7, !dbg !104
  %23 = bitcast double** %xa2 to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %23) #7, !dbg !104
  %24 = bitcast double** %xa1 to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %24) #7, !dbg !104
  br label %cleanup

cleanup:                                          ; preds = %for.end13, %if.then
  %25 = bitcast double** %base to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %25) #7, !dbg !104
  %26 = load i32, i32* %retval, align 4, !dbg !104
  ret i32 %26, !dbg !104
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., double** dereferenceable(8) %xa1, double** dereferenceable(8) %xa2) #5 !dbg !105 {
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !114, metadata !DIExpression()), !dbg !126
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !115, metadata !DIExpression()), !dbg !126
  store double** %xa1, double*** %xa1.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double*** %xa1.addr, metadata !116, metadata !DIExpression()), !dbg !127
  store double** %xa2, double*** %xa2.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double*** %xa2.addr, metadata !117, metadata !DIExpression()), !dbg !128
  %2 = load double**, double*** %xa1.addr, align 8, !dbg !129, !tbaa !40
  %3 = load double**, double*** %xa2.addr, align 8, !dbg !129, !tbaa !40
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #7, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !118, metadata !DIExpression()), !dbg !126
  %5 = bitcast i32* %.omp.lb to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #7, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !119, metadata !DIExpression()), !dbg !126
  store i32 0, i32* %.omp.lb, align 4, !dbg !130, !tbaa !35
  %6 = bitcast i32* %.omp.ub to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #7, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !120, metadata !DIExpression()), !dbg !126
  store i32 179, i32* %.omp.ub, align 4, !dbg !130, !tbaa !35
  %7 = bitcast i32* %.omp.stride to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #7, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !121, metadata !DIExpression()), !dbg !126
  store i32 1, i32* %.omp.stride, align 4, !dbg !130, !tbaa !35
  %8 = bitcast i32* %.omp.is_last to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #7, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !122, metadata !DIExpression()), !dbg !126
  store i32 0, i32* %.omp.is_last, align 4, !dbg !130, !tbaa !35
  %9 = bitcast i32* %i to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #7, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %i, metadata !123, metadata !DIExpression()), !dbg !126
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !129
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !129, !tbaa !82
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !129
  %12 = load i32, i32* %11, align 4, !dbg !129, !tbaa !35
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !129
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !130, !tbaa !35
  %cmp = icmp sgt i32 %13, 179, !dbg !130
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !130

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !130

cond.false:                                       ; preds = %entry
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !130, !tbaa !35
  br label %cond.end, !dbg !130

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 179, %cond.true ], [ %14, %cond.false ], !dbg !130
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !130, !tbaa !35
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !130, !tbaa !35
  store i32 %15, i32* %.omp.iv, align 4, !dbg !130, !tbaa !35
  br label %omp.inner.for.cond, !dbg !129

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !130, !tbaa !35
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !130, !tbaa !35
  %cmp1 = icmp sle i32 %16, %17, !dbg !129
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !129

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !129

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !130, !tbaa !35
  %mul = mul nsw i32 %18, 1, !dbg !131
  %add = add nsw i32 0, %mul, !dbg !131
  store i32 %add, i32* %i, align 4, !dbg !131, !tbaa !35
  %19 = bitcast i32* %idx to i8*, !dbg !132
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #7, !dbg !132
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !124, metadata !DIExpression()), !dbg !133
  %20 = load i32, i32* %i, align 4, !dbg !134, !tbaa !35
  %idxprom = sext i32 %20 to i64, !dbg !135
  %arrayidx = getelementptr inbounds [180 x i32], [180 x i32]* @indexSet, i64 0, i64 %idxprom, !dbg !135
  %21 = load i32, i32* %arrayidx, align 4, !dbg !135, !tbaa !35
  store i32 %21, i32* %idx, align 4, !dbg !133, !tbaa !35
  %22 = load double*, double** %2, align 8, !dbg !136, !tbaa !40
  %23 = load i32, i32* %idx, align 4, !dbg !137, !tbaa !35
  %idxprom2 = sext i32 %23 to i64, !dbg !136
  %arrayidx3 = getelementptr inbounds double, double* %22, i64 %idxprom2, !dbg !136
  %24 = load double, double* %arrayidx3, align 8, !dbg !138, !tbaa !74
  %add4 = fadd double %24, 1.000000e+00, !dbg !138
  store double %add4, double* %arrayidx3, align 8, !dbg !138, !tbaa !74
  %25 = load double*, double** %3, align 8, !dbg !139, !tbaa !40
  %26 = load i32, i32* %idx, align 4, !dbg !140, !tbaa !35
  %idxprom5 = sext i32 %26 to i64, !dbg !139
  %arrayidx6 = getelementptr inbounds double, double* %25, i64 %idxprom5, !dbg !139
  %27 = load double, double* %arrayidx6, align 8, !dbg !141, !tbaa !74
  %add7 = fadd double %27, 3.000000e+00, !dbg !141
  store double %add7, double* %arrayidx6, align 8, !dbg !141, !tbaa !74
  %28 = bitcast i32* %idx to i8*, !dbg !142
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #7, !dbg !142
  br label %omp.body.continue, !dbg !143

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !144

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !130, !tbaa !35
  %add8 = add nsw i32 %29, 1, !dbg !129
  store i32 %add8, i32* %.omp.iv, align 4, !dbg !129, !tbaa !35
  br label %omp.inner.for.cond, !dbg !144, !llvm.loop !145

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !144

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %30 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !144
  store i8* getelementptr inbounds ([82 x i8], [82 x i8]* @2, i32 0, i32 0), i8** %30, align 8, !dbg !144, !tbaa !82
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %12), !dbg !144
  %31 = bitcast i32* %i to i8*, !dbg !144
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #7, !dbg !144
  %32 = bitcast i32* %.omp.is_last to i8*, !dbg !144
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #7, !dbg !144
  %33 = bitcast i32* %.omp.stride to i8*, !dbg !144
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #7, !dbg !144
  %34 = bitcast i32* %.omp.ub to i8*, !dbg !144
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #7, !dbg !144
  %35 = bitcast i32* %.omp.lb to i8*, !dbg !144
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #7, !dbg !144
  %36 = bitcast i32* %.omp.iv to i8*, !dbg !144
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #7, !dbg !144
  ret void, !dbg !142
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., double** dereferenceable(8) %xa1, double** dereferenceable(8) %xa2) #5 !dbg !147 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %xa1.addr = alloca double**, align 8
  %xa2.addr = alloca double**, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !149, metadata !DIExpression()), !dbg !153
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !150, metadata !DIExpression()), !dbg !153
  store double** %xa1, double*** %xa1.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double*** %xa1.addr, metadata !151, metadata !DIExpression()), !dbg !153
  store double** %xa2, double*** %xa2.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double*** %xa2.addr, metadata !152, metadata !DIExpression()), !dbg !153
  %0 = load double**, double*** %xa1.addr, align 8, !dbg !154, !tbaa !40
  %1 = load double**, double*** %xa2.addr, align 8, !dbg !154, !tbaa !40
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !154, !tbaa !40
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !154, !tbaa !40
  %4 = load double**, double*** %xa1.addr, align 8, !dbg !154, !tbaa !40
  %5 = load double**, double*** %xa2.addr, align 8, !dbg !154, !tbaa !40
  call void @.omp_outlined._debug__(i32* %2, i32* %3, double** %4, double** %5) #7, !dbg !154
  ret void, !dbg !154
}

declare !callback !155 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #6

; Function Attrs: nounwind
declare !dbg !8 dso_local void @free(i8*) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "indexSet", scope: !2, file: !3, line: 60, type: !14, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB052-indirectaccesssharebase-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!22 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 97, type: !23, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !28)
!23 = !DISubroutineType(types: !24)
!24 = !{!15, !15, !25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !{!29, !30, !31, !32, !33, !34}
!29 = !DILocalVariable(name: "argc", arg: 1, scope: !22, file: !3, line: 97, type: !15)
!30 = !DILocalVariable(name: "argv", arg: 2, scope: !22, file: !3, line: 97, type: !25)
!31 = !DILocalVariable(name: "base", scope: !22, file: !3, line: 99, type: !6)
!32 = !DILocalVariable(name: "xa1", scope: !22, file: !3, line: 106, type: !6)
!33 = !DILocalVariable(name: "xa2", scope: !22, file: !3, line: 107, type: !6)
!34 = !DILocalVariable(name: "i", scope: !22, file: !3, line: 108, type: !15)
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 97, column: 15, scope: !22)
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !37, i64 0}
!42 = !DILocation(line: 97, column: 27, scope: !22)
!43 = !DILocation(line: 99, column: 3, scope: !22)
!44 = !DILocation(line: 99, column: 12, scope: !22)
!45 = !DILocation(line: 99, column: 29, scope: !22)
!46 = !DILocation(line: 99, column: 19, scope: !22)
!47 = !DILocation(line: 100, column: 7, scope: !48)
!48 = distinct !DILexicalBlock(scope: !22, file: !3, line: 100, column: 7)
!49 = !DILocation(line: 100, column: 12, scope: !48)
!50 = !DILocation(line: 100, column: 7, scope: !22)
!51 = !DILocation(line: 102, column: 5, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !3, line: 101, column: 3)
!53 = !DILocation(line: 103, column: 5, scope: !52)
!54 = !DILocation(line: 106, column: 3, scope: !22)
!55 = !DILocation(line: 106, column: 12, scope: !22)
!56 = !DILocation(line: 106, column: 18, scope: !22)
!57 = !DILocation(line: 107, column: 3, scope: !22)
!58 = !DILocation(line: 107, column: 12, scope: !22)
!59 = !DILocation(line: 107, column: 18, scope: !22)
!60 = !DILocation(line: 107, column: 23, scope: !22)
!61 = !DILocation(line: 108, column: 3, scope: !22)
!62 = !DILocation(line: 108, column: 7, scope: !22)
!63 = !DILocation(line: 110, column: 10, scope: !64)
!64 = distinct !DILexicalBlock(scope: !22, file: !3, line: 110, column: 3)
!65 = !DILocation(line: 110, column: 8, scope: !64)
!66 = !DILocation(line: 110, column: 16, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !3, line: 110, column: 3)
!68 = !DILocation(line: 110, column: 17, scope: !67)
!69 = !DILocation(line: 110, column: 3, scope: !64)
!70 = !DILocation(line: 112, column: 5, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !3, line: 111, column: 3)
!72 = !DILocation(line: 112, column: 10, scope: !71)
!73 = !DILocation(line: 112, column: 12, scope: !71)
!74 = !{!75, !75, i64 0}
!75 = !{!"double", !37, i64 0}
!76 = !DILocation(line: 113, column: 3, scope: !71)
!77 = !DILocation(line: 110, column: 26, scope: !67)
!78 = !DILocation(line: 110, column: 3, scope: !67)
!79 = distinct !{!79, !69, !80}
!80 = !DILocation(line: 113, column: 3, scope: !64)
!81 = !DILocation(line: 115, column: 1, scope: !22)
!82 = !{!83, !41, i64 16}
!83 = !{!"ident_t", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !41, i64 16}
!84 = !DILocation(line: 124, column: 10, scope: !85)
!85 = distinct !DILexicalBlock(scope: !22, file: !3, line: 124, column: 3)
!86 = !DILocation(line: 124, column: 8, scope: !85)
!87 = !DILocation(line: 124, column: 16, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !3, line: 124, column: 3)
!89 = !DILocation(line: 124, column: 17, scope: !88)
!90 = !DILocation(line: 124, column: 3, scope: !85)
!91 = !DILocation(line: 127, column: 5, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !3, line: 127, column: 5)
!93 = distinct !DILexicalBlock(scope: !94, file: !3, line: 127, column: 5)
!94 = distinct !DILexicalBlock(scope: !88, file: !3, line: 125, column: 3)
!95 = !DILocation(line: 127, column: 5, scope: !93)
!96 = !DILocation(line: 128, column: 3, scope: !94)
!97 = !DILocation(line: 124, column: 26, scope: !88)
!98 = !DILocation(line: 124, column: 3, scope: !88)
!99 = distinct !{!99, !90, !100}
!100 = !DILocation(line: 128, column: 3, scope: !85)
!101 = !DILocation(line: 130, column: 9, scope: !22)
!102 = !DILocation(line: 130, column: 3, scope: !22)
!103 = !DILocation(line: 131, column: 3, scope: !22)
!104 = !DILocation(line: 132, column: 1, scope: !22)
!105 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 116, type: !106, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !113)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !108, !108, !112, !112}
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!112 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6, size: 64)
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124}
!114 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !105, type: !108, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !105, type: !108, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: "xa1", arg: 3, scope: !105, file: !3, line: 106, type: !112)
!117 = !DILocalVariable(name: "xa2", arg: 4, scope: !105, file: !3, line: 107, type: !112)
!118 = !DILocalVariable(name: ".omp.iv", scope: !105, type: !15, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".omp.lb", scope: !105, type: !15, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: ".omp.ub", scope: !105, type: !15, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: ".omp.stride", scope: !105, type: !15, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: ".omp.is_last", scope: !105, type: !15, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "i", scope: !105, type: !15, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "idx", scope: !125, file: !3, line: 118, type: !15)
!125 = distinct !DILexicalBlock(scope: !105, file: !3, line: 117, column: 3)
!126 = !DILocation(line: 0, scope: !105)
!127 = !DILocation(line: 106, column: 12, scope: !105)
!128 = !DILocation(line: 107, column: 12, scope: !105)
!129 = !DILocation(line: 116, column: 3, scope: !105)
!130 = !DILocation(line: 116, column: 8, scope: !105)
!131 = !DILocation(line: 116, column: 20, scope: !105)
!132 = !DILocation(line: 118, column: 5, scope: !125)
!133 = !DILocation(line: 118, column: 9, scope: !125)
!134 = !DILocation(line: 118, column: 24, scope: !125)
!135 = !DILocation(line: 118, column: 15, scope: !125)
!136 = !DILocation(line: 119, column: 5, scope: !125)
!137 = !DILocation(line: 119, column: 9, scope: !125)
!138 = !DILocation(line: 119, column: 13, scope: !125)
!139 = !DILocation(line: 120, column: 5, scope: !125)
!140 = !DILocation(line: 120, column: 9, scope: !125)
!141 = !DILocation(line: 120, column: 13, scope: !125)
!142 = !DILocation(line: 121, column: 3, scope: !105)
!143 = !DILocation(line: 121, column: 3, scope: !125)
!144 = !DILocation(line: 115, column: 1, scope: !105)
!145 = distinct !{!145, !144, !146}
!146 = !DILocation(line: 115, column: 25, scope: !105)
!147 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 116, type: !106, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !148)
!148 = !{!149, !150, !151, !152}
!149 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !147, type: !108, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !147, type: !108, flags: DIFlagArtificial)
!151 = !DILocalVariable(name: "xa1", arg: 3, scope: !147, type: !112, flags: DIFlagArtificial)
!152 = !DILocalVariable(name: "xa2", arg: 4, scope: !147, type: !112, flags: DIFlagArtificial)
!153 = !DILocation(line: 0, scope: !147)
!154 = !DILocation(line: 116, column: 3, scope: !147)
!155 = !{!156}
!156 = !{i64 2, i64 -1, i64 -1, i1 true}
