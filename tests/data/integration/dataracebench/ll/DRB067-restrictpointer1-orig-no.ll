; ModuleID = 'DRB067-restrictpointer1-orig-no.c'
source_filename = "DRB067-restrictpointer1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [46 x i8] c";DRB067-restrictpointer1-orig-no.c;foo;61;1;;\00", align 1
@2 = private unnamed_addr constant [47 x i8] c";DRB067-restrictpointer1-orig-no.c;foo;61;59;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(double* noalias %newSxx, double* noalias %newSyy, i32 %length) #0 !dbg !7 {
entry:
  %newSxx.addr = alloca double*, align 8
  %newSyy.addr = alloca double*, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %length.casted = alloca i64, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store double* %newSxx, double** %newSxx.addr, align 8
  call void @llvm.dbg.declare(metadata double** %newSxx.addr, metadata !15, metadata !DIExpression()), !dbg !16
  store double* %newSyy, double** %newSyy.addr, align 8
  call void @llvm.dbg.declare(metadata double** %newSyy.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !22
  %2 = load i32, i32* %length.addr, align 4, !dbg !23
  %conv = bitcast i64* %length.casted to i32*, !dbg !23
  store i32 %2, i32* %conv, align 4, !dbg !23
  %3 = load i64, i64* %length.casted, align 8, !dbg !23
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !23
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !23
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %3, double** %newSxx.addr, double** %newSyy.addr), !dbg !23
  ret void, !dbg !24
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32 %length, double** dereferenceable(8) %newSxx, double** dereferenceable(8) %newSyy) #2 !dbg !25 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %newSxx.addr = alloca double**, align 8
  %newSyy.addr = alloca double**, align 8
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
  %i5 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !33, metadata !DIExpression()), !dbg !34
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !35, metadata !DIExpression()), !dbg !34
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !36, metadata !DIExpression()), !dbg !37
  store double** %newSxx, double*** %newSxx.addr, align 8
  call void @llvm.dbg.declare(metadata double*** %newSxx.addr, metadata !38, metadata !DIExpression()), !dbg !39
  store double** %newSyy, double*** %newSyy.addr, align 8
  call void @llvm.dbg.declare(metadata double*** %newSyy.addr, metadata !40, metadata !DIExpression()), !dbg !41
  %2 = load double**, double*** %newSxx.addr, align 8, !dbg !42
  %3 = load double**, double*** %newSyy.addr, align 8, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !43, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !44, metadata !DIExpression()), !dbg !34
  %4 = load i32, i32* %length.addr, align 4, !dbg !45
  %sub = sub nsw i32 %4, 1, !dbg !46
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !44, metadata !DIExpression()), !dbg !34
  %5 = load i32, i32* %.capture_expr., align 4, !dbg !46
  %sub2 = sub nsw i32 %5, 0, !dbg !42
  %add = add nsw i32 %sub2, 1, !dbg !42
  %div = sdiv i32 %add, 1, !dbg !42
  %sub3 = sub nsw i32 %div, 1, !dbg !42
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %i, metadata !47, metadata !DIExpression()), !dbg !34
  store i32 0, i32* %i, align 4, !dbg !48
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !46
  %cmp = icmp sle i32 0, %6, !dbg !42
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !42

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !49, metadata !DIExpression()), !dbg !34
  store i32 0, i32* %.omp.lb, align 4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !51, metadata !DIExpression()), !dbg !34
  %7 = load i32, i32* %.capture_expr.1, align 4, !dbg !42
  store i32 %7, i32* %.omp.ub, align 4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !52, metadata !DIExpression()), !dbg !34
  store i32 1, i32* %.omp.stride, align 4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !53, metadata !DIExpression()), !dbg !34
  store i32 0, i32* %.omp.is_last, align 4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !47, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !47, metadata !DIExpression()), !dbg !34
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !42
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !42
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !42
  %10 = load i32, i32* %9, align 4, !dbg !42
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !42
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !50
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !42
  %cmp6 = icmp sgt i32 %11, %12, !dbg !50
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !50

cond.true:                                        ; preds = %omp.precond.then
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !42
  br label %cond.end, !dbg !50

