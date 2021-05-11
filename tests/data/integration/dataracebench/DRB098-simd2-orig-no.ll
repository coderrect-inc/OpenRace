; ModuleID = 'integration/dataracebench/DRB098-simd2-orig-no.c'
source_filename = "integration/dataracebench/DRB098-simd2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"c[50][50]=%f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %__vla_expr2 = alloca i64, align 8
  %__vla_expr3 = alloca i64, align 8
  %__vla_expr4 = alloca i64, align 8
  %__vla_expr5 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.24 = alloca i32, align 4
  %.capture_expr.25 = alloca i64, align 8
  %i35 = alloca i32, align 4
  %j36 = alloca i32, align 4
  %.omp.iv = alloca i64, align 8
  %i43 = alloca i32, align 4
  %j44 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %len to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %len, metadata !14, metadata !DIExpression()), !dbg !47
  store i32 100, i32* %len, align 4, !dbg !47, !tbaa !48
  %1 = load i32, i32* %len, align 4, !dbg !52, !tbaa !48
  %2 = zext i32 %1 to i64, !dbg !53
  %3 = load i32, i32* %len, align 4, !dbg !54, !tbaa !48
  %4 = zext i32 %3 to i64, !dbg !53
  %5 = call i8* @llvm.stacksave(), !dbg !53
  store i8* %5, i8** %saved_stack, align 8, !dbg !53
  %6 = mul nuw i64 %2, %4, !dbg !53
  %vla = alloca double, i64 %6, align 16, !dbg !53
  store i64 %2, i64* %__vla_expr0, align 8, !dbg !53
  store i64 %4, i64* %__vla_expr1, align 8, !dbg !53
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !15, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !17, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata double* %vla, metadata !18, metadata !DIExpression()), !dbg !56
  %7 = load i32, i32* %len, align 4, !dbg !57, !tbaa !48
  %8 = zext i32 %7 to i64, !dbg !53
  %9 = load i32, i32* %len, align 4, !dbg !58, !tbaa !48
  %10 = zext i32 %9 to i64, !dbg !53
  %11 = mul nuw i64 %8, %10, !dbg !53
  %vla1 = alloca double, i64 %11, align 16, !dbg !53
  store i64 %8, i64* %__vla_expr2, align 8, !dbg !53
  store i64 %10, i64* %__vla_expr3, align 8, !dbg !53
  call void @llvm.dbg.declare(metadata i64* %__vla_expr2, metadata !23, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i64* %__vla_expr3, metadata !24, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata double* %vla1, metadata !25, metadata !DIExpression()), !dbg !59
  %12 = load i32, i32* %len, align 4, !dbg !60, !tbaa !48
  %13 = zext i32 %12 to i64, !dbg !53
  %14 = load i32, i32* %len, align 4, !dbg !61, !tbaa !48
  %15 = zext i32 %14 to i64, !dbg !53
  %16 = mul nuw i64 %13, %15, !dbg !53
  %vla2 = alloca double, i64 %16, align 16, !dbg !53
  store i64 %13, i64* %__vla_expr4, align 8, !dbg !53
  store i64 %15, i64* %__vla_expr5, align 8, !dbg !53
  call void @llvm.dbg.declare(metadata i64* %__vla_expr4, metadata !30, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i64* %__vla_expr5, metadata !31, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata double* %vla2, metadata !32, metadata !DIExpression()), !dbg !62
  %17 = bitcast i32* %i to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %i, metadata !37, metadata !DIExpression()), !dbg !64
  %18 = bitcast i32* %j to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %j, metadata !38, metadata !DIExpression()), !dbg !65
  store i32 0, i32* %i, align 4, !dbg !66, !tbaa !48
  br label %for.cond, !dbg !68

for.cond:                                         ; preds = %for.inc20, %entry
  %19 = load i32, i32* %i, align 4, !dbg !69, !tbaa !48
  %20 = load i32, i32* %len, align 4, !dbg !71, !tbaa !48
  %cmp = icmp slt i32 %19, %20, !dbg !72
  br i1 %cmp, label %for.body, label %for.end22, !dbg !73

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !74, !tbaa !48
  br label %for.cond3, !dbg !76

for.cond3:                                        ; preds = %for.inc, %for.body
  %21 = load i32, i32* %j, align 4, !dbg !77, !tbaa !48
  %22 = load i32, i32* %len, align 4, !dbg !79, !tbaa !48
  %cmp4 = icmp slt i32 %21, %22, !dbg !80
  br i1 %cmp4, label %for.body5, label %for.end, !dbg !81

