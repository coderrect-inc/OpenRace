; ModuleID = 'DRB066-pointernoaliasing-orig-no.c'
source_filename = "DRB066-pointernoaliasing-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [49 x i8] c";DRB066-pointernoaliasing-orig-no.c;setup;56;1;;\00", align 1
@2 = private unnamed_addr constant [50 x i8] c";DRB066-pointernoaliasing-orig-no.c;setup;56;42;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup(i32 %N) #0 !dbg !10 {
entry:
  %N.addr = alloca i32, align 4
  %m_pdv_sum = alloca double*, align 8
  %m_nvol = alloca double*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 %N, i32* %N.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %N.addr, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata double** %m_pdv_sum, metadata !16, metadata !DIExpression()), !dbg !17
  %2 = load i32, i32* %N.addr, align 4, !dbg !18
  %conv = sext i32 %2 to i64, !dbg !18
  %mul = mul i64 8, %conv, !dbg !19
  %call = call noalias i8* @malloc(i64 %mul) #5, !dbg !20
  %3 = bitcast i8* %call to double*, !dbg !21
  store double* %3, double** %m_pdv_sum, align 8, !dbg !17
  call void @llvm.dbg.declare(metadata double** %m_nvol, metadata !22, metadata !DIExpression()), !dbg !23
  %4 = load i32, i32* %N.addr, align 4, !dbg !24
  %conv1 = sext i32 %4 to i64, !dbg !24
  %mul2 = mul i64 8, %conv1, !dbg !25
  %call3 = call noalias i8* @malloc(i64 %mul2) #5, !dbg !26
  %5 = bitcast i8* %call3 to double*, !dbg !27
  store double* %5, double** %m_nvol, align 8, !dbg !23
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !28
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !28
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %N.addr, double** %m_pdv_sum, double** %m_nvol), !dbg !28
  %7 = load double*, double** %m_pdv_sum, align 8, !dbg !29
  %8 = bitcast double* %7 to i8*, !dbg !29
  call void @free(i8* %8) #5, !dbg !30
  %9 = load double*, double** %m_nvol, align 8, !dbg !31
  %10 = bitcast double* %9 to i8*, !dbg !31
  call void @free(i8* %10) #5, !dbg !32
  ret void, !dbg !33
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, double** dereferenceable(8) %m_pdv_sum, double** dereferenceable(8) %m_nvol) #3 !dbg !34 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %m_pdv_sum.addr = alloca double**, align 8
  %m_nvol.addr = alloca double**, align 8
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
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !43, metadata !DIExpression()), !dbg !44
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !45, metadata !DIExpression()), !dbg !44
  store i32* %N, i32** %N.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !46, metadata !DIExpression()), !dbg !47
  store double** %m_pdv_sum, double*** %m_pdv_sum.addr, align 8
  call void @llvm.dbg.declare(metadata double*** %m_pdv_sum.addr, metadata !48, metadata !DIExpression()), !dbg !49
  store double** %m_nvol, double*** %m_nvol.addr, align 8
  call void @llvm.dbg.declare(metadata double*** %m_nvol.addr, metadata !50, metadata !DIExpression()), !dbg !51
  %2 = load i32*, i32** %N.addr, align 8, !dbg !52
  %3 = load double**, double*** %m_pdv_sum.addr, align 8, !dbg !52
  %4 = load double**, double*** %m_nvol.addr, align 8, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !53, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !54, metadata !DIExpression()), !dbg !44
  %5 = load i32, i32* %2, align 4, !dbg !55
  store i32 %5, i32* %.capture_expr., align 4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !54, metadata !DIExpression()), !dbg !44
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !55
  %sub = sub nsw i32 %6, 0, !dbg !52
  %sub2 = sub nsw i32 %sub, 1, !dbg !52
  %add = add nsw i32 %sub2, 1, !dbg !52
  %div = sdiv i32 %add, 1, !dbg !52
  %sub3 = sub nsw i32 %div, 1, !dbg !52
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %i, metadata !56, metadata !DIExpression()), !dbg !44
  store i32 0, i32* %i, align 4, !dbg !57
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !55
  %cmp = icmp slt i32 0, %7, !dbg !52
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !52

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !58, metadata !DIExpression()), !dbg !44
  store i32 0, i32* %.omp.lb, align 4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !60, metadata !DIExpression()), !dbg !44
  %8 = load i32, i32* %.capture_expr.1, align 4, !dbg !52
  store i32 %8, i32* %.omp.ub, align 4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !61, metadata !DIExpression()), !dbg !44
  store i32 1, i32* %.omp.stride, align 4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !62, metadata !DIExpression()), !dbg !44
  store i32 0, i32* %.omp.is_last, align 4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !56, metadata !DIExpression()), !dbg !44
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !52
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !52
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !52
  %11 = load i32, i32* %10, align 4, !dbg !52
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !52
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !59
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !52
  %cmp5 = icmp sgt i32 %12, %13, !dbg !59
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !59

