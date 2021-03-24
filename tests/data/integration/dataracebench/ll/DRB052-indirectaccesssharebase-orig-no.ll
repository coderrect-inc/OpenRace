; ModuleID = 'DRB052-indirectaccesssharebase-orig-no.c'
source_filename = "DRB052-indirectaccesssharebase-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [47 x i8] c"Error, malloc() returns NULL. End execution. \0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [55 x i8] c";DRB052-indirectaccesssharebase-orig-no.c;main;115;1;;\00", align 1
@indexSet = dso_local global [180 x i32] [i32 521, i32 523, i32 525, i32 527, i32 529, i32 531, i32 547, i32 549, i32 551, i32 553, i32 555, i32 557, i32 573, i32 575, i32 577, i32 579, i32 581, i32 583, i32 599, i32 601, i32 603, i32 605, i32 607, i32 609, i32 625, i32 627, i32 629, i32 631, i32 633, i32 635, i32 651, i32 653, i32 655, i32 657, i32 659, i32 661, i32 859, i32 861, i32 863, i32 865, i32 867, i32 869, i32 885, i32 887, i32 889, i32 891, i32 893, i32 895, i32 911, i32 913, i32 915, i32 917, i32 919, i32 921, i32 937, i32 939, i32 941, i32 943, i32 945, i32 947, i32 963, i32 965, i32 967, i32 969, i32 971, i32 973, i32 989, i32 991, i32 993, i32 995, i32 997, i32 999, i32 1197, i32 1199, i32 1201, i32 1203, i32 1205, i32 1207, i32 1223, i32 1225, i32 1227, i32 1229, i32 1231, i32 1233, i32 1249, i32 1251, i32 1253, i32 1255, i32 1257, i32 1259, i32 1275, i32 1277, i32 1279, i32 1281, i32 1283, i32 1285, i32 1301, i32 1303, i32 1305, i32 1307, i32 1309, i32 1311, i32 1327, i32 1329, i32 1331, i32 1333, i32 1335, i32 1337, i32 1535, i32 1537, i32 1539, i32 1541, i32 1543, i32 1545, i32 1561, i32 1563, i32 1565, i32 1567, i32 1569, i32 1571, i32 1587, i32 1589, i32 1591, i32 1593, i32 1595, i32 1597, i32 1613, i32 1615, i32 1617, i32 1619, i32 1621, i32 1623, i32 1639, i32 1641, i32 1643, i32 1645, i32 1647, i32 1649, i32 1665, i32 1667, i32 1669, i32 1671, i32 1673, i32 1675, i32 1873, i32 1875, i32 1877, i32 1879, i32 1881, i32 1883, i32 1899, i32 1901, i32 1903, i32 1905, i32 1907, i32 1909, i32 1925, i32 1927, i32 1929, i32 1931, i32 1933, i32 1935, i32 1951, i32 1953, i32 1955, i32 1957, i32 1959, i32 1961, i32 1977, i32 1979, i32 1981, i32 1983, i32 1985, i32 1987, i32 2003, i32 2005, i32 2007, i32 2009, i32 2011, i32 2013], align 16, !dbg !0
@2 = private unnamed_addr constant [56 x i8] c";DRB052-indirectaccesssharebase-orig-no.c;main;115;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"base[i]!=4.0\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"DRB052-indirectaccesssharebase-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !17 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %base = alloca double*, align 8
  %xa1 = alloca double*, align 8
  %xa2 = alloca double*, align 8
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !23, metadata !DIExpression()), !dbg !24
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata double** %base, metadata !27, metadata !DIExpression()), !dbg !28
  %call = call noalias i8* @malloc(i64 16208) #7, !dbg !29
  %2 = bitcast i8* %call to double*, !dbg !30
  store double* %2, double** %base, align 8, !dbg !28
  %3 = load double*, double** %base, align 8, !dbg !31
  %cmp = icmp eq double* %3, null, !dbg !33
  br i1 %cmp, label %if.then, label %if.end, !dbg !34

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0)), !dbg !35
  store i32 1, i32* %retval, align 4, !dbg !37
  br label %return, !dbg !37

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata double** %xa1, metadata !38, metadata !DIExpression()), !dbg !39
  %4 = load double*, double** %base, align 8, !dbg !40
  store double* %4, double** %xa1, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata double** %xa2, metadata !41, metadata !DIExpression()), !dbg !42
  %5 = load double*, double** %base, align 8, !dbg !43
  %add.ptr = getelementptr inbounds double, double* %5, i64 12, !dbg !44
  store double* %add.ptr, double** %xa2, align 8, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %i, metadata !45, metadata !DIExpression()), !dbg !46
  store i32 521, i32* %i, align 4, !dbg !47
  br label %for.cond, !dbg !49

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4, !dbg !50
  %cmp2 = icmp sle i32 %6, 2025, !dbg !52
  br i1 %cmp2, label %for.body, label %for.end, !dbg !53

