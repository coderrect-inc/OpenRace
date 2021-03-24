; ModuleID = 'DRB057-jacobiinitialize-orig-no.c'
source_filename = "DRB057-jacobiinitialize-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@n = dso_local global i32 200, align 4, !dbg !0
@dx = common dso_local global double 0.000000e+00, align 8, !dbg !18
@m = dso_local global i32 200, align 4, !dbg !22
@dy = common dso_local global double 0.000000e+00, align 8, !dbg !20
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [53 x i8] c";DRB057-jacobiinitialize-orig-no.c;initialize;68;1;;\00", align 1
@u = common dso_local global [200 x [200 x double]] zeroinitializer, align 16, !dbg !8
@alpha = dso_local global double 5.430000e-02, align 8, !dbg !24
@f = common dso_local global [200 x [200 x double]] zeroinitializer, align 16, !dbg !14
@2 = private unnamed_addr constant [54 x i8] c";DRB057-jacobiinitialize-orig-no.c;initialize;68;44;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@uold = common dso_local global [200 x [200 x double]] zeroinitializer, align 16, !dbg !16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialize() #0 !dbg !30 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  call void @llvm.dbg.declare(metadata i32* %i, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %j, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %xx, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %yy, metadata !39, metadata !DIExpression()), !dbg !40
  %2 = load i32, i32* @n, align 4, !dbg !41
  %sub = sub nsw i32 %2, 1, !dbg !42
  %conv = sitofp i32 %sub to double, !dbg !43
  %div = fdiv double 2.000000e+00, %conv, !dbg !44
  store double %div, double* @dx, align 8, !dbg !45
  %3 = load i32, i32* @m, align 4, !dbg !46
  %sub1 = sub nsw i32 %3, 1, !dbg !47
  %conv2 = sitofp i32 %sub1 to double, !dbg !48
  %div3 = fdiv double 2.000000e+00, %conv2, !dbg !49
  store double %div3, double* @dy, align 8, !dbg !50
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !51
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !51
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !51
  ret void, !dbg !52
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 !dbg !53 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
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
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %i5 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !60, metadata !DIExpression()), !dbg !61
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !62, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !63, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !64, metadata !DIExpression()), !dbg !61
  %2 = load i32, i32* @n, align 4, !dbg !65
  store i32 %2, i32* %.capture_expr., align 4, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !64, metadata !DIExpression()), !dbg !61
  %3 = load i32, i32* %.capture_expr., align 4, !dbg !65
  %sub = sub nsw i32 %3, 0, !dbg !66
  %sub2 = sub nsw i32 %sub, 1, !dbg !66
  %add = add nsw i32 %sub2, 1, !dbg !66
  %div = sdiv i32 %add, 1, !dbg !66
  %sub3 = sub nsw i32 %div, 1, !dbg !66
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %i, metadata !67, metadata !DIExpression()), !dbg !61
  store i32 0, i32* %i, align 4, !dbg !68
  %4 = load i32, i32* %.capture_expr., align 4, !dbg !65
  %cmp = icmp slt i32 0, %4, !dbg !66
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !66

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !69, metadata !DIExpression()), !dbg !61
  store i32 0, i32* %.omp.lb, align 4, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !71, metadata !DIExpression()), !dbg !61
  %5 = load i32, i32* %.capture_expr.1, align 4, !dbg !66
  store i32 %5, i32* %.omp.ub, align 4, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !72, metadata !DIExpression()), !dbg !61
  store i32 1, i32* %.omp.stride, align 4, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !73, metadata !DIExpression()), !dbg !61
  store i32 0, i32* %.omp.is_last, align 4, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !67, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %j, metadata !74, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %xx, metadata !75, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %yy, metadata !76, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !67, metadata !DIExpression()), !dbg !61
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !66
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !66
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !66
  %8 = load i32, i32* %7, align 4, !dbg !66
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !66
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !70
  %10 = load i32, i32* %.capture_expr.1, align 4, !dbg !66
  %cmp6 = icmp sgt i32 %9, %10, !dbg !70
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !70

