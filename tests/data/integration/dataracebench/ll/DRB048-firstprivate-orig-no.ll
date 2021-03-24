; ModuleID = 'DRB048-firstprivate-orig-no.c'
source_filename = "DRB048-firstprivate-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [42 x i8] c";DRB048-firstprivate-orig-no.c;foo;54;1;;\00", align 1
@2 = private unnamed_addr constant [43 x i8] c";DRB048-firstprivate-orig-no.c;foo;54;42;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@a = common dso_local global [100 x i32] zeroinitializer, align 16, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32* %a, i32 %n, i32 %g) #0 !dbg !14 {
entry:
  %a.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %g.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %g.casted = alloca i64, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 %g, i32* %g.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %g.addr, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !24, metadata !DIExpression()), !dbg !25
  %2 = load i32, i32* %g.addr, align 4, !dbg !26
  %conv = bitcast i64* %g.casted to i32*, !dbg !26
  store i32 %2, i32* %conv, align 4, !dbg !26
  %3 = load i64, i64* %g.casted, align 8, !dbg !26
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !26
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !26
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32**, i64)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %n.addr, i32** %a.addr, i64 %3), !dbg !26
  ret void, !dbg !27
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n, i32** dereferenceable(8) %a, i32 %g) #2 !dbg !28 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %a.addr = alloca i32**, align 8
  %g.addr = alloca i32, align 4
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !37, metadata !DIExpression()), !dbg !38
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !39, metadata !DIExpression()), !dbg !38
  store i32* %n, i32** %n.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !40, metadata !DIExpression()), !dbg !41
  store i32** %a, i32*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !42, metadata !DIExpression()), !dbg !43
  store i32 %g, i32* %g.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %g.addr, metadata !44, metadata !DIExpression()), !dbg !45
  %2 = load i32*, i32** %n.addr, align 8, !dbg !46
  %3 = load i32**, i32*** %a.addr, align 8, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !47, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !48, metadata !DIExpression()), !dbg !38
  %4 = load i32, i32* %2, align 4, !dbg !49
  store i32 %4, i32* %.capture_expr., align 4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !48, metadata !DIExpression()), !dbg !38
  %5 = load i32, i32* %.capture_expr., align 4, !dbg !49
  %sub = sub nsw i32 %5, 0, !dbg !46
  %sub2 = sub nsw i32 %sub, 1, !dbg !46
  %add = add nsw i32 %sub2, 1, !dbg !46
  %div = sdiv i32 %add, 1, !dbg !46
  %sub3 = sub nsw i32 %div, 1, !dbg !46
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %i, metadata !50, metadata !DIExpression()), !dbg !38
  store i32 0, i32* %i, align 4, !dbg !51
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !49
  %cmp = icmp slt i32 0, %6, !dbg !46
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !46

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !52, metadata !DIExpression()), !dbg !38
  store i32 0, i32* %.omp.lb, align 4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !54, metadata !DIExpression()), !dbg !38
  %7 = load i32, i32* %.capture_expr.1, align 4, !dbg !46
  store i32 %7, i32* %.omp.ub, align 4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !55, metadata !DIExpression()), !dbg !38
  store i32 1, i32* %.omp.stride, align 4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !56, metadata !DIExpression()), !dbg !38
  store i32 0, i32* %.omp.is_last, align 4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !50, metadata !DIExpression()), !dbg !38
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !46
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !46
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !46
  %10 = load i32, i32* %9, align 4, !dbg !46
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !46
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !53
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !46
  %cmp5 = icmp sgt i32 %11, %12, !dbg !53
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !53

cond.true:                                        ; preds = %omp.precond.then
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !46
  br label %cond.end, !dbg !53

cond.false:                                       ; preds = %omp.precond.then
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !53
  br label %cond.end, !dbg !53

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !53
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !53
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !53
  store i32 %15, i32* %.omp.iv, align 4, !dbg !53
  br label %omp.inner.for.cond, !dbg !46

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !53
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !53
  %cmp6 = icmp sle i32 %16, %17, !dbg !46
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !46

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !53
  %mul = mul nsw i32 %18, 1, !dbg !51
  %add7 = add nsw i32 0, %mul, !dbg !51
  store i32 %add7, i32* %i4, align 4, !dbg !51
  %19 = load i32*, i32** %3, align 8, !dbg !57
  %20 = load i32, i32* %i4, align 4, !dbg !59
  %idxprom = sext i32 %20 to i64, !dbg !57
  %arrayidx = getelementptr inbounds i32, i32* %19, i64 %idxprom, !dbg !57
  %21 = load i32, i32* %arrayidx, align 4, !dbg !57
  %22 = load i32, i32* %g.addr, align 4, !dbg !60
  %add8 = add nsw i32 %21, %22, !dbg !61
  %23 = load i32*, i32** %3, align 8, !dbg !62
  %24 = load i32, i32* %i4, align 4, !dbg !63
  %idxprom9 = sext i32 %24 to i64, !dbg !62
  %arrayidx10 = getelementptr inbounds i32, i32* %23, i64 %idxprom9, !dbg !62
  store i32 %add8, i32* %arrayidx10, align 4, !dbg !64
  br label %omp.body.continue, !dbg !65

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !66

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !53
  %add11 = add nsw i32 %25, 1, !dbg !46
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !46
  br label %omp.inner.for.cond, !dbg !66, !llvm.loop !67

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !66

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !66
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0), i8** %26, align 8, !dbg !66
  %27 = load i32*, i32** %.global_tid..addr, align 8, !dbg !66
  %28 = load i32, i32* %27, align 4, !dbg !66
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %28), !dbg !66
  br label %omp.precond.end, !dbg !66

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n, i32** dereferenceable(8) %a, i64 %g) #2 !dbg !70 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %a.addr = alloca i32**, align 8
  %g.addr = alloca i64, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !74, metadata !DIExpression()), !dbg !75
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !76, metadata !DIExpression()), !dbg !75
  store i32* %n, i32** %n.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !77, metadata !DIExpression()), !dbg !75
  store i32** %a, i32*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !78, metadata !DIExpression()), !dbg !75
  store i64 %g, i64* %g.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %g.addr, metadata !79, metadata !DIExpression()), !dbg !75
  %0 = load i32*, i32** %n.addr, align 8, !dbg !80
  %1 = load i32**, i32*** %a.addr, align 8, !dbg !80
  %conv = bitcast i64* %g.addr to i32*, !dbg !80
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !80
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !80
  %4 = load i32*, i32** %n.addr, align 8, !dbg !80
  %5 = load i32**, i32*** %a.addr, align 8, !dbg !80
  %6 = load i32, i32* %conv, align 8, !dbg !80
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32** %5, i32 %6) #4, !dbg !80
  ret void, !dbg !80
}