for.body:                                         ; preds = %for.cond
  %7 = load double*, double** %base, align 8, !dbg !54
  %8 = load i32, i32* %i, align 4, !dbg !56
  %idxprom = sext i32 %8 to i64, !dbg !54
  %arrayidx = getelementptr inbounds double, double* %7, i64 %idxprom, !dbg !54
  store double 0.000000e+00, double* %arrayidx, align 8, !dbg !57
  br label %for.inc, !dbg !58

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !59
  %inc = add nsw i32 %9, 1, !dbg !59
  store i32 %inc, i32* %i, align 4, !dbg !59
  br label %for.cond, !dbg !60, !llvm.loop !61

for.end:                                          ; preds = %for.cond
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !63
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !63
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), double** %xa1, double** %xa2), !dbg !63
  store i32 521, i32* %i, align 4, !dbg !64
  br label %for.cond3, !dbg !66

for.cond3:                                        ; preds = %for.inc11, %for.end
  %11 = load i32, i32* %i, align 4, !dbg !67
  %cmp4 = icmp sle i32 %11, 2025, !dbg !69
  br i1 %cmp4, label %for.body5, label %for.end13, !dbg !70

for.body5:                                        ; preds = %for.cond3
  %12 = load double*, double** %base, align 8, !dbg !71
  %13 = load i32, i32* %i, align 4, !dbg !71
  %idxprom6 = sext i32 %13 to i64, !dbg !71
  %arrayidx7 = getelementptr inbounds double, double* %12, i64 %idxprom6, !dbg !71
  %14 = load double, double* %arrayidx7, align 8, !dbg !71
  %cmp8 = fcmp une double %14, 4.000000e+00, !dbg !71
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !75

if.then9:                                         ; preds = %for.body5
  br label %if.end10, !dbg !75

if.else:                                          ; preds = %for.body5
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 127, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8, !dbg !71
  unreachable, !dbg !71

if.end10:                                         ; preds = %if.then9
  br label %for.inc11, !dbg !76

for.inc11:                                        ; preds = %if.end10
  %15 = load i32, i32* %i, align 4, !dbg !77
  %inc12 = add nsw i32 %15, 1, !dbg !77
  store i32 %inc12, i32* %i, align 4, !dbg !77
  br label %for.cond3, !dbg !78, !llvm.loop !79

for.end13:                                        ; preds = %for.cond3
  %16 = load double*, double** %base, align 8, !dbg !81
  %17 = bitcast double* %16 to i8*, !dbg !81
  call void @free(i8* %17) #7, !dbg !82
  store i32 0, i32* %retval, align 4, !dbg !83
  br label %return, !dbg !83

