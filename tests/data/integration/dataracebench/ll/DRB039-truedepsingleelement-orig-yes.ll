; ModuleID = 'DRB039-truedepsingleelement-orig-yes.c'
source_filename = "DRB039-truedepsingleelement-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [52 x i8] c";DRB039-truedepsingleelement-orig-yes.c;main;60;1;;\00", align 1
@2 = private unnamed_addr constant [53 x i8] c";DRB039-truedepsingleelement-orig-yes.c;main;60;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"a[500]=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca [1000 x i32], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %len, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 1000, i32* %len, align 4, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [1000 x i32]* %a, metadata !22, metadata !DIExpression()), !dbg !26
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* %a, i64 0, i64 0, !dbg !27
  store i32 2, i32* %arrayidx, align 16, !dbg !28
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !29
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !29
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [1000 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, [1000 x i32]* %a), !dbg !29
  %arrayidx1 = getelementptr inbounds [1000 x i32], [1000 x i32]* %a, i64 0, i64 500, !dbg !30
  %3 = load i32, i32* %arrayidx1, align 16, !dbg !30
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %3), !dbg !31
  ret i32 0, !dbg !32
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [1000 x i32]* dereferenceable(4000) %a) #2 !dbg !33 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [1000 x i32]*, align 8
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !42, metadata !DIExpression()), !dbg !43
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !44, metadata !DIExpression()), !dbg !43
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !45, metadata !DIExpression()), !dbg !46
  store [1000 x i32]* %a, [1000 x i32]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [1000 x i32]** %a.addr, metadata !47, metadata !DIExpression()), !dbg !48
  %2 = load i32*, i32** %len.addr, align 8, !dbg !49
  %3 = load [1000 x i32]*, [1000 x i32]** %a.addr, align 8, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !50, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !51, metadata !DIExpression()), !dbg !43
  %4 = load i32, i32* %2, align 4, !dbg !52
  store i32 %4, i32* %.capture_expr., align 4, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !51, metadata !DIExpression()), !dbg !43
  %5 = load i32, i32* %.capture_expr., align 4, !dbg !52
  %sub = sub nsw i32 %5, 0, !dbg !49
  %sub2 = sub nsw i32 %sub, 1, !dbg !49
  %add = add nsw i32 %sub2, 1, !dbg !49
  %div = sdiv i32 %add, 1, !dbg !49
  %sub3 = sub nsw i32 %div, 1, !dbg !49
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %i, metadata !53, metadata !DIExpression()), !dbg !43
  store i32 0, i32* %i, align 4, !dbg !54
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !52
  %cmp = icmp slt i32 0, %6, !dbg !49
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !49

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !55, metadata !DIExpression()), !dbg !43
  store i32 0, i32* %.omp.lb, align 4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !57, metadata !DIExpression()), !dbg !43
  %7 = load i32, i32* %.capture_expr.1, align 4, !dbg !49
  store i32 %7, i32* %.omp.ub, align 4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !58, metadata !DIExpression()), !dbg !43
  store i32 1, i32* %.omp.stride, align 4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !59, metadata !DIExpression()), !dbg !43
  store i32 0, i32* %.omp.is_last, align 4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !53, metadata !DIExpression()), !dbg !43
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !49
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !49
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !49
  %10 = load i32, i32* %9, align 4, !dbg !49
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !49
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !56
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !49
  %cmp5 = icmp sgt i32 %11, %12, !dbg !56
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !56

cond.true:                                        ; preds = %omp.precond.then
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !49
  br label %cond.end, !dbg !56

cond.false:                                       ; preds = %omp.precond.then
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !56
  br label %cond.end, !dbg !56

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !56
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !56
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !56
  store i32 %15, i32* %.omp.iv, align 4, !dbg !56
  br label %omp.inner.for.cond, !dbg !49

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !56
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !56
  %cmp6 = icmp sle i32 %16, %17, !dbg !49
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !49

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !56
  %mul = mul nsw i32 %18, 1, !dbg !54
  %add7 = add nsw i32 0, %mul, !dbg !54
  store i32 %add7, i32* %i4, align 4, !dbg !54
  %19 = load i32, i32* %i4, align 4, !dbg !60
  %idxprom = sext i32 %19 to i64, !dbg !61
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* %3, i64 0, i64 %idxprom, !dbg !61
  %20 = load i32, i32* %arrayidx, align 4, !dbg !61
  %arrayidx8 = getelementptr inbounds [1000 x i32], [1000 x i32]* %3, i64 0, i64 0, !dbg !62
  %21 = load i32, i32* %arrayidx8, align 16, !dbg !62
  %add9 = add nsw i32 %20, %21, !dbg !63
  %22 = load i32, i32* %i4, align 4, !dbg !64
  %idxprom10 = sext i32 %22 to i64, !dbg !65
  %arrayidx11 = getelementptr inbounds [1000 x i32], [1000 x i32]* %3, i64 0, i64 %idxprom10, !dbg !65
  store i32 %add9, i32* %arrayidx11, align 4, !dbg !66
  br label %omp.body.continue, !dbg !65

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !67

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !56
  %add12 = add nsw i32 %23, 1, !dbg !49
  store i32 %add12, i32* %.omp.iv, align 4, !dbg !49
  br label %omp.inner.for.cond, !dbg !67, !llvm.loop !68

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !67

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !67
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2, i32 0, i32 0), i8** %24, align 8, !dbg !67
  %25 = load i32*, i32** %.global_tid..addr, align 8, !dbg !67
  %26 = load i32, i32* %25, align 4, !dbg !67
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %26), !dbg !67
  br label %omp.precond.end, !dbg !67

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [1000 x i32]* dereferenceable(4000) %a) #2 !dbg !71 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [1000 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !72, metadata !DIExpression()), !dbg !73
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !74, metadata !DIExpression()), !dbg !73
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !75, metadata !DIExpression()), !dbg !73
  store [1000 x i32]* %a, [1000 x i32]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [1000 x i32]** %a.addr, metadata !76, metadata !DIExpression()), !dbg !73
  %0 = load i32*, i32** %len.addr, align 8, !dbg !77
  %1 = load [1000 x i32]*, [1000 x i32]** %a.addr, align 8, !dbg !77
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !77
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !77
  %4 = load i32*, i32** %len.addr, align 8, !dbg !77
  %5 = load [1000 x i32]*, [1000 x i32]** %a.addr, align 8, !dbg !77
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, [1000 x i32]* %5) #5, !dbg !77
  ret void, !dbg !77
}

