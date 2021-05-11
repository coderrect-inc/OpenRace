; ModuleID = 'integration/dataracebench/DRB058-jacobikernel-orig-no.c'
source_filename = "integration/dataracebench/DRB058-jacobikernel-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@n = dso_local global i32 200, align 4, !dbg !0
@dx = common dso_local global double 0.000000e+00, align 8, !dbg !18
@m = dso_local global i32 200, align 4, !dbg !22
@dy = common dso_local global double 0.000000e+00, align 8, !dbg !20
@u = common dso_local global [200 x [200 x double]] zeroinitializer, align 16, !dbg !8
@alpha = dso_local global double 5.430000e-02, align 8, !dbg !30
@f = common dso_local global [200 x [200 x double]] zeroinitializer, align 16, !dbg !14
@relax = dso_local global double 1.000000e+00, align 8, !dbg !28
@tol = dso_local global double 1.000000e-10, align 8, !dbg !26
@mits = dso_local global i32 1000, align 4, !dbg !24
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB058-jacobikernel-orig-no.c;jacobi;109;1;;\00", align 1
@uold = common dso_local global [200 x [200 x double]] zeroinitializer, align 16, !dbg !16
@2 = private unnamed_addr constant [73 x i8] c";integration/dataracebench/DRB058-jacobikernel-orig-no.c;jacobi;109;29;;\00", align 1
@3 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB058-jacobikernel-orig-no.c;jacobi;113;1;;\00", align 1
@4 = private unnamed_addr constant [73 x i8] c";integration/dataracebench/DRB058-jacobikernel-orig-no.c;jacobi;113;61;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@5 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB058-jacobikernel-orig-no.c;jacobi;107;1;;\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Total Number of Iterations:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Residual:%E\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @initialize() #0 !dbg !36 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %0 = bitcast i32* %i to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %i, metadata !40, metadata !DIExpression()), !dbg !45
  %1 = bitcast i32* %j to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %j, metadata !41, metadata !DIExpression()), !dbg !46
  %2 = bitcast i32* %xx to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %xx, metadata !42, metadata !DIExpression()), !dbg !47
  %3 = bitcast i32* %yy to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #6, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %yy, metadata !43, metadata !DIExpression()), !dbg !48
  %4 = load i32, i32* @n, align 4, !dbg !49, !tbaa !50
  %sub = sub nsw i32 %4, 1, !dbg !54
  %conv = sitofp i32 %sub to double, !dbg !55
  %div = fdiv double 2.000000e+00, %conv, !dbg !56
  store double %div, double* @dx, align 8, !dbg !57, !tbaa !58
  %5 = load i32, i32* @m, align 4, !dbg !60, !tbaa !50
  %sub1 = sub nsw i32 %5, 1, !dbg !61
  %conv2 = sitofp i32 %sub1 to double, !dbg !62
  %div3 = fdiv double 2.000000e+00, %conv2, !dbg !63
  store double %div3, double* @dy, align 8, !dbg !64, !tbaa !58
  store i32 0, i32* %i, align 4, !dbg !65, !tbaa !50
  br label %for.cond, !dbg !67

for.cond:                                         ; preds = %for.inc42, %entry
  %6 = load i32, i32* %i, align 4, !dbg !68, !tbaa !50
  %7 = load i32, i32* @n, align 4, !dbg !70, !tbaa !50
  %cmp = icmp slt i32 %6, %7, !dbg !71
  br i1 %cmp, label %for.body, label %for.end44, !dbg !72

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !73, !tbaa !50
  br label %for.cond5, !dbg !75

for.cond5:                                        ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4, !dbg !76, !tbaa !50
  %9 = load i32, i32* @m, align 4, !dbg !78, !tbaa !50
  %cmp6 = icmp slt i32 %8, %9, !dbg !79
  br i1 %cmp6, label %for.body8, label %for.end, !dbg !80

for.body8:                                        ; preds = %for.cond5
  %10 = load double, double* @dx, align 8, !dbg !81, !tbaa !58
  %11 = load i32, i32* %i, align 4, !dbg !83, !tbaa !50
  %sub9 = sub nsw i32 %11, 1, !dbg !84
  %conv10 = sitofp i32 %sub9 to double, !dbg !85
  %mul = fmul double %10, %conv10, !dbg !86
  %add = fadd double -1.000000e+00, %mul, !dbg !87
  %conv11 = fptosi double %add to i32, !dbg !88
  store i32 %conv11, i32* %xx, align 4, !dbg !89, !tbaa !50
  %12 = load double, double* @dy, align 8, !dbg !90, !tbaa !58
  %13 = load i32, i32* %j, align 4, !dbg !91, !tbaa !50
  %sub12 = sub nsw i32 %13, 1, !dbg !92
  %conv13 = sitofp i32 %sub12 to double, !dbg !93
  %mul14 = fmul double %12, %conv13, !dbg !94
  %add15 = fadd double -1.000000e+00, %mul14, !dbg !95
  %conv16 = fptosi double %add15 to i32, !dbg !96
  store i32 %conv16, i32* %yy, align 4, !dbg !97, !tbaa !50
  %14 = load i32, i32* %i, align 4, !dbg !98, !tbaa !50
  %idxprom = sext i32 %14 to i64, !dbg !99
  %arrayidx = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @u, i64 0, i64 %idxprom, !dbg !99
  %15 = load i32, i32* %j, align 4, !dbg !100, !tbaa !50
  %idxprom17 = sext i32 %15 to i64, !dbg !99
  %arrayidx18 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx, i64 0, i64 %idxprom17, !dbg !99
  store double 0.000000e+00, double* %arrayidx18, align 8, !dbg !101, !tbaa !58
  %16 = load double, double* @alpha, align 8, !dbg !102, !tbaa !58
  %mul19 = fmul double -1.000000e+00, %16, !dbg !103
  %17 = load i32, i32* %xx, align 4, !dbg !104, !tbaa !50
  %18 = load i32, i32* %xx, align 4, !dbg !105, !tbaa !50
  %mul20 = mul nsw i32 %17, %18, !dbg !106
  %conv21 = sitofp i32 %mul20 to double, !dbg !104
  %sub22 = fsub double 1.000000e+00, %conv21, !dbg !107
  %mul23 = fmul double %mul19, %sub22, !dbg !108
  %19 = load i32, i32* %yy, align 4, !dbg !109, !tbaa !50
  %20 = load i32, i32* %yy, align 4, !dbg !110, !tbaa !50
  %mul24 = mul nsw i32 %19, %20, !dbg !111
  %conv25 = sitofp i32 %mul24 to double, !dbg !109
  %sub26 = fsub double 1.000000e+00, %conv25, !dbg !112
  %mul27 = fmul double %mul23, %sub26, !dbg !113
  %21 = load i32, i32* %xx, align 4, !dbg !114, !tbaa !50
  %22 = load i32, i32* %xx, align 4, !dbg !115, !tbaa !50
  %mul28 = mul nsw i32 %21, %22, !dbg !116
  %conv29 = sitofp i32 %mul28 to double, !dbg !114
  %sub30 = fsub double 1.000000e+00, %conv29, !dbg !117
  %mul31 = fmul double 2.000000e+00, %sub30, !dbg !118
  %sub32 = fsub double %mul27, %mul31, !dbg !119
  %23 = load i32, i32* %yy, align 4, !dbg !120, !tbaa !50
  %24 = load i32, i32* %yy, align 4, !dbg !121, !tbaa !50
  %mul33 = mul nsw i32 %23, %24, !dbg !122
  %conv34 = sitofp i32 %mul33 to double, !dbg !120
  %sub35 = fsub double 1.000000e+00, %conv34, !dbg !123
  %mul36 = fmul double 2.000000e+00, %sub35, !dbg !124
  %sub37 = fsub double %sub32, %mul36, !dbg !125
  %25 = load i32, i32* %i, align 4, !dbg !126, !tbaa !50
  %idxprom38 = sext i32 %25 to i64, !dbg !127
  %arrayidx39 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @f, i64 0, i64 %idxprom38, !dbg !127
  %26 = load i32, i32* %j, align 4, !dbg !128, !tbaa !50
  %idxprom40 = sext i32 %26 to i64, !dbg !127
  %arrayidx41 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx39, i64 0, i64 %idxprom40, !dbg !127
  store double %sub37, double* %arrayidx41, align 8, !dbg !129, !tbaa !58
  br label %for.inc, !dbg !130

for.inc:                                          ; preds = %for.body8
  %27 = load i32, i32* %j, align 4, !dbg !131, !tbaa !50
  %inc = add nsw i32 %27, 1, !dbg !131
  store i32 %inc, i32* %j, align 4, !dbg !131, !tbaa !50
  br label %for.cond5, !dbg !132, !llvm.loop !133

for.end:                                          ; preds = %for.cond5
  br label %for.inc42, !dbg !134

for.inc42:                                        ; preds = %for.end
  %28 = load i32, i32* %i, align 4, !dbg !135, !tbaa !50
  %inc43 = add nsw i32 %28, 1, !dbg !135
  store i32 %inc43, i32* %i, align 4, !dbg !135, !tbaa !50
  br label %for.cond, !dbg !136, !llvm.loop !137

for.end44:                                        ; preds = %for.cond
  %29 = bitcast i32* %yy to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #6, !dbg !139
  %30 = bitcast i32* %xx to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #6, !dbg !139
  %31 = bitcast i32* %j to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #6, !dbg !139
  %32 = bitcast i32* %i to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #6, !dbg !139
  ret void, !dbg !139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @jacobi() #0 !dbg !140 {
