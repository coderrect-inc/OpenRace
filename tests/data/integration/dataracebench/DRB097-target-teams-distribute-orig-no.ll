; ModuleID = 'integration/dataracebench/DRB097-target-teams-distribute-orig-no.c'
source_filename = "integration/dataracebench/DRB097-target-teams-distribute-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [80 x i8] c";integration/dataracebench/DRB097-target-teams-distribute-orig-no.c;main;67;1;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [80 x i8] c";integration/dataracebench/DRB097-target-teams-distribute-orig-no.c;main;69;1;;\00", align 1
@4 = private unnamed_addr constant [81 x i8] c";integration/dataracebench/DRB097-target-teams-distribute-orig-no.c;main;69;43;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@5 = private unnamed_addr constant [81 x i8] c";integration/dataracebench/DRB097-target-teams-distribute-orig-no.c;main;66;69;;\00", align 1
@6 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@7 = private unnamed_addr constant [80 x i8] c";integration/dataracebench/DRB097-target-teams-distribute-orig-no.c;main;66;1;;\00", align 1
@8 = private unnamed_addr constant [80 x i8] c";integration/dataracebench/DRB097-target-teams-distribute-orig-no.c;main;74;1;;\00", align 1
@9 = private unnamed_addr constant [81 x i8] c";integration/dataracebench/DRB097-target-teams-distribute-orig-no.c;main;74;44;;\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"sum=%f sum2=%f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  %len = alloca i32, align 4
  %sum = alloca double, align 8
  %sum2 = alloca double, align 8
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %len.casted = alloca i64, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !35
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !39
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !42
  %2 = bitcast i32* %i to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !44
  %3 = bitcast i32* %i2 to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %i2, metadata !20, metadata !DIExpression()), !dbg !45
  %4 = bitcast i32* %len to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %len, metadata !21, metadata !DIExpression()), !dbg !47
  store i32 2560, i32* %len, align 4, !dbg !47, !tbaa !35
  %5 = bitcast double* %sum to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #3, !dbg !48
  call void @llvm.dbg.declare(metadata double* %sum, metadata !22, metadata !DIExpression()), !dbg !49
  store double 0.000000e+00, double* %sum, align 8, !dbg !49, !tbaa !50
  %6 = bitcast double* %sum2 to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #3, !dbg !48
  call void @llvm.dbg.declare(metadata double* %sum2, metadata !23, metadata !DIExpression()), !dbg !52
  store double 0.000000e+00, double* %sum2, align 8, !dbg !52, !tbaa !50
  %7 = load i32, i32* %len, align 4, !dbg !53, !tbaa !35
  %8 = zext i32 %7 to i64, !dbg !54
  %9 = call i8* @llvm.stacksave(), !dbg !54
  store i8* %9, i8** %saved_stack, align 8, !dbg !54
  %vla = alloca double, i64 %8, align 16, !dbg !54
  store i64 %8, i64* %__vla_expr0, align 8, !dbg !54
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !24, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata double* %vla, metadata !26, metadata !DIExpression()), !dbg !56
  %10 = load i32, i32* %len, align 4, !dbg !57, !tbaa !35
  %11 = zext i32 %10 to i64, !dbg !54
  %vla1 = alloca double, i64 %11, align 16, !dbg !54
  store i64 %11, i64* %__vla_expr1, align 8, !dbg !54
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !30, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata double* %vla1, metadata !31, metadata !DIExpression()), !dbg !58
  store i32 0, i32* %i, align 4, !dbg !59, !tbaa !35
  br label %for.cond, !dbg !61

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4, !dbg !62, !tbaa !35
  %13 = load i32, i32* %len, align 4, !dbg !64, !tbaa !35
  %cmp = icmp slt i32 %12, %13, !dbg !65
  br i1 %cmp, label %for.body, label %for.end, !dbg !66

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !dbg !67, !tbaa !35
  %conv = sitofp i32 %14 to double, !dbg !69
  %div = fdiv double %conv, 2.000000e+00, !dbg !70
  %15 = load i32, i32* %i, align 4, !dbg !71, !tbaa !35
  %idxprom = sext i32 %15 to i64, !dbg !72
  %arrayidx = getelementptr inbounds double, double* %vla, i64 %idxprom, !dbg !72
  store double %div, double* %arrayidx, align 8, !dbg !73, !tbaa !50
  %16 = load i32, i32* %i, align 4, !dbg !74, !tbaa !35
  %conv2 = sitofp i32 %16 to double, !dbg !75
  %div3 = fdiv double %conv2, 3.000000e+00, !dbg !76
  %17 = load i32, i32* %i, align 4, !dbg !77, !tbaa !35
  %idxprom4 = sext i32 %17 to i64, !dbg !78
  %arrayidx5 = getelementptr inbounds double, double* %vla1, i64 %idxprom4, !dbg !78
  store double %div3, double* %arrayidx5, align 8, !dbg !79, !tbaa !50
  br label %for.inc, !dbg !80

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !81, !tbaa !35
  %inc = add nsw i32 %18, 1, !dbg !81
  store i32 %inc, i32* %i, align 4, !dbg !81, !tbaa !35
  br label %for.cond, !dbg !82, !llvm.loop !83

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %len, align 4, !dbg !85, !tbaa !35
  %conv6 = bitcast i64* %len.casted to i32*, !dbg !85
  store i32 %19, i32* %conv6, align 4, !dbg !85, !tbaa !35
  %20 = load i64, i64* %len.casted, align 8, !dbg !85, !tbaa !86
  call void @__omp_offloading_1030a_2160921_main_l65(double* %sum, i64 %20, i64 %8, double* %vla, i64 %11, double* %vla1) #3, !dbg !88
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !90
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @8, i32 0, i32 0), i8** %21, align 8, !dbg !90, !tbaa !91
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double*, i64, double*, i64, double*)* @.omp_outlined..6 to void (i32*, i32*, ...)*), i32* %len, double* %sum2, i64 %8, double* %vla, i64 %11, double* %vla1), !dbg !90
  %22 = load double, double* %sum, align 8, !dbg !93, !tbaa !50
  %23 = load double, double* %sum2, align 8, !dbg !94, !tbaa !50
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), double %22, double %23), !dbg !95
  store i32 0, i32* %retval, align 4, !dbg !96
  %24 = load i8*, i8** %saved_stack, align 8, !dbg !97
  call void @llvm.stackrestore(i8* %24), !dbg !97
  %25 = bitcast double* %sum2 to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %25) #3, !dbg !97
  %26 = bitcast double* %sum to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %26) #3, !dbg !97
  %27 = bitcast i32* %len to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #3, !dbg !97
  %28 = bitcast i32* %i2 to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #3, !dbg !97
  %29 = bitcast i32* %i to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #3, !dbg !97
  %30 = load i32, i32* %retval, align 4, !dbg !97
  ret i32 %30, !dbg !97
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160921_main_l65_debug__(double* dereferenceable(8) %sum, i32 %len, i64 %vla, double* dereferenceable(8) %a, i64 %vla1, double* dereferenceable(8) %b) #4 !dbg !98 {
entry:
  %sum.addr = alloca double*, align 8
  %len.addr = alloca i32, align 4
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @7, i32 0, i32 0), i8** %2, align 8, !tbaa !91
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store double* %sum, double** %sum.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %sum.addr, metadata !103, metadata !DIExpression()), !dbg !109
  store i32 %len, i32* %len.addr, align 4, !tbaa !35
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !104, metadata !DIExpression()), !dbg !110
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !105, metadata !DIExpression()), !dbg !111
  store double* %a, double** %a.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !106, metadata !DIExpression()), !dbg !112
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !107, metadata !DIExpression()), !dbg !111
  store double* %b, double** %b.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !108, metadata !DIExpression()), !dbg !113
  %4 = load double*, double** %sum.addr, align 8, !dbg !114, !tbaa !40
  %5 = load i64, i64* %vla.addr, align 8, !dbg !114, !tbaa !86
  %6 = load double*, double** %a.addr, align 8, !dbg !114, !tbaa !40
  %7 = load i64, i64* %vla.addr2, align 8, !dbg !114, !tbaa !86
  %8 = load double*, double** %b.addr, align 8, !dbg !114, !tbaa !40
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !114
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @7, i32 0, i32 0), i8** %9, align 8, !dbg !114, !tbaa !91
  %10 = call i32 @__kmpc_push_num_teams(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 10, i32 256), !dbg !114
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !114
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @7, i32 0, i32 0), i8** %11, align 8, !dbg !114, !tbaa !91
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double*, i64, double*, i64, double*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), i32* %len.addr, double* %4, i64 %5, double* %6, i64 %7, double* %8), !dbg !114
  ret void, !dbg !115
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, double* dereferenceable(8) %sum, i64 %vla, double* dereferenceable(8) %a, i64 %vla1, double* dereferenceable(8) %b) #4 !dbg !116 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum.addr = alloca double*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %sum3 = alloca double, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.4 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i27 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %atomic-temp = alloca double, align 8
  %tmp13 = alloca double, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !125, metadata !DIExpression()), !dbg !142
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !126, metadata !DIExpression()), !dbg !142
  store i32* %len, i32** %len.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !127, metadata !DIExpression()), !dbg !143
  store double* %sum, double** %sum.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %sum.addr, metadata !128, metadata !DIExpression()), !dbg !144
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !129, metadata !DIExpression()), !dbg !142
  store double* %a, double** %a.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !130, metadata !DIExpression()), !dbg !145
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !131, metadata !DIExpression()), !dbg !142
  store double* %b, double** %b.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !132, metadata !DIExpression()), !dbg !146
  %2 = load i32*, i32** %len.addr, align 8, !dbg !147, !tbaa !40
  %3 = load double*, double** %sum.addr, align 8, !dbg !147, !tbaa !40
  %4 = load i64, i64* %vla.addr, align 8, !dbg !147, !tbaa !86
  %5 = load double*, double** %a.addr, align 8, !dbg !147, !tbaa !40
  %6 = load i64, i64* %vla.addr2, align 8, !dbg !147, !tbaa !86
  %7 = load double*, double** %b.addr, align 8, !dbg !147, !tbaa !40
  %8 = bitcast double* %sum3 to i8*, !dbg !147
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #3, !dbg !147
  call void @llvm.dbg.declare(metadata double* %sum3, metadata !133, metadata !DIExpression()), !dbg !142
  store double 0.000000e+00, double* %sum3, align 8, !dbg !148, !tbaa !50
  %9 = bitcast i32* %.omp.iv to i8*, !dbg !147
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3, !dbg !147
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !134, metadata !DIExpression()), !dbg !149
  %10 = bitcast i32* %.capture_expr. to i8*, !dbg !147
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !147
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !136, metadata !DIExpression()), !dbg !149
  %11 = load i32, i32* %2, align 4, !dbg !150, !tbaa !35
  store i32 %11, i32* %.capture_expr., align 4, !dbg !150, !tbaa !35
  %12 = bitcast i32* %.capture_expr.4 to i8*, !dbg !147
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3, !dbg !147
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.4, metadata !136, metadata !DIExpression()), !dbg !149
  %13 = load i32, i32* %.capture_expr., align 4, !dbg !150, !tbaa !35
  %sub = sub nsw i32 %13, 0, !dbg !151
  %sub5 = sub nsw i32 %sub, 1, !dbg !151
  %add = add nsw i32 %sub5, 256, !dbg !151
  %div = sdiv i32 %add, 256, !dbg !151
  %sub6 = sub nsw i32 %div, 1, !dbg !151
  store i32 %sub6, i32* %.capture_expr.4, align 4, !dbg !151, !tbaa !35
  %14 = bitcast i32* %i2 to i8*, !dbg !147
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3, !dbg !147
  call void @llvm.dbg.declare(metadata i32* %i2, metadata !137, metadata !DIExpression()), !dbg !149
  store i32 0, i32* %i2, align 4, !dbg !152, !tbaa !35
  %15 = bitcast i32* %i2 to i8*, !dbg !147
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #3, !dbg !147
  %16 = load i32, i32* %.capture_expr., align 4, !dbg !150, !tbaa !35
  %cmp = icmp slt i32 0, %16, !dbg !151
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !147

