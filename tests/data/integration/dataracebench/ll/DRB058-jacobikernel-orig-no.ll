; ModuleID = 'DRB058-jacobikernel-orig-no.c'
source_filename = "DRB058-jacobikernel-orig-no.c"
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
@1 = private unnamed_addr constant [46 x i8] c";DRB058-jacobikernel-orig-no.c;jacobi;109;1;;\00", align 1
@uold = common dso_local global [200 x [200 x double]] zeroinitializer, align 16, !dbg !16
@2 = private unnamed_addr constant [47 x i8] c";DRB058-jacobikernel-orig-no.c;jacobi;109;29;;\00", align 1
@3 = private unnamed_addr constant [46 x i8] c";DRB058-jacobikernel-orig-no.c;jacobi;113;1;;\00", align 1
@4 = private unnamed_addr constant [47 x i8] c";DRB058-jacobikernel-orig-no.c;jacobi;113;61;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@5 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant [46 x i8] c";DRB058-jacobikernel-orig-no.c;jacobi;107;1;;\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Total Number of Iterations:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Residual:%E\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialize() #0 !dbg !36 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %j, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %xx, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %yy, metadata !45, metadata !DIExpression()), !dbg !46
  %0 = load i32, i32* @n, align 4, !dbg !47
  %sub = sub nsw i32 %0, 1, !dbg !48
  %conv = sitofp i32 %sub to double, !dbg !49
  %div = fdiv double 2.000000e+00, %conv, !dbg !50
  store double %div, double* @dx, align 8, !dbg !51
  %1 = load i32, i32* @m, align 4, !dbg !52
  %sub1 = sub nsw i32 %1, 1, !dbg !53
  %conv2 = sitofp i32 %sub1 to double, !dbg !54
  %div3 = fdiv double 2.000000e+00, %conv2, !dbg !55
  store double %div3, double* @dy, align 8, !dbg !56
  store i32 0, i32* %i, align 4, !dbg !57
  br label %for.cond, !dbg !59

for.cond:                                         ; preds = %for.inc42, %entry
  %2 = load i32, i32* %i, align 4, !dbg !60
  %3 = load i32, i32* @n, align 4, !dbg !62
  %cmp = icmp slt i32 %2, %3, !dbg !63
  br i1 %cmp, label %for.body, label %for.end44, !dbg !64

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !65
  br label %for.cond5, !dbg !67

for.cond5:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4, !dbg !68
  %5 = load i32, i32* @m, align 4, !dbg !70
  %cmp6 = icmp slt i32 %4, %5, !dbg !71
  br i1 %cmp6, label %for.body8, label %for.end, !dbg !72

for.body8:                                        ; preds = %for.cond5
  %6 = load double, double* @dx, align 8, !dbg !73
  %7 = load i32, i32* %i, align 4, !dbg !75
  %sub9 = sub nsw i32 %7, 1, !dbg !76
  %conv10 = sitofp i32 %sub9 to double, !dbg !77
  %mul = fmul double %6, %conv10, !dbg !78
  %add = fadd double -1.000000e+00, %mul, !dbg !79
  %conv11 = fptosi double %add to i32, !dbg !80
  store i32 %conv11, i32* %xx, align 4, !dbg !81
  %8 = load double, double* @dy, align 8, !dbg !82
  %9 = load i32, i32* %j, align 4, !dbg !83
  %sub12 = sub nsw i32 %9, 1, !dbg !84
  %conv13 = sitofp i32 %sub12 to double, !dbg !85
  %mul14 = fmul double %8, %conv13, !dbg !86
  %add15 = fadd double -1.000000e+00, %mul14, !dbg !87
  %conv16 = fptosi double %add15 to i32, !dbg !88
  store i32 %conv16, i32* %yy, align 4, !dbg !89
  %10 = load i32, i32* %i, align 4, !dbg !90
  %idxprom = sext i32 %10 to i64, !dbg !91
  %arrayidx = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @u, i64 0, i64 %idxprom, !dbg !91
  %11 = load i32, i32* %j, align 4, !dbg !92
  %idxprom17 = sext i32 %11 to i64, !dbg !91
  %arrayidx18 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx, i64 0, i64 %idxprom17, !dbg !91
  store double 0.000000e+00, double* %arrayidx18, align 8, !dbg !93
  %12 = load double, double* @alpha, align 8, !dbg !94
  %mul19 = fmul double -1.000000e+00, %12, !dbg !95
  %13 = load i32, i32* %xx, align 4, !dbg !96
  %14 = load i32, i32* %xx, align 4, !dbg !97
  %mul20 = mul nsw i32 %13, %14, !dbg !98
  %conv21 = sitofp i32 %mul20 to double, !dbg !96
  %sub22 = fsub double 1.000000e+00, %conv21, !dbg !99
  %mul23 = fmul double %mul19, %sub22, !dbg !100
  %15 = load i32, i32* %yy, align 4, !dbg !101
  %16 = load i32, i32* %yy, align 4, !dbg !102
  %mul24 = mul nsw i32 %15, %16, !dbg !103
  %conv25 = sitofp i32 %mul24 to double, !dbg !101
  %sub26 = fsub double 1.000000e+00, %conv25, !dbg !104
  %mul27 = fmul double %mul23, %sub26, !dbg !105
  %17 = load i32, i32* %xx, align 4, !dbg !106
  %18 = load i32, i32* %xx, align 4, !dbg !107
  %mul28 = mul nsw i32 %17, %18, !dbg !108
  %conv29 = sitofp i32 %mul28 to double, !dbg !106
  %sub30 = fsub double 1.000000e+00, %conv29, !dbg !109
  %mul31 = fmul double 2.000000e+00, %sub30, !dbg !110
  %sub32 = fsub double %mul27, %mul31, !dbg !111
  %19 = load i32, i32* %yy, align 4, !dbg !112
  %20 = load i32, i32* %yy, align 4, !dbg !113
  %mul33 = mul nsw i32 %19, %20, !dbg !114
  %conv34 = sitofp i32 %mul33 to double, !dbg !112
  %sub35 = fsub double 1.000000e+00, %conv34, !dbg !115
  %mul36 = fmul double 2.000000e+00, %sub35, !dbg !116
  %sub37 = fsub double %sub32, %mul36, !dbg !117
  %21 = load i32, i32* %i, align 4, !dbg !118
  %idxprom38 = sext i32 %21 to i64, !dbg !119
  %arrayidx39 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @f, i64 0, i64 %idxprom38, !dbg !119
  %22 = load i32, i32* %j, align 4, !dbg !120
  %idxprom40 = sext i32 %22 to i64, !dbg !119
  %arrayidx41 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx39, i64 0, i64 %idxprom40, !dbg !119
  store double %sub37, double* %arrayidx41, align 8, !dbg !121
  br label %for.inc, !dbg !122

for.inc:                                          ; preds = %for.body8
  %23 = load i32, i32* %j, align 4, !dbg !123
  %inc = add nsw i32 %23, 1, !dbg !123
  store i32 %inc, i32* %j, align 4, !dbg !123
  br label %for.cond5, !dbg !124, !llvm.loop !125

for.end:                                          ; preds = %for.cond5
  br label %for.inc42, !dbg !126

for.inc42:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4, !dbg !127
  %inc43 = add nsw i32 %24, 1, !dbg !127
  store i32 %inc43, i32* %i, align 4, !dbg !127
  br label %for.cond, !dbg !128, !llvm.loop !129