for.body5:                                        ; preds = %for.cond3
  %23 = load i32, i32* %i, align 4, !dbg !82, !tbaa !48
  %conv = sitofp i32 %23 to double, !dbg !84
  %div = fdiv double %conv, 2.000000e+00, !dbg !85
  %24 = load i32, i32* %i, align 4, !dbg !86, !tbaa !48
  %idxprom = sext i32 %24 to i64, !dbg !87
  %25 = mul nsw i64 %idxprom, %4, !dbg !87
  %arrayidx = getelementptr inbounds double, double* %vla, i64 %25, !dbg !87
  %26 = load i32, i32* %j, align 4, !dbg !88, !tbaa !48
  %idxprom6 = sext i32 %26 to i64, !dbg !87
  %arrayidx7 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom6, !dbg !87
  store double %div, double* %arrayidx7, align 8, !dbg !89, !tbaa !90
  %27 = load i32, i32* %i, align 4, !dbg !92, !tbaa !48
  %conv8 = sitofp i32 %27 to double, !dbg !93
  %div9 = fdiv double %conv8, 3.000000e+00, !dbg !94
  %28 = load i32, i32* %i, align 4, !dbg !95, !tbaa !48
  %idxprom10 = sext i32 %28 to i64, !dbg !96
  %29 = mul nsw i64 %idxprom10, %10, !dbg !96
  %arrayidx11 = getelementptr inbounds double, double* %vla1, i64 %29, !dbg !96
  %30 = load i32, i32* %j, align 4, !dbg !97, !tbaa !48
  %idxprom12 = sext i32 %30 to i64, !dbg !96
  %arrayidx13 = getelementptr inbounds double, double* %arrayidx11, i64 %idxprom12, !dbg !96
  store double %div9, double* %arrayidx13, align 8, !dbg !98, !tbaa !90
  %31 = load i32, i32* %i, align 4, !dbg !99, !tbaa !48
  %conv14 = sitofp i32 %31 to double, !dbg !100
  %div15 = fdiv double %conv14, 7.000000e+00, !dbg !101
  %32 = load i32, i32* %i, align 4, !dbg !102, !tbaa !48
  %idxprom16 = sext i32 %32 to i64, !dbg !103
  %33 = mul nsw i64 %idxprom16, %15, !dbg !103
  %arrayidx17 = getelementptr inbounds double, double* %vla2, i64 %33, !dbg !103
  %34 = load i32, i32* %j, align 4, !dbg !104, !tbaa !48
  %idxprom18 = sext i32 %34 to i64, !dbg !103
  %arrayidx19 = getelementptr inbounds double, double* %arrayidx17, i64 %idxprom18, !dbg !103
  store double %div15, double* %arrayidx19, align 8, !dbg !105, !tbaa !90
  br label %for.inc, !dbg !106

for.inc:                                          ; preds = %for.body5
  %35 = load i32, i32* %j, align 4, !dbg !107, !tbaa !48
  %inc = add nsw i32 %35, 1, !dbg !107
  store i32 %inc, i32* %j, align 4, !dbg !107, !tbaa !48
  br label %for.cond3, !dbg !108, !llvm.loop !109

for.end:                                          ; preds = %for.cond3
  br label %for.inc20, !dbg !110

for.inc20:                                        ; preds = %for.end
  %36 = load i32, i32* %i, align 4, !dbg !111, !tbaa !48
  %inc21 = add nsw i32 %36, 1, !dbg !111
  store i32 %inc21, i32* %i, align 4, !dbg !111, !tbaa !48
  br label %for.cond, !dbg !112, !llvm.loop !113