omp.precond.then:                                 ; preds = %entry
  %17 = bitcast i32* %.omp.lb to i8*, !dbg !147
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3, !dbg !147
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !138, metadata !DIExpression()), !dbg !149
  store i32 0, i32* %.omp.lb, align 4, !dbg !153, !tbaa !35
  %18 = bitcast i32* %.omp.ub to i8*, !dbg !147
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3, !dbg !147
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !139, metadata !DIExpression()), !dbg !149
  %19 = load i32, i32* %.capture_expr.4, align 4, !dbg !151, !tbaa !35
  store i32 %19, i32* %.omp.ub, align 4, !dbg !153, !tbaa !35
  %20 = bitcast i32* %.omp.stride to i8*, !dbg !147
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3, !dbg !147
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !140, metadata !DIExpression()), !dbg !149
  store i32 1, i32* %.omp.stride, align 4, !dbg !153, !tbaa !35
  %21 = bitcast i32* %.omp.is_last to i8*, !dbg !147
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #3, !dbg !147
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !141, metadata !DIExpression()), !dbg !149
  store i32 0, i32* %.omp.is_last, align 4, !dbg !153, !tbaa !35
  %22 = bitcast i32* %i27 to i8*, !dbg !147
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #3, !dbg !147
  call void @llvm.dbg.declare(metadata i32* %i27, metadata !137, metadata !DIExpression()), !dbg !149
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !147
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @1, i32 0, i32 0), i8** %23, align 8, !dbg !147, !tbaa !91
  %24 = load i32*, i32** %.global_tid..addr, align 8, !dbg !147
  %25 = load i32, i32* %24, align 4, !dbg !147, !tbaa !35
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %25, i32 92, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !147
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !153, !tbaa !35
  %27 = load i32, i32* %.capture_expr.4, align 4, !dbg !151, !tbaa !35
  %cmp8 = icmp sgt i32 %26, %27, !dbg !153
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !153

cond.true:                                        ; preds = %omp.precond.then
  %28 = load i32, i32* %.capture_expr.4, align 4, !dbg !151, !tbaa !35
  br label %cond.end, !dbg !153

cond.false:                                       ; preds = %omp.precond.then
  %29 = load i32, i32* %.omp.ub, align 4, !dbg !153, !tbaa !35
  br label %cond.end, !dbg !153

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ %29, %cond.false ], !dbg !153
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !153, !tbaa !35
  %30 = load i32, i32* %.omp.lb, align 4, !dbg !153, !tbaa !35
  store i32 %30, i32* %.omp.iv, align 4, !dbg !153, !tbaa !35
  br label %omp.inner.for.cond, !dbg !147

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %31 = load i32, i32* %.omp.iv, align 4, !dbg !153, !tbaa !35
  %32 = load i32, i32* %.omp.ub, align 4, !dbg !153, !tbaa !35
  %cmp9 = icmp sle i32 %31, %32, !dbg !151
  br i1 %cmp9, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !147

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !147

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %33 = load i32, i32* %.omp.iv, align 4, !dbg !153, !tbaa !35
  %mul = mul nsw i32 %33, 256, !dbg !152
  %add10 = add nsw i32 0, %mul, !dbg !152
  store i32 %add10, i32* %i27, align 4, !dbg !152, !tbaa !35
  %34 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !154
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @3, i32 0, i32 0), i8** %34, align 8, !dbg !154, !tbaa !91
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, double*, i64, double*, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %i27, i32* %2, double* %sum3, i64 %4, double* %5, i64 %6, double* %7), !dbg !154
  br label %omp.body.continue, !dbg !155

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !157

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %35 = load i32, i32* %.omp.iv, align 4, !dbg !153, !tbaa !35
  %add11 = add nsw i32 %35, 1, !dbg !151
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !151, !tbaa !35
  br label %omp.inner.for.cond, !dbg !157, !llvm.loop !158

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !157

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %36 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !157
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @1, i32 0, i32 0), i8** %36, align 8, !dbg !157, !tbaa !91
  %37 = load i32*, i32** %.global_tid..addr, align 8, !dbg !157
  %38 = load i32, i32* %37, align 4, !dbg !157, !tbaa !35
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %38), !dbg !157
  %39 = bitcast i32* %i27 to i8*, !dbg !157
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #3, !dbg !157
  br label %omp.precond.end, !dbg !157

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %40 = bitcast i32* %.omp.is_last to i8*, !dbg !157
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #3, !dbg !157
  %41 = bitcast i32* %.omp.stride to i8*, !dbg !157
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #3, !dbg !157
  %42 = bitcast i32* %.omp.ub to i8*, !dbg !157
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #3, !dbg !157
  %43 = bitcast i32* %.omp.lb to i8*, !dbg !157
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #3, !dbg !157
  %44 = bitcast i32* %.capture_expr.4 to i8*, !dbg !157
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #3, !dbg !157
  %45 = bitcast i32* %.capture_expr. to i8*, !dbg !157
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #3, !dbg !157
  %46 = bitcast i32* %.omp.iv to i8*, !dbg !157
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #3, !dbg !157
  %47 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !159
  %48 = bitcast double* %sum3 to i8*, !dbg !159
  store i8* %48, i8** %47, align 8, !dbg !159
  %49 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !159
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @5, i32 0, i32 0), i8** %49, align 8, !dbg !159, !tbaa !91
  %50 = load i32*, i32** %.global_tid..addr, align 8, !dbg !159
  %51 = load i32, i32* %50, align 4, !dbg !159, !tbaa !35
  %52 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !159
  %53 = call i32 @__kmpc_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %51, i32 1, i64 8, i8* %52, void (i8*, i8*)* @.omp.reduction.reduction_func.2, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !159
  switch i32 %53, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !159

.omp.reduction.case1:                             ; preds = %omp.precond.end
  %54 = load double, double* %3, align 8, !dbg !148, !tbaa !50
  %55 = load double, double* %sum3, align 8, !dbg !148, !tbaa !50
  %add12 = fadd double %54, %55, !dbg !160
  store double %add12, double* %3, align 8, !dbg !160, !tbaa !50
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %51, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !159
  br label %.omp.reduction.default, !dbg !159

.omp.reduction.case2:                             ; preds = %omp.precond.end
  %56 = load double, double* %sum3, align 8, !dbg !148, !tbaa !50
  %57 = bitcast double* %3 to i64*, !dbg !159
  %atomic-load = load atomic i64, i64* %57 monotonic, align 8, !dbg !159, !tbaa !50
  br label %atomic_cont, !dbg !159

atomic_cont:                                      ; preds = %atomic_cont, %.omp.reduction.case2
  %58 = phi i64 [ %atomic-load, %.omp.reduction.case2 ], [ %66, %atomic_cont ], !dbg !159
  %59 = bitcast double* %atomic-temp to i64*, !dbg !159
  %60 = bitcast i64 %58 to double, !dbg !159
  store double %60, double* %tmp13, align 8, !dbg !159, !tbaa !50
  %61 = load double, double* %tmp13, align 8, !dbg !148, !tbaa !50
  %62 = load double, double* %sum3, align 8, !dbg !148, !tbaa !50
  %add14 = fadd double %61, %62, !dbg !160
  store double %add14, double* %atomic-temp, align 8, !dbg !159, !tbaa !50
  %63 = load i64, i64* %59, align 8, !dbg !159
  %64 = bitcast double* %3 to i64*, !dbg !159
  %65 = cmpxchg i64* %64, i64 %58, i64 %63 monotonic monotonic, !dbg !159
  %66 = extractvalue { i64, i1 } %65, 0, !dbg !159
  %67 = extractvalue { i64, i1 } %65, 1, !dbg !159
  br i1 %67, label %atomic_exit, label %atomic_cont, !dbg !159