for.end44:                                        ; preds = %for.cond
  ret void, !dbg !131
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jacobi() #0 !dbg !132 {
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
  call void @llvm.dbg.declare(metadata double* %omega, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i32* %i, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %j, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %k, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata double* %error, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata double* %resid, metadata !143, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata double* %ax, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata double* %ay, metadata !147, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata double* %b, metadata !149, metadata !DIExpression()), !dbg !150
  %2 = load double, double* @relax, align 8, !dbg !151
  store double %2, double* %omega, align 8, !dbg !152
  %3 = load i32, i32* @n, align 4, !dbg !153
  %sub = sub nsw i32 %3, 1, !dbg !154
  %conv = sitofp i32 %sub to double, !dbg !155
  %div = fdiv double 2.000000e+00, %conv, !dbg !156
  store double %div, double* @dx, align 8, !dbg !157
  %4 = load i32, i32* @m, align 4, !dbg !158
  %sub1 = sub nsw i32 %4, 1, !dbg !159
  %conv2 = sitofp i32 %sub1 to double, !dbg !160
  %div3 = fdiv double 2.000000e+00, %conv2, !dbg !161
  store double %div3, double* @dy, align 8, !dbg !162
  %5 = load double, double* @dx, align 8, !dbg !163
  %6 = load double, double* @dx, align 8, !dbg !164
  %mul = fmul double %5, %6, !dbg !165
  %div4 = fdiv double 1.000000e+00, %mul, !dbg !166
  store double %div4, double* %ax, align 8, !dbg !167
  %7 = load double, double* @dy, align 8, !dbg !168
  %8 = load double, double* @dy, align 8, !dbg !169
  %mul5 = fmul double %7, %8, !dbg !170
  %div6 = fdiv double 1.000000e+00, %mul5, !dbg !171
  store double %div6, double* %ay, align 8, !dbg !172
  %9 = load double, double* @dx, align 8, !dbg !173
  %10 = load double, double* @dx, align 8, !dbg !174
  %mul7 = fmul double %9, %10, !dbg !175
  %div8 = fdiv double -2.000000e+00, %mul7, !dbg !176
  %11 = load double, double* @dy, align 8, !dbg !177
  %12 = load double, double* @dy, align 8, !dbg !178
  %mul9 = fmul double %11, %12, !dbg !179
  %div10 = fdiv double 2.000000e+00, %mul9, !dbg !180
  %sub11 = fsub double %div8, %div10, !dbg !181
  %13 = load double, double* @alpha, align 8, !dbg !182
  %sub12 = fsub double %sub11, %13, !dbg !183
  store double %sub12, double* %b, align 8, !dbg !184
  %14 = load double, double* @tol, align 8, !dbg !185
  %mul13 = fmul double 1.000000e+01, %14, !dbg !186
  store double %mul13, double* %error, align 8, !dbg !187
  store i32 1, i32* %k, align 4, !dbg !188
  br label %while.cond, !dbg !189

while.cond:                                       ; preds = %while.body, %entry
  %15 = load i32, i32* %k, align 4, !dbg !190
  %16 = load i32, i32* @mits, align 4, !dbg !191
  %cmp = icmp sle i32 %15, %16, !dbg !192
  br i1 %cmp, label %while.body, label %while.end, !dbg !189

while.body:                                       ; preds = %while.cond
  store double 0.000000e+00, double* %error, align 8, !dbg !193
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !195
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @6, i32 0, i32 0), i8** %17, align 8, !dbg !195
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, double*, double*, double*, double*, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), double* %error, double* %ax, double* %ay, double* %b, double* %omega), !dbg !195
  %18 = load i32, i32* %k, align 4, !dbg !196
  %add = add nsw i32 %18, 1, !dbg !197
  store i32 %add, i32* %k, align 4, !dbg !198
  %19 = load double, double* %error, align 8, !dbg !199
  %call = call double @sqrt(double %19) #7, !dbg !200
  %20 = load i32, i32* @n, align 4, !dbg !201
  %21 = load i32, i32* @m, align 4, !dbg !202
  %mul15 = mul nsw i32 %20, %21, !dbg !203
  %conv16 = sitofp i32 %mul15 to double, !dbg !204
  %div17 = fdiv double %call, %conv16, !dbg !205
  store double %div17, double* %error, align 8, !dbg !206
  br label %while.cond, !dbg !189, !llvm.loop !207

while.end:                                        ; preds = %while.cond
  %22 = load i32, i32* %k, align 4, !dbg !209
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %22), !dbg !210
  %23 = load double, double* %error, align 8, !dbg !211
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), double %23), !dbg !212
  ret void, !dbg !213
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., double* dereferenceable(8) %error, double* dereferenceable(8) %ax, double* dereferenceable(8) %ay, double* dereferenceable(8) %b, double* dereferenceable(8) %omega) #2 !dbg !214 {
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
  %tmp110 = alloca double, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !222, metadata !DIExpression()), !dbg !223
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !224, metadata !DIExpression()), !dbg !223
  store double* %error, double** %error.addr, align 8
  call void @llvm.dbg.declare(metadata double** %error.addr, metadata !225, metadata !DIExpression()), !dbg !226
  store double* %ax, double** %ax.addr, align 8
  call void @llvm.dbg.declare(metadata double** %ax.addr, metadata !227, metadata !DIExpression()), !dbg !228
  store double* %ay, double** %ay.addr, align 8
  call void @llvm.dbg.declare(metadata double** %ay.addr, metadata !229, metadata !DIExpression()), !dbg !230
  store double* %b, double** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !231, metadata !DIExpression()), !dbg !232
  store double* %omega, double** %omega.addr, align 8
  call void @llvm.dbg.declare(metadata double** %omega.addr, metadata !233, metadata !DIExpression()), !dbg !234
  %2 = load double*, double** %error.addr, align 8, !dbg !235
  %3 = load double*, double** %ax.addr, align 8, !dbg !235
  %4 = load double*, double** %ay.addr, align 8, !dbg !235
  %5 = load double*, double** %b.addr, align 8, !dbg !235
  %6 = load double*, double** %omega.addr, align 8, !dbg !235
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !236, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !240, metadata !DIExpression()), !dbg !239
  %7 = load i32, i32* @n, align 4, !dbg !241
  store i32 %7, i32* %.capture_expr., align 4, !dbg !241
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !240, metadata !DIExpression()), !dbg !239
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !241
  %sub = sub nsw i32 %8, 0, !dbg !242
  %sub2 = sub nsw i32 %sub, 1, !dbg !242
  %add = add nsw i32 %sub2, 1, !dbg !242
  %div = sdiv i32 %add, 1, !dbg !242
  %sub3 = sub nsw i32 %div, 1, !dbg !242
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !242
  call void @llvm.dbg.declare(metadata i32* %i, metadata !243, metadata !DIExpression()), !dbg !239
  store i32 0, i32* %i, align 4, !dbg !244
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !241
  %cmp = icmp slt i32 0, %9, !dbg !242
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !245

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !246, metadata !DIExpression()), !dbg !239
  store i32 0, i32* %.omp.lb, align 4, !dbg !247
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !248, metadata !DIExpression()), !dbg !239
  %10 = load i32, i32* %.capture_expr.1, align 4, !dbg !242
  store i32 %10, i32* %.omp.ub, align 4, !dbg !247
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !249, metadata !DIExpression()), !dbg !239
  store i32 1, i32* %.omp.stride, align 4, !dbg !247
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !250, metadata !DIExpression()), !dbg !239
  store i32 0, i32* %.omp.is_last, align 4, !dbg !247
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !243, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata i32* %j, metadata !251, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !243, metadata !DIExpression()), !dbg !239
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !245
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !245
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !245
  %13 = load i32, i32* %12, align 4, !dbg !245
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !245
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !247
  %15 = load i32, i32* %.capture_expr.1, align 4, !dbg !242
  %cmp6 = icmp sgt i32 %14, %15, !dbg !247
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !247

cond.true:                                        ; preds = %omp.precond.then
  %16 = load i32, i32* %.capture_expr.1, align 4, !dbg !242
  br label %cond.end, !dbg !247