cond.true:                                        ; preds = %omp.precond.then
  %11 = load i32, i32* %.capture_expr.1, align 4, !dbg !66
  br label %cond.end, !dbg !70

cond.false:                                       ; preds = %omp.precond.then
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !70
  br label %cond.end, !dbg !70

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %12, %cond.false ], !dbg !70
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !70
  %13 = load i32, i32* %.omp.lb, align 4, !dbg !70
  store i32 %13, i32* %.omp.iv, align 4, !dbg !70
  br label %omp.inner.for.cond, !dbg !66

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !70
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !70
  %cmp7 = icmp sle i32 %14, %15, !dbg !66
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !66

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !70
  %mul = mul nsw i32 %16, 1, !dbg !68
  %add8 = add nsw i32 0, %mul, !dbg !68
  store i32 %add8, i32* %i4, align 4, !dbg !68
  store i32 0, i32* %j, align 4, !dbg !77
  br label %for.cond, !dbg !79

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %17 = load i32, i32* %j, align 4, !dbg !80
  %18 = load i32, i32* @m, align 4, !dbg !82
  %cmp9 = icmp slt i32 %17, %18, !dbg !83
  br i1 %cmp9, label %for.body, label %for.end, !dbg !84

for.body:                                         ; preds = %for.cond
  %19 = load double, double* @dx, align 8, !dbg !85
  %20 = load i32, i32* %i4, align 4, !dbg !87
  %sub10 = sub nsw i32 %20, 1, !dbg !88
  %conv = sitofp i32 %sub10 to double, !dbg !89
  %mul11 = fmul double %19, %conv, !dbg !90
  %add12 = fadd double -1.000000e+00, %mul11, !dbg !91
  %conv13 = fptosi double %add12 to i32, !dbg !92
  store i32 %conv13, i32* %xx, align 4, !dbg !93
  %21 = load double, double* @dy, align 8, !dbg !94
  %22 = load i32, i32* %j, align 4, !dbg !95
  %sub14 = sub nsw i32 %22, 1, !dbg !96
  %conv15 = sitofp i32 %sub14 to double, !dbg !97
  %mul16 = fmul double %21, %conv15, !dbg !98
  %add17 = fadd double -1.000000e+00, %mul16, !dbg !99
  %conv18 = fptosi double %add17 to i32, !dbg !100
  store i32 %conv18, i32* %yy, align 4, !dbg !101
  %23 = load i32, i32* %i4, align 4, !dbg !102
  %idxprom = sext i32 %23 to i64, !dbg !103
  %arrayidx = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @u, i64 0, i64 %idxprom, !dbg !103
  %24 = load i32, i32* %j, align 4, !dbg !104
  %idxprom19 = sext i32 %24 to i64, !dbg !103
  %arrayidx20 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx, i64 0, i64 %idxprom19, !dbg !103
  store double 0.000000e+00, double* %arrayidx20, align 8, !dbg !105
  %25 = load double, double* @alpha, align 8, !dbg !106
  %mul21 = fmul double -1.000000e+00, %25, !dbg !107
  %26 = load i32, i32* %xx, align 4, !dbg !108
  %27 = load i32, i32* %xx, align 4, !dbg !109
  %mul22 = mul nsw i32 %26, %27, !dbg !110
  %conv23 = sitofp i32 %mul22 to double, !dbg !108
  %sub24 = fsub double 1.000000e+00, %conv23, !dbg !111
  %mul25 = fmul double %mul21, %sub24, !dbg !112
  %28 = load i32, i32* %yy, align 4, !dbg !113
  %29 = load i32, i32* %yy, align 4, !dbg !114
  %mul26 = mul nsw i32 %28, %29, !dbg !115
  %conv27 = sitofp i32 %mul26 to double, !dbg !113
  %sub28 = fsub double 1.000000e+00, %conv27, !dbg !116
  %mul29 = fmul double %mul25, %sub28, !dbg !117
  %30 = load i32, i32* %xx, align 4, !dbg !118
  %31 = load i32, i32* %xx, align 4, !dbg !119
  %mul30 = mul nsw i32 %30, %31, !dbg !120
  %conv31 = sitofp i32 %mul30 to double, !dbg !118
  %sub32 = fsub double 1.000000e+00, %conv31, !dbg !121
  %mul33 = fmul double 2.000000e+00, %sub32, !dbg !122
  %sub34 = fsub double %mul29, %mul33, !dbg !123
  %32 = load i32, i32* %yy, align 4, !dbg !124
  %33 = load i32, i32* %yy, align 4, !dbg !125
  %mul35 = mul nsw i32 %32, %33, !dbg !126
  %conv36 = sitofp i32 %mul35 to double, !dbg !124
  %sub37 = fsub double 1.000000e+00, %conv36, !dbg !127
  %mul38 = fmul double 2.000000e+00, %sub37, !dbg !128
  %sub39 = fsub double %sub34, %mul38, !dbg !129
  %34 = load i32, i32* %i4, align 4, !dbg !130
  %idxprom40 = sext i32 %34 to i64, !dbg !131
  %arrayidx41 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @f, i64 0, i64 %idxprom40, !dbg !131
  %35 = load i32, i32* %j, align 4, !dbg !132
  %idxprom42 = sext i32 %35 to i64, !dbg !131
  %arrayidx43 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx41, i64 0, i64 %idxprom42, !dbg !131
  store double %sub39, double* %arrayidx43, align 8, !dbg !133
  br label %for.inc, !dbg !134

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %j, align 4, !dbg !135
  %inc = add nsw i32 %36, 1, !dbg !135
  store i32 %inc, i32* %j, align 4, !dbg !135
  br label %for.cond, !dbg !136, !llvm.loop !137

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !138

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !139

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %37 = load i32, i32* %.omp.iv, align 4, !dbg !70
  %add44 = add nsw i32 %37, 1, !dbg !66
  store i32 %add44, i32* %.omp.iv, align 4, !dbg !66
  br label %omp.inner.for.cond, !dbg !139, !llvm.loop !140

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !139

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %38 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !139
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @2, i32 0, i32 0), i8** %38, align 8, !dbg !139
  %39 = load i32*, i32** %.global_tid..addr, align 8, !dbg !139
  %40 = load i32, i32* %39, align 4, !dbg !139
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %40), !dbg !139
  br label %omp.precond.end, !dbg !139

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !142
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 !dbg !143 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !144, metadata !DIExpression()), !dbg !145
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !146, metadata !DIExpression()), !dbg !145
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !147
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !147
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !147
  ret void, !dbg !147
}