atomic_exit:                                      ; preds = %atomic_cont
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %51, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !159
  br label %.omp.reduction.default, !dbg !159

.omp.reduction.default:                           ; preds = %atomic_exit, %.omp.reduction.case1, %omp.precond.end
  %68 = bitcast double* %sum3 to i8*, !dbg !159
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %68) #3, !dbg !159
  ret void, !dbg !161
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i2, i32* dereferenceable(4) %len, double* dereferenceable(8) %sum, i64 %vla, double* dereferenceable(8) %a, i64 %vla1, double* dereferenceable(8) %b) #4 !dbg !162 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i2.addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum.addr = alloca double*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.3 = alloca i32, align 4
  %.capture_expr.5 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %sum10 = alloca double, align 8
  %i11 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %atomic-temp = alloca double, align 8
  %tmp25 = alloca double, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !166, metadata !DIExpression()), !dbg !183
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !167, metadata !DIExpression()), !dbg !183
  store i32* %i2, i32** %i2.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %i2.addr, metadata !168, metadata !DIExpression()), !dbg !184
  store i32* %len, i32** %len.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !169, metadata !DIExpression()), !dbg !185
  store double* %sum, double** %sum.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %sum.addr, metadata !170, metadata !DIExpression()), !dbg !186
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !171, metadata !DIExpression()), !dbg !183
  store double* %a, double** %a.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !172, metadata !DIExpression()), !dbg !187
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !173, metadata !DIExpression()), !dbg !183
  store double* %b, double** %b.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !174, metadata !DIExpression()), !dbg !188
  %2 = load i32*, i32** %i2.addr, align 8, !dbg !189, !tbaa !40
  %3 = load i32*, i32** %len.addr, align 8, !dbg !189, !tbaa !40
  %4 = load double*, double** %sum.addr, align 8, !dbg !189, !tbaa !40
  %5 = load i64, i64* %vla.addr, align 8, !dbg !189, !tbaa !86
  %6 = load double*, double** %a.addr, align 8, !dbg !189, !tbaa !40
  %7 = load i64, i64* %vla.addr2, align 8, !dbg !189, !tbaa !86
  %8 = load double*, double** %b.addr, align 8, !dbg !189, !tbaa !40
  %9 = bitcast i32* %.omp.iv to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !175, metadata !DIExpression()), !dbg !183
  %10 = bitcast i32* %.capture_expr. to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !176, metadata !DIExpression()), !dbg !183
  %11 = load i32, i32* %2, align 4, !dbg !190, !tbaa !35
  store i32 %11, i32* %.capture_expr., align 4, !dbg !190, !tbaa !35
  %12 = bitcast i32* %.capture_expr.3 to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !176, metadata !DIExpression()), !dbg !183
  %13 = load i32, i32* %2, align 4, !dbg !191, !tbaa !35
  %add = add nsw i32 %13, 256, !dbg !191
  %14 = load i32, i32* %3, align 4, !dbg !191, !tbaa !35
  %cmp = icmp slt i32 %add, %14, !dbg !191
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !191

cond.true:                                        ; preds = %entry
  %15 = load i32, i32* %2, align 4, !dbg !191, !tbaa !35
  %add4 = add nsw i32 %15, 256, !dbg !191
  br label %cond.end, !dbg !191

cond.false:                                       ; preds = %entry
  %16 = load i32, i32* %3, align 4, !dbg !191, !tbaa !35
  br label %cond.end, !dbg !191

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add4, %cond.true ], [ %16, %cond.false ], !dbg !191
  store i32 %cond, i32* %.capture_expr.3, align 4, !dbg !191, !tbaa !35
  %17 = bitcast i32* %.capture_expr.5 to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.5, metadata !176, metadata !DIExpression()), !dbg !183
  %18 = load i32, i32* %.capture_expr.3, align 4, !dbg !191, !tbaa !35
  %19 = load i32, i32* %.capture_expr., align 4, !dbg !190, !tbaa !35
  %sub = sub nsw i32 %18, %19, !dbg !189
  %sub6 = sub nsw i32 %sub, 1, !dbg !189
  %add7 = add nsw i32 %sub6, 1, !dbg !189
  %div = sdiv i32 %add7, 1, !dbg !189
  %sub8 = sub nsw i32 %div, 1, !dbg !189
  store i32 %sub8, i32* %.capture_expr.5, align 4, !dbg !189, !tbaa !35
  %20 = bitcast i32* %i to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %i, metadata !177, metadata !DIExpression()), !dbg !183
  %21 = load i32, i32* %.capture_expr., align 4, !dbg !190, !tbaa !35
  store i32 %21, i32* %i, align 4, !dbg !192, !tbaa !35
  %22 = bitcast i32* %i to i8*, !dbg !189
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #3, !dbg !189
  %23 = load i32, i32* %.capture_expr., align 4, !dbg !190, !tbaa !35
  %24 = load i32, i32* %.capture_expr.3, align 4, !dbg !191, !tbaa !35
  %cmp9 = icmp slt i32 %23, %24, !dbg !189
  br i1 %cmp9, label %omp.precond.then, label %omp.precond.end, !dbg !189

omp.precond.then:                                 ; preds = %cond.end
  %25 = bitcast i32* %.omp.lb to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %25) #3, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !178, metadata !DIExpression()), !dbg !183
  store i32 0, i32* %.omp.lb, align 4, !dbg !193, !tbaa !35
  %26 = bitcast i32* %.omp.ub to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #3, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !179, metadata !DIExpression()), !dbg !183
  %27 = load i32, i32* %.capture_expr.5, align 4, !dbg !189, !tbaa !35
  store i32 %27, i32* %.omp.ub, align 4, !dbg !193, !tbaa !35
  %28 = bitcast i32* %.omp.stride to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %28) #3, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !180, metadata !DIExpression()), !dbg !183
  store i32 1, i32* %.omp.stride, align 4, !dbg !193, !tbaa !35
  %29 = bitcast i32* %.omp.is_last to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %29) #3, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !181, metadata !DIExpression()), !dbg !183
  store i32 0, i32* %.omp.is_last, align 4, !dbg !193, !tbaa !35
  %30 = bitcast double* %sum10 to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %30) #3, !dbg !189
  call void @llvm.dbg.declare(metadata double* %sum10, metadata !182, metadata !DIExpression()), !dbg !183
  store double 0.000000e+00, double* %sum10, align 8, !dbg !194, !tbaa !50
  %31 = bitcast i32* %i11 to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %31) #3, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %i11, metadata !177, metadata !DIExpression()), !dbg !183
  %32 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !189
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @3, i32 0, i32 0), i8** %32, align 8, !dbg !189, !tbaa !91
  %33 = load i32*, i32** %.global_tid..addr, align 8, !dbg !189
  %34 = load i32, i32* %33, align 4, !dbg !189, !tbaa !35
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %34, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !189
  %35 = load i32, i32* %.omp.ub, align 4, !dbg !193, !tbaa !35
  %36 = load i32, i32* %.capture_expr.5, align 4, !dbg !189, !tbaa !35
  %cmp12 = icmp sgt i32 %35, %36, !dbg !193
  br i1 %cmp12, label %cond.true13, label %cond.false14, !dbg !193

cond.true13:                                      ; preds = %omp.precond.then
  %37 = load i32, i32* %.capture_expr.5, align 4, !dbg !189, !tbaa !35
  br label %cond.end15, !dbg !193

cond.false14:                                     ; preds = %omp.precond.then
  %38 = load i32, i32* %.omp.ub, align 4, !dbg !193, !tbaa !35
  br label %cond.end15, !dbg !193

cond.end15:                                       ; preds = %cond.false14, %cond.true13
  %cond16 = phi i32 [ %37, %cond.true13 ], [ %38, %cond.false14 ], !dbg !193
  store i32 %cond16, i32* %.omp.ub, align 4, !dbg !193, !tbaa !35
  %39 = load i32, i32* %.omp.lb, align 4, !dbg !193, !tbaa !35
  store i32 %39, i32* %.omp.iv, align 4, !dbg !193, !tbaa !35
  br label %omp.inner.for.cond, !dbg !189

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end15
  %40 = load i32, i32* %.omp.iv, align 4, !dbg !193, !tbaa !35
  %41 = load i32, i32* %.omp.ub, align 4, !dbg !193, !tbaa !35
  %cmp17 = icmp sle i32 %40, %41, !dbg !189
  br i1 %cmp17, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !189

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !189

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %42 = load i32, i32* %.capture_expr., align 4, !dbg !190, !tbaa !35
  %43 = load i32, i32* %.omp.iv, align 4, !dbg !193, !tbaa !35
  %mul = mul nsw i32 %43, 1, !dbg !192
  %add18 = add nsw i32 %42, %mul, !dbg !192
  store i32 %add18, i32* %i11, align 4, !dbg !192, !tbaa !35
  %44 = load i32, i32* %i11, align 4, !dbg !195, !tbaa !35
  %idxprom = sext i32 %44 to i64, !dbg !196
  %arrayidx = getelementptr inbounds double, double* %6, i64 %idxprom, !dbg !196
  %45 = load double, double* %arrayidx, align 8, !dbg !196, !tbaa !50
  %46 = load i32, i32* %i11, align 4, !dbg !197, !tbaa !35
  %idxprom19 = sext i32 %46 to i64, !dbg !198
  %arrayidx20 = getelementptr inbounds double, double* %8, i64 %idxprom19, !dbg !198
  %47 = load double, double* %arrayidx20, align 8, !dbg !198, !tbaa !50
  %mul21 = fmul double %45, %47, !dbg !199
  %48 = load double, double* %sum10, align 8, !dbg !200, !tbaa !50
  %add22 = fadd double %48, %mul21, !dbg !200
  store double %add22, double* %sum10, align 8, !dbg !200, !tbaa !50
  br label %omp.body.continue, !dbg !201

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !202

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %49 = load i32, i32* %.omp.iv, align 4, !dbg !193, !tbaa !35
  %add23 = add nsw i32 %49, 1, !dbg !189
  store i32 %add23, i32* %.omp.iv, align 4, !dbg !189, !tbaa !35
  br label %omp.inner.for.cond, !dbg !202, !llvm.loop !203

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !202

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %50 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !202
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @4, i32 0, i32 0), i8** %50, align 8, !dbg !202, !tbaa !91
  %51 = load i32*, i32** %.global_tid..addr, align 8, !dbg !202
  %52 = load i32, i32* %51, align 4, !dbg !202, !tbaa !35
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %52), !dbg !202
  %53 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !202
  %54 = bitcast double* %sum10 to i8*, !dbg !202
  store i8* %54, i8** %53, align 8, !dbg !202
  %55 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !202
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @4, i32 0, i32 0), i8** %55, align 8, !dbg !202, !tbaa !91
  %56 = load i32*, i32** %.global_tid..addr, align 8, !dbg !202
  %57 = load i32, i32* %56, align 4, !dbg !202, !tbaa !35
  %58 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !202
  %59 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %57, i32 1, i64 8, i8* %58, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !202
  switch i32 %59, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !202

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %60 = load double, double* %4, align 8, !dbg !194, !tbaa !50
  %61 = load double, double* %sum10, align 8, !dbg !194, !tbaa !50
  %add24 = fadd double %60, %61, !dbg !205
  store double %add24, double* %4, align 8, !dbg !205, !tbaa !50
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %57, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !202
  br label %.omp.reduction.default, !dbg !202

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %62 = load double, double* %sum10, align 8, !dbg !194, !tbaa !50
  %63 = bitcast double* %4 to i64*, !dbg !202
  %atomic-load = load atomic i64, i64* %63 monotonic, align 8, !dbg !202, !tbaa !50
  br label %atomic_cont, !dbg !202