cond.false:                                       ; preds = %omp.precond.then
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !50
  br label %cond.end, !dbg !50

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !50
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !50
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !50
  store i32 %15, i32* %.omp.iv, align 4, !dbg !50
  br label %omp.inner.for.cond, !dbg !42

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !50
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !50
  %cmp7 = icmp sle i32 %16, %17, !dbg !42
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !42

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !50
  %mul = mul nsw i32 %18, 1, !dbg !48
  %add8 = add nsw i32 0, %mul, !dbg !48
  store i32 %add8, i32* %i4, align 4, !dbg !48
  %19 = load double*, double** %2, align 8, !dbg !54
  %20 = load i32, i32* %i4, align 4, !dbg !56
  %idxprom = sext i32 %20 to i64, !dbg !54
  %arrayidx = getelementptr inbounds double, double* %19, i64 %idxprom, !dbg !54
  store double 0.000000e+00, double* %arrayidx, align 8, !dbg !57
  %21 = load double*, double** %3, align 8, !dbg !58
  %22 = load i32, i32* %i4, align 4, !dbg !59
  %idxprom9 = sext i32 %22 to i64, !dbg !58
  %arrayidx10 = getelementptr inbounds double, double* %21, i64 %idxprom9, !dbg !58
  store double 0.000000e+00, double* %arrayidx10, align 8, !dbg !60
  br label %omp.body.continue, !dbg !61

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !62

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !50
  %add11 = add nsw i32 %23, 1, !dbg !42
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !42
  br label %omp.inner.for.cond, !dbg !62, !llvm.loop !63

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !62

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !62
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @2, i32 0, i32 0), i8** %24, align 8, !dbg !62
  %25 = load i32*, i32** %.global_tid..addr, align 8, !dbg !62
  %26 = load i32, i32* %25, align 4, !dbg !62
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %26), !dbg !62
  br label %omp.precond.end, !dbg !62

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %length, double** dereferenceable(8) %newSxx, double** dereferenceable(8) %newSyy) #2 !dbg !66 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %length.addr = alloca i64, align 8
  %newSxx.addr = alloca double**, align 8
  %newSyy.addr = alloca double**, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !70, metadata !DIExpression()), !dbg !71
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !72, metadata !DIExpression()), !dbg !71
  store i64 %length, i64* %length.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %length.addr, metadata !73, metadata !DIExpression()), !dbg !71
  store double** %newSxx, double*** %newSxx.addr, align 8
  call void @llvm.dbg.declare(metadata double*** %newSxx.addr, metadata !74, metadata !DIExpression()), !dbg !71
  store double** %newSyy, double*** %newSyy.addr, align 8
  call void @llvm.dbg.declare(metadata double*** %newSyy.addr, metadata !75, metadata !DIExpression()), !dbg !71
  %conv = bitcast i64* %length.addr to i32*, !dbg !76
  %0 = load double**, double*** %newSxx.addr, align 8, !dbg !76
  %1 = load double**, double*** %newSyy.addr, align 8, !dbg !76
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !76
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !76
  %4 = load i32, i32* %conv, align 8, !dbg !76
  %5 = load double**, double*** %newSxx.addr, align 8, !dbg !76
  %6 = load double**, double*** %newSyy.addr, align 8, !dbg !76
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32 %4, double** %5, double** %6) #5, !dbg !76
  ret void, !dbg !76
}