cond.true:                                        ; preds = %omp.precond.then
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !52
  br label %cond.end, !dbg !59

cond.false:                                       ; preds = %omp.precond.then
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !59
  br label %cond.end, !dbg !59

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ], !dbg !59
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !59
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !59
  store i32 %16, i32* %.omp.iv, align 4, !dbg !59
  br label %omp.inner.for.cond, !dbg !52

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !59
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !59
  %cmp6 = icmp sle i32 %17, %18, !dbg !52
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !52

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !59
  %mul = mul nsw i32 %19, 1, !dbg !57
  %add7 = add nsw i32 0, %mul, !dbg !57
  store i32 %add7, i32* %i4, align 4, !dbg !57
  %20 = load double*, double** %3, align 8, !dbg !63
  %21 = load i32, i32* %i4, align 4, !dbg !65
  %idxprom = sext i32 %21 to i64, !dbg !63
  %arrayidx = getelementptr inbounds double, double* %20, i64 %idxprom, !dbg !63
  store double 0.000000e+00, double* %arrayidx, align 8, !dbg !66
  %22 = load i32, i32* %i4, align 4, !dbg !67
  %conv = sitofp i32 %22 to double, !dbg !67
  %mul8 = fmul double %conv, 2.500000e+00, !dbg !68
  %23 = load double*, double** %4, align 8, !dbg !69
  %24 = load i32, i32* %i4, align 4, !dbg !70
  %idxprom9 = sext i32 %24 to i64, !dbg !69
  %arrayidx10 = getelementptr inbounds double, double* %23, i64 %idxprom9, !dbg !69
  store double %mul8, double* %arrayidx10, align 8, !dbg !71
  br label %omp.body.continue, !dbg !72

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !73

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !59
  %add11 = add nsw i32 %25, 1, !dbg !52
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !52
  br label %omp.inner.for.cond, !dbg !73, !llvm.loop !74

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !73

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !73
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @2, i32 0, i32 0), i8** %26, align 8, !dbg !73
  %27 = load i32*, i32** %.global_tid..addr, align 8, !dbg !73
  %28 = load i32, i32* %27, align 4, !dbg !73
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %28), !dbg !73
  br label %omp.precond.end, !dbg !73

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, double** dereferenceable(8) %m_pdv_sum, double** dereferenceable(8) %m_nvol) #3 !dbg !77 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %m_pdv_sum.addr = alloca double**, align 8
  %m_nvol.addr = alloca double**, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !78, metadata !DIExpression()), !dbg !79
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !80, metadata !DIExpression()), !dbg !79
  store i32* %N, i32** %N.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !81, metadata !DIExpression()), !dbg !79
  store double** %m_pdv_sum, double*** %m_pdv_sum.addr, align 8
  call void @llvm.dbg.declare(metadata double*** %m_pdv_sum.addr, metadata !82, metadata !DIExpression()), !dbg !79
  store double** %m_nvol, double*** %m_nvol.addr, align 8
  call void @llvm.dbg.declare(metadata double*** %m_nvol.addr, metadata !83, metadata !DIExpression()), !dbg !79
  %0 = load i32*, i32** %N.addr, align 8, !dbg !84
  %1 = load double**, double*** %m_pdv_sum.addr, align 8, !dbg !84
  %2 = load double**, double*** %m_nvol.addr, align 8, !dbg !84
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !84
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !84
  %5 = load i32*, i32** %N.addr, align 8, !dbg !84
  %6 = load double**, double*** %m_pdv_sum.addr, align 8, !dbg !84
  %7 = load double**, double*** %m_nvol.addr, align 8, !dbg !84
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, double** %6, double** %7) #5, !dbg !84
  ret void, !dbg !84
}

declare !callback !85 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !87 {
entry:
  %N = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %N, metadata !90, metadata !DIExpression()), !dbg !91
  store i32 1000, i32* %N, align 4, !dbg !91
  %0 = load i32, i32* %N, align 4, !dbg !92
  call void @setup(i32 %0), !dbg !93
  ret i32 0, !dbg !94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB066-pointernoaliasing-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 10.0.1 "}