for.end22:                                        ; preds = %for.cond
  %37 = bitcast i32* %.capture_expr. to i8*, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %37) #3, !dbg !115
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !39, metadata !DIExpression()), !dbg !116
  %38 = load i32, i32* %len, align 4, !dbg !117, !tbaa !48
  store i32 %38, i32* %.capture_expr., align 4, !dbg !117, !tbaa !48
  %39 = bitcast i32* %.capture_expr.24 to i8*, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %39) #3, !dbg !115
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.24, metadata !39, metadata !DIExpression()), !dbg !116
  %40 = load i32, i32* %len, align 4, !dbg !118, !tbaa !48
  store i32 %40, i32* %.capture_expr.24, align 4, !dbg !118, !tbaa !48
  %41 = bitcast i64* %.capture_expr.25 to i8*, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %41) #3, !dbg !115
  call void @llvm.dbg.declare(metadata i64* %.capture_expr.25, metadata !41, metadata !DIExpression()), !dbg !116
  %42 = load i32, i32* %.capture_expr., align 4, !dbg !117, !tbaa !48
  %sub = sub nsw i32 %42, 0, !dbg !119
  %sub26 = sub nsw i32 %sub, 1, !dbg !119
  %add = add nsw i32 %sub26, 1, !dbg !119
  %div27 = sdiv i32 %add, 1, !dbg !119
  %conv28 = sext i32 %div27 to i64, !dbg !119
  %43 = load i32, i32* %.capture_expr.24, align 4, !dbg !118, !tbaa !48
  %sub29 = sub nsw i32 %43, 0, !dbg !120
  %sub30 = sub nsw i32 %sub29, 1, !dbg !120
  %add31 = add nsw i32 %sub30, 1, !dbg !120
  %div32 = sdiv i32 %add31, 1, !dbg !120
  %conv33 = sext i32 %div32 to i64, !dbg !120
  %mul = mul nsw i64 %conv28, %conv33, !dbg !120
  %sub34 = sub nsw i64 %mul, 1, !dbg !120
  store i64 %sub34, i64* %.capture_expr.25, align 8, !dbg !119, !tbaa !121
  %44 = bitcast i32* %i35 to i8*, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %44) #3, !dbg !115
  call void @llvm.dbg.declare(metadata i32* %i35, metadata !43, metadata !DIExpression()), !dbg !116
  %45 = bitcast i32* %j36 to i8*, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %45) #3, !dbg !115
  call void @llvm.dbg.declare(metadata i32* %j36, metadata !44, metadata !DIExpression()), !dbg !116
  store i32 0, i32* %i35, align 4, !dbg !123, !tbaa !48
  store i32 0, i32* %j36, align 4, !dbg !124, !tbaa !48
  %46 = bitcast i32* %j36 to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #3, !dbg !115
  %47 = bitcast i32* %i35 to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #3, !dbg !115
  %48 = load i32, i32* %.capture_expr., align 4, !dbg !117, !tbaa !48
  %cmp37 = icmp slt i32 0, %48, !dbg !119
  br i1 %cmp37, label %land.lhs.true, label %simd.if.end, !dbg !125

land.lhs.true:                                    ; preds = %for.end22
  %49 = load i32, i32* %.capture_expr.24, align 4, !dbg !118, !tbaa !48
  %cmp40 = icmp slt i32 0, %49, !dbg !120
  br i1 %cmp40, label %simd.if.then, label %simd.if.end, !dbg !115