cond.false:                                       ; preds = %omp.precond.then
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !247
  br label %cond.end, !dbg !247

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !247
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !247
  %18 = load i32, i32* %.omp.lb, align 4, !dbg !247
  store i32 %18, i32* %.omp.iv, align 4, !dbg !247
  br label %omp.inner.for.cond, !dbg !245

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !247
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !247
  %cmp7 = icmp sle i32 %19, %20, !dbg !242
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !245

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !247
  %mul = mul nsw i32 %21, 1, !dbg !244
  %add8 = add nsw i32 0, %mul, !dbg !244
  store i32 %add8, i32* %i4, align 4, !dbg !244
  store i32 0, i32* %j, align 4, !dbg !252
  br label %for.cond, !dbg !254

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %22 = load i32, i32* %j, align 4, !dbg !255
  %23 = load i32, i32* @m, align 4, !dbg !257
  %cmp9 = icmp slt i32 %22, %23, !dbg !258
  br i1 %cmp9, label %for.body, label %for.end, !dbg !259

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i4, align 4, !dbg !260
  %idxprom = sext i32 %24 to i64, !dbg !261
  %arrayidx = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @u, i64 0, i64 %idxprom, !dbg !261
  %25 = load i32, i32* %j, align 4, !dbg !262
  %idxprom10 = sext i32 %25 to i64, !dbg !261
  %arrayidx11 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx, i64 0, i64 %idxprom10, !dbg !261
  %26 = load double, double* %arrayidx11, align 8, !dbg !261
  %27 = load i32, i32* %i4, align 4, !dbg !263
  %idxprom12 = sext i32 %27 to i64, !dbg !264
  %arrayidx13 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %idxprom12, !dbg !264
  %28 = load i32, i32* %j, align 4, !dbg !265
  %idxprom14 = sext i32 %28 to i64, !dbg !264
  %arrayidx15 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx13, i64 0, i64 %idxprom14, !dbg !264
  store double %26, double* %arrayidx15, align 8, !dbg !266
  br label %for.inc, !dbg !264

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %j, align 4, !dbg !267
  %inc = add nsw i32 %29, 1, !dbg !267
  store i32 %inc, i32* %j, align 4, !dbg !267
  br label %for.cond, !dbg !268, !llvm.loop !269

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !270

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !271

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %30 = load i32, i32* %.omp.iv, align 4, !dbg !247
  %add16 = add nsw i32 %30, 1, !dbg !242
  store i32 %add16, i32* %.omp.iv, align 4, !dbg !242
  br label %omp.inner.for.cond, !dbg !271, !llvm.loop !272

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !271

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %31 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !271
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @2, i32 0, i32 0), i8** %31, align 8, !dbg !271
  %32 = load i32*, i32** %.global_tid..addr, align 8, !dbg !271
  %33 = load i32, i32* %32, align 4, !dbg !271
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %33), !dbg !271
  br label %omp.precond.end, !dbg !271

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %34 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !273
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1, i32 0, i32 0), i8** %34, align 8, !dbg !273
  %35 = load i32*, i32** %.global_tid..addr, align 8, !dbg !273
  %36 = load i32, i32* %35, align 4, !dbg !273
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %36), !dbg !273
  call void @llvm.dbg.declare(metadata i32* %.omp.iv17, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.19, metadata !277, metadata !DIExpression()), !dbg !276
  %37 = load i32, i32* @n, align 4, !dbg !278
  %sub20 = sub nsw i32 %37, 1, !dbg !279
  store i32 %sub20, i32* %.capture_expr.19, align 4, !dbg !280
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.21, metadata !277, metadata !DIExpression()), !dbg !276
  %38 = load i32, i32* %.capture_expr.19, align 4, !dbg !280
  %sub22 = sub nsw i32 %38, 1, !dbg !281
  %sub23 = sub nsw i32 %sub22, 1, !dbg !281
  %add24 = add nsw i32 %sub23, 1, !dbg !281
  %div25 = sdiv i32 %add24, 1, !dbg !281
  %sub26 = sub nsw i32 %div25, 1, !dbg !281
  store i32 %sub26, i32* %.capture_expr.21, align 4, !dbg !281
  call void @llvm.dbg.declare(metadata i32* %i27, metadata !282, metadata !DIExpression()), !dbg !276
  store i32 1, i32* %i27, align 4, !dbg !283
  %39 = load i32, i32* %.capture_expr.19, align 4, !dbg !280
  %cmp28 = icmp slt i32 1, %39, !dbg !281
  br i1 %cmp28, label %omp.precond.then29, label %omp.precond.end112, !dbg !284

omp.precond.then29:                               ; preds = %omp.precond.end
  call void @llvm.dbg.declare(metadata i32* %.omp.lb30, metadata !285, metadata !DIExpression()), !dbg !276
  store i32 0, i32* %.omp.lb30, align 4, !dbg !286
  call void @llvm.dbg.declare(metadata i32* %.omp.ub31, metadata !287, metadata !DIExpression()), !dbg !276
  %40 = load i32, i32* %.capture_expr.21, align 4, !dbg !281
  store i32 %40, i32* %.omp.ub31, align 4, !dbg !286
  call void @llvm.dbg.declare(metadata i32* %.omp.stride32, metadata !288, metadata !DIExpression()), !dbg !276
  store i32 1, i32* %.omp.stride32, align 4, !dbg !286
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last33, metadata !289, metadata !DIExpression()), !dbg !276
  store i32 0, i32* %.omp.is_last33, align 4, !dbg !286
  call void @llvm.dbg.declare(metadata i32* %i34, metadata !282, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata i32* %j35, metadata !290, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata double* %resid, metadata !291, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata double* %error36, metadata !292, metadata !DIExpression()), !dbg !276
  store double 0.000000e+00, double* %error36, align 8, !dbg !293
  call void @llvm.dbg.declare(metadata i32* %i37, metadata !282, metadata !DIExpression()), !dbg !276
  %41 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !284
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @3, i32 0, i32 0), i8** %41, align 8, !dbg !284
  %42 = load i32*, i32** %.global_tid..addr, align 8, !dbg !284
  %43 = load i32, i32* %42, align 4, !dbg !284
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %43, i32 34, i32* %.omp.is_last33, i32* %.omp.lb30, i32* %.omp.ub31, i32* %.omp.stride32, i32 1, i32 1), !dbg !284
  %44 = load i32, i32* %.omp.ub31, align 4, !dbg !286
  %45 = load i32, i32* %.capture_expr.21, align 4, !dbg !281
  %cmp38 = icmp sgt i32 %44, %45, !dbg !286
  br i1 %cmp38, label %cond.true39, label %cond.false40, !dbg !286

cond.true39:                                      ; preds = %omp.precond.then29
  %46 = load i32, i32* %.capture_expr.21, align 4, !dbg !281
  br label %cond.end41, !dbg !286

cond.false40:                                     ; preds = %omp.precond.then29
  %47 = load i32, i32* %.omp.ub31, align 4, !dbg !286
  br label %cond.end41, !dbg !286

cond.end41:                                       ; preds = %cond.false40, %cond.true39
  %cond42 = phi i32 [ %46, %cond.true39 ], [ %47, %cond.false40 ], !dbg !286
  store i32 %cond42, i32* %.omp.ub31, align 4, !dbg !286
  %48 = load i32, i32* %.omp.lb30, align 4, !dbg !286
  store i32 %48, i32* %.omp.iv17, align 4, !dbg !286
  br label %omp.inner.for.cond43, !dbg !284

omp.inner.for.cond43:                             ; preds = %omp.inner.for.inc105, %cond.end41
  %49 = load i32, i32* %.omp.iv17, align 4, !dbg !286
  %50 = load i32, i32* %.omp.ub31, align 4, !dbg !286
  %cmp44 = icmp sle i32 %49, %50, !dbg !281
  br i1 %cmp44, label %omp.inner.for.body45, label %omp.inner.for.end107, !dbg !284

omp.inner.for.body45:                             ; preds = %omp.inner.for.cond43
  %51 = load i32, i32* %.omp.iv17, align 4, !dbg !286
  %mul46 = mul nsw i32 %51, 1, !dbg !283
  %add47 = add nsw i32 1, %mul46, !dbg !283
  store i32 %add47, i32* %i34, align 4, !dbg !283
  store i32 1, i32* %j35, align 4, !dbg !294
  br label %for.cond48, !dbg !296