declare !callback !81 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !83 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @foo(i32* getelementptr inbounds ([100 x i32], [100 x i32]* @a, i64 0, i64 0), i32 100, i32 7), !dbg !86
  ret i32 0, !dbg !87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 61, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB048-firstprivate-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3200, elements: !8)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9}
!9 = !DISubrange(count: 100)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 10.0.1 "}
!14 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 51, type: !15, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !7, !7}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!18 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !3, line: 51, type: !17)
!19 = !DILocation(line: 51, column: 16, scope: !14)
!20 = !DILocalVariable(name: "n", arg: 2, scope: !14, file: !3, line: 51, type: !7)
!21 = !DILocation(line: 51, column: 23, scope: !14)
!22 = !DILocalVariable(name: "g", arg: 3, scope: !14, file: !3, line: 51, type: !7)
!23 = !DILocation(line: 51, column: 30, scope: !14)
!24 = !DILocalVariable(name: "i", scope: !14, file: !3, line: 53, type: !7)
!25 = !DILocation(line: 53, column: 7, scope: !14)
!26 = !DILocation(line: 54, column: 1, scope: !14)
!27 = !DILocation(line: 59, column: 1, scope: !14)
!28 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 55, type: !29, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !31, !35, !36, !7}
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!35 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !17, size: 64)
!37 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !28, type: !31, flags: DIFlagArtificial)
!38 = !DILocation(line: 0, scope: !28)
!39 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !28, type: !31, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: "n", arg: 3, scope: !28, file: !3, line: 51, type: !35)
!41 = !DILocation(line: 51, column: 23, scope: !28)
!42 = !DILocalVariable(name: "a", arg: 4, scope: !28, file: !3, line: 51, type: !36)
!43 = !DILocation(line: 51, column: 16, scope: !28)
!44 = !DILocalVariable(name: "g", arg: 5, scope: !28, file: !3, line: 51, type: !7)
!45 = !DILocation(line: 51, column: 30, scope: !28)
!46 = !DILocation(line: 55, column: 3, scope: !28)
!47 = !DILocalVariable(name: ".omp.iv", scope: !28, type: !7, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".capture_expr.", scope: !28, type: !7, flags: DIFlagArtificial)
!49 = !DILocation(line: 55, column: 14, scope: !28)
!50 = !DILocalVariable(name: "i", scope: !28, type: !7, flags: DIFlagArtificial)
!51 = !DILocation(line: 55, column: 16, scope: !28)
!52 = !DILocalVariable(name: ".omp.lb", scope: !28, type: !7, flags: DIFlagArtificial)
!53 = !DILocation(line: 55, column: 8, scope: !28)
!54 = !DILocalVariable(name: ".omp.ub", scope: !28, type: !7, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: ".omp.stride", scope: !28, type: !7, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: ".omp.is_last", scope: !28, type: !7, flags: DIFlagArtificial)
!57 = !DILocation(line: 57, column: 12, scope: !58)
!58 = distinct !DILexicalBlock(scope: !28, file: !3, line: 56, column: 3)
!59 = !DILocation(line: 57, column: 14, scope: !58)
!60 = !DILocation(line: 57, column: 17, scope: !58)
!61 = !DILocation(line: 57, column: 16, scope: !58)
!62 = !DILocation(line: 57, column: 5, scope: !58)
!63 = !DILocation(line: 57, column: 7, scope: !58)
!64 = !DILocation(line: 57, column: 10, scope: !58)
!65 = !DILocation(line: 58, column: 3, scope: !58)
!66 = !DILocation(line: 54, column: 1, scope: !28)
!67 = distinct !{!67, !66, !68}
!68 = !DILocation(line: 54, column: 42, scope: !28)
!69 = !DILocation(line: 58, column: 3, scope: !28)
!70 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 55, type: !71, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !31, !31, !35, !36, !73}
!73 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!74 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !70, type: !31, flags: DIFlagArtificial)
!75 = !DILocation(line: 0, scope: !70)
!76 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !70, type: !31, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "n", arg: 3, scope: !70, type: !35, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: "a", arg: 4, scope: !70, type: !36, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: "g", arg: 5, scope: !70, type: !73, flags: DIFlagArtificial)
!80 = !DILocation(line: 55, column: 3, scope: !70)
!81 = !{!82}
!82 = !{i64 2, i64 -1, i64 -1, i1 true}
!83 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 62, type: !84, scopeLine: 63, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!84 = !DISubroutineType(types: !85)
!85 = !{!7}
!86 = !DILocation(line: 64, column: 3, scope: !83)
!87 = !DILocation(line: 65, column: 3, scope: !83)