declare !callback !77 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !79 {
entry:
  %retval = alloca i32, align 4
  %length = alloca i32, align 4
  %newSxx = alloca double*, align 8
  %newSyy = alloca double*, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %length, metadata !82, metadata !DIExpression()), !dbg !83
  store i32 1000, i32* %length, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata double** %newSxx, metadata !84, metadata !DIExpression()), !dbg !85
  %0 = load i32, i32* %length, align 4, !dbg !86
  %conv = sext i32 %0 to i64, !dbg !86
  %mul = mul i64 %conv, 8, !dbg !87
  %call = call noalias i8* @malloc(i64 %mul) #5, !dbg !88
  %1 = bitcast i8* %call to double*, !dbg !88
  store double* %1, double** %newSxx, align 8, !dbg !85
  call void @llvm.dbg.declare(metadata double** %newSyy, metadata !89, metadata !DIExpression()), !dbg !90
  %2 = load i32, i32* %length, align 4, !dbg !91
  %conv1 = sext i32 %2 to i64, !dbg !91
  %mul2 = mul i64 %conv1, 8, !dbg !92
  %call3 = call noalias i8* @malloc(i64 %mul2) #5, !dbg !93
  %3 = bitcast i8* %call3 to double*, !dbg !93
  store double* %3, double** %newSyy, align 8, !dbg !90
  %4 = load double*, double** %newSxx, align 8, !dbg !94
  %5 = load double*, double** %newSyy, align 8, !dbg !95
  %6 = load i32, i32* %length, align 4, !dbg !96
  call void @foo(double* %4, double* %5, i32 %6), !dbg !97
  %7 = load double*, double** %newSxx, align 8, !dbg !98
  %8 = bitcast double* %7 to i8*, !dbg !98
  call void @free(i8* %8) #5, !dbg !99
  %9 = load double*, double** %newSyy, align 8, !dbg !100
  %10 = bitcast double* %9 to i8*, !dbg !100
  call void @free(i8* %10) #5, !dbg !101
  ret i32 0, !dbg !102
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare dso_local void @free(i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB067-restrictpointer1-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 57, type: !8, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !10, !14}
!10 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "real8", file: !1, line: 55, baseType: !13)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DILocalVariable(name: "newSxx", arg: 1, scope: !7, file: !1, line: 57, type: !10)
!16 = !DILocation(line: 57, column: 27, scope: !7)
!17 = !DILocalVariable(name: "newSyy", arg: 2, scope: !7, file: !1, line: 57, type: !10)
!18 = !DILocation(line: 57, column: 52, scope: !7)
!19 = !DILocalVariable(name: "length", arg: 3, scope: !7, file: !1, line: 57, type: !14)
!20 = !DILocation(line: 57, column: 64, scope: !7)
!21 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 59, type: !14)
!22 = !DILocation(line: 59, column: 7, scope: !7)
!23 = !DILocation(line: 61, column: 1, scope: !7)
!24 = !DILocation(line: 66, column: 1, scope: !7)
!25 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 62, type: !26, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28, !28, !14, !32, !32}
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!32 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !11, size: 64)
!33 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !25, type: !28, flags: DIFlagArtificial)
!34 = !DILocation(line: 0, scope: !25)
!35 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !25, type: !28, flags: DIFlagArtificial)
!36 = !DILocalVariable(name: "length", arg: 3, scope: !25, file: !1, line: 57, type: !14)
!37 = !DILocation(line: 57, column: 64, scope: !25)
!38 = !DILocalVariable(name: "newSxx", arg: 4, scope: !25, file: !1, line: 57, type: !32)
!39 = !DILocation(line: 57, column: 27, scope: !25)
!40 = !DILocalVariable(name: "newSyy", arg: 5, scope: !25, file: !1, line: 57, type: !32)
!41 = !DILocation(line: 57, column: 52, scope: !25)
!42 = !DILocation(line: 62, column: 3, scope: !25)
!43 = !DILocalVariable(name: ".omp.iv", scope: !25, type: !14, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".capture_expr.", scope: !25, type: !14, flags: DIFlagArtificial)
!45 = !DILocation(line: 62, column: 20, scope: !25)
!46 = !DILocation(line: 62, column: 27, scope: !25)
!47 = !DILocalVariable(name: "i", scope: !25, type: !14, flags: DIFlagArtificial)
!48 = !DILocation(line: 62, column: 32, scope: !25)
!49 = !DILocalVariable(name: ".omp.lb", scope: !25, type: !14, flags: DIFlagArtificial)
!50 = !DILocation(line: 62, column: 8, scope: !25)
!51 = !DILocalVariable(name: ".omp.ub", scope: !25, type: !14, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: ".omp.stride", scope: !25, type: !14, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: ".omp.is_last", scope: !25, type: !14, flags: DIFlagArtificial)
!54 = !DILocation(line: 63, column: 5, scope: !55)
!55 = distinct !DILexicalBlock(scope: !25, file: !1, line: 62, column: 40)
!56 = !DILocation(line: 63, column: 12, scope: !55)
!57 = !DILocation(line: 63, column: 15, scope: !55)
!58 = !DILocation(line: 64, column: 5, scope: !55)
!59 = !DILocation(line: 64, column: 12, scope: !55)
!60 = !DILocation(line: 64, column: 15, scope: !55)
!61 = !DILocation(line: 65, column: 3, scope: !55)
!62 = !DILocation(line: 61, column: 1, scope: !25)
!63 = distinct !{!63, !62, !64}
!64 = !DILocation(line: 61, column: 59, scope: !25)
!65 = !DILocation(line: 65, column: 3, scope: !25)
!66 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 62, type: !67, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !28, !28, !69, !32, !32}
!69 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!70 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !66, type: !28, flags: DIFlagArtificial)
!71 = !DILocation(line: 0, scope: !66)
!72 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !66, type: !28, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "length", arg: 3, scope: !66, type: !69, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "newSxx", arg: 4, scope: !66, type: !32, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "newSyy", arg: 5, scope: !66, type: !32, flags: DIFlagArtificial)
!76 = !DILocation(line: 62, column: 3, scope: !66)
!77 = !{!78}
!78 = !{i64 2, i64 -1, i64 -1, i1 true}
!79 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 68, type: !80, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!80 = !DISubroutineType(types: !81)
!81 = !{!14}
!82 = !DILocalVariable(name: "length", scope: !79, file: !1, line: 70, type: !14)
!83 = !DILocation(line: 70, column: 7, scope: !79)
!84 = !DILocalVariable(name: "newSxx", scope: !79, file: !1, line: 71, type: !11)
!85 = !DILocation(line: 71, column: 10, scope: !79)
!86 = !DILocation(line: 71, column: 27, scope: !79)
!87 = !DILocation(line: 71, column: 33, scope: !79)
!88 = !DILocation(line: 71, column: 19, scope: !79)
!89 = !DILocalVariable(name: "newSyy", scope: !79, file: !1, line: 72, type: !11)
!90 = !DILocation(line: 72, column: 10, scope: !79)
!91 = !DILocation(line: 72, column: 27, scope: !79)
!92 = !DILocation(line: 72, column: 33, scope: !79)
!93 = !DILocation(line: 72, column: 19, scope: !79)
!94 = !DILocation(line: 74, column: 7, scope: !79)
!95 = !DILocation(line: 74, column: 15, scope: !79)
!96 = !DILocation(line: 74, column: 23, scope: !79)
!97 = !DILocation(line: 74, column: 3, scope: !79)
!98 = !DILocation(line: 76, column: 9, scope: !79)
!99 = !DILocation(line: 76, column: 3, scope: !79)
!100 = !DILocation(line: 77, column: 9, scope: !79)
!101 = !DILocation(line: 77, column: 3, scope: !79)
!102 = !DILocation(line: 78, column: 3, scope: !79)