for.cond48:                                       ; preds = %for.inc101, %omp.inner.for.body45
  %52 = load i32, i32* %j35, align 4, !dbg !297
  %53 = load i32, i32* @m, align 4, !dbg !299
  %sub49 = sub nsw i32 %53, 1, !dbg !300
  %cmp50 = icmp slt i32 %52, %sub49, !dbg !301
  br i1 %cmp50, label %for.body51, label %for.end103, !dbg !302

for.body51:                                       ; preds = %for.cond48
  %54 = load double, double* %3, align 8, !dbg !303
  %55 = load i32, i32* %i34, align 4, !dbg !305
  %sub52 = sub nsw i32 %55, 1, !dbg !306
  %idxprom53 = sext i32 %sub52 to i64, !dbg !307
  %arrayidx54 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %idxprom53, !dbg !307
  %56 = load i32, i32* %j35, align 4, !dbg !308
  %idxprom55 = sext i32 %56 to i64, !dbg !307
  %arrayidx56 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx54, i64 0, i64 %idxprom55, !dbg !307
  %57 = load double, double* %arrayidx56, align 8, !dbg !307
  %58 = load i32, i32* %i34, align 4, !dbg !309
  %add57 = add nsw i32 %58, 1, !dbg !310
  %idxprom58 = sext i32 %add57 to i64, !dbg !311
  %arrayidx59 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %idxprom58, !dbg !311
  %59 = load i32, i32* %j35, align 4, !dbg !312
  %idxprom60 = sext i32 %59 to i64, !dbg !311
  %arrayidx61 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx59, i64 0, i64 %idxprom60, !dbg !311
  %60 = load double, double* %arrayidx61, align 8, !dbg !311
  %add62 = fadd double %57, %60, !dbg !313
  %mul63 = fmul double %54, %add62, !dbg !314
  %61 = load double, double* %4, align 8, !dbg !315
  %62 = load i32, i32* %i34, align 4, !dbg !316
  %idxprom64 = sext i32 %62 to i64, !dbg !317
  %arrayidx65 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %idxprom64, !dbg !317
  %63 = load i32, i32* %j35, align 4, !dbg !318
  %sub66 = sub nsw i32 %63, 1, !dbg !319
  %idxprom67 = sext i32 %sub66 to i64, !dbg !317
  %arrayidx68 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx65, i64 0, i64 %idxprom67, !dbg !317
  %64 = load double, double* %arrayidx68, align 8, !dbg !317
  %65 = load i32, i32* %i34, align 4, !dbg !320
  %idxprom69 = sext i32 %65 to i64, !dbg !321
  %arrayidx70 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %idxprom69, !dbg !321
  %66 = load i32, i32* %j35, align 4, !dbg !322
  %add71 = add nsw i32 %66, 1, !dbg !323
  %idxprom72 = sext i32 %add71 to i64, !dbg !321
  %arrayidx73 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx70, i64 0, i64 %idxprom72, !dbg !321
  %67 = load double, double* %arrayidx73, align 8, !dbg !321
  %add74 = fadd double %64, %67, !dbg !324
  %mul75 = fmul double %61, %add74, !dbg !325
  %add76 = fadd double %mul63, %mul75, !dbg !326
  %68 = load double, double* %5, align 8, !dbg !327
  %69 = load i32, i32* %i34, align 4, !dbg !328
  %idxprom77 = sext i32 %69 to i64, !dbg !329
  %arrayidx78 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %idxprom77, !dbg !329
  %70 = load i32, i32* %j35, align 4, !dbg !330
  %idxprom79 = sext i32 %70 to i64, !dbg !329
  %arrayidx80 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx78, i64 0, i64 %idxprom79, !dbg !329
  %71 = load double, double* %arrayidx80, align 8, !dbg !329
  %mul81 = fmul double %68, %71, !dbg !331
  %add82 = fadd double %add76, %mul81, !dbg !332
  %72 = load i32, i32* %i34, align 4, !dbg !333
  %idxprom83 = sext i32 %72 to i64, !dbg !334
  %arrayidx84 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @f, i64 0, i64 %idxprom83, !dbg !334
  %73 = load i32, i32* %j35, align 4, !dbg !335
  %idxprom85 = sext i32 %73 to i64, !dbg !334
  %arrayidx86 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx84, i64 0, i64 %idxprom85, !dbg !334
  %74 = load double, double* %arrayidx86, align 8, !dbg !334
  %sub87 = fsub double %add82, %74, !dbg !336
  %75 = load double, double* %5, align 8, !dbg !337
  %div88 = fdiv double %sub87, %75, !dbg !338
  store double %div88, double* %resid, align 8, !dbg !339
  %76 = load i32, i32* %i34, align 4, !dbg !340
  %idxprom89 = sext i32 %76 to i64, !dbg !341
  %arrayidx90 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %idxprom89, !dbg !341
  %77 = load i32, i32* %j35, align 4, !dbg !342
  %idxprom91 = sext i32 %77 to i64, !dbg !341
  %arrayidx92 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx90, i64 0, i64 %idxprom91, !dbg !341
  %78 = load double, double* %arrayidx92, align 8, !dbg !341
  %79 = load double, double* %6, align 8, !dbg !343
  %80 = load double, double* %resid, align 8, !dbg !344
  %mul93 = fmul double %79, %80, !dbg !345
  %sub94 = fsub double %78, %mul93, !dbg !346
  %81 = load i32, i32* %i34, align 4, !dbg !347
  %idxprom95 = sext i32 %81 to i64, !dbg !348
  %arrayidx96 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @u, i64 0, i64 %idxprom95, !dbg !348
  %82 = load i32, i32* %j35, align 4, !dbg !349
  %idxprom97 = sext i32 %82 to i64, !dbg !348
  %arrayidx98 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx96, i64 0, i64 %idxprom97, !dbg !348
  store double %sub94, double* %arrayidx98, align 8, !dbg !350
  %83 = load double, double* %error36, align 8, !dbg !351
  %84 = load double, double* %resid, align 8, !dbg !352
  %85 = load double, double* %resid, align 8, !dbg !353
  %mul99 = fmul double %84, %85, !dbg !354
  %add100 = fadd double %83, %mul99, !dbg !355
  store double %add100, double* %error36, align 8, !dbg !356
  br label %for.inc101, !dbg !357

for.inc101:                                       ; preds = %for.body51
  %86 = load i32, i32* %j35, align 4, !dbg !358
  %inc102 = add nsw i32 %86, 1, !dbg !358
  store i32 %inc102, i32* %j35, align 4, !dbg !358
  br label %for.cond48, !dbg !359, !llvm.loop !360

for.end103:                                       ; preds = %for.cond48
  br label %omp.body.continue104, !dbg !361

omp.body.continue104:                             ; preds = %for.end103
  br label %omp.inner.for.inc105, !dbg !362

omp.inner.for.inc105:                             ; preds = %omp.body.continue104
  %87 = load i32, i32* %.omp.iv17, align 4, !dbg !286
  %add106 = add nsw i32 %87, 1, !dbg !281
  store i32 %add106, i32* %.omp.iv17, align 4, !dbg !281
  br label %omp.inner.for.cond43, !dbg !362, !llvm.loop !363

omp.inner.for.end107:                             ; preds = %omp.inner.for.cond43
  br label %omp.loop.exit108, !dbg !362

