; ModuleID = 'integration/dataracebench/DRB060-matrixmultiply-orig-no.c'
source_filename = "integration/dataracebench/DRB060-matrixmultiply-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [70 x i8] c";integration/dataracebench/DRB060-matrixmultiply-orig-no.c;mmm;59;1;;\00", align 1
@c = common dso_local global [100 x [100 x double]] zeroinitializer, align 16, !dbg !0
@a = common dso_local global [100 x [100 x double]] zeroinitializer, align 16, !dbg !6
@b = common dso_local global [100 x [100 x double]] zeroinitializer, align 16, !dbg !12
@2 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB060-matrixmultiply-orig-no.c;mmm;59;38;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @mmm() #0 !dbg !18 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast i32* %i to i8*, !dbg !26
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %i, metadata !23, metadata !DIExpression()), !dbg !27
  %3 = bitcast i32* %j to i8*, !dbg !26
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %j, metadata !24, metadata !DIExpression()), !dbg !28
  %4 = bitcast i32* %k to i8*, !dbg !26
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %k, metadata !25, metadata !DIExpression()), !dbg !29
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !30
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !30, !tbaa !31
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !30
  %6 = bitcast i32* %k to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #4, !dbg !37
  %7 = bitcast i32* %j to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #4, !dbg !37
  %8 = bitcast i32* %i to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !37
  ret i32 0, !dbg !38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !39 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !47, metadata !DIExpression()), !dbg !58
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !48, metadata !DIExpression()), !dbg !58
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !49, metadata !DIExpression()), !dbg !58
  %3 = bitcast i32* %.omp.lb to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !50, metadata !DIExpression()), !dbg !58
  store i32 0, i32* %.omp.lb, align 4, !dbg !60, !tbaa !61
  %4 = bitcast i32* %.omp.ub to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !51, metadata !DIExpression()), !dbg !58
  store i32 99, i32* %.omp.ub, align 4, !dbg !60, !tbaa !61
  %5 = bitcast i32* %.omp.stride to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !52, metadata !DIExpression()), !dbg !58
  store i32 1, i32* %.omp.stride, align 4, !dbg !60, !tbaa !61
  %6 = bitcast i32* %.omp.is_last to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !53, metadata !DIExpression()), !dbg !58
  store i32 0, i32* %.omp.is_last, align 4, !dbg !60, !tbaa !61
  %7 = bitcast i32* %j to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %j, metadata !54, metadata !DIExpression()), !dbg !58
  %8 = bitcast i32* %k to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %k, metadata !55, metadata !DIExpression()), !dbg !58
  %9 = bitcast i32* %i to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %i, metadata !56, metadata !DIExpression()), !dbg !58
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !59
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !59, !tbaa !31
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !59
  %12 = load i32, i32* %11, align 4, !dbg !59, !tbaa !61
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !59
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !60, !tbaa !61
  %cmp = icmp sgt i32 %13, 99, !dbg !60
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !60

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !60

cond.false:                                       ; preds = %entry
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !60, !tbaa !61
  br label %cond.end, !dbg !60

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %14, %cond.false ], !dbg !60
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !60, !tbaa !61
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !60, !tbaa !61
  store i32 %15, i32* %.omp.iv, align 4, !dbg !60, !tbaa !61
  br label %omp.inner.for.cond, !dbg !59

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !60, !tbaa !61
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !60, !tbaa !61
  %cmp1 = icmp sle i32 %16, %17, !dbg !59
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !59

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !59

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !60, !tbaa !61
  %mul = mul nsw i32 %18, 1, !dbg !62
  %add = add nsw i32 0, %mul, !dbg !62
  store i32 %add, i32* %i, align 4, !dbg !62, !tbaa !61
  store i32 0, i32* %k, align 4, !dbg !63, !tbaa !61
  br label %for.cond, !dbg !65

for.cond:                                         ; preds = %for.inc22, %omp.inner.for.body
  %19 = load i32, i32* %k, align 4, !dbg !66, !tbaa !61
  %cmp2 = icmp slt i32 %19, 100, !dbg !68
  br i1 %cmp2, label %for.body, label %for.end24, !dbg !69

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !70, !tbaa !61
  br label %for.cond3, !dbg !72

for.cond3:                                        ; preds = %for.inc, %for.body
  %20 = load i32, i32* %j, align 4, !dbg !73, !tbaa !61
  %cmp4 = icmp slt i32 %20, 100, !dbg !75
  br i1 %cmp4, label %for.body5, label %for.end, !dbg !76