atomic_cont:                                      ; preds = %atomic_cont, %.omp.reduction.case2
  %64 = phi i64 [ %atomic-load, %.omp.reduction.case2 ], [ %72, %atomic_cont ], !dbg !202
  %65 = bitcast double* %atomic-temp to i64*, !dbg !202
  %66 = bitcast i64 %64 to double, !dbg !202
  store double %66, double* %tmp25, align 8, !dbg !202, !tbaa !50
  %67 = load double, double* %tmp25, align 8, !dbg !194, !tbaa !50
  %68 = load double, double* %sum10, align 8, !dbg !194, !tbaa !50
  %add26 = fadd double %67, %68, !dbg !205
  store double %add26, double* %atomic-temp, align 8, !dbg !202, !tbaa !50
  %69 = load i64, i64* %65, align 8, !dbg !202
  %70 = bitcast double* %4 to i64*, !dbg !202
  %71 = cmpxchg i64* %70, i64 %64, i64 %69 monotonic monotonic, !dbg !202
  %72 = extractvalue { i64, i1 } %71, 0, !dbg !202
  %73 = extractvalue { i64, i1 } %71, 1, !dbg !202
  br i1 %73, label %atomic_exit, label %atomic_cont, !dbg !202

atomic_exit:                                      ; preds = %atomic_cont
  br label %.omp.reduction.default, !dbg !202

.omp.reduction.default:                           ; preds = %atomic_exit, %.omp.reduction.case1, %omp.loop.exit
  %74 = bitcast i32* %i11 to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %74) #3, !dbg !202
  %75 = bitcast double* %sum10 to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %75) #3, !dbg !202
  %76 = bitcast i32* %.omp.is_last to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #3, !dbg !202
  %77 = bitcast i32* %.omp.stride to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #3, !dbg !202
  %78 = bitcast i32* %.omp.ub to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #3, !dbg !202
  %79 = bitcast i32* %.omp.lb to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #3, !dbg !202
  br label %omp.precond.end, !dbg !202

omp.precond.end:                                  ; preds = %.omp.reduction.default, %cond.end
  %80 = bitcast i32* %.capture_expr.5 to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #3, !dbg !202
  %81 = bitcast i32* %.capture_expr.3 to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %81) #3, !dbg !202
  %82 = bitcast i32* %.capture_expr. to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %82) #3, !dbg !202
  %83 = bitcast i32* %.omp.iv to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %83) #3, !dbg !202
  ret void, !dbg !206
}

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #4 !dbg !207 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !210, metadata !DIExpression()), !dbg !213
  store i8* %1, i8** %.addr1, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !212, metadata !DIExpression()), !dbg !213
  %2 = load i8*, i8** %.addr, align 8, !dbg !214
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !214
  %4 = load i8*, i8** %.addr1, align 8, !dbg !214
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !214
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !214
  %7 = load i8*, i8** %6, align 8, !dbg !214
  %8 = bitcast i8* %7 to double*, !dbg !214
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !214
  %10 = load i8*, i8** %9, align 8, !dbg !214
  %11 = bitcast i8* %10 to double*, !dbg !214
  %12 = load double, double* %11, align 8, !dbg !215, !tbaa !50
  %13 = load double, double* %8, align 8, !dbg !215, !tbaa !50
  %add = fadd double %12, %13, !dbg !216
  store double %add, double* %11, align 8, !dbg !216, !tbaa !50
  ret void, !dbg !215
}

declare dso_local i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i2, i32* dereferenceable(4) %len, double* dereferenceable(8) %sum, i64 %vla, double* dereferenceable(8) %a, i64 %vla1, double* dereferenceable(8) %b) #4 !dbg !217 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i2.addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum.addr = alloca double*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !219, metadata !DIExpression()), !dbg !228
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !220, metadata !DIExpression()), !dbg !228
  store i32* %i2, i32** %i2.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %i2.addr, metadata !221, metadata !DIExpression()), !dbg !228
  store i32* %len, i32** %len.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !222, metadata !DIExpression()), !dbg !228
  store double* %sum, double** %sum.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %sum.addr, metadata !223, metadata !DIExpression()), !dbg !228
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !224, metadata !DIExpression()), !dbg !228
  store double* %a, double** %a.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !225, metadata !DIExpression()), !dbg !228
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !226, metadata !DIExpression()), !dbg !228
  store double* %b, double** %b.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !227, metadata !DIExpression()), !dbg !228
  %0 = load i32*, i32** %i2.addr, align 8, !dbg !229, !tbaa !40
  %1 = load i32*, i32** %len.addr, align 8, !dbg !229, !tbaa !40
  %2 = load double*, double** %sum.addr, align 8, !dbg !229, !tbaa !40
  %3 = load i64, i64* %vla.addr, align 8, !dbg !229, !tbaa !86
  %4 = load double*, double** %a.addr, align 8, !dbg !229, !tbaa !40
  %5 = load i64, i64* %vla.addr2, align 8, !dbg !229, !tbaa !86
  %6 = load double*, double** %b.addr, align 8, !dbg !229, !tbaa !40
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !229, !tbaa !40
  %8 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !229, !tbaa !40
  %9 = load i32*, i32** %i2.addr, align 8, !dbg !229, !tbaa !40
  %10 = load i32*, i32** %len.addr, align 8, !dbg !229, !tbaa !40
  %11 = load double*, double** %sum.addr, align 8, !dbg !229, !tbaa !40
  %12 = load double*, double** %a.addr, align 8, !dbg !229, !tbaa !40
  %13 = load double*, double** %b.addr, align 8, !dbg !229, !tbaa !40
  call void @.omp_outlined._debug__.1(i32* %7, i32* %8, i32* %9, i32* %10, double* %11, i64 %3, double* %12, i64 %5, double* %13) #3, !dbg !229
  ret void, !dbg !229
}

declare !callback !230 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func.2(i8* %0, i8* %1) #4 !dbg !232 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !234, metadata !DIExpression()), !dbg !236
  store i8* %1, i8** %.addr1, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !235, metadata !DIExpression()), !dbg !236
  %2 = load i8*, i8** %.addr, align 8, !dbg !237
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !237
  %4 = load i8*, i8** %.addr1, align 8, !dbg !237
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !237
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !237
  %7 = load i8*, i8** %6, align 8, !dbg !237
  %8 = bitcast i8* %7 to double*, !dbg !237
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !237
  %10 = load i8*, i8** %9, align 8, !dbg !237
  %11 = bitcast i8* %10 to double*, !dbg !237
  %12 = load double, double* %11, align 8, !dbg !238, !tbaa !50
  %13 = load double, double* %8, align 8, !dbg !238, !tbaa !50
  %add = fadd double %12, %13, !dbg !239
  store double %add, double* %11, align 8, !dbg !239, !tbaa !50
  ret void, !dbg !238
}

declare dso_local i32 @__kmpc_reduce(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, double* dereferenceable(8) %sum, i64 %vla, double* dereferenceable(8) %a, i64 %vla1, double* dereferenceable(8) %b) #4 !dbg !240 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum.addr = alloca double*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !242, metadata !DIExpression()), !dbg !250
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !243, metadata !DIExpression()), !dbg !250
  store i32* %len, i32** %len.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !244, metadata !DIExpression()), !dbg !250
  store double* %sum, double** %sum.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %sum.addr, metadata !245, metadata !DIExpression()), !dbg !250
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !246, metadata !DIExpression()), !dbg !250
  store double* %a, double** %a.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !247, metadata !DIExpression()), !dbg !250
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !248, metadata !DIExpression()), !dbg !250
  store double* %b, double** %b.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !249, metadata !DIExpression()), !dbg !250
  %0 = load i32*, i32** %len.addr, align 8, !dbg !251, !tbaa !40
  %1 = load double*, double** %sum.addr, align 8, !dbg !251, !tbaa !40
  %2 = load i64, i64* %vla.addr, align 8, !dbg !251, !tbaa !86
  %3 = load double*, double** %a.addr, align 8, !dbg !251, !tbaa !40
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !251, !tbaa !86
  %5 = load double*, double** %b.addr, align 8, !dbg !251, !tbaa !40
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !251, !tbaa !40
  %7 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !251, !tbaa !40
  %8 = load i32*, i32** %len.addr, align 8, !dbg !251, !tbaa !40
  %9 = load double*, double** %sum.addr, align 8, !dbg !251, !tbaa !40
  %10 = load double*, double** %a.addr, align 8, !dbg !251, !tbaa !40
  %11 = load double*, double** %b.addr, align 8, !dbg !251, !tbaa !40
  call void @.omp_outlined._debug__(i32* %6, i32* %7, i32* %8, double* %9, i64 %2, double* %10, i64 %4, double* %11) #3, !dbg !251
  ret void, !dbg !251
}

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i32 @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32)