omp.loop.exit108:                                 ; preds = %omp.inner.for.end107
  %88 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !362
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @4, i32 0, i32 0), i8** %88, align 8, !dbg !362
  %89 = load i32*, i32** %.global_tid..addr, align 8, !dbg !362
  %90 = load i32, i32* %89, align 4, !dbg !362
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %90), !dbg !362
  %91 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !362
  %92 = bitcast double* %error36 to i8*, !dbg !362
  store i8* %92, i8** %91, align 8, !dbg !362
  %93 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !362
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @4, i32 0, i32 0), i8** %93, align 8, !dbg !362
  %94 = load i32*, i32** %.global_tid..addr, align 8, !dbg !362
  %95 = load i32, i32* %94, align 4, !dbg !362
  %96 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !362
  %97 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %95, i32 1, i64 8, i8* %96, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !362
  switch i32 %97, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !362

.omp.reduction.case1:                             ; preds = %omp.loop.exit108
  %98 = load double, double* %2, align 8, !dbg !293
  %99 = load double, double* %error36, align 8, !dbg !293
  %add109 = fadd double %98, %99, !dbg !365
  store double %add109, double* %2, align 8, !dbg !365
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %95, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !362
  br label %.omp.reduction.default, !dbg !362

.omp.reduction.case2:                             ; preds = %omp.loop.exit108
  %100 = load double, double* %error36, align 8, !dbg !293
  %101 = bitcast double* %2 to i64*, !dbg !362
  %atomic-load = load atomic i64, i64* %101 monotonic, align 8, !dbg !362
  br label %atomic_cont, !dbg !362

atomic_cont:                                      ; preds = %atomic_cont, %.omp.reduction.case2
  %102 = phi i64 [ %atomic-load, %.omp.reduction.case2 ], [ %110, %atomic_cont ], !dbg !362
  %103 = bitcast double* %atomic-temp to i64*, !dbg !362
  %104 = bitcast i64 %102 to double, !dbg !362
  store double %104, double* %tmp110, align 8, !dbg !362
  %105 = load double, double* %tmp110, align 8, !dbg !293
  %106 = load double, double* %error36, align 8, !dbg !293
  %add111 = fadd double %105, %106, !dbg !365
  store double %add111, double* %atomic-temp, align 8, !dbg !362
  %107 = load i64, i64* %103, align 8, !dbg !362
  %108 = bitcast double* %2 to i64*, !dbg !362
  %109 = cmpxchg i64* %108, i64 %102, i64 %107 monotonic monotonic, !dbg !362
  %110 = extractvalue { i64, i1 } %109, 0, !dbg !362
  %111 = extractvalue { i64, i1 } %109, 1, !dbg !362
  br i1 %111, label %atomic_exit, label %atomic_cont, !dbg !362

atomic_exit:                                      ; preds = %atomic_cont
  br label %.omp.reduction.default, !dbg !362

.omp.reduction.default:                           ; preds = %atomic_exit, %.omp.reduction.case1, %omp.loop.exit108
  br label %omp.precond.end112, !dbg !362

omp.precond.end112:                               ; preds = %.omp.reduction.default, %omp.precond.end
  ret void, !dbg !366
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #4 !dbg !367 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !369, metadata !DIExpression()), !dbg !371
  store i8* %1, i8** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !372, metadata !DIExpression()), !dbg !371
  %2 = load i8*, i8** %.addr, align 8, !dbg !373
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !373
  %4 = load i8*, i8** %.addr1, align 8, !dbg !373
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !373
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !373
  %7 = load i8*, i8** %6, align 8, !dbg !373
  %8 = bitcast i8* %7 to double*, !dbg !373
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !373
  %10 = load i8*, i8** %9, align 8, !dbg !373
  %11 = bitcast i8* %10 to double*, !dbg !373
  %12 = load double, double* %11, align 8, !dbg !374
  %13 = load double, double* %8, align 8, !dbg !374
  %add = fadd double %12, %13, !dbg !375
  store double %add, double* %11, align 8, !dbg !375
  ret void, !dbg !374
}

declare dso_local i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., double* dereferenceable(8) %error, double* dereferenceable(8) %ax, double* dereferenceable(8) %ay, double* dereferenceable(8) %b, double* dereferenceable(8) %omega) #2 !dbg !376 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %error.addr = alloca double*, align 8
  %ax.addr = alloca double*, align 8
  %ay.addr = alloca double*, align 8
  %b.addr = alloca double*, align 8
  %omega.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !377, metadata !DIExpression()), !dbg !378
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !379, metadata !DIExpression()), !dbg !378
  store double* %error, double** %error.addr, align 8
  call void @llvm.dbg.declare(metadata double** %error.addr, metadata !380, metadata !DIExpression()), !dbg !378
  store double* %ax, double** %ax.addr, align 8
  call void @llvm.dbg.declare(metadata double** %ax.addr, metadata !381, metadata !DIExpression()), !dbg !378
  store double* %ay, double** %ay.addr, align 8
  call void @llvm.dbg.declare(metadata double** %ay.addr, metadata !382, metadata !DIExpression()), !dbg !378
  store double* %b, double** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !383, metadata !DIExpression()), !dbg !378
  store double* %omega, double** %omega.addr, align 8
  call void @llvm.dbg.declare(metadata double** %omega.addr, metadata !384, metadata !DIExpression()), !dbg !378
  %0 = load double*, double** %error.addr, align 8, !dbg !385
  %1 = load double*, double** %ax.addr, align 8, !dbg !385
  %2 = load double*, double** %ay.addr, align 8, !dbg !385
  %3 = load double*, double** %b.addr, align 8, !dbg !385
  %4 = load double*, double** %omega.addr, align 8, !dbg !385
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !385
  %6 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !385
  %7 = load double*, double** %error.addr, align 8, !dbg !385
  %8 = load double*, double** %ax.addr, align 8, !dbg !385
  %9 = load double*, double** %ay.addr, align 8, !dbg !385
  %10 = load double*, double** %b.addr, align 8, !dbg !385
  %11 = load double*, double** %omega.addr, align 8, !dbg !385
  call void @.omp_outlined._debug__(i32* %5, i32* %6, double* %7, double* %8, double* %9, double* %10, double* %11) #7, !dbg !385
  ret void, !dbg !385
}