entry:
  %omega = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %error = alloca double, align 8
  %resid = alloca double, align 8
  %ax = alloca double, align 8
  %ay = alloca double, align 8
  %b = alloca double, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast double* %omega to i8*, !dbg !151
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #6, !dbg !151
  call void @llvm.dbg.declare(metadata double* %omega, metadata !142, metadata !DIExpression()), !dbg !152
  %3 = bitcast i32* %i to i8*, !dbg !153
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #6, !dbg !153
  call void @llvm.dbg.declare(metadata i32* %i, metadata !143, metadata !DIExpression()), !dbg !154
  %4 = bitcast i32* %j to i8*, !dbg !153
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #6, !dbg !153
  call void @llvm.dbg.declare(metadata i32* %j, metadata !144, metadata !DIExpression()), !dbg !155
  %5 = bitcast i32* %k to i8*, !dbg !153
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #6, !dbg !153
  call void @llvm.dbg.declare(metadata i32* %k, metadata !145, metadata !DIExpression()), !dbg !156
  %6 = bitcast double* %error to i8*, !dbg !157
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #6, !dbg !157
  call void @llvm.dbg.declare(metadata double* %error, metadata !146, metadata !DIExpression()), !dbg !158
  %7 = bitcast double* %resid to i8*, !dbg !157
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #6, !dbg !157
  call void @llvm.dbg.declare(metadata double* %resid, metadata !147, metadata !DIExpression()), !dbg !159
  %8 = bitcast double* %ax to i8*, !dbg !157
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #6, !dbg !157
  call void @llvm.dbg.declare(metadata double* %ax, metadata !148, metadata !DIExpression()), !dbg !160
  %9 = bitcast double* %ay to i8*, !dbg !157
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #6, !dbg !157
  call void @llvm.dbg.declare(metadata double* %ay, metadata !149, metadata !DIExpression()), !dbg !161
  %10 = bitcast double* %b to i8*, !dbg !157
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #6, !dbg !157
  call void @llvm.dbg.declare(metadata double* %b, metadata !150, metadata !DIExpression()), !dbg !162
  %11 = load double, double* @relax, align 8, !dbg !163, !tbaa !58
  store double %11, double* %omega, align 8, !dbg !164, !tbaa !58
  %12 = load i32, i32* @n, align 4, !dbg !165, !tbaa !50
  %sub = sub nsw i32 %12, 1, !dbg !166
  %conv = sitofp i32 %sub to double, !dbg !167
  %div = fdiv double 2.000000e+00, %conv, !dbg !168
  store double %div, double* @dx, align 8, !dbg !169, !tbaa !58
  %13 = load i32, i32* @m, align 4, !dbg !170, !tbaa !50
  %sub1 = sub nsw i32 %13, 1, !dbg !171
  %conv2 = sitofp i32 %sub1 to double, !dbg !172
  %div3 = fdiv double 2.000000e+00, %conv2, !dbg !173
  store double %div3, double* @dy, align 8, !dbg !174, !tbaa !58
  %14 = load double, double* @dx, align 8, !dbg !175, !tbaa !58
  %15 = load double, double* @dx, align 8, !dbg !176, !tbaa !58
  %mul = fmul double %14, %15, !dbg !177
  %div4 = fdiv double 1.000000e+00, %mul, !dbg !178
  store double %div4, double* %ax, align 8, !dbg !179, !tbaa !58
  %16 = load double, double* @dy, align 8, !dbg !180, !tbaa !58
  %17 = load double, double* @dy, align 8, !dbg !181, !tbaa !58
  %mul5 = fmul double %16, %17, !dbg !182
  %div6 = fdiv double 1.000000e+00, %mul5, !dbg !183
  store double %div6, double* %ay, align 8, !dbg !184, !tbaa !58
  %18 = load double, double* @dx, align 8, !dbg !185, !tbaa !58
  %19 = load double, double* @dx, align 8, !dbg !186, !tbaa !58
  %mul7 = fmul double %18, %19, !dbg !187
  %div8 = fdiv double -2.000000e+00, %mul7, !dbg !188
  %20 = load double, double* @dy, align 8, !dbg !189, !tbaa !58
  %21 = load double, double* @dy, align 8, !dbg !190, !tbaa !58
  %mul9 = fmul double %20, %21, !dbg !191
  %div10 = fdiv double 2.000000e+00, %mul9, !dbg !192
  %sub11 = fsub double %div8, %div10, !dbg !193
  %22 = load double, double* @alpha, align 8, !dbg !194, !tbaa !58
  %sub12 = fsub double %sub11, %22, !dbg !195
  store double %sub12, double* %b, align 8, !dbg !196, !tbaa !58
  %23 = load double, double* @tol, align 8, !dbg !197, !tbaa !58
  %mul13 = fmul double 1.000000e+01, %23, !dbg !198
  store double %mul13, double* %error, align 8, !dbg !199, !tbaa !58
  store i32 1, i32* %k, align 4, !dbg !200, !tbaa !50
  br label %while.cond, !dbg !201

while.cond:                                       ; preds = %while.body, %entry
  %24 = load i32, i32* %k, align 4, !dbg !202, !tbaa !50
  %25 = load i32, i32* @mits, align 4, !dbg !203, !tbaa !50
  %cmp = icmp sle i32 %24, %25, !dbg !204
  br i1 %cmp, label %while.body, label %while.end, !dbg !201

while.body:                                       ; preds = %while.cond
  store double 0.000000e+00, double* %error, align 8, !dbg !205, !tbaa !58
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !207
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @6, i32 0, i32 0), i8** %26, align 8, !dbg !207, !tbaa !208
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, double*, double*, double*, double*, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), double* %error, double* %ax, double* %ay, double* %b, double* %omega), !dbg !207
  %27 = load i32, i32* %k, align 4, !dbg !211, !tbaa !50
  %add = add nsw i32 %27, 1, !dbg !212
  store i32 %add, i32* %k, align 4, !dbg !213, !tbaa !50
  %28 = load double, double* %error, align 8, !dbg !214, !tbaa !58
  %call = call double @sqrt(double %28) #6, !dbg !215
  %29 = load i32, i32* @n, align 4, !dbg !216, !tbaa !50
  %30 = load i32, i32* @m, align 4, !dbg !217, !tbaa !50
  %mul15 = mul nsw i32 %29, %30, !dbg !218
  %conv16 = sitofp i32 %mul15 to double, !dbg !219
  %div17 = fdiv double %call, %conv16, !dbg !220
  store double %div17, double* %error, align 8, !dbg !221, !tbaa !58
  br label %while.cond, !dbg !201, !llvm.loop !222

while.end:                                        ; preds = %while.cond
  %31 = load i32, i32* %k, align 4, !dbg !224, !tbaa !50
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %31), !dbg !225
  %32 = load double, double* %error, align 8, !dbg !226, !tbaa !58
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), double %32), !dbg !227
  %33 = bitcast double* %b to i8*, !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %33) #6, !dbg !228
  %34 = bitcast double* %ay to i8*, !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %34) #6, !dbg !228
  %35 = bitcast double* %ax to i8*, !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %35) #6, !dbg !228
  %36 = bitcast double* %resid to i8*, !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %36) #6, !dbg !228
  %37 = bitcast double* %error to i8*, !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %37) #6, !dbg !228
  %38 = bitcast i32* %k to i8*, !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #6, !dbg !228
  %39 = bitcast i32* %j to i8*, !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #6, !dbg !228
  %40 = bitcast i32* %i to i8*, !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #6, !dbg !228
  %41 = bitcast double* %omega to i8*, !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %41) #6, !dbg !228
  ret void, !dbg !228
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., double* dereferenceable(8) %error, double* dereferenceable(8) %ax, double* dereferenceable(8) %ay, double* dereferenceable(8) %b, double* dereferenceable(8) %omega) #3 !dbg !229 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %error.addr = alloca double*, align 8
  %ax.addr = alloca double*, align 8
  %ay.addr = alloca double*, align 8
  %b.addr = alloca double*, align 8
  %omega.addr = alloca double*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i4 = alloca i32, align 4
  %j = alloca i32, align 4
  %i5 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.iv17 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %.capture_expr.19 = alloca i32, align 4
  %.capture_expr.21 = alloca i32, align 4
  %i27 = alloca i32, align 4
  %.omp.lb30 = alloca i32, align 4
  %.omp.ub31 = alloca i32, align 4
  %.omp.stride32 = alloca i32, align 4
  %.omp.is_last33 = alloca i32, align 4
  %i34 = alloca i32, align 4
  %j35 = alloca i32, align 4
  %resid = alloca double, align 8
  %error36 = alloca double, align 8
  %i37 = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %atomic-temp = alloca double, align 8
  %tmp111 = alloca double, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !238, metadata !DIExpression()), !dbg !267
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !239, metadata !DIExpression()), !dbg !267
  store double* %error, double** %error.addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata double** %error.addr, metadata !240, metadata !DIExpression()), !dbg !268
  store double* %ax, double** %ax.addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata double** %ax.addr, metadata !241, metadata !DIExpression()), !dbg !269
  store double* %ay, double** %ay.addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata double** %ay.addr, metadata !242, metadata !DIExpression()), !dbg !270
  store double* %b, double** %b.addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !243, metadata !DIExpression()), !dbg !271
  store double* %omega, double** %omega.addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata double** %omega.addr, metadata !244, metadata !DIExpression()), !dbg !272
  %2 = load double*, double** %error.addr, align 8, !dbg !273, !tbaa !266
  %3 = load double*, double** %ax.addr, align 8, !dbg !273, !tbaa !266
  %4 = load double*, double** %ay.addr, align 8, !dbg !273, !tbaa !266
  %5 = load double*, double** %b.addr, align 8, !dbg !273, !tbaa !266
  %6 = load double*, double** %omega.addr, align 8, !dbg !273, !tbaa !266
  %7 = bitcast i32* %.omp.iv to i8*, !dbg !274
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #6, !dbg !274
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !245, metadata !DIExpression()), !dbg !275
  %8 = bitcast i32* %.capture_expr. to i8*, !dbg !274
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #6, !dbg !274
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !248, metadata !DIExpression()), !dbg !275
  %9 = load i32, i32* @n, align 4, !dbg !276, !tbaa !50
  store i32 %9, i32* %.capture_expr., align 4, !dbg !276, !tbaa !50
  %10 = bitcast i32* %.capture_expr.1 to i8*, !dbg !274
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #6, !dbg !274
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !248, metadata !DIExpression()), !dbg !275
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !276, !tbaa !50
  %sub = sub nsw i32 %11, 0, !dbg !277
  %sub2 = sub nsw i32 %sub, 1, !dbg !277
  %add = add nsw i32 %sub2, 1, !dbg !277
  %div = sdiv i32 %add, 1, !dbg !277
  %sub3 = sub nsw i32 %div, 1, !dbg !277
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !277, !tbaa !50
  %12 = bitcast i32* %i to i8*, !dbg !274
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #6, !dbg !274
  call void @llvm.dbg.declare(metadata i32* %i, metadata !249, metadata !DIExpression()), !dbg !275
  store i32 0, i32* %i, align 4, !dbg !278, !tbaa !50
  %13 = bitcast i32* %i to i8*, !dbg !274
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #6, !dbg !274
  %14 = load i32, i32* %.capture_expr., align 4, !dbg !276, !tbaa !50
  %cmp = icmp slt i32 0, %14, !dbg !277
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !274