declare !callback !230 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160921_main_l65(double* dereferenceable(8) %sum, i64 %len, i64 %vla, double* dereferenceable(8) %a, i64 %vla1, double* dereferenceable(8) %b) #4 !dbg !252 {
entry:
  %sum.addr = alloca double*, align 8
  %len.addr = alloca i64, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  store double* %sum, double** %sum.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %sum.addr, metadata !256, metadata !DIExpression()), !dbg !262
  store i64 %len, i64* %len.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !257, metadata !DIExpression()), !dbg !262
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !258, metadata !DIExpression()), !dbg !262
  store double* %a, double** %a.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !259, metadata !DIExpression()), !dbg !262
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !260, metadata !DIExpression()), !dbg !262
  store double* %b, double** %b.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !261, metadata !DIExpression()), !dbg !262
  %0 = load double*, double** %sum.addr, align 8, !dbg !263, !tbaa !40
  %conv = bitcast i64* %len.addr to i32*, !dbg !263
  %1 = load i64, i64* %vla.addr, align 8, !dbg !263, !tbaa !86
  %2 = load double*, double** %a.addr, align 8, !dbg !263, !tbaa !40
  %3 = load i64, i64* %vla.addr2, align 8, !dbg !263, !tbaa !86
  %4 = load double*, double** %b.addr, align 8, !dbg !263, !tbaa !40
  %5 = load double*, double** %sum.addr, align 8, !dbg !263, !tbaa !40
  %6 = load i32, i32* %conv, align 8, !dbg !263, !tbaa !35
  %7 = load double*, double** %a.addr, align 8, !dbg !263, !tbaa !40
  %8 = load double*, double** %b.addr, align 8, !dbg !263, !tbaa !40
  call void @__omp_offloading_1030a_2160921_main_l65_debug__(double* %5, i32 %6, i64 %1, double* %7, i64 %3, double* %8) #3, !dbg !263
  ret void, !dbg !263
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__.4(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, double* dereferenceable(8) %sum2, i64 %vla, double* dereferenceable(8) %a, i64 %vla1, double* dereferenceable(8) %b) #4 !dbg !264 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum2.addr = alloca double*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
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
  %sum26 = alloca double, align 8
  %i7 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %atomic-temp = alloca double, align 8
  %tmp17 = alloca double, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !266, metadata !DIExpression()), !dbg !282
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !267, metadata !DIExpression()), !dbg !282
  store i32* %len, i32** %len.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !268, metadata !DIExpression()), !dbg !283
  store double* %sum2, double** %sum2.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %sum2.addr, metadata !269, metadata !DIExpression()), !dbg !284
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !270, metadata !DIExpression()), !dbg !282
  store double* %a, double** %a.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !271, metadata !DIExpression()), !dbg !285
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !272, metadata !DIExpression()), !dbg !282
  store double* %b, double** %b.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !273, metadata !DIExpression()), !dbg !286
  %2 = load i32*, i32** %len.addr, align 8, !dbg !287, !tbaa !40
  %3 = load double*, double** %sum2.addr, align 8, !dbg !287, !tbaa !40
  %4 = load i64, i64* %vla.addr, align 8, !dbg !287, !tbaa !86
  %5 = load double*, double** %a.addr, align 8, !dbg !287, !tbaa !40
  %6 = load i64, i64* %vla.addr2, align 8, !dbg !287, !tbaa !86
  %7 = load double*, double** %b.addr, align 8, !dbg !287, !tbaa !40
  %8 = bitcast i32* %.omp.iv to i8*, !dbg !287
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !287
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !274, metadata !DIExpression()), !dbg !282
  %9 = bitcast i32* %.capture_expr. to i8*, !dbg !287
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3, !dbg !287
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !275, metadata !DIExpression()), !dbg !282
  %10 = load i32, i32* %2, align 4, !dbg !288, !tbaa !35
  store i32 %10, i32* %.capture_expr., align 4, !dbg !288, !tbaa !35
  %11 = bitcast i32* %.capture_expr.3 to i8*, !dbg !287
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3, !dbg !287
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !275, metadata !DIExpression()), !dbg !282
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !288, !tbaa !35
  %sub = sub nsw i32 %12, 0, !dbg !287
  %sub4 = sub nsw i32 %sub, 1, !dbg !287
  %add = add nsw i32 %sub4, 1, !dbg !287
  %div = sdiv i32 %add, 1, !dbg !287
  %sub5 = sub nsw i32 %div, 1, !dbg !287
  store i32 %sub5, i32* %.capture_expr.3, align 4, !dbg !287, !tbaa !35
  %13 = bitcast i32* %i to i8*, !dbg !287
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3, !dbg !287
  call void @llvm.dbg.declare(metadata i32* %i, metadata !276, metadata !DIExpression()), !dbg !282
  store i32 0, i32* %i, align 4, !dbg !289, !tbaa !35
  %14 = bitcast i32* %i to i8*, !dbg !287
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #3, !dbg !287
  %15 = load i32, i32* %.capture_expr., align 4, !dbg !288, !tbaa !35
  %cmp = icmp slt i32 0, %15, !dbg !287
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !287

omp.precond.then:                                 ; preds = %entry
  %16 = bitcast i32* %.omp.lb to i8*, !dbg !287
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3, !dbg !287
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !277, metadata !DIExpression()), !dbg !282
  store i32 0, i32* %.omp.lb, align 4, !dbg !290, !tbaa !35
  %17 = bitcast i32* %.omp.ub to i8*, !dbg !287
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3, !dbg !287
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !278, metadata !DIExpression()), !dbg !282
  %18 = load i32, i32* %.capture_expr.3, align 4, !dbg !287, !tbaa !35
  store i32 %18, i32* %.omp.ub, align 4, !dbg !290, !tbaa !35
  %19 = bitcast i32* %.omp.stride to i8*, !dbg !287
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3, !dbg !287
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !279, metadata !DIExpression()), !dbg !282
  store i32 1, i32* %.omp.stride, align 4, !dbg !290, !tbaa !35
  %20 = bitcast i32* %.omp.is_last to i8*, !dbg !287
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3, !dbg !287
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !280, metadata !DIExpression()), !dbg !282
  store i32 0, i32* %.omp.is_last, align 4, !dbg !290, !tbaa !35
  %21 = bitcast double* %sum26 to i8*, !dbg !287
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %21) #3, !dbg !287
  call void @llvm.dbg.declare(metadata double* %sum26, metadata !281, metadata !DIExpression()), !dbg !282
  store double 0.000000e+00, double* %sum26, align 8, !dbg !291, !tbaa !50
  %22 = bitcast i32* %i7 to i8*, !dbg !287
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #3, !dbg !287
  call void @llvm.dbg.declare(metadata i32* %i7, metadata !276, metadata !DIExpression()), !dbg !282
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !287
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @8, i32 0, i32 0), i8** %23, align 8, !dbg !287, !tbaa !91
  %24 = load i32*, i32** %.global_tid..addr, align 8, !dbg !287
  %25 = load i32, i32* %24, align 4, !dbg !287, !tbaa !35
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %25, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !287
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !290, !tbaa !35
  %27 = load i32, i32* %.capture_expr.3, align 4, !dbg !287, !tbaa !35
  %cmp8 = icmp sgt i32 %26, %27, !dbg !290
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !290

cond.true:                                        ; preds = %omp.precond.then
  %28 = load i32, i32* %.capture_expr.3, align 4, !dbg !287, !tbaa !35
  br label %cond.end, !dbg !290