simd.if.then:                                     ; preds = %land.lhs.true
  %50 = bitcast i64* %.omp.iv to i8*, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %50) #3, !dbg !115
  call void @llvm.dbg.declare(metadata i64* %.omp.iv, metadata !45, metadata !DIExpression()), !dbg !116
  store i64 0, i64* %.omp.iv, align 8, !dbg !126, !tbaa !121
  %51 = bitcast i32* %i43 to i8*, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %51) #3, !dbg !115
  call void @llvm.dbg.declare(metadata i32* %i43, metadata !43, metadata !DIExpression()), !dbg !116
  %52 = bitcast i32* %j44 to i8*, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %52) #3, !dbg !115
  call void @llvm.dbg.declare(metadata i32* %j44, metadata !44, metadata !DIExpression()), !dbg !116
  br label %omp.inner.for.cond, !dbg !115

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %simd.if.then
  %53 = load i64, i64* %.omp.iv, align 8, !dbg !126, !tbaa !121, !llvm.access.group !127
  %54 = load i64, i64* %.capture_expr.25, align 8, !dbg !120, !tbaa !121, !llvm.access.group !127
  %add45 = add nsw i64 %54, 1, !dbg !120
  %cmp46 = icmp slt i64 %53, %add45, !dbg !119
  br i1 %cmp46, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !115

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !115

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %55 = load i64, i64* %.omp.iv, align 8, !dbg !126, !tbaa !121, !llvm.access.group !127
  %56 = load i32, i32* %.capture_expr.24, align 4, !dbg !118, !tbaa !48, !llvm.access.group !127
  %sub48 = sub nsw i32 %56, 0, !dbg !120
  %sub49 = sub nsw i32 %sub48, 1, !dbg !120
  %add50 = add nsw i32 %sub49, 1, !dbg !120
  %div51 = sdiv i32 %add50, 1, !dbg !120
  %mul52 = mul nsw i32 1, %div51, !dbg !123
  %conv53 = sext i32 %mul52 to i64, !dbg !116
  %div54 = sdiv i64 %55, %conv53, !dbg !123
  %mul55 = mul nsw i64 %div54, 1, !dbg !123
  %add56 = add nsw i64 0, %mul55, !dbg !123
  %conv57 = trunc i64 %add56 to i32, !dbg !125
  store i32 %conv57, i32* %i43, align 4, !dbg !123, !tbaa !48, !llvm.access.group !127
  %57 = load i64, i64* %.omp.iv, align 8, !dbg !126, !tbaa !121, !llvm.access.group !127
  %58 = load i64, i64* %.omp.iv, align 8, !dbg !126, !tbaa !121, !llvm.access.group !127
  %59 = load i32, i32* %.capture_expr.24, align 4, !dbg !118, !tbaa !48, !llvm.access.group !127
  %sub58 = sub nsw i32 %59, 0, !dbg !120
  %sub59 = sub nsw i32 %sub58, 1, !dbg !120
  %add60 = add nsw i32 %sub59, 1, !dbg !120
  %div61 = sdiv i32 %add60, 1, !dbg !120
  %mul62 = mul nsw i32 1, %div61, !dbg !123
  %conv63 = sext i32 %mul62 to i64, !dbg !116
  %div64 = sdiv i64 %58, %conv63, !dbg !123
  %60 = load i32, i32* %.capture_expr.24, align 4, !dbg !118, !tbaa !48, !llvm.access.group !127
  %sub65 = sub nsw i32 %60, 0, !dbg !120
  %sub66 = sub nsw i32 %sub65, 1, !dbg !120
  %add67 = add nsw i32 %sub66, 1, !dbg !120
  %div68 = sdiv i32 %add67, 1, !dbg !120
  %mul69 = mul nsw i32 1, %div68, !dbg !123
  %conv70 = sext i32 %mul69 to i64, !dbg !116
  %mul71 = mul nsw i64 %div64, %conv70, !dbg !123
  %sub72 = sub nsw i64 %57, %mul71, !dbg !123
  %mul73 = mul nsw i64 %sub72, 1, !dbg !124
  %add74 = add nsw i64 0, %mul73, !dbg !124
  %conv75 = trunc i64 %add74 to i32, !dbg !128
  store i32 %conv75, i32* %j44, align 4, !dbg !124, !tbaa !48, !llvm.access.group !127
  %61 = load i32, i32* %i43, align 4, !dbg !129, !tbaa !48, !llvm.access.group !127
  %idxprom76 = sext i32 %61 to i64, !dbg !130
  %62 = mul nsw i64 %idxprom76, %4, !dbg !130
  %arrayidx77 = getelementptr inbounds double, double* %vla, i64 %62, !dbg !130
  %63 = load i32, i32* %j44, align 4, !dbg !131, !tbaa !48, !llvm.access.group !127
  %idxprom78 = sext i32 %63 to i64, !dbg !130
  %arrayidx79 = getelementptr inbounds double, double* %arrayidx77, i64 %idxprom78, !dbg !130
  %64 = load double, double* %arrayidx79, align 8, !dbg !130, !tbaa !90, !llvm.access.group !127
  %65 = load i32, i32* %i43, align 4, !dbg !132, !tbaa !48, !llvm.access.group !127
  %idxprom80 = sext i32 %65 to i64, !dbg !133
  %66 = mul nsw i64 %idxprom80, %10, !dbg !133
  %arrayidx81 = getelementptr inbounds double, double* %vla1, i64 %66, !dbg !133
  %67 = load i32, i32* %j44, align 4, !dbg !134, !tbaa !48, !llvm.access.group !127
  %idxprom82 = sext i32 %67 to i64, !dbg !133
  %arrayidx83 = getelementptr inbounds double, double* %arrayidx81, i64 %idxprom82, !dbg !133
  %68 = load double, double* %arrayidx83, align 8, !dbg !133, !tbaa !90, !llvm.access.group !127
  %mul84 = fmul double %64, %68, !dbg !135
  %69 = load i32, i32* %i43, align 4, !dbg !136, !tbaa !48, !llvm.access.group !127
  %idxprom85 = sext i32 %69 to i64, !dbg !137
  %70 = mul nsw i64 %idxprom85, %15, !dbg !137
  %arrayidx86 = getelementptr inbounds double, double* %vla2, i64 %70, !dbg !137
  %71 = load i32, i32* %j44, align 4, !dbg !138, !tbaa !48, !llvm.access.group !127
  %idxprom87 = sext i32 %71 to i64, !dbg !137
  %arrayidx88 = getelementptr inbounds double, double* %arrayidx86, i64 %idxprom87, !dbg !137
  store double %mul84, double* %arrayidx88, align 8, !dbg !139, !tbaa !90, !llvm.access.group !127
  br label %omp.body.continue, !dbg !137

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !140

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %72 = load i64, i64* %.omp.iv, align 8, !dbg !126, !tbaa !121, !llvm.access.group !127
  %add89 = add nsw i64 %72, 1, !dbg !119
  store i64 %add89, i64* %.omp.iv, align 8, !dbg !119, !tbaa !121, !llvm.access.group !127
  br label %omp.inner.for.cond, !dbg !140, !llvm.loop !141

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  %73 = load i32, i32* %.capture_expr., align 4, !dbg !117, !tbaa !48
  %sub90 = sub nsw i32 %73, 0, !dbg !119
  %sub91 = sub nsw i32 %sub90, 1, !dbg !119
  %add92 = add nsw i32 %sub91, 1, !dbg !119
  %div93 = sdiv i32 %add92, 1, !dbg !119
  %mul94 = mul nsw i32 %div93, 1, !dbg !123
  %add95 = add nsw i32 0, %mul94, !dbg !123
  store i32 %add95, i32* %i, align 4, !dbg !123, !tbaa !48
  %74 = load i32, i32* %.capture_expr.24, align 4, !dbg !118, !tbaa !48
  %sub96 = sub nsw i32 %74, 0, !dbg !120
  %sub97 = sub nsw i32 %sub96, 1, !dbg !120
  %add98 = add nsw i32 %sub97, 1, !dbg !120
  %div99 = sdiv i32 %add98, 1, !dbg !120
  %mul100 = mul nsw i32 %div99, 1, !dbg !124
  %add101 = add nsw i32 0, %mul100, !dbg !124
  store i32 %add101, i32* %j, align 4, !dbg !124, !tbaa !48
  %75 = bitcast i32* %j44 to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %75) #3, !dbg !140
  %76 = bitcast i32* %i43 to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #3, !dbg !140
  br label %simd.if.end, !dbg !140