omp.precond.then:                                 ; preds = %entry
  %15 = bitcast i32* %.omp.lb to i8*, !dbg !274
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #6, !dbg !274
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !250, metadata !DIExpression()), !dbg !275
  store i32 0, i32* %.omp.lb, align 4, !dbg !279, !tbaa !50
  %16 = bitcast i32* %.omp.ub to i8*, !dbg !274
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #6, !dbg !274
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !251, metadata !DIExpression()), !dbg !275
  %17 = load i32, i32* %.capture_expr.1, align 4, !dbg !277, !tbaa !50
  store i32 %17, i32* %.omp.ub, align 4, !dbg !279, !tbaa !50
  %18 = bitcast i32* %.omp.stride to i8*, !dbg !274
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #6, !dbg !274
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !252, metadata !DIExpression()), !dbg !275
  store i32 1, i32* %.omp.stride, align 4, !dbg !279, !tbaa !50
  %19 = bitcast i32* %.omp.is_last to i8*, !dbg !274
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #6, !dbg !274
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !253, metadata !DIExpression()), !dbg !275
  store i32 0, i32* %.omp.is_last, align 4, !dbg !279, !tbaa !50
  %20 = bitcast i32* %i4 to i8*, !dbg !274
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #6, !dbg !274
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !249, metadata !DIExpression()), !dbg !275
  %21 = bitcast i32* %j to i8*, !dbg !274
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #6, !dbg !274
  call void @llvm.dbg.declare(metadata i32* %j, metadata !254, metadata !DIExpression()), !dbg !275
  %22 = bitcast i32* %i5 to i8*, !dbg !274
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #6, !dbg !274
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !249, metadata !DIExpression()), !dbg !275
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !274
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @1, i32 0, i32 0), i8** %23, align 8, !dbg !274, !tbaa !208
  %24 = load i32*, i32** %.global_tid..addr, align 8, !dbg !274
  %25 = load i32, i32* %24, align 4, !dbg !274, !tbaa !50
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %25, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !274
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !279, !tbaa !50
  %27 = load i32, i32* %.capture_expr.1, align 4, !dbg !277, !tbaa !50
  %cmp6 = icmp sgt i32 %26, %27, !dbg !279
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !279

cond.true:                                        ; preds = %omp.precond.then
  %28 = load i32, i32* %.capture_expr.1, align 4, !dbg !277, !tbaa !50
  br label %cond.end, !dbg !279

cond.false:                                       ; preds = %omp.precond.then
  %29 = load i32, i32* %.omp.ub, align 4, !dbg !279, !tbaa !50
  br label %cond.end, !dbg !279

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ %29, %cond.false ], !dbg !279
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !279, !tbaa !50
  %30 = load i32, i32* %.omp.lb, align 4, !dbg !279, !tbaa !50
  store i32 %30, i32* %.omp.iv, align 4, !dbg !279, !tbaa !50
  br label %omp.inner.for.cond, !dbg !274

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %31 = load i32, i32* %.omp.iv, align 4, !dbg !279, !tbaa !50
  %32 = load i32, i32* %.omp.ub, align 4, !dbg !279, !tbaa !50
  %cmp7 = icmp sle i32 %31, %32, !dbg !277
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !274

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !274

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %33 = load i32, i32* %.omp.iv, align 4, !dbg !279, !tbaa !50
  %mul = mul nsw i32 %33, 1, !dbg !278
  %add8 = add nsw i32 0, %mul, !dbg !278
  store i32 %add8, i32* %i4, align 4, !dbg !278, !tbaa !50
  store i32 0, i32* %j, align 4, !dbg !280, !tbaa !50
  br label %for.cond, !dbg !282

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %34 = load i32, i32* %j, align 4, !dbg !283, !tbaa !50
  %35 = load i32, i32* @m, align 4, !dbg !285, !tbaa !50
  %cmp9 = icmp slt i32 %34, %35, !dbg !286
  br i1 %cmp9, label %for.body, label %for.end, !dbg !287

for.body:                                         ; preds = %for.cond
  %36 = load i32, i32* %i4, align 4, !dbg !288, !tbaa !50
  %idxprom = sext i32 %36 to i64, !dbg !289
  %arrayidx = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @u, i64 0, i64 %idxprom, !dbg !289
  %37 = load i32, i32* %j, align 4, !dbg !290, !tbaa !50
  %idxprom10 = sext i32 %37 to i64, !dbg !289
  %arrayidx11 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx, i64 0, i64 %idxprom10, !dbg !289
  %38 = load double, double* %arrayidx11, align 8, !dbg !289, !tbaa !58
  %39 = load i32, i32* %i4, align 4, !dbg !291, !tbaa !50
  %idxprom12 = sext i32 %39 to i64, !dbg !292
  %arrayidx13 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %idxprom12, !dbg !292
  %40 = load i32, i32* %j, align 4, !dbg !293, !tbaa !50
  %idxprom14 = sext i32 %40 to i64, !dbg !292
  %arrayidx15 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx13, i64 0, i64 %idxprom14, !dbg !292
  store double %38, double* %arrayidx15, align 8, !dbg !294, !tbaa !58
  br label %for.inc, !dbg !292

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %j, align 4, !dbg !295, !tbaa !50
  %inc = add nsw i32 %41, 1, !dbg !295
  store i32 %inc, i32* %j, align 4, !dbg !295, !tbaa !50
  br label %for.cond, !dbg !296, !llvm.loop !297

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !298

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !299

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %42 = load i32, i32* %.omp.iv, align 4, !dbg !279, !tbaa !50
  %add16 = add nsw i32 %42, 1, !dbg !277
  store i32 %add16, i32* %.omp.iv, align 4, !dbg !277, !tbaa !50
  br label %omp.inner.for.cond, !dbg !299, !llvm.loop !300

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !299

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %43 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !299
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @2, i32 0, i32 0), i8** %43, align 8, !dbg !299, !tbaa !208
  %44 = load i32*, i32** %.global_tid..addr, align 8, !dbg !299
  %45 = load i32, i32* %44, align 4, !dbg !299, !tbaa !50
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %45), !dbg !299
  %46 = bitcast i32* %i5 to i8*, !dbg !299
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #6, !dbg !299
  %47 = bitcast i32* %j to i8*, !dbg !299
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #6, !dbg !299
  %48 = bitcast i32* %i4 to i8*, !dbg !299
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #6, !dbg !299
  %49 = bitcast i32* %.omp.is_last to i8*, !dbg !299
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #6, !dbg !299
  %50 = bitcast i32* %.omp.stride to i8*, !dbg !299
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #6, !dbg !299
  %51 = bitcast i32* %.omp.ub to i8*, !dbg !299
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #6, !dbg !299
  %52 = bitcast i32* %.omp.lb to i8*, !dbg !299
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #6, !dbg !299
  br label %omp.precond.end, !dbg !299

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %53 = bitcast i32* %.capture_expr.1 to i8*, !dbg !299
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #6, !dbg !299
  %54 = bitcast i32* %.capture_expr. to i8*, !dbg !299
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #6, !dbg !299
  %55 = bitcast i32* %.omp.iv to i8*, !dbg !299
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #6, !dbg !299
  %56 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !301
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @1, i32 0, i32 0), i8** %56, align 8, !dbg !301, !tbaa !208
  %57 = load i32*, i32** %.global_tid..addr, align 8, !dbg !301
  %58 = load i32, i32* %57, align 4, !dbg !301, !tbaa !50
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %58), !dbg !301
  %59 = bitcast i32* %.omp.iv17 to i8*, !dbg !302
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %59) #6, !dbg !302
  call void @llvm.dbg.declare(metadata i32* %.omp.iv17, metadata !255, metadata !DIExpression()), !dbg !303
  %60 = bitcast i32* %.capture_expr.19 to i8*, !dbg !302
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %60) #6, !dbg !302
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.19, metadata !257, metadata !DIExpression()), !dbg !303
  %61 = load i32, i32* @n, align 4, !dbg !304, !tbaa !50
  %sub20 = sub nsw i32 %61, 1, !dbg !305
  store i32 %sub20, i32* %.capture_expr.19, align 4, !dbg !306, !tbaa !50
  %62 = bitcast i32* %.capture_expr.21 to i8*, !dbg !302
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %62) #6, !dbg !302
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.21, metadata !257, metadata !DIExpression()), !dbg !303
  %63 = load i32, i32* %.capture_expr.19, align 4, !dbg !306, !tbaa !50
  %sub22 = sub nsw i32 %63, 1, !dbg !307
  %sub23 = sub nsw i32 %sub22, 1, !dbg !307
  %add24 = add nsw i32 %sub23, 1, !dbg !307
  %div25 = sdiv i32 %add24, 1, !dbg !307
  %sub26 = sub nsw i32 %div25, 1, !dbg !307
  store i32 %sub26, i32* %.capture_expr.21, align 4, !dbg !307, !tbaa !50
  %64 = bitcast i32* %i27 to i8*, !dbg !302
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %64) #6, !dbg !302
  call void @llvm.dbg.declare(metadata i32* %i27, metadata !258, metadata !DIExpression()), !dbg !303
  store i32 1, i32* %i27, align 4, !dbg !308, !tbaa !50
  %65 = bitcast i32* %i27 to i8*, !dbg !302
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #6, !dbg !302
  %66 = load i32, i32* %.capture_expr.19, align 4, !dbg !306, !tbaa !50
  %cmp28 = icmp slt i32 1, %66, !dbg !307
  br i1 %cmp28, label %omp.precond.then29, label %omp.precond.end113, !dbg !302