return:                                           ; preds = %for.end13, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !84
  ret i32 %18, !dbg !84
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., double** dereferenceable(8) %xa1, double** dereferenceable(8) %xa2) #4 !dbg !85 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !93, metadata !DIExpression()), !dbg !94
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !95, metadata !DIExpression()), !dbg !94
  store double** %xa1, double*** %xa1.addr, align 8
  call void @llvm.dbg.declare(metadata double*** %xa1.addr, metadata !96, metadata !DIExpression()), !dbg !97
  store double** %xa2, double*** %xa2.addr, align 8
  call void @llvm.dbg.declare(metadata double*** %xa2.addr, metadata !98, metadata !DIExpression()), !dbg !99
  %2 = load double**, double*** %xa1.addr, align 8, !dbg !100
  %3 = load double**, double*** %xa2.addr, align 8, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !101, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !102, metadata !DIExpression()), !dbg !94
  store i32 0, i32* %.omp.lb, align 4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !104, metadata !DIExpression()), !dbg !94
  store i32 179, i32* %.omp.ub, align 4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !105, metadata !DIExpression()), !dbg !94
  store i32 1, i32* %.omp.stride, align 4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !106, metadata !DIExpression()), !dbg !94
  store i32 0, i32* %.omp.is_last, align 4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %i, metadata !107, metadata !DIExpression()), !dbg !94
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !100
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !100
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !100
  %6 = load i32, i32* %5, align 4, !dbg !100
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !100
  %7 = load i32, i32* %.omp.ub, align 4, !dbg !103
  %cmp = icmp sgt i32 %7, 179, !dbg !103
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !103

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !103

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %.omp.ub, align 4, !dbg !103
  br label %cond.end, !dbg !103

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 179, %cond.true ], [ %8, %cond.false ], !dbg !103
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !103
  %9 = load i32, i32* %.omp.lb, align 4, !dbg !103
  store i32 %9, i32* %.omp.iv, align 4, !dbg !103
  br label %omp.inner.for.cond, !dbg !100

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %10 = load i32, i32* %.omp.iv, align 4, !dbg !103
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !103
  %cmp1 = icmp sle i32 %10, %11, !dbg !100
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !100

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !103
  %mul = mul nsw i32 %12, 1, !dbg !108
  %add = add nsw i32 0, %mul, !dbg !108
  store i32 %add, i32* %i, align 4, !dbg !108
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !109, metadata !DIExpression()), !dbg !111
  %13 = load i32, i32* %i, align 4, !dbg !112
  %idxprom = sext i32 %13 to i64, !dbg !113
  %arrayidx = getelementptr inbounds [180 x i32], [180 x i32]* @indexSet, i64 0, i64 %idxprom, !dbg !113
  %14 = load i32, i32* %arrayidx, align 4, !dbg !113
  store i32 %14, i32* %idx, align 4, !dbg !111
  %15 = load double*, double** %2, align 8, !dbg !114
  %16 = load i32, i32* %idx, align 4, !dbg !115
  %idxprom2 = sext i32 %16 to i64, !dbg !114
  %arrayidx3 = getelementptr inbounds double, double* %15, i64 %idxprom2, !dbg !114
  %17 = load double, double* %arrayidx3, align 8, !dbg !116
  %add4 = fadd double %17, 1.000000e+00, !dbg !116
  store double %add4, double* %arrayidx3, align 8, !dbg !116
  %18 = load double*, double** %3, align 8, !dbg !117
  %19 = load i32, i32* %idx, align 4, !dbg !118
  %idxprom5 = sext i32 %19 to i64, !dbg !117
  %arrayidx6 = getelementptr inbounds double, double* %18, i64 %idxprom5, !dbg !117
  %20 = load double, double* %arrayidx6, align 8, !dbg !119
  %add7 = fadd double %20, 3.000000e+00, !dbg !119
  store double %add7, double* %arrayidx6, align 8, !dbg !119
  br label %omp.body.continue, !dbg !120

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !121

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !103
  %add8 = add nsw i32 %21, 1, !dbg !100
  store i32 %add8, i32* %.omp.iv, align 4, !dbg !100
  br label %omp.inner.for.cond, !dbg !121, !llvm.loop !122

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !121

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !121
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @2, i32 0, i32 0), i8** %22, align 8, !dbg !121
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !121
  ret void, !dbg !124
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., double** dereferenceable(8) %xa1, double** dereferenceable(8) %xa2) #4 !dbg !125 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %xa1.addr = alloca double**, align 8
  %xa2.addr = alloca double**, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !126, metadata !DIExpression()), !dbg !127
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !128, metadata !DIExpression()), !dbg !127
  store double** %xa1, double*** %xa1.addr, align 8
  call void @llvm.dbg.declare(metadata double*** %xa1.addr, metadata !129, metadata !DIExpression()), !dbg !127
  store double** %xa2, double*** %xa2.addr, align 8
  call void @llvm.dbg.declare(metadata double*** %xa2.addr, metadata !130, metadata !DIExpression()), !dbg !127
  %0 = load double**, double*** %xa1.addr, align 8, !dbg !131
  %1 = load double**, double*** %xa2.addr, align 8, !dbg !131
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !131
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !131
  %4 = load double**, double*** %xa1.addr, align 8, !dbg !131
  %5 = load double**, double*** %xa2.addr, align 8, !dbg !131
  call void @.omp_outlined._debug__(i32* %2, i32* %3, double** %4, double** %5) #7, !dbg !131
  ret void, !dbg !131
}

