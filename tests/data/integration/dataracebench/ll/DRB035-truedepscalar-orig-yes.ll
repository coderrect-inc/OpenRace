; ModuleID = 'DRB035-truedepscalar-orig-yes.c'
source_filename = "DRB035-truedepscalar-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [45 x i8] c";DRB035-truedepscalar-orig-yes.c;main;63;1;;\00", align 1
@2 = private unnamed_addr constant [46 x i8] c";DRB035-truedepscalar-orig-yes.c;main;63;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"a[50]=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %len = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 10, i32* %tmp, align 4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %len, metadata !23, metadata !DIExpression()), !dbg !24
  store i32 100, i32* %len, align 4, !dbg !24
  call void @llvm.dbg.declare(metadata [100 x i32]* %a, metadata !25, metadata !DIExpression()), !dbg !29
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !30
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !30
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [100 x i32]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, [100 x i32]* %a, i32* %tmp), !dbg !30
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 50, !dbg !31
  %3 = load i32, i32* %arrayidx, align 8, !dbg !31
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %3), !dbg !32
  ret i32 0, !dbg !33
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [100 x i32]* dereferenceable(400) %a, i32* dereferenceable(4) %tmp) #2 !dbg !34 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  %tmp.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.2 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i5 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !43, metadata !DIExpression()), !dbg !44
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !45, metadata !DIExpression()), !dbg !44
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !46, metadata !DIExpression()), !dbg !47
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !48, metadata !DIExpression()), !dbg !49
  store i32* %tmp, i32** %tmp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %tmp.addr, metadata !50, metadata !DIExpression()), !dbg !51
  %2 = load i32*, i32** %len.addr, align 8, !dbg !52
  %3 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !52
  %4 = load i32*, i32** %tmp.addr, align 8, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !53, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !54, metadata !DIExpression()), !dbg !44
  %5 = load i32, i32* %2, align 4, !dbg !55
  store i32 %5, i32* %.capture_expr., align 4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.2, metadata !54, metadata !DIExpression()), !dbg !44
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !55
  %sub = sub nsw i32 %6, 0, !dbg !52
  %sub3 = sub nsw i32 %sub, 1, !dbg !52
  %add = add nsw i32 %sub3, 1, !dbg !52
  %div = sdiv i32 %add, 1, !dbg !52
  %sub4 = sub nsw i32 %div, 1, !dbg !52
  store i32 %sub4, i32* %.capture_expr.2, align 4, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %i, metadata !56, metadata !DIExpression()), !dbg !44
  store i32 0, i32* %i, align 4, !dbg !57
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !55
  %cmp = icmp slt i32 0, %7, !dbg !52
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !52

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !58, metadata !DIExpression()), !dbg !44
  store i32 0, i32* %.omp.lb, align 4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !60, metadata !DIExpression()), !dbg !44
  %8 = load i32, i32* %.capture_expr.2, align 4, !dbg !52
  store i32 %8, i32* %.omp.ub, align 4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !61, metadata !DIExpression()), !dbg !44
  store i32 1, i32* %.omp.stride, align 4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !62, metadata !DIExpression()), !dbg !44
  store i32 0, i32* %.omp.is_last, align 4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !56, metadata !DIExpression()), !dbg !44
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !52
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !52
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !52
  %11 = load i32, i32* %10, align 4, !dbg !52
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !52
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !59
  %13 = load i32, i32* %.capture_expr.2, align 4, !dbg !52
  %cmp6 = icmp sgt i32 %12, %13, !dbg !59
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !59

cond.true:                                        ; preds = %omp.precond.then
  %14 = load i32, i32* %.capture_expr.2, align 4, !dbg !52
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
  %cmp7 = icmp sle i32 %17, %18, !dbg !52
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !52

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !59
  %mul = mul nsw i32 %19, 1, !dbg !57
  %add8 = add nsw i32 0, %mul, !dbg !57
  store i32 %add8, i32* %i5, align 4, !dbg !57
  %20 = load i32, i32* %4, align 4, !dbg !63
  %21 = load i32, i32* %i5, align 4, !dbg !65
  %idxprom = sext i32 %21 to i64, !dbg !66
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %idxprom, !dbg !66
  store i32 %20, i32* %arrayidx, align 4, !dbg !67
  %22 = load i32, i32* %i5, align 4, !dbg !68
  %idxprom9 = sext i32 %22 to i64, !dbg !69
  %arrayidx10 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %idxprom9, !dbg !69
  %23 = load i32, i32* %arrayidx10, align 4, !dbg !69
  %24 = load i32, i32* %i5, align 4, !dbg !70
  %add11 = add nsw i32 %23, %24, !dbg !71
  store i32 %add11, i32* %4, align 4, !dbg !72
  br label %omp.body.continue, !dbg !73

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !74

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !59
  %add12 = add nsw i32 %25, 1, !dbg !52
  store i32 %add12, i32* %.omp.iv, align 4, !dbg !52
  br label %omp.inner.for.cond, !dbg !74, !llvm.loop !75

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !74

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !74
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2, i32 0, i32 0), i8** %26, align 8, !dbg !74
  %27 = load i32*, i32** %.global_tid..addr, align 8, !dbg !74
  %28 = load i32, i32* %27, align 4, !dbg !74
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %28), !dbg !74
  br label %omp.precond.end, !dbg !74

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [100 x i32]* dereferenceable(400) %a, i32* dereferenceable(4) %tmp) #2 !dbg !78 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  %tmp.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !79, metadata !DIExpression()), !dbg !80
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !81, metadata !DIExpression()), !dbg !80
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !82, metadata !DIExpression()), !dbg !80
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !83, metadata !DIExpression()), !dbg !80
  store i32* %tmp, i32** %tmp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %tmp.addr, metadata !84, metadata !DIExpression()), !dbg !80
  %0 = load i32*, i32** %len.addr, align 8, !dbg !85
  %1 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !85
  %2 = load i32*, i32** %tmp.addr, align 8, !dbg !85
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !85
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !85
  %5 = load i32*, i32** %len.addr, align 8, !dbg !85
  %6 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !85
  %7 = load i32*, i32** %tmp.addr, align 8, !dbg !85
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, [100 x i32]* %6, i32* %7) #5, !dbg !85
  ret void, !dbg !85
}