for.body5:                                        ; preds = %for.cond3
  %21 = load i32, i32* %i, align 4, !dbg !77, !tbaa !61
  %idxprom = sext i32 %21 to i64, !dbg !78
  %arrayidx = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @c, i64 0, i64 %idxprom, !dbg !78
  %22 = load i32, i32* %j, align 4, !dbg !79, !tbaa !61
  %idxprom6 = sext i32 %22 to i64, !dbg !78
  %arrayidx7 = getelementptr inbounds [100 x double], [100 x double]* %arrayidx, i64 0, i64 %idxprom6, !dbg !78
  %23 = load double, double* %arrayidx7, align 8, !dbg !78, !tbaa !80
  %24 = load i32, i32* %i, align 4, !dbg !82, !tbaa !61
  %idxprom8 = sext i32 %24 to i64, !dbg !83
  %arrayidx9 = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @a, i64 0, i64 %idxprom8, !dbg !83
  %25 = load i32, i32* %k, align 4, !dbg !84, !tbaa !61
  %idxprom10 = sext i32 %25 to i64, !dbg !83
  %arrayidx11 = getelementptr inbounds [100 x double], [100 x double]* %arrayidx9, i64 0, i64 %idxprom10, !dbg !83
  %26 = load double, double* %arrayidx11, align 8, !dbg !83, !tbaa !80
  %27 = load i32, i32* %k, align 4, !dbg !85, !tbaa !61
  %idxprom12 = sext i32 %27 to i64, !dbg !86
  %arrayidx13 = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @b, i64 0, i64 %idxprom12, !dbg !86
  %28 = load i32, i32* %j, align 4, !dbg !87, !tbaa !61
  %idxprom14 = sext i32 %28 to i64, !dbg !86
  %arrayidx15 = getelementptr inbounds [100 x double], [100 x double]* %arrayidx13, i64 0, i64 %idxprom14, !dbg !86
  %29 = load double, double* %arrayidx15, align 8, !dbg !86, !tbaa !80
  %mul16 = fmul double %26, %29, !dbg !88
  %add17 = fadd double %23, %mul16, !dbg !89
  %30 = load i32, i32* %i, align 4, !dbg !90, !tbaa !61
  %idxprom18 = sext i32 %30 to i64, !dbg !91
  %arrayidx19 = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @c, i64 0, i64 %idxprom18, !dbg !91
  %31 = load i32, i32* %j, align 4, !dbg !92, !tbaa !61
  %idxprom20 = sext i32 %31 to i64, !dbg !91
  %arrayidx21 = getelementptr inbounds [100 x double], [100 x double]* %arrayidx19, i64 0, i64 %idxprom20, !dbg !91
  store double %add17, double* %arrayidx21, align 8, !dbg !93, !tbaa !80
  br label %for.inc, !dbg !91

for.inc:                                          ; preds = %for.body5
  %32 = load i32, i32* %j, align 4, !dbg !94, !tbaa !61
  %inc = add nsw i32 %32, 1, !dbg !94
  store i32 %inc, i32* %j, align 4, !dbg !94, !tbaa !61
  br label %for.cond3, !dbg !95, !llvm.loop !96

for.end:                                          ; preds = %for.cond3
  br label %for.inc22, !dbg !97

for.inc22:                                        ; preds = %for.end
  %33 = load i32, i32* %k, align 4, !dbg !98, !tbaa !61
  %inc23 = add nsw i32 %33, 1, !dbg !98
  store i32 %inc23, i32* %k, align 4, !dbg !98, !tbaa !61
  br label %for.cond, !dbg !99, !llvm.loop !100

for.end24:                                        ; preds = %for.cond
  br label %omp.body.continue, !dbg !101

omp.body.continue:                                ; preds = %for.end24
  br label %omp.inner.for.inc, !dbg !102

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %34 = load i32, i32* %.omp.iv, align 4, !dbg !60, !tbaa !61
  %add25 = add nsw i32 %34, 1, !dbg !59
  store i32 %add25, i32* %.omp.iv, align 4, !dbg !59, !tbaa !61
  br label %omp.inner.for.cond, !dbg !102, !llvm.loop !103

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !102

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %35 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !102
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @2, i32 0, i32 0), i8** %35, align 8, !dbg !102, !tbaa !31
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %12), !dbg !102
  %36 = bitcast i32* %i to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !102
  %37 = bitcast i32* %k to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !102
  %38 = bitcast i32* %j to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !102
  %39 = bitcast i32* %.omp.is_last to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !102
  %40 = bitcast i32* %.omp.stride to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !102
  %41 = bitcast i32* %.omp.ub to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !102
  %42 = bitcast i32* %.omp.lb to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !102
  %43 = bitcast i32* %.omp.iv to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !102
  ret void, !dbg !105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !106 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !108, metadata !DIExpression()), !dbg !110
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !109, metadata !DIExpression()), !dbg !110
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !111, !tbaa !57
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !111, !tbaa !57
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !111
  ret void, !dbg !111
}