omp.precond.then29:                               ; preds = %omp.precond.end
  %67 = bitcast i32* %.omp.lb30 to i8*, !dbg !302
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %67) #6, !dbg !302
  call void @llvm.dbg.declare(metadata i32* %.omp.lb30, metadata !259, metadata !DIExpression()), !dbg !303
  store i32 0, i32* %.omp.lb30, align 4, !dbg !309, !tbaa !50
  %68 = bitcast i32* %.omp.ub31 to i8*, !dbg !302
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %68) #6, !dbg !302
  call void @llvm.dbg.declare(metadata i32* %.omp.ub31, metadata !260, metadata !DIExpression()), !dbg !303
  %69 = load i32, i32* %.capture_expr.21, align 4, !dbg !307, !tbaa !50
  store i32 %69, i32* %.omp.ub31, align 4, !dbg !309, !tbaa !50
  %70 = bitcast i32* %.omp.stride32 to i8*, !dbg !302
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %70) #6, !dbg !302
  call void @llvm.dbg.declare(metadata i32* %.omp.stride32, metadata !261, metadata !DIExpression()), !dbg !303
  store i32 1, i32* %.omp.stride32, align 4, !dbg !309, !tbaa !50
  %71 = bitcast i32* %.omp.is_last33 to i8*, !dbg !302
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %71) #6, !dbg !302
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last33, metadata !262, metadata !DIExpression()), !dbg !303
  store i32 0, i32* %.omp.is_last33, align 4, !dbg !309, !tbaa !50
  %72 = bitcast i32* %i34 to i8*, !dbg !302
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %72) #6, !dbg !302
  call void @llvm.dbg.declare(metadata i32* %i34, metadata !258, metadata !DIExpression()), !dbg !303
  %73 = bitcast i32* %j35 to i8*, !dbg !302
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %73) #6, !dbg !302
  call void @llvm.dbg.declare(metadata i32* %j35, metadata !263, metadata !DIExpression()), !dbg !303
  %74 = bitcast double* %resid to i8*, !dbg !302
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %74) #6, !dbg !302
  call void @llvm.dbg.declare(metadata double* %resid, metadata !264, metadata !DIExpression()), !dbg !303
  %75 = bitcast double* %error36 to i8*, !dbg !302
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %75) #6, !dbg !302
  call void @llvm.dbg.declare(metadata double* %error36, metadata !265, metadata !DIExpression()), !dbg !303
  store double 0.000000e+00, double* %error36, align 8, !dbg !310, !tbaa !58
  %76 = bitcast i32* %i37 to i8*, !dbg !302
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %76) #6, !dbg !302
  call void @llvm.dbg.declare(metadata i32* %i37, metadata !258, metadata !DIExpression()), !dbg !303
  %77 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !302
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @3, i32 0, i32 0), i8** %77, align 8, !dbg !302, !tbaa !208
  %78 = load i32*, i32** %.global_tid..addr, align 8, !dbg !302
  %79 = load i32, i32* %78, align 4, !dbg !302, !tbaa !50
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %79, i32 34, i32* %.omp.is_last33, i32* %.omp.lb30, i32* %.omp.ub31, i32* %.omp.stride32, i32 1, i32 1), !dbg !302
  %80 = load i32, i32* %.omp.ub31, align 4, !dbg !309, !tbaa !50
  %81 = load i32, i32* %.capture_expr.21, align 4, !dbg !307, !tbaa !50
  %cmp38 = icmp sgt i32 %80, %81, !dbg !309
  br i1 %cmp38, label %cond.true39, label %cond.false40, !dbg !309

cond.true39:                                      ; preds = %omp.precond.then29
  %82 = load i32, i32* %.capture_expr.21, align 4, !dbg !307, !tbaa !50
  br label %cond.end41, !dbg !309

cond.false40:                                     ; preds = %omp.precond.then29
  %83 = load i32, i32* %.omp.ub31, align 4, !dbg !309, !tbaa !50
  br label %cond.end41, !dbg !309

cond.end41:                                       ; preds = %cond.false40, %cond.true39
  %cond42 = phi i32 [ %82, %cond.true39 ], [ %83, %cond.false40 ], !dbg !309
  store i32 %cond42, i32* %.omp.ub31, align 4, !dbg !309, !tbaa !50
  %84 = load i32, i32* %.omp.lb30, align 4, !dbg !309, !tbaa !50
  store i32 %84, i32* %.omp.iv17, align 4, !dbg !309, !tbaa !50
  br label %omp.inner.for.cond43, !dbg !302

omp.inner.for.cond43:                             ; preds = %omp.inner.for.inc106, %cond.end41
  %85 = load i32, i32* %.omp.iv17, align 4, !dbg !309, !tbaa !50
  %86 = load i32, i32* %.omp.ub31, align 4, !dbg !309, !tbaa !50
  %cmp44 = icmp sle i32 %85, %86, !dbg !307
  br i1 %cmp44, label %omp.inner.for.body46, label %omp.inner.for.cond.cleanup45, !dbg !302

omp.inner.for.cond.cleanup45:                     ; preds = %omp.inner.for.cond43
  br label %omp.inner.for.end108, !dbg !302

omp.inner.for.body46:                             ; preds = %omp.inner.for.cond43
  %87 = load i32, i32* %.omp.iv17, align 4, !dbg !309, !tbaa !50
  %mul47 = mul nsw i32 %87, 1, !dbg !308
  %add48 = add nsw i32 1, %mul47, !dbg !308
  store i32 %add48, i32* %i34, align 4, !dbg !308, !tbaa !50
  store i32 1, i32* %j35, align 4, !dbg !311, !tbaa !50
  br label %for.cond49, !dbg !313

for.cond49:                                       ; preds = %for.inc102, %omp.inner.for.body46
  %88 = load i32, i32* %j35, align 4, !dbg !314, !tbaa !50
  %89 = load i32, i32* @m, align 4, !dbg !316, !tbaa !50
  %sub50 = sub nsw i32 %89, 1, !dbg !317
  %cmp51 = icmp slt i32 %88, %sub50, !dbg !318
  br i1 %cmp51, label %for.body52, label %for.end104, !dbg !319

for.body52:                                       ; preds = %for.cond49
  %90 = load double, double* %3, align 8, !dbg !320, !tbaa !58
  %91 = load i32, i32* %i34, align 4, !dbg !322, !tbaa !50
  %sub53 = sub nsw i32 %91, 1, !dbg !323
  %idxprom54 = sext i32 %sub53 to i64, !dbg !324
  %arrayidx55 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %idxprom54, !dbg !324
  %92 = load i32, i32* %j35, align 4, !dbg !325, !tbaa !50
  %idxprom56 = sext i32 %92 to i64, !dbg !324
  %arrayidx57 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx55, i64 0, i64 %idxprom56, !dbg !324
  %93 = load double, double* %arrayidx57, align 8, !dbg !324, !tbaa !58
  %94 = load i32, i32* %i34, align 4, !dbg !326, !tbaa !50
  %add58 = add nsw i32 %94, 1, !dbg !327
  %idxprom59 = sext i32 %add58 to i64, !dbg !328
  %arrayidx60 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %idxprom59, !dbg !328
  %95 = load i32, i32* %j35, align 4, !dbg !329, !tbaa !50
  %idxprom61 = sext i32 %95 to i64, !dbg !328
  %arrayidx62 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx60, i64 0, i64 %idxprom61, !dbg !328
  %96 = load double, double* %arrayidx62, align 8, !dbg !328, !tbaa !58
  %add63 = fadd double %93, %96, !dbg !330
  %mul64 = fmul double %90, %add63, !dbg !331
  %97 = load double, double* %4, align 8, !dbg !332, !tbaa !58
  %98 = load i32, i32* %i34, align 4, !dbg !333, !tbaa !50
  %idxprom65 = sext i32 %98 to i64, !dbg !334
  %arrayidx66 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %idxprom65, !dbg !334
  %99 = load i32, i32* %j35, align 4, !dbg !335, !tbaa !50
  %sub67 = sub nsw i32 %99, 1, !dbg !336
  %idxprom68 = sext i32 %sub67 to i64, !dbg !334
  %arrayidx69 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx66, i64 0, i64 %idxprom68, !dbg !334
  %100 = load double, double* %arrayidx69, align 8, !dbg !334, !tbaa !58
  %101 = load i32, i32* %i34, align 4, !dbg !337, !tbaa !50
  %idxprom70 = sext i32 %101 to i64, !dbg !338
  %arrayidx71 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %idxprom70, !dbg !338
  %102 = load i32, i32* %j35, align 4, !dbg !339, !tbaa !50
  %add72 = add nsw i32 %102, 1, !dbg !340
  %idxprom73 = sext i32 %add72 to i64, !dbg !338
  %arrayidx74 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx71, i64 0, i64 %idxprom73, !dbg !338
  %103 = load double, double* %arrayidx74, align 8, !dbg !338, !tbaa !58
  %add75 = fadd double %100, %103, !dbg !341
  %mul76 = fmul double %97, %add75, !dbg !342
  %add77 = fadd double %mul64, %mul76, !dbg !343
  %104 = load double, double* %5, align 8, !dbg !344, !tbaa !58
  %105 = load i32, i32* %i34, align 4, !dbg !345, !tbaa !50
  %idxprom78 = sext i32 %105 to i64, !dbg !346
  %arrayidx79 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %idxprom78, !dbg !346
  %106 = load i32, i32* %j35, align 4, !dbg !347, !tbaa !50
  %idxprom80 = sext i32 %106 to i64, !dbg !346
  %arrayidx81 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx79, i64 0, i64 %idxprom80, !dbg !346
  %107 = load double, double* %arrayidx81, align 8, !dbg !346, !tbaa !58
  %mul82 = fmul double %104, %107, !dbg !348
  %add83 = fadd double %add77, %mul82, !dbg !349
  %108 = load i32, i32* %i34, align 4, !dbg !350, !tbaa !50
  %idxprom84 = sext i32 %108 to i64, !dbg !351
  %arrayidx85 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @f, i64 0, i64 %idxprom84, !dbg !351
  %109 = load i32, i32* %j35, align 4, !dbg !352, !tbaa !50
  %idxprom86 = sext i32 %109 to i64, !dbg !351
  %arrayidx87 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx85, i64 0, i64 %idxprom86, !dbg !351
  %110 = load double, double* %arrayidx87, align 8, !dbg !351, !tbaa !58
  %sub88 = fsub double %add83, %110, !dbg !353
  %111 = load double, double* %5, align 8, !dbg !354, !tbaa !58
  %div89 = fdiv double %sub88, %111, !dbg !355
  store double %div89, double* %resid, align 8, !dbg !356, !tbaa !58
  %112 = load i32, i32* %i34, align 4, !dbg !357, !tbaa !50
  %idxprom90 = sext i32 %112 to i64, !dbg !358
  %arrayidx91 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %idxprom90, !dbg !358
  %113 = load i32, i32* %j35, align 4, !dbg !359, !tbaa !50
  %idxprom92 = sext i32 %113 to i64, !dbg !358
  %arrayidx93 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx91, i64 0, i64 %idxprom92, !dbg !358
  %114 = load double, double* %arrayidx93, align 8, !dbg !358, !tbaa !58
  %115 = load double, double* %6, align 8, !dbg !360, !tbaa !58
  %116 = load double, double* %resid, align 8, !dbg !361, !tbaa !58
  %mul94 = fmul double %115, %116, !dbg !362
  %sub95 = fsub double %114, %mul94, !dbg !363
  %117 = load i32, i32* %i34, align 4, !dbg !364, !tbaa !50
  %idxprom96 = sext i32 %117 to i64, !dbg !365
  %arrayidx97 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @u, i64 0, i64 %idxprom96, !dbg !365
  %118 = load i32, i32* %j35, align 4, !dbg !366, !tbaa !50
  %idxprom98 = sext i32 %118 to i64, !dbg !365
  %arrayidx99 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx97, i64 0, i64 %idxprom98, !dbg !365
  store double %sub95, double* %arrayidx99, align 8, !dbg !367, !tbaa !58
  %119 = load double, double* %error36, align 8, !dbg !368, !tbaa !58
  %120 = load double, double* %resid, align 8, !dbg !369, !tbaa !58
  %121 = load double, double* %resid, align 8, !dbg !370, !tbaa !58
  %mul100 = fmul double %120, %121, !dbg !371
  %add101 = fadd double %119, %mul100, !dbg !372
  store double %add101, double* %error36, align 8, !dbg !373, !tbaa !58
  br label %for.inc102, !dbg !374