declare !callback !132 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #6

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "indexSet", scope: !2, file: !3, line: 60, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB052-indirectaccesssharebase-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !{!0}
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 5760, elements: !11)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DISubrange(count: 180)
!13 = !{i32 7, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"clang version 10.0.1 "}
!17 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 97, type: !18, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!18 = !DISubroutineType(types: !19)
!19 = !{!10, !10, !20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DILocalVariable(name: "argc", arg: 1, scope: !17, file: !3, line: 97, type: !10)
!24 = !DILocation(line: 97, column: 15, scope: !17)
!25 = !DILocalVariable(name: "argv", arg: 2, scope: !17, file: !3, line: 97, type: !20)
!26 = !DILocation(line: 97, column: 27, scope: !17)
!27 = !DILocalVariable(name: "base", scope: !17, file: !3, line: 99, type: !6)
!28 = !DILocation(line: 99, column: 12, scope: !17)
!29 = !DILocation(line: 99, column: 29, scope: !17)
!30 = !DILocation(line: 99, column: 19, scope: !17)
!31 = !DILocation(line: 100, column: 7, scope: !32)
!32 = distinct !DILexicalBlock(scope: !17, file: !3, line: 100, column: 7)
!33 = !DILocation(line: 100, column: 12, scope: !32)
!34 = !DILocation(line: 100, column: 7, scope: !17)
!35 = !DILocation(line: 102, column: 5, scope: !36)
!36 = distinct !DILexicalBlock(scope: !32, file: !3, line: 101, column: 3)
!37 = !DILocation(line: 103, column: 5, scope: !36)
!38 = !DILocalVariable(name: "xa1", scope: !17, file: !3, line: 106, type: !6)
!39 = !DILocation(line: 106, column: 12, scope: !17)
!40 = !DILocation(line: 106, column: 18, scope: !17)
!41 = !DILocalVariable(name: "xa2", scope: !17, file: !3, line: 107, type: !6)
!42 = !DILocation(line: 107, column: 12, scope: !17)
!43 = !DILocation(line: 107, column: 18, scope: !17)
!44 = !DILocation(line: 107, column: 23, scope: !17)
!45 = !DILocalVariable(name: "i", scope: !17, file: !3, line: 108, type: !10)
!46 = !DILocation(line: 108, column: 7, scope: !17)
!47 = !DILocation(line: 110, column: 10, scope: !48)
!48 = distinct !DILexicalBlock(scope: !17, file: !3, line: 110, column: 3)
!49 = !DILocation(line: 110, column: 8, scope: !48)
!50 = !DILocation(line: 110, column: 16, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !3, line: 110, column: 3)
!52 = !DILocation(line: 110, column: 17, scope: !51)
!53 = !DILocation(line: 110, column: 3, scope: !48)
!54 = !DILocation(line: 112, column: 5, scope: !55)
!55 = distinct !DILexicalBlock(scope: !51, file: !3, line: 111, column: 3)
!56 = !DILocation(line: 112, column: 10, scope: !55)
!57 = !DILocation(line: 112, column: 12, scope: !55)
!58 = !DILocation(line: 113, column: 3, scope: !55)
!59 = !DILocation(line: 110, column: 26, scope: !51)
!60 = !DILocation(line: 110, column: 3, scope: !51)
!61 = distinct !{!61, !53, !62}
!62 = !DILocation(line: 113, column: 3, scope: !48)
!63 = !DILocation(line: 115, column: 1, scope: !17)
!64 = !DILocation(line: 124, column: 10, scope: !65)
!65 = distinct !DILexicalBlock(scope: !17, file: !3, line: 124, column: 3)
!66 = !DILocation(line: 124, column: 8, scope: !65)
!67 = !DILocation(line: 124, column: 16, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !3, line: 124, column: 3)
!69 = !DILocation(line: 124, column: 17, scope: !68)
!70 = !DILocation(line: 124, column: 3, scope: !65)
!71 = !DILocation(line: 127, column: 5, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !3, line: 127, column: 5)
!73 = distinct !DILexicalBlock(scope: !74, file: !3, line: 127, column: 5)
!74 = distinct !DILexicalBlock(scope: !68, file: !3, line: 125, column: 3)
!75 = !DILocation(line: 127, column: 5, scope: !73)
!76 = !DILocation(line: 128, column: 3, scope: !74)
!77 = !DILocation(line: 124, column: 26, scope: !68)
!78 = !DILocation(line: 124, column: 3, scope: !68)
!79 = distinct !{!79, !70, !80}
!80 = !DILocation(line: 128, column: 3, scope: !65)
!81 = !DILocation(line: 130, column: 9, scope: !17)
!82 = !DILocation(line: 130, column: 3, scope: !17)
!83 = !DILocation(line: 131, column: 3, scope: !17)
!84 = !DILocation(line: 132, column: 1, scope: !17)
!85 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 116, type: !86, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !88, !88, !92, !92}
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!92 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6, size: 64)
!93 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !85, type: !88, flags: DIFlagArtificial)
!94 = !DILocation(line: 0, scope: !85)
!95 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !85, type: !88, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: "xa1", arg: 3, scope: !85, file: !3, line: 106, type: !92)
!97 = !DILocation(line: 106, column: 12, scope: !85)
!98 = !DILocalVariable(name: "xa2", arg: 4, scope: !85, file: !3, line: 107, type: !92)
!99 = !DILocation(line: 107, column: 12, scope: !85)
!100 = !DILocation(line: 116, column: 3, scope: !85)
!101 = !DILocalVariable(name: ".omp.iv", scope: !85, type: !10, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".omp.lb", scope: !85, type: !10, flags: DIFlagArtificial)
!103 = !DILocation(line: 116, column: 8, scope: !85)
!104 = !DILocalVariable(name: ".omp.ub", scope: !85, type: !10, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: ".omp.stride", scope: !85, type: !10, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: ".omp.is_last", scope: !85, type: !10, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: "i", scope: !85, type: !10, flags: DIFlagArtificial)
!108 = !DILocation(line: 116, column: 20, scope: !85)
!109 = !DILocalVariable(name: "idx", scope: !110, file: !3, line: 118, type: !10)
!110 = distinct !DILexicalBlock(scope: !85, file: !3, line: 117, column: 3)
!111 = !DILocation(line: 118, column: 9, scope: !110)
!112 = !DILocation(line: 118, column: 24, scope: !110)
!113 = !DILocation(line: 118, column: 15, scope: !110)
!114 = !DILocation(line: 119, column: 5, scope: !110)
!115 = !DILocation(line: 119, column: 9, scope: !110)
!116 = !DILocation(line: 119, column: 13, scope: !110)
!117 = !DILocation(line: 120, column: 5, scope: !110)
!118 = !DILocation(line: 120, column: 9, scope: !110)
!119 = !DILocation(line: 120, column: 13, scope: !110)
!120 = !DILocation(line: 121, column: 3, scope: !110)
!121 = !DILocation(line: 115, column: 1, scope: !85)
!122 = distinct !{!122, !121, !123}
!123 = !DILocation(line: 115, column: 25, scope: !85)
!124 = !DILocation(line: 121, column: 3, scope: !85)
!125 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 116, type: !86, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!126 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !125, type: !88, flags: DIFlagArtificial)
!127 = !DILocation(line: 0, scope: !125)
!128 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !125, type: !88, flags: DIFlagArtificial)
!129 = !DILocalVariable(name: "xa1", arg: 3, scope: !125, type: !92, flags: DIFlagArtificial)
!130 = !DILocalVariable(name: "xa2", arg: 4, scope: !125, type: !92, flags: DIFlagArtificial)
!131 = !DILocation(line: 116, column: 3, scope: !125)
!132 = !{!133}
!133 = !{i64 2, i64 -1, i64 -1, i1 true}