declare !callback !386 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #5

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !388 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @initialize(), !dbg !390
  call void @jacobi(), !dbg !391
  ret i32 0, !dbg !392
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!32, !33, !34}
!llvm.ident = !{!35}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "n", scope: !2, file: !3, line: 55, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB058-jacobikernel-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
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
!36 = distinct !DISubprogram(name: "initialize", scope: !3, file: !3, line: 61, type: !37, scopeLine: 62, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!37 = !DISubroutineType(types: !38)
!38 = !{null}
!39 = !DILocalVariable(name: "i", scope: !36, file: !3, line: 63, type: !6)
!40 = !DILocation(line: 63, column: 7, scope: !36)
!41 = !DILocalVariable(name: "j", scope: !36, file: !3, line: 63, type: !6)
!42 = !DILocation(line: 63, column: 10, scope: !36)
!43 = !DILocalVariable(name: "xx", scope: !36, file: !3, line: 63, type: !6)
!44 = !DILocation(line: 63, column: 13, scope: !36)
!45 = !DILocalVariable(name: "yy", scope: !36, file: !3, line: 63, type: !6)
!46 = !DILocation(line: 63, column: 17, scope: !36)
!47 = !DILocation(line: 65, column: 15, scope: !36)
!48 = !DILocation(line: 65, column: 17, scope: !36)
!49 = !DILocation(line: 65, column: 14, scope: !36)
!50 = !DILocation(line: 65, column: 12, scope: !36)
!51 = !DILocation(line: 65, column: 6, scope: !36)
!52 = !DILocation(line: 66, column: 15, scope: !36)
!53 = !DILocation(line: 66, column: 17, scope: !36)
!54 = !DILocation(line: 66, column: 14, scope: !36)
!55 = !DILocation(line: 66, column: 12, scope: !36)
!56 = !DILocation(line: 66, column: 6, scope: !36)
!57 = !DILocation(line: 70, column: 10, scope: !58)
!58 = distinct !DILexicalBlock(scope: !36, file: !3, line: 70, column: 3)
!59 = !DILocation(line: 70, column: 8, scope: !58)
!60 = !DILocation(line: 70, column: 15, scope: !61)
!61 = distinct !DILexicalBlock(scope: !58, file: !3, line: 70, column: 3)
!62 = !DILocation(line: 70, column: 19, scope: !61)
!63 = !DILocation(line: 70, column: 17, scope: !61)
!64 = !DILocation(line: 70, column: 3, scope: !58)
!65 = !DILocation(line: 71, column: 12, scope: !66)
!66 = distinct !DILexicalBlock(scope: !61, file: !3, line: 71, column: 5)
!67 = !DILocation(line: 71, column: 10, scope: !66)
!68 = !DILocation(line: 71, column: 17, scope: !69)
!69 = distinct !DILexicalBlock(scope: !66, file: !3, line: 71, column: 5)
!70 = !DILocation(line: 71, column: 21, scope: !69)
!71 = !DILocation(line: 71, column: 19, scope: !69)
!72 = !DILocation(line: 71, column: 5, scope: !66)
!73 = !DILocation(line: 73, column: 26, scope: !74)
!74 = distinct !DILexicalBlock(scope: !69, file: !3, line: 72, column: 5)
!75 = !DILocation(line: 73, column: 32, scope: !74)
!76 = !DILocation(line: 73, column: 34, scope: !74)
!77 = !DILocation(line: 73, column: 31, scope: !74)
!78 = !DILocation(line: 73, column: 29, scope: !74)
!79 = !DILocation(line: 73, column: 24, scope: !74)
!80 = !DILocation(line: 73, column: 12, scope: !74)
!81 = !DILocation(line: 73, column: 10, scope: !74)
!82 = !DILocation(line: 74, column: 26, scope: !74)
!83 = !DILocation(line: 74, column: 32, scope: !74)
!84 = !DILocation(line: 74, column: 34, scope: !74)
!85 = !DILocation(line: 74, column: 31, scope: !74)
!86 = !DILocation(line: 74, column: 29, scope: !74)
!87 = !DILocation(line: 74, column: 24, scope: !74)
!88 = !DILocation(line: 74, column: 12, scope: !74)
!89 = !DILocation(line: 74, column: 10, scope: !74)
!90 = !DILocation(line: 75, column: 9, scope: !74)
!91 = !DILocation(line: 75, column: 7, scope: !74)
!92 = !DILocation(line: 75, column: 12, scope: !74)
!93 = !DILocation(line: 75, column: 15, scope: !74)
!94 = !DILocation(line: 76, column: 24, scope: !74)
!95 = !DILocation(line: 76, column: 22, scope: !74)
!96 = !DILocation(line: 76, column: 39, scope: !74)
!97 = !DILocation(line: 76, column: 44, scope: !74)
!98 = !DILocation(line: 76, column: 42, scope: !74)
!99 = !DILocation(line: 76, column: 37, scope: !74)
!100 = !DILocation(line: 76, column: 30, scope: !74)
!101 = !DILocation(line: 76, column: 57, scope: !74)
!102 = !DILocation(line: 76, column: 62, scope: !74)
!103 = !DILocation(line: 76, column: 60, scope: !74)
!104 = !DILocation(line: 76, column: 55, scope: !74)
!105 = !DILocation(line: 76, column: 48, scope: !74)
!106 = !DILocation(line: 77, column: 24, scope: !74)
!107 = !DILocation(line: 77, column: 29, scope: !74)
!108 = !DILocation(line: 77, column: 27, scope: !74)
!109 = !DILocation(line: 77, column: 22, scope: !74)
!110 = !DILocation(line: 77, column: 15, scope: !74)
!111 = !DILocation(line: 77, column: 9, scope: !74)
!112 = !DILocation(line: 77, column: 48, scope: !74)
!113 = !DILocation(line: 77, column: 53, scope: !74)
!114 = !DILocation(line: 77, column: 51, scope: !74)
!115 = !DILocation(line: 77, column: 46, scope: !74)
!116 = !DILocation(line: 77, column: 39, scope: !74)
!117 = !DILocation(line: 77, column: 33, scope: !74)
!118 = !DILocation(line: 76, column: 9, scope: !74)
!119 = !DILocation(line: 76, column: 7, scope: !74)
!120 = !DILocation(line: 76, column: 12, scope: !74)
!121 = !DILocation(line: 76, column: 15, scope: !74)
!122 = !DILocation(line: 79, column: 5, scope: !74)
!123 = !DILocation(line: 71, column: 25, scope: !69)
!124 = !DILocation(line: 71, column: 5, scope: !69)
!125 = distinct !{!125, !72, !126}
!126 = !DILocation(line: 79, column: 5, scope: !66)
!127 = !DILocation(line: 70, column: 23, scope: !61)
!128 = !DILocation(line: 70, column: 3, scope: !61)
!129 = distinct !{!129, !64, !130}
!130 = !DILocation(line: 79, column: 5, scope: !58)
!131 = !DILocation(line: 80, column: 1, scope: !36)
!132 = distinct !DISubprogram(name: "jacobi", scope: !3, file: !3, line: 83, type: !37, scopeLine: 84, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!133 = !DILocalVariable(name: "omega", scope: !132, file: !3, line: 85, type: !11)
!134 = !DILocation(line: 85, column: 10, scope: !132)
!135 = !DILocalVariable(name: "i", scope: !132, file: !3, line: 86, type: !6)
!136 = !DILocation(line: 86, column: 7, scope: !132)
!137 = !DILocalVariable(name: "j", scope: !132, file: !3, line: 86, type: !6)
!138 = !DILocation(line: 86, column: 10, scope: !132)
!139 = !DILocalVariable(name: "k", scope: !132, file: !3, line: 86, type: !6)
!140 = !DILocation(line: 86, column: 13, scope: !132)
!141 = !DILocalVariable(name: "error", scope: !132, file: !3, line: 87, type: !11)
!142 = !DILocation(line: 87, column: 10, scope: !132)
!143 = !DILocalVariable(name: "resid", scope: !132, file: !3, line: 87, type: !11)
!144 = !DILocation(line: 87, column: 17, scope: !132)
!145 = !DILocalVariable(name: "ax", scope: !132, file: !3, line: 87, type: !11)
!146 = !DILocation(line: 87, column: 25, scope: !132)
!147 = !DILocalVariable(name: "ay", scope: !132, file: !3, line: 87, type: !11)
!148 = !DILocation(line: 87, column: 29, scope: !132)
!149 = !DILocalVariable(name: "b", scope: !132, file: !3, line: 87, type: !11)
!150 = !DILocation(line: 87, column: 33, scope: !132)
!151 = !DILocation(line: 89, column: 11, scope: !132)
!152 = !DILocation(line: 89, column: 9, scope: !132)
!153 = !DILocation(line: 92, column: 15, scope: !132)
!154 = !DILocation(line: 92, column: 17, scope: !132)
!155 = !DILocation(line: 92, column: 14, scope: !132)
!156 = !DILocation(line: 92, column: 12, scope: !132)
!157 = !DILocation(line: 92, column: 6, scope: !132)
!158 = !DILocation(line: 93, column: 15, scope: !132)
!159 = !DILocation(line: 93, column: 17, scope: !132)
!160 = !DILocation(line: 93, column: 14, scope: !132)
!161 = !DILocation(line: 93, column: 12, scope: !132)
!162 = !DILocation(line: 93, column: 6, scope: !132)
!163 = !DILocation(line: 95, column: 15, scope: !132)
!164 = !DILocation(line: 95, column: 20, scope: !132)
!165 = !DILocation(line: 95, column: 18, scope: !132)
!166 = !DILocation(line: 95, column: 12, scope: !132)
!167 = !DILocation(line: 95, column: 6, scope: !132)
!168 = !DILocation(line: 96, column: 15, scope: !132)
!169 = !DILocation(line: 96, column: 20, scope: !132)
!170 = !DILocation(line: 96, column: 18, scope: !132)
!171 = !DILocation(line: 96, column: 12, scope: !132)
!172 = !DILocation(line: 96, column: 6, scope: !132)
!173 = !DILocation(line: 97, column: 15, scope: !132)
!174 = !DILocation(line: 97, column: 20, scope: !132)
!175 = !DILocation(line: 97, column: 18, scope: !132)
!176 = !DILocation(line: 97, column: 12, scope: !132)
!177 = !DILocation(line: 97, column: 33, scope: !132)
!178 = !DILocation(line: 97, column: 38, scope: !132)
!179 = !DILocation(line: 97, column: 36, scope: !132)
!180 = !DILocation(line: 97, column: 30, scope: !132)
!181 = !DILocation(line: 97, column: 24, scope: !132)
!182 = !DILocation(line: 97, column: 44, scope: !132)
!183 = !DILocation(line: 97, column: 42, scope: !132)
!184 = !DILocation(line: 97, column: 5, scope: !132)
!185 = !DILocation(line: 99, column: 18, scope: !132)
!186 = !DILocation(line: 99, column: 16, scope: !132)
!187 = !DILocation(line: 99, column: 9, scope: !132)
!188 = !DILocation(line: 100, column: 5, scope: !132)
!189 = !DILocation(line: 102, column: 3, scope: !132)
!190 = !DILocation(line: 102, column: 10, scope: !132)
!191 = !DILocation(line: 102, column: 15, scope: !132)
!192 = !DILocation(line: 102, column: 12, scope: !132)
!193 = !DILocation(line: 104, column: 13, scope: !194)
!194 = distinct !DILexicalBlock(scope: !132, file: !3, line: 103, column: 5)
!195 = !DILocation(line: 107, column: 1, scope: !194)
!196 = !DILocation(line: 129, column: 10, scope: !194)
!197 = !DILocation(line: 129, column: 12, scope: !194)
!198 = !DILocation(line: 129, column: 8, scope: !194)
!199 = !DILocation(line: 130, column: 21, scope: !194)
!200 = !DILocation(line: 130, column: 15, scope: !194)
!201 = !DILocation(line: 130, column: 31, scope: !194)
!202 = !DILocation(line: 130, column: 35, scope: !194)
!203 = !DILocation(line: 130, column: 33, scope: !194)
!204 = !DILocation(line: 130, column: 30, scope: !194)
!205 = !DILocation(line: 130, column: 28, scope: !194)
!206 = !DILocation(line: 130, column: 13, scope: !194)
!207 = distinct !{!207, !189, !208}
!208 = !DILocation(line: 131, column: 5, scope: !132)
!209 = !DILocation(line: 133, column: 46, scope: !132)
!210 = !DILocation(line: 133, column: 3, scope: !132)
!211 = !DILocation(line: 134, column: 28, scope: !132)
!212 = !DILocation(line: 134, column: 3, scope: !132)
!213 = !DILocation(line: 135, column: 1, scope: !132)
!214 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 108, type: !215, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !217, !217, !221, !221, !221, !221, !221}
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!221 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !11, size: 64)
!222 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !214, type: !217, flags: DIFlagArtificial)
!223 = !DILocation(line: 0, scope: !214)
!224 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !214, type: !217, flags: DIFlagArtificial)
!225 = !DILocalVariable(name: "error", arg: 3, scope: !214, file: !3, line: 87, type: !221)
!226 = !DILocation(line: 87, column: 10, scope: !214)
!227 = !DILocalVariable(name: "ax", arg: 4, scope: !214, file: !3, line: 87, type: !221)
!228 = !DILocation(line: 87, column: 25, scope: !214)
!229 = !DILocalVariable(name: "ay", arg: 5, scope: !214, file: !3, line: 87, type: !221)
!230 = !DILocation(line: 87, column: 29, scope: !214)
!231 = !DILocalVariable(name: "b", arg: 6, scope: !214, file: !3, line: 87, type: !221)
!232 = !DILocation(line: 87, column: 33, scope: !214)
!233 = !DILocalVariable(name: "omega", arg: 7, scope: !214, file: !3, line: 85, type: !221)
!234 = !DILocation(line: 85, column: 10, scope: !214)
!235 = !DILocation(line: 108, column: 7, scope: !214)
!236 = !DILocalVariable(name: ".omp.iv", scope: !237, type: !6, flags: DIFlagArtificial)
!237 = distinct !DILexicalBlock(scope: !238, file: !3, line: 109, column: 1)
!238 = distinct !DILexicalBlock(scope: !214, file: !3, line: 108, column: 7)
!239 = !DILocation(line: 0, scope: !237)
!240 = !DILocalVariable(name: ".capture_expr.", scope: !237, type: !6, flags: DIFlagArtificial)
!241 = !DILocation(line: 110, column: 25, scope: !237)
!242 = !DILocation(line: 110, column: 9, scope: !237)
!243 = !DILocalVariable(name: "i", scope: !237, type: !6, flags: DIFlagArtificial)
!244 = !DILocation(line: 110, column: 28, scope: !237)
!245 = !DILocation(line: 109, column: 1, scope: !238)
!246 = !DILocalVariable(name: ".omp.lb", scope: !237, type: !6, flags: DIFlagArtificial)
!247 = !DILocation(line: 110, column: 14, scope: !237)
!248 = !DILocalVariable(name: ".omp.ub", scope: !237, type: !6, flags: DIFlagArtificial)
!249 = !DILocalVariable(name: ".omp.stride", scope: !237, type: !6, flags: DIFlagArtificial)
!250 = !DILocalVariable(name: ".omp.is_last", scope: !237, type: !6, flags: DIFlagArtificial)
!251 = !DILocalVariable(name: "j", scope: !237, type: !6, flags: DIFlagArtificial)
!252 = !DILocation(line: 111, column: 18, scope: !253)
!253 = distinct !DILexicalBlock(scope: !237, file: !3, line: 111, column: 11)
!254 = !DILocation(line: 111, column: 16, scope: !253)
!255 = !DILocation(line: 111, column: 23, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !3, line: 111, column: 11)
!257 = !DILocation(line: 111, column: 27, scope: !256)
!258 = !DILocation(line: 111, column: 25, scope: !256)
!259 = !DILocation(line: 111, column: 11, scope: !253)
!260 = !DILocation(line: 112, column: 28, scope: !256)
!261 = !DILocation(line: 112, column: 26, scope: !256)
!262 = !DILocation(line: 112, column: 31, scope: !256)
!263 = !DILocation(line: 112, column: 18, scope: !256)
!264 = !DILocation(line: 112, column: 13, scope: !256)
!265 = !DILocation(line: 112, column: 21, scope: !256)
!266 = !DILocation(line: 112, column: 24, scope: !256)
!267 = !DILocation(line: 111, column: 31, scope: !256)
!268 = !DILocation(line: 111, column: 11, scope: !256)
!269 = distinct !{!269, !259, !270}
!270 = !DILocation(line: 112, column: 32, scope: !253)
!271 = !DILocation(line: 109, column: 1, scope: !237)
!272 = distinct !{!272, !271, !273}
!273 = !DILocation(line: 109, column: 29, scope: !237)
!274 = !DILocalVariable(name: ".omp.iv", scope: !275, type: !6, flags: DIFlagArtificial)
!275 = distinct !DILexicalBlock(scope: !238, file: !3, line: 113, column: 1)
!276 = !DILocation(line: 0, scope: !275)
!277 = !DILocalVariable(name: ".capture_expr.", scope: !275, type: !6, flags: DIFlagArtificial)
!278 = !DILocation(line: 114, column: 26, scope: !275)
!279 = !DILocation(line: 114, column: 28, scope: !275)
!280 = !DILocation(line: 114, column: 25, scope: !275)
!281 = !DILocation(line: 114, column: 9, scope: !275)
!282 = !DILocalVariable(name: "i", scope: !275, type: !6, flags: DIFlagArtificial)
!283 = !DILocation(line: 114, column: 34, scope: !275)
!284 = !DILocation(line: 113, column: 1, scope: !238)
!285 = !DILocalVariable(name: ".omp.lb", scope: !275, type: !6, flags: DIFlagArtificial)
!286 = !DILocation(line: 114, column: 14, scope: !275)
!287 = !DILocalVariable(name: ".omp.ub", scope: !275, type: !6, flags: DIFlagArtificial)
!288 = !DILocalVariable(name: ".omp.stride", scope: !275, type: !6, flags: DIFlagArtificial)
!289 = !DILocalVariable(name: ".omp.is_last", scope: !275, type: !6, flags: DIFlagArtificial)
!290 = !DILocalVariable(name: "j", scope: !275, type: !6, flags: DIFlagArtificial)
!291 = !DILocalVariable(name: "resid", scope: !275, type: !11, flags: DIFlagArtificial)
!292 = !DILocalVariable(name: "error", scope: !275, type: !11, flags: DIFlagArtificial)
!293 = !DILocation(line: 113, column: 48, scope: !275)
!294 = !DILocation(line: 115, column: 18, scope: !295)
!295 = distinct !DILexicalBlock(scope: !275, file: !3, line: 115, column: 11)
!296 = !DILocation(line: 115, column: 16, scope: !295)
!297 = !DILocation(line: 115, column: 23, scope: !298)
!298 = distinct !DILexicalBlock(scope: !295, file: !3, line: 115, column: 11)
!299 = !DILocation(line: 115, column: 28, scope: !298)
!300 = !DILocation(line: 115, column: 30, scope: !298)
!301 = !DILocation(line: 115, column: 25, scope: !298)
!302 = !DILocation(line: 115, column: 11, scope: !295)
!303 = !DILocation(line: 117, column: 24, scope: !304)
!304 = distinct !DILexicalBlock(scope: !298, file: !3, line: 116, column: 13)
!305 = !DILocation(line: 117, column: 35, scope: !304)
!306 = !DILocation(line: 117, column: 37, scope: !304)
!307 = !DILocation(line: 117, column: 30, scope: !304)
!308 = !DILocation(line: 117, column: 42, scope: !304)
!309 = !DILocation(line: 117, column: 52, scope: !304)
!310 = !DILocation(line: 117, column: 54, scope: !304)
!311 = !DILocation(line: 117, column: 47, scope: !304)
!312 = !DILocation(line: 117, column: 59, scope: !304)
!313 = !DILocation(line: 117, column: 45, scope: !304)
!314 = !DILocation(line: 117, column: 27, scope: !304)
!315 = !DILocation(line: 118, column: 26, scope: !304)
!316 = !DILocation(line: 118, column: 37, scope: !304)
!317 = !DILocation(line: 118, column: 32, scope: !304)
!318 = !DILocation(line: 118, column: 40, scope: !304)
!319 = !DILocation(line: 118, column: 42, scope: !304)
!320 = !DILocation(line: 118, column: 54, scope: !304)
!321 = !DILocation(line: 118, column: 49, scope: !304)
!322 = !DILocation(line: 118, column: 57, scope: !304)
!323 = !DILocation(line: 118, column: 59, scope: !304)
!324 = !DILocation(line: 118, column: 47, scope: !304)
!325 = !DILocation(line: 118, column: 29, scope: !304)
!326 = !DILocation(line: 118, column: 24, scope: !304)
!327 = !DILocation(line: 119, column: 24, scope: !304)
!328 = !DILocation(line: 119, column: 33, scope: !304)
!329 = !DILocation(line: 119, column: 28, scope: !304)
!330 = !DILocation(line: 119, column: 36, scope: !304)
!331 = !DILocation(line: 119, column: 26, scope: !304)
!332 = !DILocation(line: 118, column: 65, scope: !304)
!333 = !DILocation(line: 119, column: 43, scope: !304)
!334 = !DILocation(line: 119, column: 41, scope: !304)
!335 = !DILocation(line: 119, column: 46, scope: !304)
!336 = !DILocation(line: 119, column: 39, scope: !304)
!337 = !DILocation(line: 119, column: 52, scope: !304)
!338 = !DILocation(line: 119, column: 50, scope: !304)
!339 = !DILocation(line: 117, column: 21, scope: !304)
!340 = !DILocation(line: 121, column: 30, scope: !304)
!341 = !DILocation(line: 121, column: 25, scope: !304)
!342 = !DILocation(line: 121, column: 33, scope: !304)
!343 = !DILocation(line: 121, column: 38, scope: !304)
!344 = !DILocation(line: 121, column: 46, scope: !304)
!345 = !DILocation(line: 121, column: 44, scope: !304)
!346 = !DILocation(line: 121, column: 36, scope: !304)
!347 = !DILocation(line: 121, column: 17, scope: !304)
!348 = !DILocation(line: 121, column: 15, scope: !304)
!349 = !DILocation(line: 121, column: 20, scope: !304)
!350 = !DILocation(line: 121, column: 23, scope: !304)
!351 = !DILocation(line: 122, column: 23, scope: !304)
!352 = !DILocation(line: 122, column: 31, scope: !304)
!353 = !DILocation(line: 122, column: 39, scope: !304)
!354 = !DILocation(line: 122, column: 37, scope: !304)
!355 = !DILocation(line: 122, column: 29, scope: !304)
!356 = !DILocation(line: 122, column: 21, scope: !304)
!357 = !DILocation(line: 123, column: 13, scope: !304)
!358 = !DILocation(line: 115, column: 37, scope: !298)
!359 = !DILocation(line: 115, column: 11, scope: !298)
!360 = distinct !{!360, !302, !361}
!361 = !DILocation(line: 123, column: 13, scope: !295)
!362 = !DILocation(line: 113, column: 1, scope: !275)
!363 = distinct !{!363, !362, !364}
!364 = !DILocation(line: 113, column: 61, scope: !275)
!365 = !DILocation(line: 113, column: 46, scope: !275)
!366 = !DILocation(line: 124, column: 7, scope: !214)
!367 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !3, file: !3, line: 113, type: !368, scopeLine: 113, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!368 = !DISubroutineType(types: !4)
!369 = !DILocalVariable(arg: 1, scope: !367, type: !370, flags: DIFlagArtificial)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!371 = !DILocation(line: 0, scope: !367)
!372 = !DILocalVariable(arg: 2, scope: !367, type: !370, flags: DIFlagArtificial)
!373 = !DILocation(line: 113, column: 61, scope: !367)
!374 = !DILocation(line: 113, column: 48, scope: !367)
!375 = !DILocation(line: 113, column: 46, scope: !367)
!376 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 108, type: !215, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!377 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !376, type: !217, flags: DIFlagArtificial)
!378 = !DILocation(line: 0, scope: !376)
!379 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !376, type: !217, flags: DIFlagArtificial)
!380 = !DILocalVariable(name: "error", arg: 3, scope: !376, type: !221, flags: DIFlagArtificial)
!381 = !DILocalVariable(name: "ax", arg: 4, scope: !376, type: !221, flags: DIFlagArtificial)
!382 = !DILocalVariable(name: "ay", arg: 5, scope: !376, type: !221, flags: DIFlagArtificial)
!383 = !DILocalVariable(name: "b", arg: 6, scope: !376, type: !221, flags: DIFlagArtificial)
!384 = !DILocalVariable(name: "omega", arg: 7, scope: !376, type: !221, flags: DIFlagArtificial)
!385 = !DILocation(line: 108, column: 7, scope: !376)
!386 = !{!387}
!387 = !{i64 2, i64 -1, i64 -1, i1 true}
!388 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 137, type: !389, scopeLine: 138, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!389 = !DISubroutineType(types: !5)
!390 = !DILocation(line: 139, column: 3, scope: !388)
!391 = !DILocation(line: 140, column: 3, scope: !388)
!392 = !DILocation(line: 141, column: 3, scope: !388)