for.inc102:                                       ; preds = %for.body52
  %122 = load i32, i32* %j35, align 4, !dbg !375, !tbaa !50
  %inc103 = add nsw i32 %122, 1, !dbg !375
  store i32 %inc103, i32* %j35, align 4, !dbg !375, !tbaa !50
  br label %for.cond49, !dbg !376, !llvm.loop !377

for.end104:                                       ; preds = %for.cond49
  br label %omp.body.continue105, !dbg !378

omp.body.continue105:                             ; preds = %for.end104
  br label %omp.inner.for.inc106, !dbg !379

omp.inner.for.inc106:                             ; preds = %omp.body.continue105
  %123 = load i32, i32* %.omp.iv17, align 4, !dbg !309, !tbaa !50
  %add107 = add nsw i32 %123, 1, !dbg !307
  store i32 %add107, i32* %.omp.iv17, align 4, !dbg !307, !tbaa !50
  br label %omp.inner.for.cond43, !dbg !379, !llvm.loop !380

omp.inner.for.end108:                             ; preds = %omp.inner.for.cond.cleanup45
  br label %omp.loop.exit109, !dbg !379

omp.loop.exit109:                                 ; preds = %omp.inner.for.end108
  %124 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !379
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @4, i32 0, i32 0), i8** %124, align 8, !dbg !379, !tbaa !208
  %125 = load i32*, i32** %.global_tid..addr, align 8, !dbg !379
  %126 = load i32, i32* %125, align 4, !dbg !379, !tbaa !50
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %126), !dbg !379
  %127 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !379
  %128 = bitcast double* %error36 to i8*, !dbg !379
  store i8* %128, i8** %127, align 8, !dbg !379
  %129 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !379
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @4, i32 0, i32 0), i8** %129, align 8, !dbg !379, !tbaa !208
  %130 = load i32*, i32** %.global_tid..addr, align 8, !dbg !379
  %131 = load i32, i32* %130, align 4, !dbg !379, !tbaa !50
  %132 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !379
  %133 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %131, i32 1, i64 8, i8* %132, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !379
  switch i32 %133, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !379

.omp.reduction.case1:                             ; preds = %omp.loop.exit109
  %134 = load double, double* %2, align 8, !dbg !310, !tbaa !58
  %135 = load double, double* %error36, align 8, !dbg !310, !tbaa !58
  %add110 = fadd double %134, %135, !dbg !382
  store double %add110, double* %2, align 8, !dbg !382, !tbaa !58
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %131, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !379
  br label %.omp.reduction.default, !dbg !379

.omp.reduction.case2:                             ; preds = %omp.loop.exit109
  %136 = load double, double* %error36, align 8, !dbg !310, !tbaa !58
  %137 = bitcast double* %2 to i64*, !dbg !379
  %atomic-load = load atomic i64, i64* %137 monotonic, align 8, !dbg !379, !tbaa !58
  br label %atomic_cont, !dbg !379

atomic_cont:                                      ; preds = %atomic_cont, %.omp.reduction.case2
  %138 = phi i64 [ %atomic-load, %.omp.reduction.case2 ], [ %146, %atomic_cont ], !dbg !379
  %139 = bitcast double* %atomic-temp to i64*, !dbg !379
  %140 = bitcast i64 %138 to double, !dbg !379
  store double %140, double* %tmp111, align 8, !dbg !379, !tbaa !58
  %141 = load double, double* %tmp111, align 8, !dbg !310, !tbaa !58
  %142 = load double, double* %error36, align 8, !dbg !310, !tbaa !58
  %add112 = fadd double %141, %142, !dbg !382
  store double %add112, double* %atomic-temp, align 8, !dbg !379, !tbaa !58
  %143 = load i64, i64* %139, align 8, !dbg !379
  %144 = bitcast double* %2 to i64*, !dbg !379
  %145 = cmpxchg i64* %144, i64 %138, i64 %143 monotonic monotonic, !dbg !379
  %146 = extractvalue { i64, i1 } %145, 0, !dbg !379
  %147 = extractvalue { i64, i1 } %145, 1, !dbg !379
  br i1 %147, label %atomic_exit, label %atomic_cont, !dbg !379

atomic_exit:                                      ; preds = %atomic_cont
  br label %.omp.reduction.default, !dbg !379

.omp.reduction.default:                           ; preds = %atomic_exit, %.omp.reduction.case1, %omp.loop.exit109
  %148 = bitcast i32* %i37 to i8*, !dbg !379
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %148) #6, !dbg !379
  %149 = bitcast double* %error36 to i8*, !dbg !379
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %149) #6, !dbg !379
  %150 = bitcast double* %resid to i8*, !dbg !379
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %150) #6, !dbg !379
  %151 = bitcast i32* %j35 to i8*, !dbg !379
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %151) #6, !dbg !379
  %152 = bitcast i32* %i34 to i8*, !dbg !379
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %152) #6, !dbg !379
  %153 = bitcast i32* %.omp.is_last33 to i8*, !dbg !379
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %153) #6, !dbg !379
  %154 = bitcast i32* %.omp.stride32 to i8*, !dbg !379
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %154) #6, !dbg !379
  %155 = bitcast i32* %.omp.ub31 to i8*, !dbg !379
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %155) #6, !dbg !379
  %156 = bitcast i32* %.omp.lb30 to i8*, !dbg !379
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %156) #6, !dbg !379
  br label %omp.precond.end113, !dbg !379

omp.precond.end113:                               ; preds = %.omp.reduction.default, %omp.precond.end
  %157 = bitcast i32* %.capture_expr.21 to i8*, !dbg !379
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %157) #6, !dbg !379
  %158 = bitcast i32* %.capture_expr.19 to i8*, !dbg !379
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %158) #6, !dbg !379
  %159 = bitcast i32* %.omp.iv17 to i8*, !dbg !379
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %159) #6, !dbg !379
  ret void, !dbg !383
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #3 !dbg !384 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !387, metadata !DIExpression()), !dbg !390
  store i8* %1, i8** %.addr1, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !389, metadata !DIExpression()), !dbg !390
  %2 = load i8*, i8** %.addr, align 8, !dbg !391
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !391
  %4 = load i8*, i8** %.addr1, align 8, !dbg !391
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !391
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !391
  %7 = load i8*, i8** %6, align 8, !dbg !391
  %8 = bitcast i8* %7 to double*, !dbg !391
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !391
  %10 = load i8*, i8** %9, align 8, !dbg !391
  %11 = bitcast i8* %10 to double*, !dbg !391
  %12 = load double, double* %11, align 8, !dbg !392, !tbaa !58
  %13 = load double, double* %8, align 8, !dbg !392, !tbaa !58
  %add = fadd double %12, %13, !dbg !393
  store double %add, double* %11, align 8, !dbg !393, !tbaa !58
  ret void, !dbg !392
}