cond.false:                                       ; preds = %omp.precond.then
  %29 = load i32, i32* %.omp.ub, align 4, !dbg !290, !tbaa !35
  br label %cond.end, !dbg !290

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ %29, %cond.false ], !dbg !290
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !290, !tbaa !35
  %30 = load i32, i32* %.omp.lb, align 4, !dbg !290, !tbaa !35
  store i32 %30, i32* %.omp.iv, align 4, !dbg !290, !tbaa !35
  br label %omp.inner.for.cond, !dbg !287

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %31 = load i32, i32* %.omp.iv, align 4, !dbg !290, !tbaa !35
  %32 = load i32, i32* %.omp.ub, align 4, !dbg !290, !tbaa !35
  %cmp9 = icmp sle i32 %31, %32, !dbg !287
  br i1 %cmp9, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !287

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !287

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %33 = load i32, i32* %.omp.iv, align 4, !dbg !290, !tbaa !35
  %mul = mul nsw i32 %33, 1, !dbg !289
  %add10 = add nsw i32 0, %mul, !dbg !289
  store i32 %add10, i32* %i7, align 4, !dbg !289, !tbaa !35
  %34 = load i32, i32* %i7, align 4, !dbg !292, !tbaa !35
  %idxprom = sext i32 %34 to i64, !dbg !293
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom, !dbg !293
  %35 = load double, double* %arrayidx, align 8, !dbg !293, !tbaa !50
  %36 = load i32, i32* %i7, align 4, !dbg !294, !tbaa !35
  %idxprom11 = sext i32 %36 to i64, !dbg !295
  %arrayidx12 = getelementptr inbounds double, double* %7, i64 %idxprom11, !dbg !295
  %37 = load double, double* %arrayidx12, align 8, !dbg !295, !tbaa !50
  %mul13 = fmul double %35, %37, !dbg !296
  %38 = load double, double* %sum26, align 8, !dbg !297, !tbaa !50
  %add14 = fadd double %38, %mul13, !dbg !297
  store double %add14, double* %sum26, align 8, !dbg !297, !tbaa !50
  br label %omp.body.continue, !dbg !298

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !299

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %39 = load i32, i32* %.omp.iv, align 4, !dbg !290, !tbaa !35
  %add15 = add nsw i32 %39, 1, !dbg !287
  store i32 %add15, i32* %.omp.iv, align 4, !dbg !287, !tbaa !35
  br label %omp.inner.for.cond, !dbg !299, !llvm.loop !300

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !299

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %40 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !299
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @9, i32 0, i32 0), i8** %40, align 8, !dbg !299, !tbaa !91
  %41 = load i32*, i32** %.global_tid..addr, align 8, !dbg !299
  %42 = load i32, i32* %41, align 4, !dbg !299, !tbaa !35
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %42), !dbg !299
  %43 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !299
  %44 = bitcast double* %sum26 to i8*, !dbg !299
  store i8* %44, i8** %43, align 8, !dbg !299
  %45 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !299
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @9, i32 0, i32 0), i8** %45, align 8, !dbg !299, !tbaa !91
  %46 = load i32*, i32** %.global_tid..addr, align 8, !dbg !299
  %47 = load i32, i32* %46, align 4, !dbg !299, !tbaa !35
  %48 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !299
  %49 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %47, i32 1, i64 8, i8* %48, void (i8*, i8*)* @.omp.reduction.reduction_func.5, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !299
  switch i32 %49, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !299

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %50 = load double, double* %3, align 8, !dbg !291, !tbaa !50
  %51 = load double, double* %sum26, align 8, !dbg !291, !tbaa !50
  %add16 = fadd double %50, %51, !dbg !302
  store double %add16, double* %3, align 8, !dbg !302, !tbaa !50
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %47, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !299
  br label %.omp.reduction.default, !dbg !299

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %52 = load double, double* %sum26, align 8, !dbg !291, !tbaa !50
  %53 = bitcast double* %3 to i64*, !dbg !299
  %atomic-load = load atomic i64, i64* %53 monotonic, align 8, !dbg !299, !tbaa !50
  br label %atomic_cont, !dbg !299

atomic_cont:                                      ; preds = %atomic_cont, %.omp.reduction.case2
  %54 = phi i64 [ %atomic-load, %.omp.reduction.case2 ], [ %62, %atomic_cont ], !dbg !299
  %55 = bitcast double* %atomic-temp to i64*, !dbg !299
  %56 = bitcast i64 %54 to double, !dbg !299
  store double %56, double* %tmp17, align 8, !dbg !299, !tbaa !50
  %57 = load double, double* %tmp17, align 8, !dbg !291, !tbaa !50
  %58 = load double, double* %sum26, align 8, !dbg !291, !tbaa !50
  %add18 = fadd double %57, %58, !dbg !302
  store double %add18, double* %atomic-temp, align 8, !dbg !299, !tbaa !50
  %59 = load i64, i64* %55, align 8, !dbg !299
  %60 = bitcast double* %3 to i64*, !dbg !299
  %61 = cmpxchg i64* %60, i64 %54, i64 %59 monotonic monotonic, !dbg !299
  %62 = extractvalue { i64, i1 } %61, 0, !dbg !299
  %63 = extractvalue { i64, i1 } %61, 1, !dbg !299
  br i1 %63, label %atomic_exit, label %atomic_cont, !dbg !299

atomic_exit:                                      ; preds = %atomic_cont
  br label %.omp.reduction.default, !dbg !299

.omp.reduction.default:                           ; preds = %atomic_exit, %.omp.reduction.case1, %omp.loop.exit
  %64 = bitcast i32* %i7 to i8*, !dbg !299
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #3, !dbg !299
  %65 = bitcast double* %sum26 to i8*, !dbg !299
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %65) #3, !dbg !299
  %66 = bitcast i32* %.omp.is_last to i8*, !dbg !299
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #3, !dbg !299
  %67 = bitcast i32* %.omp.stride to i8*, !dbg !299
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #3, !dbg !299
  %68 = bitcast i32* %.omp.ub to i8*, !dbg !299
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %68) #3, !dbg !299
  %69 = bitcast i32* %.omp.lb to i8*, !dbg !299
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #3, !dbg !299
  br label %omp.precond.end, !dbg !299