simd.if.end:                                      ; preds = %omp.inner.for.end, %land.lhs.true, %for.end22
  %77 = bitcast i64* %.omp.iv to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %77) #3, !dbg !140
  %78 = bitcast i64* %.capture_expr.25 to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %78) #3, !dbg !140
  %79 = bitcast i32* %.capture_expr.24 to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #3, !dbg !140
  %80 = bitcast i32* %.capture_expr. to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #3, !dbg !140
  %81 = mul nsw i64 50, %15, !dbg !145
  %arrayidx102 = getelementptr inbounds double, double* %vla2, i64 %81, !dbg !145
  %arrayidx103 = getelementptr inbounds double, double* %arrayidx102, i64 50, !dbg !145
  %82 = load double, double* %arrayidx103, align 8, !dbg !145, !tbaa !90
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), double %82), !dbg !146
  store i32 0, i32* %retval, align 4, !dbg !147
  %83 = bitcast i32* %j to i8*, !dbg !148
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %83) #3, !dbg !148
  %84 = bitcast i32* %i to i8*, !dbg !148
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %84) #3, !dbg !148
  %85 = load i8*, i8** %saved_stack, align 8, !dbg !148
  call void @llvm.stackrestore(i8* %85), !dbg !148
  %86 = bitcast i32* %len to i8*, !dbg !148
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %86) #3, !dbg !148
  %87 = load i32, i32* %retval, align 4, !dbg !148
  ret i32 %87, !dbg !148
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB098-simd2-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 10.0.1 "}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !10, scopeLine: 53, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !15, !17, !18, !23, !24, !25, !30, !31, !32, !37, !38, !39, !39, !41, !43, !44, !45, !43, !44}
!14 = !DILocalVariable(name: "len", scope: !9, file: !1, line: 54, type: !12)
!15 = !DILocalVariable(name: "__vla_expr0", scope: !9, type: !16, flags: DIFlagArtificial)
!16 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = !DILocalVariable(name: "__vla_expr1", scope: !9, type: !16, flags: DIFlagArtificial)
!18 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 55, type: !19)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !20)
!20 = !{!21, !22}
!21 = !DISubrange(count: !15)
!22 = !DISubrange(count: !17)
!23 = !DILocalVariable(name: "__vla_expr2", scope: !9, type: !16, flags: DIFlagArtificial)
!24 = !DILocalVariable(name: "__vla_expr3", scope: !9, type: !16, flags: DIFlagArtificial)
!25 = !DILocalVariable(name: "b", scope: !9, file: !1, line: 55, type: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !27)
!27 = !{!28, !29}
!28 = !DISubrange(count: !23)
!29 = !DISubrange(count: !24)
!30 = !DILocalVariable(name: "__vla_expr4", scope: !9, type: !16, flags: DIFlagArtificial)
!31 = !DILocalVariable(name: "__vla_expr5", scope: !9, type: !16, flags: DIFlagArtificial)
!32 = !DILocalVariable(name: "c", scope: !9, file: !1, line: 55, type: !33)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !34)
!34 = !{!35, !36}
!35 = !DISubrange(count: !30)
!36 = !DISubrange(count: !31)
!37 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 56, type: !12)
!38 = !DILocalVariable(name: "j", scope: !9, file: !1, line: 56, type: !12)
!39 = !DILocalVariable(name: ".capture_expr.", scope: !40, type: !12, flags: DIFlagArtificial)
!40 = distinct !DILexicalBlock(scope: !9, file: !1, line: 66, column: 1)
!41 = !DILocalVariable(name: ".capture_expr.", scope: !40, type: !42, flags: DIFlagArtificial)
!42 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!43 = !DILocalVariable(name: "i", scope: !40, type: !12, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: "j", scope: !40, type: !12, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".omp.iv", scope: !40, type: !42, flags: DIFlagArtificial)
!46 = !DILocation(line: 54, column: 3, scope: !9)
!47 = !DILocation(line: 54, column: 7, scope: !9)
!48 = !{!49, !49, i64 0}
!49 = !{!"int", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !DILocation(line: 55, column: 12, scope: !9)
!53 = !DILocation(line: 55, column: 3, scope: !9)
!54 = !DILocation(line: 55, column: 17, scope: !9)
!55 = !DILocation(line: 0, scope: !9)
!56 = !DILocation(line: 55, column: 10, scope: !9)
!57 = !DILocation(line: 55, column: 25, scope: !9)
!58 = !DILocation(line: 55, column: 30, scope: !9)
!59 = !DILocation(line: 55, column: 23, scope: !9)
!60 = !DILocation(line: 55, column: 38, scope: !9)
!61 = !DILocation(line: 55, column: 43, scope: !9)
!62 = !DILocation(line: 55, column: 36, scope: !9)
!63 = !DILocation(line: 56, column: 3, scope: !9)
!64 = !DILocation(line: 56, column: 7, scope: !9)
!65 = !DILocation(line: 56, column: 9, scope: !9)
!66 = !DILocation(line: 58, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !9, file: !1, line: 58, column: 3)
!68 = !DILocation(line: 58, column: 8, scope: !67)
!69 = !DILocation(line: 58, column: 12, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !1, line: 58, column: 3)
!71 = !DILocation(line: 58, column: 14, scope: !70)
!72 = !DILocation(line: 58, column: 13, scope: !70)
!73 = !DILocation(line: 58, column: 3, scope: !67)
!74 = !DILocation(line: 59, column: 11, scope: !75)
!75 = distinct !DILexicalBlock(scope: !70, file: !1, line: 59, column: 5)
!76 = !DILocation(line: 59, column: 10, scope: !75)
!77 = !DILocation(line: 59, column: 14, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !1, line: 59, column: 5)
!79 = !DILocation(line: 59, column: 16, scope: !78)
!80 = !DILocation(line: 59, column: 15, scope: !78)
!81 = !DILocation(line: 59, column: 5, scope: !75)
!82 = !DILocation(line: 61, column: 24, scope: !83)
!83 = distinct !DILexicalBlock(scope: !78, file: !1, line: 60, column: 5)
!84 = !DILocation(line: 61, column: 16, scope: !83)
!85 = !DILocation(line: 61, column: 26, scope: !83)
!86 = !DILocation(line: 61, column: 9, scope: !83)
!87 = !DILocation(line: 61, column: 7, scope: !83)
!88 = !DILocation(line: 61, column: 12, scope: !83)
!89 = !DILocation(line: 61, column: 14, scope: !83)
!90 = !{!91, !91, i64 0}
!91 = !{!"double", !50, i64 0}
!92 = !DILocation(line: 62, column: 24, scope: !83)
!93 = !DILocation(line: 62, column: 16, scope: !83)
!94 = !DILocation(line: 62, column: 26, scope: !83)
!95 = !DILocation(line: 62, column: 9, scope: !83)
!96 = !DILocation(line: 62, column: 7, scope: !83)
!97 = !DILocation(line: 62, column: 12, scope: !83)
!98 = !DILocation(line: 62, column: 14, scope: !83)
!99 = !DILocation(line: 63, column: 24, scope: !83)
!100 = !DILocation(line: 63, column: 16, scope: !83)
!101 = !DILocation(line: 63, column: 26, scope: !83)
!102 = !DILocation(line: 63, column: 9, scope: !83)
!103 = !DILocation(line: 63, column: 7, scope: !83)
!104 = !DILocation(line: 63, column: 12, scope: !83)
!105 = !DILocation(line: 63, column: 14, scope: !83)
!106 = !DILocation(line: 64, column: 5, scope: !83)
!107 = !DILocation(line: 59, column: 21, scope: !78)
!108 = !DILocation(line: 59, column: 5, scope: !78)
!109 = distinct !{!109, !81, !110}
!110 = !DILocation(line: 64, column: 5, scope: !75)
!111 = !DILocation(line: 58, column: 19, scope: !70)
!112 = !DILocation(line: 58, column: 3, scope: !70)
!113 = distinct !{!113, !73, !114}
!114 = !DILocation(line: 64, column: 5, scope: !67)
!115 = !DILocation(line: 66, column: 1, scope: !9)
!116 = !DILocation(line: 0, scope: !40)
!117 = !DILocation(line: 67, column: 14, scope: !40)
!118 = !DILocation(line: 68, column: 16, scope: !40)
!119 = !DILocation(line: 67, column: 3, scope: !40)
!120 = !DILocation(line: 68, column: 5, scope: !40)
!121 = !{!122, !122, i64 0}
!122 = !{!"long", !50, i64 0}
!123 = !DILocation(line: 67, column: 18, scope: !40)
!124 = !DILocation(line: 68, column: 20, scope: !40)
!125 = !DILocation(line: 67, column: 10, scope: !40)
!126 = !DILocation(line: 67, column: 8, scope: !40)
!127 = distinct !{}
!128 = !DILocation(line: 68, column: 12, scope: !40)
!129 = !DILocation(line: 69, column: 17, scope: !40)
!130 = !DILocation(line: 69, column: 15, scope: !40)
!131 = !DILocation(line: 69, column: 20, scope: !40)
!132 = !DILocation(line: 69, column: 25, scope: !40)
!133 = !DILocation(line: 69, column: 23, scope: !40)
!134 = !DILocation(line: 69, column: 28, scope: !40)
!135 = !DILocation(line: 69, column: 22, scope: !40)
!136 = !DILocation(line: 69, column: 9, scope: !40)
!137 = !DILocation(line: 69, column: 7, scope: !40)
!138 = !DILocation(line: 69, column: 12, scope: !40)
!139 = !DILocation(line: 69, column: 14, scope: !40)
!140 = !DILocation(line: 66, column: 1, scope: !40)
!141 = distinct !{!141, !140, !142, !143, !144}
!142 = !DILocation(line: 66, column: 29, scope: !40)
!143 = !{!"llvm.loop.parallel_accesses", !127}
!144 = !{!"llvm.loop.vectorize.enable", i1 true}
!145 = !DILocation(line: 71, column: 28, scope: !9)
!146 = !DILocation(line: 71, column: 3, scope: !9)
!147 = !DILocation(line: 72, column: 3, scope: !9)
!148 = !DILocation(line: 73, column: 1, scope: !9)