declare !callback !148 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !150 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @initialize(), !dbg !152
  ret i32 0, !dbg !153
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!26, !27, !28}
!llvm.ident = !{!29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "n", scope: !2, file: !3, line: 54, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB057-jacobiinitialize-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{!8, !14, !16, !18, !20, !0, !22, !24}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "u", scope: !2, file: !3, line: 56, type: !10, isLocal: false, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2560000, elements: !12)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !{!13, !13}
!13 = !DISubrange(count: 200)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "f", scope: !2, file: !3, line: 56, type: !10, isLocal: false, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "uold", scope: !2, file: !3, line: 56, type: !10, isLocal: false, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "dx", scope: !2, file: !3, line: 57, type: !11, isLocal: false, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "dy", scope: !2, file: !3, line: 57, type: !11, isLocal: false, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "m", scope: !2, file: !3, line: 54, type: !6, isLocal: false, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "alpha", scope: !2, file: !3, line: 55, type: !11, isLocal: false, isDefinition: true)
!26 = !{i32 7, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{!"clang version 10.0.1 "}
!30 = distinct !DISubprogram(name: "initialize", scope: !3, file: !3, line: 60, type: !31, scopeLine: 61, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!31 = !DISubroutineType(types: !32)
!32 = !{null}
!33 = !DILocalVariable(name: "i", scope: !30, file: !3, line: 62, type: !6)
!34 = !DILocation(line: 62, column: 7, scope: !30)
!35 = !DILocalVariable(name: "j", scope: !30, file: !3, line: 62, type: !6)
!36 = !DILocation(line: 62, column: 10, scope: !30)
!37 = !DILocalVariable(name: "xx", scope: !30, file: !3, line: 62, type: !6)
!38 = !DILocation(line: 62, column: 13, scope: !30)
!39 = !DILocalVariable(name: "yy", scope: !30, file: !3, line: 62, type: !6)
!40 = !DILocation(line: 62, column: 17, scope: !30)
!41 = !DILocation(line: 64, column: 15, scope: !30)
!42 = !DILocation(line: 64, column: 17, scope: !30)
!43 = !DILocation(line: 64, column: 14, scope: !30)
!44 = !DILocation(line: 64, column: 12, scope: !30)
!45 = !DILocation(line: 64, column: 6, scope: !30)
!46 = !DILocation(line: 65, column: 15, scope: !30)
!47 = !DILocation(line: 65, column: 17, scope: !30)
!48 = !DILocation(line: 65, column: 14, scope: !30)
!49 = !DILocation(line: 65, column: 12, scope: !30)
!50 = !DILocation(line: 65, column: 6, scope: !30)
!51 = !DILocation(line: 68, column: 1, scope: !30)
!52 = !DILocation(line: 79, column: 1, scope: !30)
!53 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 69, type: !54, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !56, !56}
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!60 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !53, type: !56, flags: DIFlagArtificial)
!61 = !DILocation(line: 0, scope: !53)
!62 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !53, type: !56, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: ".omp.iv", scope: !53, type: !6, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".capture_expr.", scope: !53, type: !6, flags: DIFlagArtificial)
!65 = !DILocation(line: 69, column: 19, scope: !53)
!66 = !DILocation(line: 69, column: 3, scope: !53)
!67 = !DILocalVariable(name: "i", scope: !53, type: !6, flags: DIFlagArtificial)
!68 = !DILocation(line: 69, column: 22, scope: !53)
!69 = !DILocalVariable(name: ".omp.lb", scope: !53, type: !6, flags: DIFlagArtificial)
!70 = !DILocation(line: 69, column: 8, scope: !53)
!71 = !DILocalVariable(name: ".omp.ub", scope: !53, type: !6, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".omp.stride", scope: !53, type: !6, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".omp.is_last", scope: !53, type: !6, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "j", scope: !53, type: !6, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "xx", scope: !53, type: !6, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "yy", scope: !53, type: !6, flags: DIFlagArtificial)
!77 = !DILocation(line: 70, column: 12, scope: !78)
!78 = distinct !DILexicalBlock(scope: !53, file: !3, line: 70, column: 5)
!79 = !DILocation(line: 70, column: 10, scope: !78)
!80 = !DILocation(line: 70, column: 17, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !3, line: 70, column: 5)
!82 = !DILocation(line: 70, column: 21, scope: !81)
!83 = !DILocation(line: 70, column: 19, scope: !81)
!84 = !DILocation(line: 70, column: 5, scope: !78)
!85 = !DILocation(line: 72, column: 26, scope: !86)
!86 = distinct !DILexicalBlock(scope: !81, file: !3, line: 71, column: 5)
!87 = !DILocation(line: 72, column: 32, scope: !86)
!88 = !DILocation(line: 72, column: 34, scope: !86)
!89 = !DILocation(line: 72, column: 31, scope: !86)
!90 = !DILocation(line: 72, column: 29, scope: !86)
!91 = !DILocation(line: 72, column: 24, scope: !86)
!92 = !DILocation(line: 72, column: 12, scope: !86)
!93 = !DILocation(line: 72, column: 10, scope: !86)
!94 = !DILocation(line: 73, column: 26, scope: !86)
!95 = !DILocation(line: 73, column: 32, scope: !86)
!96 = !DILocation(line: 73, column: 34, scope: !86)
!97 = !DILocation(line: 73, column: 31, scope: !86)
!98 = !DILocation(line: 73, column: 29, scope: !86)
!99 = !DILocation(line: 73, column: 24, scope: !86)
!100 = !DILocation(line: 73, column: 12, scope: !86)
!101 = !DILocation(line: 73, column: 10, scope: !86)
!102 = !DILocation(line: 74, column: 9, scope: !86)
!103 = !DILocation(line: 74, column: 7, scope: !86)
!104 = !DILocation(line: 74, column: 12, scope: !86)
!105 = !DILocation(line: 74, column: 15, scope: !86)
!106 = !DILocation(line: 75, column: 24, scope: !86)
!107 = !DILocation(line: 75, column: 22, scope: !86)
!108 = !DILocation(line: 75, column: 39, scope: !86)
!109 = !DILocation(line: 75, column: 44, scope: !86)
!110 = !DILocation(line: 75, column: 42, scope: !86)
!111 = !DILocation(line: 75, column: 37, scope: !86)
!112 = !DILocation(line: 75, column: 30, scope: !86)
!113 = !DILocation(line: 75, column: 57, scope: !86)
!114 = !DILocation(line: 75, column: 62, scope: !86)
!115 = !DILocation(line: 75, column: 60, scope: !86)
!116 = !DILocation(line: 75, column: 55, scope: !86)
!117 = !DILocation(line: 75, column: 48, scope: !86)
!118 = !DILocation(line: 76, column: 24, scope: !86)
!119 = !DILocation(line: 76, column: 29, scope: !86)
!120 = !DILocation(line: 76, column: 27, scope: !86)
!121 = !DILocation(line: 76, column: 22, scope: !86)
!122 = !DILocation(line: 76, column: 15, scope: !86)
!123 = !DILocation(line: 76, column: 9, scope: !86)
!124 = !DILocation(line: 76, column: 48, scope: !86)
!125 = !DILocation(line: 76, column: 53, scope: !86)
!126 = !DILocation(line: 76, column: 51, scope: !86)
!127 = !DILocation(line: 76, column: 46, scope: !86)
!128 = !DILocation(line: 76, column: 39, scope: !86)
!129 = !DILocation(line: 76, column: 33, scope: !86)
!130 = !DILocation(line: 75, column: 9, scope: !86)
!131 = !DILocation(line: 75, column: 7, scope: !86)
!132 = !DILocation(line: 75, column: 12, scope: !86)
!133 = !DILocation(line: 75, column: 15, scope: !86)
!134 = !DILocation(line: 78, column: 5, scope: !86)
!135 = !DILocation(line: 70, column: 25, scope: !81)
!136 = !DILocation(line: 70, column: 5, scope: !81)
!137 = distinct !{!137, !84, !138}
!138 = !DILocation(line: 78, column: 5, scope: !78)
!139 = !DILocation(line: 68, column: 1, scope: !53)
!140 = distinct !{!140, !139, !141}
!141 = !DILocation(line: 68, column: 44, scope: !53)
!142 = !DILocation(line: 78, column: 5, scope: !53)
!143 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 69, type: !54, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!144 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !143, type: !56, flags: DIFlagArtificial)
!145 = !DILocation(line: 0, scope: !143)
!146 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !143, type: !56, flags: DIFlagArtificial)
!147 = !DILocation(line: 69, column: 3, scope: !143)
!148 = !{!149}
!149 = !{i64 2, i64 -1, i64 -1, i1 true}
!150 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 81, type: !151, scopeLine: 82, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!151 = !DISubroutineType(types: !5)
!152 = !DILocation(line: 83, column: 3, scope: !150)
!153 = !DILocation(line: 84, column: 3, scope: !150)