declare dso_local i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., double* dereferenceable(8) %error, double* dereferenceable(8) %ax, double* dereferenceable(8) %ay, double* dereferenceable(8) %b, double* dereferenceable(8) %omega) #3 !dbg !394 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %error.addr = alloca double*, align 8
  %ax.addr = alloca double*, align 8
  %ay.addr = alloca double*, align 8
  %b.addr = alloca double*, align 8
  %omega.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !396, metadata !DIExpression()), !dbg !403
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !397, metadata !DIExpression()), !dbg !403
  store double* %error, double** %error.addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata double** %error.addr, metadata !398, metadata !DIExpression()), !dbg !403
  store double* %ax, double** %ax.addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata double** %ax.addr, metadata !399, metadata !DIExpression()), !dbg !403
  store double* %ay, double** %ay.addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata double** %ay.addr, metadata !400, metadata !DIExpression()), !dbg !403
  store double* %b, double** %b.addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !401, metadata !DIExpression()), !dbg !403
  store double* %omega, double** %omega.addr, align 8, !tbaa !266
  call void @llvm.dbg.declare(metadata double** %omega.addr, metadata !402, metadata !DIExpression()), !dbg !403
  %0 = load double*, double** %error.addr, align 8, !dbg !404, !tbaa !266
  %1 = load double*, double** %ax.addr, align 8, !dbg !404, !tbaa !266
  %2 = load double*, double** %ay.addr, align 8, !dbg !404, !tbaa !266
  %3 = load double*, double** %b.addr, align 8, !dbg !404, !tbaa !266
  %4 = load double*, double** %omega.addr, align 8, !dbg !404, !tbaa !266
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !404, !tbaa !266
  %6 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !404, !tbaa !266
  %7 = load double*, double** %error.addr, align 8, !dbg !404, !tbaa !266
  %8 = load double*, double** %ax.addr, align 8, !dbg !404, !tbaa !266
  %9 = load double*, double** %ay.addr, align 8, !dbg !404, !tbaa !266
  %10 = load double*, double** %b.addr, align 8, !dbg !404, !tbaa !266
  %11 = load double*, double** %omega.addr, align 8, !dbg !404, !tbaa !266
  call void @.omp_outlined._debug__(i32* %5, i32* %6, double* %7, double* %8, double* %9, double* %10, double* %11) #6, !dbg !404
  ret void, !dbg !404
}