omp.precond.end:                                  ; preds = %.omp.reduction.default, %entry
  %70 = bitcast i32* %.capture_expr.3 to i8*, !dbg !299
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %70) #3, !dbg !299
  %71 = bitcast i32* %.capture_expr. to i8*, !dbg !299
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #3, !dbg !299
  %72 = bitcast i32* %.omp.iv to i8*, !dbg !299
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %72) #3, !dbg !299
  ret void, !dbg !303
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func.5(i8* %0, i8* %1) #4 !dbg !304 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !306, metadata !DIExpression()), !dbg !308
  store i8* %1, i8** %.addr1, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !307, metadata !DIExpression()), !dbg !308
  %2 = load i8*, i8** %.addr, align 8, !dbg !309
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !309
  %4 = load i8*, i8** %.addr1, align 8, !dbg !309
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !309
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !309
  %7 = load i8*, i8** %6, align 8, !dbg !309
  %8 = bitcast i8* %7 to double*, !dbg !309
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !309
  %10 = load i8*, i8** %9, align 8, !dbg !309
  %11 = bitcast i8* %10 to double*, !dbg !309
  %12 = load double, double* %11, align 8, !dbg !310, !tbaa !50
  %13 = load double, double* %8, align 8, !dbg !310, !tbaa !50
  %add = fadd double %12, %13, !dbg !311
  store double %add, double* %11, align 8, !dbg !311, !tbaa !50
  ret void, !dbg !310
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..6(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, double* dereferenceable(8) %sum2, i64 %vla, double* dereferenceable(8) %a, i64 %vla1, double* dereferenceable(8) %b) #4 !dbg !312 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum2.addr = alloca double*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !314, metadata !DIExpression()), !dbg !322
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !315, metadata !DIExpression()), !dbg !322
  store i32* %len, i32** %len.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !316, metadata !DIExpression()), !dbg !322
  store double* %sum2, double** %sum2.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %sum2.addr, metadata !317, metadata !DIExpression()), !dbg !322
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !318, metadata !DIExpression()), !dbg !322
  store double* %a, double** %a.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !319, metadata !DIExpression()), !dbg !322
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !320, metadata !DIExpression()), !dbg !322
  store double* %b, double** %b.addr, align 8, !tbaa !40
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !321, metadata !DIExpression()), !dbg !322
  %0 = load i32*, i32** %len.addr, align 8, !dbg !323, !tbaa !40
  %1 = load double*, double** %sum2.addr, align 8, !dbg !323, !tbaa !40
  %2 = load i64, i64* %vla.addr, align 8, !dbg !323, !tbaa !86
  %3 = load double*, double** %a.addr, align 8, !dbg !323, !tbaa !40
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !323, !tbaa !86
  %5 = load double*, double** %b.addr, align 8, !dbg !323, !tbaa !40
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !323, !tbaa !40
  %7 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !323, !tbaa !40
  %8 = load i32*, i32** %len.addr, align 8, !dbg !323, !tbaa !40
  %9 = load double*, double** %sum2.addr, align 8, !dbg !323, !tbaa !40
  %10 = load double*, double** %a.addr, align 8, !dbg !323, !tbaa !40
  %11 = load double*, double** %b.addr, align 8, !dbg !323, !tbaa !40
  call void @.omp_outlined._debug__.4(i32* %6, i32* %7, i32* %8, double* %9, i64 %2, double* %10, i64 %4, double* %11) #3, !dbg !323
  ret void, !dbg !323
}

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
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB097-target-teams-distribute-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 10.0.1 "}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !10, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !26, !30, !31}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 52, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 52, type: !13)
!19 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 54, type: !12)
!20 = !DILocalVariable(name: "i2", scope: !9, file: !1, line: 54, type: !12)
!21 = !DILocalVariable(name: "len", scope: !9, file: !1, line: 55, type: !12)
!22 = !DILocalVariable(name: "sum", scope: !9, file: !1, line: 56, type: !4)
!23 = !DILocalVariable(name: "sum2", scope: !9, file: !1, line: 56, type: !4)
!24 = !DILocalVariable(name: "__vla_expr0", scope: !9, type: !25, flags: DIFlagArtificial)
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 57, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: !24)
!30 = !DILocalVariable(name: "__vla_expr1", scope: !9, type: !25, flags: DIFlagArtificial)
!31 = !DILocalVariable(name: "b", scope: !9, file: !1, line: 57, type: !32)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: !30)
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 52, column: 14, scope: !9)
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !37, i64 0}
!42 = !DILocation(line: 52, column: 26, scope: !9)
!43 = !DILocation(line: 54, column: 3, scope: !9)
!44 = !DILocation(line: 54, column: 7, scope: !9)
!45 = !DILocation(line: 54, column: 10, scope: !9)
!46 = !DILocation(line: 55, column: 3, scope: !9)
!47 = !DILocation(line: 55, column: 7, scope: !9)
!48 = !DILocation(line: 56, column: 3, scope: !9)
!49 = !DILocation(line: 56, column: 10, scope: !9)
!50 = !{!51, !51, i64 0}
!51 = !{!"double", !37, i64 0}
!52 = !DILocation(line: 56, column: 20, scope: !9)
!53 = !DILocation(line: 57, column: 12, scope: !9)
!54 = !DILocation(line: 57, column: 3, scope: !9)
!55 = !DILocation(line: 0, scope: !9)
!56 = !DILocation(line: 57, column: 10, scope: !9)
!57 = !DILocation(line: 57, column: 20, scope: !9)
!58 = !DILocation(line: 57, column: 18, scope: !9)
!59 = !DILocation(line: 59, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !9, file: !1, line: 59, column: 3)
!61 = !DILocation(line: 59, column: 8, scope: !60)
!62 = !DILocation(line: 59, column: 13, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 59, column: 3)
!64 = !DILocation(line: 59, column: 15, scope: !63)
!65 = !DILocation(line: 59, column: 14, scope: !63)
!66 = !DILocation(line: 59, column: 3, scope: !60)
!67 = !DILocation(line: 61, column: 20, scope: !68)
!68 = distinct !DILexicalBlock(scope: !63, file: !1, line: 60, column: 3)
!69 = !DILocation(line: 61, column: 12, scope: !68)
!70 = !DILocation(line: 61, column: 22, scope: !68)
!71 = !DILocation(line: 61, column: 7, scope: !68)
!72 = !DILocation(line: 61, column: 5, scope: !68)
!73 = !DILocation(line: 61, column: 9, scope: !68)
!74 = !DILocation(line: 62, column: 20, scope: !68)
!75 = !DILocation(line: 62, column: 12, scope: !68)
!76 = !DILocation(line: 62, column: 22, scope: !68)
!77 = !DILocation(line: 62, column: 7, scope: !68)
!78 = !DILocation(line: 62, column: 5, scope: !68)
!79 = !DILocation(line: 62, column: 9, scope: !68)
!80 = !DILocation(line: 63, column: 3, scope: !68)
!81 = !DILocation(line: 59, column: 21, scope: !63)
!82 = !DILocation(line: 59, column: 3, scope: !63)
!83 = distinct !{!83, !66, !84}
!84 = !DILocation(line: 63, column: 3, scope: !60)
!85 = !DILocation(line: 65, column: 1, scope: !9)
!86 = !{!87, !87, i64 0}
!87 = !{!"long", !37, i64 0}
!88 = !DILocation(line: 65, column: 1, scope: !89)
!89 = distinct !DILexicalBlock(scope: !9, file: !1, line: 65, column: 1)
!90 = !DILocation(line: 74, column: 1, scope: !9)
!91 = !{!92, !41, i64 16}
!92 = !{!"ident_t", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !41, i64 16}
!93 = !DILocation(line: 77, column: 31, scope: !9)
!94 = !DILocation(line: 77, column: 36, scope: !9)
!95 = !DILocation(line: 77, column: 3, scope: !9)
!96 = !DILocation(line: 78, column: 3, scope: !9)
!97 = !DILocation(line: 79, column: 1, scope: !9)
!98 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160921_main_l65_debug__", scope: !1, file: !1, line: 66, type: !99, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !102)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !101, !12, !25, !101, !25, !101}
!101 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!102 = !{!103, !104, !105, !106, !107, !108}
!103 = !DILocalVariable(name: "sum", arg: 1, scope: !98, file: !1, line: 56, type: !101)
!104 = !DILocalVariable(name: "len", arg: 2, scope: !98, file: !1, line: 55, type: !12)
!105 = !DILocalVariable(name: "vla", arg: 3, scope: !98, type: !25, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: "a", arg: 4, scope: !98, file: !1, line: 57, type: !101)
!107 = !DILocalVariable(name: "vla", arg: 5, scope: !98, type: !25, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: "b", arg: 6, scope: !98, file: !1, line: 57, type: !101)
!109 = !DILocation(line: 56, column: 10, scope: !98)
!110 = !DILocation(line: 55, column: 7, scope: !98)
!111 = !DILocation(line: 0, scope: !98)
!112 = !DILocation(line: 57, column: 10, scope: !98)
!113 = !DILocation(line: 57, column: 18, scope: !98)
!114 = !DILocation(line: 66, column: 1, scope: !98)
!115 = !DILocation(line: 66, column: 69, scope: !98)
!116 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 67, type: !117, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !124)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !119, !119, !123, !101, !25, !101, !25, !101}
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!123 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !136, !136, !137, !138, !139, !140, !141, !137}
!125 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !116, type: !119, flags: DIFlagArtificial)
!126 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !116, type: !119, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: "len", arg: 3, scope: !116, file: !1, line: 55, type: !123)
!128 = !DILocalVariable(name: "sum", arg: 4, scope: !116, file: !1, line: 56, type: !101)
!129 = !DILocalVariable(name: "vla", arg: 5, scope: !116, type: !25, flags: DIFlagArtificial)
!130 = !DILocalVariable(name: "a", arg: 6, scope: !116, file: !1, line: 57, type: !101)
!131 = !DILocalVariable(name: "vla", arg: 7, scope: !116, type: !25, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: "b", arg: 8, scope: !116, file: !1, line: 57, type: !101)
!133 = !DILocalVariable(name: "sum", scope: !116, type: !4, flags: DIFlagArtificial)
!134 = !DILocalVariable(name: ".omp.iv", scope: !135, type: !12, flags: DIFlagArtificial)
!135 = distinct !DILexicalBlock(scope: !116, file: !1, line: 67, column: 1)
!136 = !DILocalVariable(name: ".capture_expr.", scope: !135, type: !12, flags: DIFlagArtificial)
!137 = !DILocalVariable(name: "i2", scope: !135, type: !12, flags: DIFlagArtificial)
!138 = !DILocalVariable(name: ".omp.lb", scope: !135, type: !12, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: ".omp.ub", scope: !135, type: !12, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: ".omp.stride", scope: !135, type: !12, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: ".omp.is_last", scope: !135, type: !12, flags: DIFlagArtificial)
!142 = !DILocation(line: 0, scope: !116)
!143 = !DILocation(line: 55, column: 7, scope: !116)
!144 = !DILocation(line: 56, column: 10, scope: !116)
!145 = !DILocation(line: 57, column: 10, scope: !116)
!146 = !DILocation(line: 57, column: 18, scope: !116)
!147 = !DILocation(line: 67, column: 1, scope: !116)
!148 = !DILocation(line: 66, column: 64, scope: !116)
!149 = !DILocation(line: 0, scope: !135)
!150 = !DILocation(line: 68, column: 18, scope: !135)
!151 = !DILocation(line: 68, column: 3, scope: !135)
!152 = !DILocation(line: 68, column: 23, scope: !135)
!153 = !DILocation(line: 68, column: 8, scope: !135)
!154 = !DILocation(line: 69, column: 1, scope: !135)
!155 = !DILocation(line: 69, column: 43, scope: !156)
!156 = distinct !DILexicalBlock(scope: !135, file: !1, line: 69, column: 1)
!157 = !DILocation(line: 67, column: 1, scope: !135)
!158 = distinct !{!158, !157, !159}
!159 = !DILocation(line: 67, column: 23, scope: !135)
!160 = !DILocation(line: 66, column: 62, scope: !116)
!161 = !DILocation(line: 67, column: 23, scope: !116)
!162 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 70, type: !163, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !165)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !119, !119, !123, !123, !101, !25, !101, !25, !101}
!165 = !{!166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !176, !176, !177, !178, !179, !180, !181, !182, !177}
!166 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !162, type: !119, flags: DIFlagArtificial)
!167 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !162, type: !119, flags: DIFlagArtificial)
!168 = !DILocalVariable(name: "i2", arg: 3, scope: !162, file: !1, line: 54, type: !123)
!169 = !DILocalVariable(name: "len", arg: 4, scope: !162, file: !1, line: 55, type: !123)
!170 = !DILocalVariable(name: "sum", arg: 5, scope: !162, file: !1, line: 56, type: !101)
!171 = !DILocalVariable(name: "vla", arg: 6, scope: !162, type: !25, flags: DIFlagArtificial)
!172 = !DILocalVariable(name: "a", arg: 7, scope: !162, file: !1, line: 57, type: !101)
!173 = !DILocalVariable(name: "vla", arg: 8, scope: !162, type: !25, flags: DIFlagArtificial)
!174 = !DILocalVariable(name: "b", arg: 9, scope: !162, file: !1, line: 57, type: !101)
!175 = !DILocalVariable(name: ".omp.iv", scope: !162, type: !12, flags: DIFlagArtificial)
!176 = !DILocalVariable(name: ".capture_expr.", scope: !162, type: !12, flags: DIFlagArtificial)
!177 = !DILocalVariable(name: "i", scope: !162, type: !12, flags: DIFlagArtificial)
!178 = !DILocalVariable(name: ".omp.lb", scope: !162, type: !12, flags: DIFlagArtificial)
!179 = !DILocalVariable(name: ".omp.ub", scope: !162, type: !12, flags: DIFlagArtificial)
!180 = !DILocalVariable(name: ".omp.stride", scope: !162, type: !12, flags: DIFlagArtificial)
!181 = !DILocalVariable(name: ".omp.is_last", scope: !162, type: !12, flags: DIFlagArtificial)
!182 = !DILocalVariable(name: "sum", scope: !162, type: !4, flags: DIFlagArtificial)
!183 = !DILocation(line: 0, scope: !162)
!184 = !DILocation(line: 54, column: 10, scope: !162)
!185 = !DILocation(line: 55, column: 7, scope: !162)
!186 = !DILocation(line: 56, column: 10, scope: !162)
!187 = !DILocation(line: 57, column: 10, scope: !162)
!188 = !DILocation(line: 57, column: 18, scope: !162)
!189 = !DILocation(line: 70, column: 5, scope: !162)
!190 = !DILocation(line: 70, column: 12, scope: !162)
!191 = !DILocation(line: 70, column: 18, scope: !162)
!192 = !DILocation(line: 70, column: 36, scope: !162)
!193 = !DILocation(line: 70, column: 10, scope: !162)
!194 = !DILocation(line: 69, column: 39, scope: !162)
!195 = !DILocation(line: 71, column: 16, scope: !162)
!196 = !DILocation(line: 71, column: 14, scope: !162)
!197 = !DILocation(line: 71, column: 21, scope: !162)
!198 = !DILocation(line: 71, column: 19, scope: !162)
!199 = !DILocation(line: 71, column: 18, scope: !162)
!200 = !DILocation(line: 71, column: 11, scope: !162)
!201 = !DILocation(line: 71, column: 7, scope: !162)
!202 = !DILocation(line: 69, column: 1, scope: !162)
!203 = distinct !{!203, !202, !204}
!204 = !DILocation(line: 69, column: 43, scope: !162)
!205 = !DILocation(line: 69, column: 37, scope: !162)
!206 = !DILocation(line: 71, column: 22, scope: !162)
!207 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 69, type: !208, scopeLine: 69, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !209)
!208 = !DISubroutineType(types: !2)
!209 = !{!210, !212}
!210 = !DILocalVariable(arg: 1, scope: !207, type: !211, flags: DIFlagArtificial)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!212 = !DILocalVariable(arg: 2, scope: !207, type: !211, flags: DIFlagArtificial)
!213 = !DILocation(line: 0, scope: !207)
!214 = !DILocation(line: 69, column: 43, scope: !207)
!215 = !DILocation(line: 69, column: 39, scope: !207)
!216 = !DILocation(line: 69, column: 37, scope: !207)
!217 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 70, type: !163, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227}
!219 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !217, type: !119, flags: DIFlagArtificial)
!220 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !217, type: !119, flags: DIFlagArtificial)
!221 = !DILocalVariable(name: "i2", arg: 3, scope: !217, type: !123, flags: DIFlagArtificial)
!222 = !DILocalVariable(name: "len", arg: 4, scope: !217, type: !123, flags: DIFlagArtificial)
!223 = !DILocalVariable(name: "sum", arg: 5, scope: !217, type: !101, flags: DIFlagArtificial)
!224 = !DILocalVariable(name: "vla", arg: 6, scope: !217, type: !25, flags: DIFlagArtificial)
!225 = !DILocalVariable(name: "a", arg: 7, scope: !217, type: !101, flags: DIFlagArtificial)
!226 = !DILocalVariable(name: "vla", arg: 8, scope: !217, type: !25, flags: DIFlagArtificial)
!227 = !DILocalVariable(name: "b", arg: 9, scope: !217, type: !101, flags: DIFlagArtificial)
!228 = !DILocation(line: 0, scope: !217)
!229 = !DILocation(line: 70, column: 5, scope: !217)
!230 = !{!231}
!231 = !{i64 2, i64 -1, i64 -1, i1 true}
!232 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func.2", scope: !1, file: !1, line: 66, type: !208, scopeLine: 66, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !233)
!233 = !{!234, !235}
!234 = !DILocalVariable(arg: 1, scope: !232, type: !211, flags: DIFlagArtificial)
!235 = !DILocalVariable(arg: 2, scope: !232, type: !211, flags: DIFlagArtificial)
!236 = !DILocation(line: 0, scope: !232)
!237 = !DILocation(line: 66, column: 69, scope: !232)
!238 = !DILocation(line: 66, column: 64, scope: !232)
!239 = !DILocation(line: 66, column: 62, scope: !232)
!240 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 67, type: !117, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !241)
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249}
!242 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !240, type: !119, flags: DIFlagArtificial)
!243 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !240, type: !119, flags: DIFlagArtificial)
!244 = !DILocalVariable(name: "len", arg: 3, scope: !240, type: !123, flags: DIFlagArtificial)
!245 = !DILocalVariable(name: "sum", arg: 4, scope: !240, type: !101, flags: DIFlagArtificial)
!246 = !DILocalVariable(name: "vla", arg: 5, scope: !240, type: !25, flags: DIFlagArtificial)
!247 = !DILocalVariable(name: "a", arg: 6, scope: !240, type: !101, flags: DIFlagArtificial)
!248 = !DILocalVariable(name: "vla", arg: 7, scope: !240, type: !25, flags: DIFlagArtificial)
!249 = !DILocalVariable(name: "b", arg: 8, scope: !240, type: !101, flags: DIFlagArtificial)
!250 = !DILocation(line: 0, scope: !240)
!251 = !DILocation(line: 67, column: 1, scope: !240)
!252 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160921_main_l65", scope: !1, file: !1, line: 66, type: !253, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !255)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !101, !25, !25, !101, !25, !101}
!255 = !{!256, !257, !258, !259, !260, !261}
!256 = !DILocalVariable(name: "sum", arg: 1, scope: !252, type: !101, flags: DIFlagArtificial)
!257 = !DILocalVariable(name: "len", arg: 2, scope: !252, type: !25, flags: DIFlagArtificial)
!258 = !DILocalVariable(name: "vla", arg: 3, scope: !252, type: !25, flags: DIFlagArtificial)
!259 = !DILocalVariable(name: "a", arg: 4, scope: !252, type: !101, flags: DIFlagArtificial)
!260 = !DILocalVariable(name: "vla", arg: 5, scope: !252, type: !25, flags: DIFlagArtificial)
!261 = !DILocalVariable(name: "b", arg: 6, scope: !252, type: !101, flags: DIFlagArtificial)
!262 = !DILocation(line: 0, scope: !252)
!263 = !DILocation(line: 66, column: 1, scope: !252)
!264 = distinct !DISubprogram(name: ".omp_outlined._debug__.4", scope: !1, file: !1, line: 75, type: !117, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !265)
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !275, !276, !277, !278, !279, !280, !281, !276}
!266 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !264, type: !119, flags: DIFlagArtificial)
!267 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !264, type: !119, flags: DIFlagArtificial)
!268 = !DILocalVariable(name: "len", arg: 3, scope: !264, file: !1, line: 55, type: !123)
!269 = !DILocalVariable(name: "sum2", arg: 4, scope: !264, file: !1, line: 56, type: !101)
!270 = !DILocalVariable(name: "vla", arg: 5, scope: !264, type: !25, flags: DIFlagArtificial)
!271 = !DILocalVariable(name: "a", arg: 6, scope: !264, file: !1, line: 57, type: !101)
!272 = !DILocalVariable(name: "vla", arg: 7, scope: !264, type: !25, flags: DIFlagArtificial)
!273 = !DILocalVariable(name: "b", arg: 8, scope: !264, file: !1, line: 57, type: !101)
!274 = !DILocalVariable(name: ".omp.iv", scope: !264, type: !12, flags: DIFlagArtificial)
!275 = !DILocalVariable(name: ".capture_expr.", scope: !264, type: !12, flags: DIFlagArtificial)
!276 = !DILocalVariable(name: "i", scope: !264, type: !12, flags: DIFlagArtificial)
!277 = !DILocalVariable(name: ".omp.lb", scope: !264, type: !12, flags: DIFlagArtificial)
!278 = !DILocalVariable(name: ".omp.ub", scope: !264, type: !12, flags: DIFlagArtificial)
!279 = !DILocalVariable(name: ".omp.stride", scope: !264, type: !12, flags: DIFlagArtificial)
!280 = !DILocalVariable(name: ".omp.is_last", scope: !264, type: !12, flags: DIFlagArtificial)
!281 = !DILocalVariable(name: "sum2", scope: !264, type: !4, flags: DIFlagArtificial)
!282 = !DILocation(line: 0, scope: !264)
!283 = !DILocation(line: 55, column: 7, scope: !264)
!284 = !DILocation(line: 56, column: 20, scope: !264)
!285 = !DILocation(line: 57, column: 10, scope: !264)
!286 = !DILocation(line: 57, column: 18, scope: !264)
!287 = !DILocation(line: 75, column: 5, scope: !264)
!288 = !DILocation(line: 75, column: 17, scope: !264)
!289 = !DILocation(line: 75, column: 22, scope: !264)
!290 = !DILocation(line: 75, column: 10, scope: !264)
!291 = !DILocation(line: 74, column: 39, scope: !264)
!292 = !DILocation(line: 76, column: 17, scope: !264)
!293 = !DILocation(line: 76, column: 15, scope: !264)
!294 = !DILocation(line: 76, column: 22, scope: !264)
!295 = !DILocation(line: 76, column: 20, scope: !264)
!296 = !DILocation(line: 76, column: 19, scope: !264)
!297 = !DILocation(line: 76, column: 12, scope: !264)
!298 = !DILocation(line: 76, column: 7, scope: !264)
!299 = !DILocation(line: 74, column: 1, scope: !264)
!300 = distinct !{!300, !299, !301}
!301 = !DILocation(line: 74, column: 44, scope: !264)
!302 = !DILocation(line: 74, column: 37, scope: !264)
!303 = !DILocation(line: 76, column: 23, scope: !264)
!304 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func.5", scope: !1, file: !1, line: 74, type: !208, scopeLine: 74, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !305)
!305 = !{!306, !307}
!306 = !DILocalVariable(arg: 1, scope: !304, type: !211, flags: DIFlagArtificial)
!307 = !DILocalVariable(arg: 2, scope: !304, type: !211, flags: DIFlagArtificial)
!308 = !DILocation(line: 0, scope: !304)
!309 = !DILocation(line: 74, column: 44, scope: !304)
!310 = !DILocation(line: 74, column: 39, scope: !304)
!311 = !DILocation(line: 74, column: 37, scope: !304)
!312 = distinct !DISubprogram(name: ".omp_outlined..6", scope: !1, file: !1, line: 75, type: !117, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !313)
!313 = !{!314, !315, !316, !317, !318, !319, !320, !321}
!314 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !312, type: !119, flags: DIFlagArtificial)
!315 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !312, type: !119, flags: DIFlagArtificial)
!316 = !DILocalVariable(name: "len", arg: 3, scope: !312, type: !123, flags: DIFlagArtificial)
!317 = !DILocalVariable(name: "sum2", arg: 4, scope: !312, type: !101, flags: DIFlagArtificial)
!318 = !DILocalVariable(name: "vla", arg: 5, scope: !312, type: !25, flags: DIFlagArtificial)
!319 = !DILocalVariable(name: "a", arg: 6, scope: !312, type: !101, flags: DIFlagArtificial)
!320 = !DILocalVariable(name: "vla", arg: 7, scope: !312, type: !25, flags: DIFlagArtificial)
!321 = !DILocalVariable(name: "b", arg: 8, scope: !312, type: !101, flags: DIFlagArtificial)
!322 = !DILocation(line: 0, scope: !312)
!323 = !DILocation(line: 75, column: 5, scope: !312)