declare !callback !78 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB039-truedepsingleelement-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !8, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 52, type: !10)
!15 = !DILocation(line: 52, column: 15, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 52, type: !11)
!17 = !DILocation(line: 52, column: 27, scope: !7)
!18 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 54, type: !10)
!19 = !DILocation(line: 54, column: 7, scope: !7)
!20 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 55, type: !10)
!21 = !DILocation(line: 55, column: 7, scope: !7)
!22 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 57, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 32000, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 1000)
!26 = !DILocation(line: 57, column: 7, scope: !7)
!27 = !DILocation(line: 58, column: 3, scope: !7)
!28 = !DILocation(line: 58, column: 8, scope: !7)
!29 = !DILocation(line: 60, column: 1, scope: !7)
!30 = !DILocation(line: 64, column: 25, scope: !7)
!31 = !DILocation(line: 64, column: 3, scope: !7)
!32 = !DILocation(line: 65, column: 3, scope: !7)
!33 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 61, type: !34, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36, !36, !40, !41}
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!40 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!42 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !33, type: !36, flags: DIFlagArtificial)
!43 = !DILocation(line: 0, scope: !33)
!44 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !33, type: !36, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: "len", arg: 3, scope: !33, file: !1, line: 54, type: !40)
!46 = !DILocation(line: 54, column: 7, scope: !33)
!47 = !DILocalVariable(name: "a", arg: 4, scope: !33, file: !1, line: 57, type: !41)
!48 = !DILocation(line: 57, column: 7, scope: !33)
!49 = !DILocation(line: 61, column: 3, scope: !33)
!50 = !DILocalVariable(name: ".omp.iv", scope: !33, type: !10, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: ".capture_expr.", scope: !33, type: !10, flags: DIFlagArtificial)
!52 = !DILocation(line: 61, column: 14, scope: !33)
!53 = !DILocalVariable(name: "i", scope: !33, type: !10, flags: DIFlagArtificial)
!54 = !DILocation(line: 61, column: 18, scope: !33)
!55 = !DILocalVariable(name: ".omp.lb", scope: !33, type: !10, flags: DIFlagArtificial)
!56 = !DILocation(line: 61, column: 8, scope: !33)
!57 = !DILocalVariable(name: ".omp.ub", scope: !33, type: !10, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: ".omp.stride", scope: !33, type: !10, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".omp.is_last", scope: !33, type: !10, flags: DIFlagArtificial)
!60 = !DILocation(line: 62, column: 12, scope: !33)
!61 = !DILocation(line: 62, column: 10, scope: !33)
!62 = !DILocation(line: 62, column: 15, scope: !33)
!63 = !DILocation(line: 62, column: 14, scope: !33)
!64 = !DILocation(line: 62, column: 7, scope: !33)
!65 = !DILocation(line: 62, column: 5, scope: !33)
!66 = !DILocation(line: 62, column: 9, scope: !33)
!67 = !DILocation(line: 60, column: 1, scope: !33)
!68 = distinct !{!68, !67, !69}
!69 = !DILocation(line: 60, column: 25, scope: !33)
!70 = !DILocation(line: 62, column: 18, scope: !33)
!71 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 61, type: !34, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!72 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !71, type: !36, flags: DIFlagArtificial)
!73 = !DILocation(line: 0, scope: !71)
!74 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !71, type: !36, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "len", arg: 3, scope: !71, type: !40, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "a", arg: 4, scope: !71, type: !41, flags: DIFlagArtificial)
!77 = !DILocation(line: 61, column: 3, scope: !71)
!78 = !{!79}
!79 = !{i64 2, i64 -1, i64 -1, i1 true}