declare !callback !405 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #4

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !407 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @initialize(), !dbg !409
  call void @jacobi(), !dbg !410
  ret i32 0, !dbg !411
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!32, !33, !34}
!llvm.ident = !{!35}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "n", scope: !2, file: !3, line: 55, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB058-jacobikernel-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{!8, !14, !16, !18, !20, !0, !22, !24, !26, !28, !30}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "u", scope: !2, file: !3, line: 57, type: !10, isLocal: false, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2560000, elements: !12)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !{!13, !13}
!13 = !DISubrange(count: 200)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "f", scope: !2, file: !3, line: 57, type: !10, isLocal: false, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "uold", scope: !2, file: !3, line: 57, type: !10, isLocal: false, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "dx", scope: !2, file: !3, line: 58, type: !11, isLocal: false, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "dy", scope: !2, file: !3, line: 58, type: !11, isLocal: false, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "m", scope: !2, file: !3, line: 55, type: !6, isLocal: false, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "mits", scope: !2, file: !3, line: 55, type: !6, isLocal: false, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "tol", scope: !2, file: !3, line: 56, type: !11, isLocal: false, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "relax", scope: !2, file: !3, line: 56, type: !11, isLocal: false, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "alpha", scope: !2, file: !3, line: 56, type: !11, isLocal: false, isDefinition: true)
!32 = !{i32 7, !"Dwarf Version", i32 4}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{!"clang version 10.0.1 "}
!36 = distinct !DISubprogram(name: "initialize", scope: !3, file: !3, line: 61, type: !37, scopeLine: 62, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!37 = !DISubroutineType(types: !38)
!38 = !{null}
!39 = !{!40, !41, !42, !43}
!40 = !DILocalVariable(name: "i", scope: !36, file: !3, line: 63, type: !6)
!41 = !DILocalVariable(name: "j", scope: !36, file: !3, line: 63, type: !6)
!42 = !DILocalVariable(name: "xx", scope: !36, file: !3, line: 63, type: !6)
!43 = !DILocalVariable(name: "yy", scope: !36, file: !3, line: 63, type: !6)
!44 = !DILocation(line: 63, column: 3, scope: !36)
!45 = !DILocation(line: 63, column: 7, scope: !36)
!46 = !DILocation(line: 63, column: 10, scope: !36)
!47 = !DILocation(line: 63, column: 13, scope: !36)
!48 = !DILocation(line: 63, column: 17, scope: !36)
!49 = !DILocation(line: 65, column: 15, scope: !36)
!50 = !{!51, !51, i64 0}
!51 = !{!"int", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C/C++ TBAA"}
!54 = !DILocation(line: 65, column: 17, scope: !36)
!55 = !DILocation(line: 65, column: 14, scope: !36)
!56 = !DILocation(line: 65, column: 12, scope: !36)
!57 = !DILocation(line: 65, column: 6, scope: !36)
!58 = !{!59, !59, i64 0}
!59 = !{!"double", !52, i64 0}
!60 = !DILocation(line: 66, column: 15, scope: !36)
!61 = !DILocation(line: 66, column: 17, scope: !36)
!62 = !DILocation(line: 66, column: 14, scope: !36)
!63 = !DILocation(line: 66, column: 12, scope: !36)
!64 = !DILocation(line: 66, column: 6, scope: !36)
!65 = !DILocation(line: 70, column: 10, scope: !66)
!66 = distinct !DILexicalBlock(scope: !36, file: !3, line: 70, column: 3)
!67 = !DILocation(line: 70, column: 8, scope: !66)
!68 = !DILocation(line: 70, column: 15, scope: !69)
!69 = distinct !DILexicalBlock(scope: !66, file: !3, line: 70, column: 3)
!70 = !DILocation(line: 70, column: 19, scope: !69)
!71 = !DILocation(line: 70, column: 17, scope: !69)
!72 = !DILocation(line: 70, column: 3, scope: !66)
!73 = !DILocation(line: 71, column: 12, scope: !74)
!74 = distinct !DILexicalBlock(scope: !69, file: !3, line: 71, column: 5)
!75 = !DILocation(line: 71, column: 10, scope: !74)
!76 = !DILocation(line: 71, column: 17, scope: !77)
!77 = distinct !DILexicalBlock(scope: !74, file: !3, line: 71, column: 5)
!78 = !DILocation(line: 71, column: 21, scope: !77)
!79 = !DILocation(line: 71, column: 19, scope: !77)
!80 = !DILocation(line: 71, column: 5, scope: !74)
!81 = !DILocation(line: 73, column: 26, scope: !82)
!82 = distinct !DILexicalBlock(scope: !77, file: !3, line: 72, column: 5)
!83 = !DILocation(line: 73, column: 32, scope: !82)
!84 = !DILocation(line: 73, column: 34, scope: !82)
!85 = !DILocation(line: 73, column: 31, scope: !82)
!86 = !DILocation(line: 73, column: 29, scope: !82)
!87 = !DILocation(line: 73, column: 24, scope: !82)
!88 = !DILocation(line: 73, column: 12, scope: !82)
!89 = !DILocation(line: 73, column: 10, scope: !82)
!90 = !DILocation(line: 74, column: 26, scope: !82)
!91 = !DILocation(line: 74, column: 32, scope: !82)
!92 = !DILocation(line: 74, column: 34, scope: !82)
!93 = !DILocation(line: 74, column: 31, scope: !82)
!94 = !DILocation(line: 74, column: 29, scope: !82)
!95 = !DILocation(line: 74, column: 24, scope: !82)
!96 = !DILocation(line: 74, column: 12, scope: !82)
!97 = !DILocation(line: 74, column: 10, scope: !82)
!98 = !DILocation(line: 75, column: 9, scope: !82)
!99 = !DILocation(line: 75, column: 7, scope: !82)
!100 = !DILocation(line: 75, column: 12, scope: !82)
!101 = !DILocation(line: 75, column: 15, scope: !82)
!102 = !DILocation(line: 76, column: 24, scope: !82)
!103 = !DILocation(line: 76, column: 22, scope: !82)
!104 = !DILocation(line: 76, column: 39, scope: !82)
!105 = !DILocation(line: 76, column: 44, scope: !82)
!106 = !DILocation(line: 76, column: 42, scope: !82)
!107 = !DILocation(line: 76, column: 37, scope: !82)
!108 = !DILocation(line: 76, column: 30, scope: !82)
!109 = !DILocation(line: 76, column: 57, scope: !82)
!110 = !DILocation(line: 76, column: 62, scope: !82)
!111 = !DILocation(line: 76, column: 60, scope: !82)
!112 = !DILocation(line: 76, column: 55, scope: !82)
!113 = !DILocation(line: 76, column: 48, scope: !82)
!114 = !DILocation(line: 77, column: 24, scope: !82)
!115 = !DILocation(line: 77, column: 29, scope: !82)
!116 = !DILocation(line: 77, column: 27, scope: !82)
!117 = !DILocation(line: 77, column: 22, scope: !82)
!118 = !DILocation(line: 77, column: 15, scope: !82)
!119 = !DILocation(line: 77, column: 9, scope: !82)
!120 = !DILocation(line: 77, column: 48, scope: !82)
!121 = !DILocation(line: 77, column: 53, scope: !82)
!122 = !DILocation(line: 77, column: 51, scope: !82)
!123 = !DILocation(line: 77, column: 46, scope: !82)
!124 = !DILocation(line: 77, column: 39, scope: !82)
!125 = !DILocation(line: 77, column: 33, scope: !82)
!126 = !DILocation(line: 76, column: 9, scope: !82)
!127 = !DILocation(line: 76, column: 7, scope: !82)
!128 = !DILocation(line: 76, column: 12, scope: !82)
!129 = !DILocation(line: 76, column: 15, scope: !82)
!130 = !DILocation(line: 79, column: 5, scope: !82)
!131 = !DILocation(line: 71, column: 25, scope: !77)
!132 = !DILocation(line: 71, column: 5, scope: !77)
!133 = distinct !{!133, !80, !134}
!134 = !DILocation(line: 79, column: 5, scope: !74)
!135 = !DILocation(line: 70, column: 23, scope: !69)
!136 = !DILocation(line: 70, column: 3, scope: !69)
!137 = distinct !{!137, !72, !138}
!138 = !DILocation(line: 79, column: 5, scope: !66)
!139 = !DILocation(line: 80, column: 1, scope: !36)
!140 = distinct !DISubprogram(name: "jacobi", scope: !3, file: !3, line: 83, type: !37, scopeLine: 84, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150}
!142 = !DILocalVariable(name: "omega", scope: !140, file: !3, line: 85, type: !11)
!143 = !DILocalVariable(name: "i", scope: !140, file: !3, line: 86, type: !6)
!144 = !DILocalVariable(name: "j", scope: !140, file: !3, line: 86, type: !6)
!145 = !DILocalVariable(name: "k", scope: !140, file: !3, line: 86, type: !6)
!146 = !DILocalVariable(name: "error", scope: !140, file: !3, line: 87, type: !11)
!147 = !DILocalVariable(name: "resid", scope: !140, file: !3, line: 87, type: !11)
!148 = !DILocalVariable(name: "ax", scope: !140, file: !3, line: 87, type: !11)
!149 = !DILocalVariable(name: "ay", scope: !140, file: !3, line: 87, type: !11)
!150 = !DILocalVariable(name: "b", scope: !140, file: !3, line: 87, type: !11)
!151 = !DILocation(line: 85, column: 3, scope: !140)
!152 = !DILocation(line: 85, column: 10, scope: !140)
!153 = !DILocation(line: 86, column: 3, scope: !140)
!154 = !DILocation(line: 86, column: 7, scope: !140)
!155 = !DILocation(line: 86, column: 10, scope: !140)
!156 = !DILocation(line: 86, column: 13, scope: !140)
!157 = !DILocation(line: 87, column: 3, scope: !140)
!158 = !DILocation(line: 87, column: 10, scope: !140)
!159 = !DILocation(line: 87, column: 17, scope: !140)
!160 = !DILocation(line: 87, column: 25, scope: !140)
!161 = !DILocation(line: 87, column: 29, scope: !140)
!162 = !DILocation(line: 87, column: 33, scope: !140)
!163 = !DILocation(line: 89, column: 11, scope: !140)
!164 = !DILocation(line: 89, column: 9, scope: !140)
!165 = !DILocation(line: 92, column: 15, scope: !140)
!166 = !DILocation(line: 92, column: 17, scope: !140)
!167 = !DILocation(line: 92, column: 14, scope: !140)
!168 = !DILocation(line: 92, column: 12, scope: !140)
!169 = !DILocation(line: 92, column: 6, scope: !140)
!170 = !DILocation(line: 93, column: 15, scope: !140)
!171 = !DILocation(line: 93, column: 17, scope: !140)
!172 = !DILocation(line: 93, column: 14, scope: !140)
!173 = !DILocation(line: 93, column: 12, scope: !140)
!174 = !DILocation(line: 93, column: 6, scope: !140)
!175 = !DILocation(line: 95, column: 15, scope: !140)
!176 = !DILocation(line: 95, column: 20, scope: !140)
!177 = !DILocation(line: 95, column: 18, scope: !140)
!178 = !DILocation(line: 95, column: 12, scope: !140)
!179 = !DILocation(line: 95, column: 6, scope: !140)
!180 = !DILocation(line: 96, column: 15, scope: !140)
!181 = !DILocation(line: 96, column: 20, scope: !140)
!182 = !DILocation(line: 96, column: 18, scope: !140)
!183 = !DILocation(line: 96, column: 12, scope: !140)
!184 = !DILocation(line: 96, column: 6, scope: !140)
!185 = !DILocation(line: 97, column: 15, scope: !140)
!186 = !DILocation(line: 97, column: 20, scope: !140)
!187 = !DILocation(line: 97, column: 18, scope: !140)
!188 = !DILocation(line: 97, column: 12, scope: !140)
!189 = !DILocation(line: 97, column: 33, scope: !140)
!190 = !DILocation(line: 97, column: 38, scope: !140)
!191 = !DILocation(line: 97, column: 36, scope: !140)
!192 = !DILocation(line: 97, column: 30, scope: !140)
!193 = !DILocation(line: 97, column: 24, scope: !140)
!194 = !DILocation(line: 97, column: 44, scope: !140)
!195 = !DILocation(line: 97, column: 42, scope: !140)
!196 = !DILocation(line: 97, column: 5, scope: !140)
!197 = !DILocation(line: 99, column: 18, scope: !140)
!198 = !DILocation(line: 99, column: 16, scope: !140)
!199 = !DILocation(line: 99, column: 9, scope: !140)
!200 = !DILocation(line: 100, column: 5, scope: !140)
!201 = !DILocation(line: 102, column: 3, scope: !140)
!202 = !DILocation(line: 102, column: 10, scope: !140)
!203 = !DILocation(line: 102, column: 15, scope: !140)
!204 = !DILocation(line: 102, column: 12, scope: !140)
!205 = !DILocation(line: 104, column: 13, scope: !206)
!206 = distinct !DILexicalBlock(scope: !140, file: !3, line: 103, column: 5)
!207 = !DILocation(line: 107, column: 1, scope: !206)
!208 = !{!209, !210, i64 16}
!209 = !{!"ident_t", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !210, i64 16}
!210 = !{!"any pointer", !52, i64 0}
!211 = !DILocation(line: 129, column: 10, scope: !206)
!212 = !DILocation(line: 129, column: 12, scope: !206)
!213 = !DILocation(line: 129, column: 8, scope: !206)
!214 = !DILocation(line: 130, column: 21, scope: !206)
!215 = !DILocation(line: 130, column: 15, scope: !206)
!216 = !DILocation(line: 130, column: 31, scope: !206)
!217 = !DILocation(line: 130, column: 35, scope: !206)
!218 = !DILocation(line: 130, column: 33, scope: !206)
!219 = !DILocation(line: 130, column: 30, scope: !206)
!220 = !DILocation(line: 130, column: 28, scope: !206)
!221 = !DILocation(line: 130, column: 13, scope: !206)
!222 = distinct !{!222, !201, !223}
!223 = !DILocation(line: 131, column: 5, scope: !140)
!224 = !DILocation(line: 133, column: 46, scope: !140)
!225 = !DILocation(line: 133, column: 3, scope: !140)
!226 = !DILocation(line: 134, column: 28, scope: !140)
!227 = !DILocation(line: 134, column: 3, scope: !140)
!228 = !DILocation(line: 135, column: 1, scope: !140)
!229 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 108, type: !230, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !237)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !232, !232, !236, !236, !236, !236, !236}
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!236 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !11, size: 64)
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245, !248, !248, !249, !250, !251, !252, !253, !249, !254, !249, !255, !257, !257, !258, !259, !260, !261, !262, !258, !263, !264, !265, !258}
!238 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !229, type: !232, flags: DIFlagArtificial)
!239 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !229, type: !232, flags: DIFlagArtificial)
!240 = !DILocalVariable(name: "error", arg: 3, scope: !229, file: !3, line: 87, type: !236)
!241 = !DILocalVariable(name: "ax", arg: 4, scope: !229, file: !3, line: 87, type: !236)
!242 = !DILocalVariable(name: "ay", arg: 5, scope: !229, file: !3, line: 87, type: !236)
!243 = !DILocalVariable(name: "b", arg: 6, scope: !229, file: !3, line: 87, type: !236)
!244 = !DILocalVariable(name: "omega", arg: 7, scope: !229, file: !3, line: 85, type: !236)
!245 = !DILocalVariable(name: ".omp.iv", scope: !246, type: !6, flags: DIFlagArtificial)
!246 = distinct !DILexicalBlock(scope: !247, file: !3, line: 109, column: 1)
!247 = distinct !DILexicalBlock(scope: !229, file: !3, line: 108, column: 7)
!248 = !DILocalVariable(name: ".capture_expr.", scope: !246, type: !6, flags: DIFlagArtificial)
!249 = !DILocalVariable(name: "i", scope: !246, type: !6, flags: DIFlagArtificial)
!250 = !DILocalVariable(name: ".omp.lb", scope: !246, type: !6, flags: DIFlagArtificial)
!251 = !DILocalVariable(name: ".omp.ub", scope: !246, type: !6, flags: DIFlagArtificial)
!252 = !DILocalVariable(name: ".omp.stride", scope: !246, type: !6, flags: DIFlagArtificial)
!253 = !DILocalVariable(name: ".omp.is_last", scope: !246, type: !6, flags: DIFlagArtificial)
!254 = !DILocalVariable(name: "j", scope: !246, type: !6, flags: DIFlagArtificial)
!255 = !DILocalVariable(name: ".omp.iv", scope: !256, type: !6, flags: DIFlagArtificial)
!256 = distinct !DILexicalBlock(scope: !247, file: !3, line: 113, column: 1)
!257 = !DILocalVariable(name: ".capture_expr.", scope: !256, type: !6, flags: DIFlagArtificial)
!258 = !DILocalVariable(name: "i", scope: !256, type: !6, flags: DIFlagArtificial)
!259 = !DILocalVariable(name: ".omp.lb", scope: !256, type: !6, flags: DIFlagArtificial)
!260 = !DILocalVariable(name: ".omp.ub", scope: !256, type: !6, flags: DIFlagArtificial)
!261 = !DILocalVariable(name: ".omp.stride", scope: !256, type: !6, flags: DIFlagArtificial)
!262 = !DILocalVariable(name: ".omp.is_last", scope: !256, type: !6, flags: DIFlagArtificial)
!263 = !DILocalVariable(name: "j", scope: !256, type: !6, flags: DIFlagArtificial)
!264 = !DILocalVariable(name: "resid", scope: !256, type: !11, flags: DIFlagArtificial)
!265 = !DILocalVariable(name: "error", scope: !256, type: !11, flags: DIFlagArtificial)
!266 = !{!210, !210, i64 0}
!267 = !DILocation(line: 0, scope: !229)
!268 = !DILocation(line: 87, column: 10, scope: !229)
!269 = !DILocation(line: 87, column: 25, scope: !229)
!270 = !DILocation(line: 87, column: 29, scope: !229)
!271 = !DILocation(line: 87, column: 33, scope: !229)
!272 = !DILocation(line: 85, column: 10, scope: !229)
!273 = !DILocation(line: 108, column: 7, scope: !229)
!274 = !DILocation(line: 109, column: 1, scope: !247)
!275 = !DILocation(line: 0, scope: !246)
!276 = !DILocation(line: 110, column: 25, scope: !246)
!277 = !DILocation(line: 110, column: 9, scope: !246)
!278 = !DILocation(line: 110, column: 28, scope: !246)
!279 = !DILocation(line: 110, column: 14, scope: !246)
!280 = !DILocation(line: 111, column: 18, scope: !281)
!281 = distinct !DILexicalBlock(scope: !246, file: !3, line: 111, column: 11)
!282 = !DILocation(line: 111, column: 16, scope: !281)
!283 = !DILocation(line: 111, column: 23, scope: !284)
!284 = distinct !DILexicalBlock(scope: !281, file: !3, line: 111, column: 11)
!285 = !DILocation(line: 111, column: 27, scope: !284)
!286 = !DILocation(line: 111, column: 25, scope: !284)
!287 = !DILocation(line: 111, column: 11, scope: !281)
!288 = !DILocation(line: 112, column: 28, scope: !284)
!289 = !DILocation(line: 112, column: 26, scope: !284)
!290 = !DILocation(line: 112, column: 31, scope: !284)
!291 = !DILocation(line: 112, column: 18, scope: !284)
!292 = !DILocation(line: 112, column: 13, scope: !284)
!293 = !DILocation(line: 112, column: 21, scope: !284)
!294 = !DILocation(line: 112, column: 24, scope: !284)
!295 = !DILocation(line: 111, column: 31, scope: !284)
!296 = !DILocation(line: 111, column: 11, scope: !284)
!297 = distinct !{!297, !287, !298}
!298 = !DILocation(line: 112, column: 32, scope: !281)
!299 = !DILocation(line: 109, column: 1, scope: !246)
!300 = distinct !{!300, !299, !301}
!301 = !DILocation(line: 109, column: 29, scope: !246)
!302 = !DILocation(line: 113, column: 1, scope: !247)
!303 = !DILocation(line: 0, scope: !256)
!304 = !DILocation(line: 114, column: 26, scope: !256)
!305 = !DILocation(line: 114, column: 28, scope: !256)
!306 = !DILocation(line: 114, column: 25, scope: !256)
!307 = !DILocation(line: 114, column: 9, scope: !256)
!308 = !DILocation(line: 114, column: 34, scope: !256)
!309 = !DILocation(line: 114, column: 14, scope: !256)
!310 = !DILocation(line: 113, column: 48, scope: !256)
!311 = !DILocation(line: 115, column: 18, scope: !312)
!312 = distinct !DILexicalBlock(scope: !256, file: !3, line: 115, column: 11)
!313 = !DILocation(line: 115, column: 16, scope: !312)
!314 = !DILocation(line: 115, column: 23, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !3, line: 115, column: 11)
!316 = !DILocation(line: 115, column: 28, scope: !315)
!317 = !DILocation(line: 115, column: 30, scope: !315)
!318 = !DILocation(line: 115, column: 25, scope: !315)
!319 = !DILocation(line: 115, column: 11, scope: !312)
!320 = !DILocation(line: 117, column: 24, scope: !321)
!321 = distinct !DILexicalBlock(scope: !315, file: !3, line: 116, column: 13)
!322 = !DILocation(line: 117, column: 35, scope: !321)
!323 = !DILocation(line: 117, column: 37, scope: !321)
!324 = !DILocation(line: 117, column: 30, scope: !321)
!325 = !DILocation(line: 117, column: 42, scope: !321)
!326 = !DILocation(line: 117, column: 52, scope: !321)
!327 = !DILocation(line: 117, column: 54, scope: !321)
!328 = !DILocation(line: 117, column: 47, scope: !321)
!329 = !DILocation(line: 117, column: 59, scope: !321)
!330 = !DILocation(line: 117, column: 45, scope: !321)
!331 = !DILocation(line: 117, column: 27, scope: !321)
!332 = !DILocation(line: 118, column: 26, scope: !321)
!333 = !DILocation(line: 118, column: 37, scope: !321)
!334 = !DILocation(line: 118, column: 32, scope: !321)
!335 = !DILocation(line: 118, column: 40, scope: !321)
!336 = !DILocation(line: 118, column: 42, scope: !321)
!337 = !DILocation(line: 118, column: 54, scope: !321)
!338 = !DILocation(line: 118, column: 49, scope: !321)
!339 = !DILocation(line: 118, column: 57, scope: !321)
!340 = !DILocation(line: 118, column: 59, scope: !321)
!341 = !DILocation(line: 118, column: 47, scope: !321)
!342 = !DILocation(line: 118, column: 29, scope: !321)
!343 = !DILocation(line: 118, column: 24, scope: !321)
!344 = !DILocation(line: 119, column: 24, scope: !321)
!345 = !DILocation(line: 119, column: 33, scope: !321)
!346 = !DILocation(line: 119, column: 28, scope: !321)
!347 = !DILocation(line: 119, column: 36, scope: !321)
!348 = !DILocation(line: 119, column: 26, scope: !321)
!349 = !DILocation(line: 118, column: 65, scope: !321)
!350 = !DILocation(line: 119, column: 43, scope: !321)
!351 = !DILocation(line: 119, column: 41, scope: !321)
!352 = !DILocation(line: 119, column: 46, scope: !321)
!353 = !DILocation(line: 119, column: 39, scope: !321)
!354 = !DILocation(line: 119, column: 52, scope: !321)
!355 = !DILocation(line: 119, column: 50, scope: !321)
!356 = !DILocation(line: 117, column: 21, scope: !321)
!357 = !DILocation(line: 121, column: 30, scope: !321)
!358 = !DILocation(line: 121, column: 25, scope: !321)
!359 = !DILocation(line: 121, column: 33, scope: !321)
!360 = !DILocation(line: 121, column: 38, scope: !321)
!361 = !DILocation(line: 121, column: 46, scope: !321)
!362 = !DILocation(line: 121, column: 44, scope: !321)
!363 = !DILocation(line: 121, column: 36, scope: !321)
!364 = !DILocation(line: 121, column: 17, scope: !321)
!365 = !DILocation(line: 121, column: 15, scope: !321)
!366 = !DILocation(line: 121, column: 20, scope: !321)
!367 = !DILocation(line: 121, column: 23, scope: !321)
!368 = !DILocation(line: 122, column: 23, scope: !321)
!369 = !DILocation(line: 122, column: 31, scope: !321)
!370 = !DILocation(line: 122, column: 39, scope: !321)
!371 = !DILocation(line: 122, column: 37, scope: !321)
!372 = !DILocation(line: 122, column: 29, scope: !321)
!373 = !DILocation(line: 122, column: 21, scope: !321)
!374 = !DILocation(line: 123, column: 13, scope: !321)
!375 = !DILocation(line: 115, column: 37, scope: !315)
!376 = !DILocation(line: 115, column: 11, scope: !315)
!377 = distinct !{!377, !319, !378}
!378 = !DILocation(line: 123, column: 13, scope: !312)
!379 = !DILocation(line: 113, column: 1, scope: !256)
!380 = distinct !{!380, !379, !381}
!381 = !DILocation(line: 113, column: 61, scope: !256)
!382 = !DILocation(line: 113, column: 46, scope: !256)
!383 = !DILocation(line: 124, column: 7, scope: !229)
!384 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !3, file: !3, line: 113, type: !385, scopeLine: 113, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !386)
!385 = !DISubroutineType(types: !4)
!386 = !{!387, !389}
!387 = !DILocalVariable(arg: 1, scope: !384, type: !388, flags: DIFlagArtificial)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!389 = !DILocalVariable(arg: 2, scope: !384, type: !388, flags: DIFlagArtificial)
!390 = !DILocation(line: 0, scope: !384)
!391 = !DILocation(line: 113, column: 61, scope: !384)
!392 = !DILocation(line: 113, column: 48, scope: !384)
!393 = !DILocation(line: 113, column: 46, scope: !384)
!394 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 108, type: !230, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !395)
!395 = !{!396, !397, !398, !399, !400, !401, !402}
!396 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !394, type: !232, flags: DIFlagArtificial)
!397 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !394, type: !232, flags: DIFlagArtificial)
!398 = !DILocalVariable(name: "error", arg: 3, scope: !394, type: !236, flags: DIFlagArtificial)
!399 = !DILocalVariable(name: "ax", arg: 4, scope: !394, type: !236, flags: DIFlagArtificial)
!400 = !DILocalVariable(name: "ay", arg: 5, scope: !394, type: !236, flags: DIFlagArtificial)
!401 = !DILocalVariable(name: "b", arg: 6, scope: !394, type: !236, flags: DIFlagArtificial)
!402 = !DILocalVariable(name: "omega", arg: 7, scope: !394, type: !236, flags: DIFlagArtificial)
!403 = !DILocation(line: 0, scope: !394)
!404 = !DILocation(line: 108, column: 7, scope: !394)
!405 = !{!406}
!406 = !{i64 2, i64 -1, i64 -1, i1 true}
!407 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 137, type: !408, scopeLine: 138, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!408 = !DISubroutineType(types: !5)
!409 = !DILocation(line: 139, column: 3, scope: !407)
!410 = !DILocation(line: 140, column: 3, scope: !407)
!411 = !DILocation(line: 141, column: 3, scope: !407)