declare !callback !112 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !114 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @mmm(), !dbg !115
  ret i32 0, !dbg !116
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 54, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB060-matrixmultiply-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!6, !12, !0}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 54, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 640000, elements: !10)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !{!11, !11}
!11 = !DISubrange(count: 100)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 54, type: !8, isLocal: false, isDefinition: true)
!14 = !{i32 7, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 10.0.1 "}
!18 = distinct !DISubprogram(name: "mmm", scope: !3, file: !3, line: 56, type: !19, scopeLine: 57, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !22)
!19 = !DISubroutineType(types: !20)
!20 = !{!21}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{!23, !24, !25}
!23 = !DILocalVariable(name: "i", scope: !18, file: !3, line: 58, type: !21)
!24 = !DILocalVariable(name: "j", scope: !18, file: !3, line: 58, type: !21)
!25 = !DILocalVariable(name: "k", scope: !18, file: !3, line: 58, type: !21)
!26 = !DILocation(line: 58, column: 3, scope: !18)
!27 = !DILocation(line: 58, column: 7, scope: !18)
!28 = !DILocation(line: 58, column: 9, scope: !18)
!29 = !DILocation(line: 58, column: 11, scope: !18)
!30 = !DILocation(line: 59, column: 1, scope: !18)
!31 = !{!32, !36, i64 16}
!32 = !{!"ident_t", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !36, i64 16}
!33 = !{!"int", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !{!"any pointer", !34, i64 0}
!37 = !DILocation(line: 65, column: 1, scope: !18)
!38 = !DILocation(line: 64, column: 3, scope: !18)
!39 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 60, type: !40, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !46)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !42}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!47 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !39, type: !42, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !39, type: !42, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".omp.iv", scope: !39, type: !21, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: ".omp.lb", scope: !39, type: !21, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: ".omp.ub", scope: !39, type: !21, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: ".omp.stride", scope: !39, type: !21, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: ".omp.is_last", scope: !39, type: !21, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: "j", scope: !39, type: !21, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: "k", scope: !39, type: !21, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: "i", scope: !39, type: !21, flags: DIFlagArtificial)
!57 = !{!36, !36, i64 0}
!58 = !DILocation(line: 0, scope: !39)
!59 = !DILocation(line: 60, column: 3, scope: !39)
!60 = !DILocation(line: 60, column: 8, scope: !39)
!61 = !{!33, !33, i64 0}
!62 = !DILocation(line: 60, column: 22, scope: !39)
!63 = !DILocation(line: 61, column: 12, scope: !64)
!64 = distinct !DILexicalBlock(scope: !39, file: !3, line: 61, column: 5)
!65 = !DILocation(line: 61, column: 10, scope: !64)
!66 = !DILocation(line: 61, column: 17, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !3, line: 61, column: 5)
!68 = !DILocation(line: 61, column: 19, scope: !67)
!69 = !DILocation(line: 61, column: 5, scope: !64)
!70 = !DILocation(line: 62, column: 14, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !3, line: 62, column: 7)
!72 = !DILocation(line: 62, column: 12, scope: !71)
!73 = !DILocation(line: 62, column: 19, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !3, line: 62, column: 7)
!75 = !DILocation(line: 62, column: 21, scope: !74)
!76 = !DILocation(line: 62, column: 7, scope: !71)
!77 = !DILocation(line: 63, column: 20, scope: !74)
!78 = !DILocation(line: 63, column: 18, scope: !74)
!79 = !DILocation(line: 63, column: 23, scope: !74)
!80 = !{!81, !81, i64 0}
!81 = !{!"double", !34, i64 0}
!82 = !DILocation(line: 63, column: 28, scope: !74)
!83 = !DILocation(line: 63, column: 26, scope: !74)
!84 = !DILocation(line: 63, column: 31, scope: !74)
!85 = !DILocation(line: 63, column: 36, scope: !74)
!86 = !DILocation(line: 63, column: 34, scope: !74)
!87 = !DILocation(line: 63, column: 39, scope: !74)
!88 = !DILocation(line: 63, column: 33, scope: !74)
!89 = !DILocation(line: 63, column: 25, scope: !74)
!90 = !DILocation(line: 63, column: 11, scope: !74)
!91 = !DILocation(line: 63, column: 9, scope: !74)
!92 = !DILocation(line: 63, column: 14, scope: !74)
!93 = !DILocation(line: 63, column: 16, scope: !74)
!94 = !DILocation(line: 62, column: 27, scope: !74)
!95 = !DILocation(line: 62, column: 7, scope: !74)
!96 = distinct !{!96, !76, !97}
!97 = !DILocation(line: 63, column: 40, scope: !71)
!98 = !DILocation(line: 61, column: 25, scope: !67)
!99 = !DILocation(line: 61, column: 5, scope: !67)
!100 = distinct !{!100, !69, !101}
!101 = !DILocation(line: 63, column: 40, scope: !64)
!102 = !DILocation(line: 59, column: 1, scope: !39)
!103 = distinct !{!103, !102, !104}
!104 = !DILocation(line: 59, column: 38, scope: !39)
!105 = !DILocation(line: 63, column: 40, scope: !39)
!106 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 60, type: !40, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !107)
!107 = !{!108, !109}
!108 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !106, type: !42, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !106, type: !42, flags: DIFlagArtificial)
!110 = !DILocation(line: 0, scope: !106)
!111 = !DILocation(line: 60, column: 3, scope: !106)
!112 = !{!113}
!113 = !{i64 2, i64 -1, i64 -1, i1 true}
!114 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 67, type: !19, scopeLine: 68, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!115 = !DILocation(line: 69, column: 3, scope: !114)
!116 = !DILocation(line: 70, column: 3, scope: !114)