declare !callback !86 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "DRB035-truedepscalar-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !8, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 54, type: !10)
!15 = !DILocation(line: 54, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 54, type: !11)
!17 = !DILocation(line: 54, column: 26, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 56, type: !10)
!19 = !DILocation(line: 56, column: 7, scope: !7)
!20 = !DILocalVariable(name: "tmp", scope: !7, file: !1, line: 57, type: !10)
!21 = !DILocation(line: 57, column: 7, scope: !7)
!22 = !DILocation(line: 58, column: 7, scope: !7)
!23 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 59, type: !10)
!24 = !DILocation(line: 59, column: 7, scope: !7)
!25 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 61, type: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 3200, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 100)
!29 = !DILocation(line: 61, column: 7, scope: !7)
!30 = !DILocation(line: 63, column: 1, scope: !7)
!31 = !DILocation(line: 70, column: 24, scope: !7)
!32 = !DILocation(line: 70, column: 3, scope: !7)
!33 = !DILocation(line: 71, column: 3, scope: !7)
!34 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 64, type: !35, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37, !37, !41, !42, !41}
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!41 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !26, size: 64)
!43 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !34, type: !37, flags: DIFlagArtificial)
!44 = !DILocation(line: 0, scope: !34)
!45 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !34, type: !37, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "len", arg: 3, scope: !34, file: !1, line: 59, type: !41)
!47 = !DILocation(line: 59, column: 7, scope: !34)
!48 = !DILocalVariable(name: "a", arg: 4, scope: !34, file: !1, line: 61, type: !42)
!49 = !DILocation(line: 61, column: 7, scope: !34)
!50 = !DILocalVariable(name: "tmp", arg: 5, scope: !34, file: !1, line: 57, type: !41)
!51 = !DILocation(line: 57, column: 7, scope: !34)
!52 = !DILocation(line: 64, column: 3, scope: !34)
!53 = !DILocalVariable(name: ".omp.iv", scope: !34, type: !10, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: ".capture_expr.", scope: !34, type: !10, flags: DIFlagArtificial)
!55 = !DILocation(line: 64, column: 14, scope: !34)
!56 = !DILocalVariable(name: "i", scope: !34, type: !10, flags: DIFlagArtificial)
!57 = !DILocation(line: 64, column: 18, scope: !34)
!58 = !DILocalVariable(name: ".omp.lb", scope: !34, type: !10, flags: DIFlagArtificial)
!59 = !DILocation(line: 64, column: 8, scope: !34)
!60 = !DILocalVariable(name: ".omp.ub", scope: !34, type: !10, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".omp.stride", scope: !34, type: !10, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".omp.is_last", scope: !34, type: !10, flags: DIFlagArtificial)
!63 = !DILocation(line: 66, column: 12, scope: !64)
!64 = distinct !DILexicalBlock(scope: !34, file: !1, line: 65, column: 3)
!65 = !DILocation(line: 66, column: 7, scope: !64)
!66 = !DILocation(line: 66, column: 5, scope: !64)
!67 = !DILocation(line: 66, column: 10, scope: !64)
!68 = !DILocation(line: 67, column: 12, scope: !64)
!69 = !DILocation(line: 67, column: 10, scope: !64)
!70 = !DILocation(line: 67, column: 15, scope: !64)
!71 = !DILocation(line: 67, column: 14, scope: !64)
!72 = !DILocation(line: 67, column: 9, scope: !64)
!73 = !DILocation(line: 68, column: 3, scope: !64)
!74 = !DILocation(line: 63, column: 1, scope: !34)
!75 = distinct !{!75, !74, !76}
!76 = !DILocation(line: 63, column: 25, scope: !34)
!77 = !DILocation(line: 68, column: 3, scope: !34)
!78 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 64, type: !35, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!79 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !78, type: !37, flags: DIFlagArtificial)
!80 = !DILocation(line: 0, scope: !78)
!81 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !78, type: !37, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "len", arg: 3, scope: !78, type: !41, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: "a", arg: 4, scope: !78, type: !42, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: "tmp", arg: 5, scope: !78, type: !41, flags: DIFlagArtificial)
!85 = !DILocation(line: 64, column: 3, scope: !78)
!86 = !{!87}
!87 = !{i64 2, i64 -1, i64 -1, i1 true}