!10 = distinct !DISubprogram(name: "setup", scope: !1, file: !1, line: 51, type: !11, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DILocalVariable(name: "N", arg: 1, scope: !10, file: !1, line: 51, type: !13)
!15 = !DILocation(line: 51, column: 16, scope: !10)
!16 = !DILocalVariable(name: "m_pdv_sum", scope: !10, file: !1, line: 53, type: !4)
!17 = !DILocation(line: 53, column: 12, scope: !10)
!18 = !DILocation(line: 53, column: 61, scope: !10)
!19 = !DILocation(line: 53, column: 59, scope: !10)
!20 = !DILocation(line: 53, column: 35, scope: !10)
!21 = !DILocation(line: 53, column: 24, scope: !10)
!22 = !DILocalVariable(name: "m_nvol", scope: !10, file: !1, line: 54, type: !4)
!23 = !DILocation(line: 54, column: 12, scope: !10)
!24 = !DILocation(line: 54, column: 58, scope: !10)
!25 = !DILocation(line: 54, column: 56, scope: !10)
!26 = !DILocation(line: 54, column: 32, scope: !10)
!27 = !DILocation(line: 54, column: 21, scope: !10)
!28 = !DILocation(line: 56, column: 1, scope: !10)
!29 = !DILocation(line: 63, column: 8, scope: !10)
!30 = !DILocation(line: 63, column: 3, scope: !10)
!31 = !DILocation(line: 64, column: 8, scope: !10)
!32 = !DILocation(line: 64, column: 3, scope: !10)
!33 = !DILocation(line: 65, column: 1, scope: !10)
!34 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 57, type: !35, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37, !37, !41, !42, !42}
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!41 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!43 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !34, type: !37, flags: DIFlagArtificial)
!44 = !DILocation(line: 0, scope: !34)
!45 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !34, type: !37, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "N", arg: 3, scope: !34, file: !1, line: 51, type: !41)
!47 = !DILocation(line: 51, column: 16, scope: !34)
!48 = !DILocalVariable(name: "m_pdv_sum", arg: 4, scope: !34, file: !1, line: 53, type: !42)
!49 = !DILocation(line: 53, column: 12, scope: !34)
!50 = !DILocalVariable(name: "m_nvol", arg: 5, scope: !34, file: !1, line: 54, type: !42)
!51 = !DILocation(line: 54, column: 12, scope: !34)
!52 = !DILocation(line: 57, column: 3, scope: !34)
!53 = !DILocalVariable(name: ".omp.iv", scope: !34, type: !13, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: ".capture_expr.", scope: !34, type: !13, flags: DIFlagArtificial)
!55 = !DILocation(line: 57, column: 21, scope: !34)
!56 = !DILocalVariable(name: "i", scope: !34, type: !13, flags: DIFlagArtificial)
!57 = !DILocation(line: 57, column: 24, scope: !34)
!58 = !DILocalVariable(name: ".omp.lb", scope: !34, type: !13, flags: DIFlagArtificial)
!59 = !DILocation(line: 57, column: 8, scope: !34)
!60 = !DILocalVariable(name: ".omp.ub", scope: !34, type: !13, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".omp.stride", scope: !34, type: !13, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".omp.is_last", scope: !34, type: !13, flags: DIFlagArtificial)
!63 = !DILocation(line: 59, column: 5, scope: !64)
!64 = distinct !DILexicalBlock(scope: !34, file: !1, line: 58, column: 3)
!65 = !DILocation(line: 59, column: 16, scope: !64)
!66 = !DILocation(line: 59, column: 20, scope: !64)
!67 = !DILocation(line: 60, column: 21, scope: !64)
!68 = !DILocation(line: 60, column: 22, scope: !64)
!69 = !DILocation(line: 60, column: 5, scope: !64)
!70 = !DILocation(line: 60, column: 13, scope: !64)
!71 = !DILocation(line: 60, column: 19, scope: !64)
!72 = !DILocation(line: 61, column: 3, scope: !64)
!73 = !DILocation(line: 56, column: 1, scope: !34)
!74 = distinct !{!74, !73, !75}
!75 = !DILocation(line: 56, column: 42, scope: !34)
!76 = !DILocation(line: 61, column: 3, scope: !34)
!77 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 57, type: !35, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!78 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !77, type: !37, flags: DIFlagArtificial)
!79 = !DILocation(line: 0, scope: !77)
!80 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !77, type: !37, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: "N", arg: 3, scope: !77, type: !41, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "m_pdv_sum", arg: 4, scope: !77, type: !42, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: "m_nvol", arg: 5, scope: !77, type: !42, flags: DIFlagArtificial)
!84 = !DILocation(line: 57, column: 3, scope: !77)
!85 = !{!86}
!86 = !{i64 2, i64 -1, i64 -1, i1 true}
!87 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 67, type: !88, scopeLine: 68, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!88 = !DISubroutineType(types: !89)
!89 = !{!13}
!90 = !DILocalVariable(name: "N", scope: !87, file: !1, line: 69, type: !13)
!91 = !DILocation(line: 69, column: 7, scope: !87)
!92 = !DILocation(line: 70, column: 9, scope: !87)
!93 = !DILocation(line: 70, column: 3, scope: !87)
!94 = !DILocation(line: 71, column: 1, scope: !87)
