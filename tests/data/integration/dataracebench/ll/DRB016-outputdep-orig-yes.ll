; ModuleID = 'DRB016-outputdep-orig-yes.c'
source_filename = "DRB016-outputdep-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [41 x i8] c";DRB016-outputdep-orig-yes.c;main;70;1;;\00", align 1
@a = common dso_local global [100 x i32] zeroinitializer, align 16, !dbg !0
@2 = private unnamed_addr constant [42 x i8] c";DRB016-outputdep-orig-yes.c;main;70;26;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"x=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
entry:
  %retval = alloca i32, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %len, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 100, i32* %len, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %x, metadata !21, metadata !DIExpression()), !dbg !22
  store i32 10, i32* %x, align 4, !dbg !22
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !23
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !23
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i32* %x), !dbg !23
  %3 = load i32, i32* %x, align 4, !dbg !24
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %3), !dbg !25
  ret i32 0, !dbg !26
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %x) #2 !dbg !27 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !35, metadata !DIExpression()), !dbg !36
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !37, metadata !DIExpression()), !dbg !36
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !38, metadata !DIExpression()), !dbg !39
  store i32* %x, i32** %x.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !40, metadata !DIExpression()), !dbg !41
  %2 = load i32*, i32** %len.addr, align 8, !dbg !42
  %3 = load i32*, i32** %x.addr, align 8, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !43, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !44, metadata !DIExpression()), !dbg !36
  %4 = load i32, i32* %2, align 4, !dbg !45
  store i32 %4, i32* %.capture_expr., align 4, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !44, metadata !DIExpression()), !dbg !36
  %5 = load i32, i32* %.capture_expr., align 4, !dbg !45
  %sub = sub nsw i32 %5, 0, !dbg !42
  %sub2 = sub nsw i32 %sub, 1, !dbg !42
  %add = add nsw i32 %sub2, 1, !dbg !42
  %div = sdiv i32 %add, 1, !dbg !42
  %sub3 = sub nsw i32 %div, 1, !dbg !42
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %i, metadata !46, metadata !DIExpression()), !dbg !36
  store i32 0, i32* %i, align 4, !dbg !47
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !45
  %cmp = icmp slt i32 0, %6, !dbg !42
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !42

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !48, metadata !DIExpression()), !dbg !36
  store i32 0, i32* %.omp.lb, align 4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !50, metadata !DIExpression()), !dbg !36
  %7 = load i32, i32* %.capture_expr.1, align 4, !dbg !42
  store i32 %7, i32* %.omp.ub, align 4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !51, metadata !DIExpression()), !dbg !36
  store i32 1, i32* %.omp.stride, align 4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !52, metadata !DIExpression()), !dbg !36
  store i32 0, i32* %.omp.is_last, align 4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !46, metadata !DIExpression()), !dbg !36
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !42
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !42
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !42
  %10 = load i32, i32* %9, align 4, !dbg !42
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !42
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !49
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !42
  %cmp5 = icmp sgt i32 %11, %12, !dbg !49
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !49

cond.true:                                        ; preds = %omp.precond.then
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !42
  br label %cond.end, !dbg !49

cond.false:                                       ; preds = %omp.precond.then
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !49
  br label %cond.end, !dbg !49

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !49
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !49
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !49
  store i32 %15, i32* %.omp.iv, align 4, !dbg !49
  br label %omp.inner.for.cond, !dbg !42

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !49
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !49
  %cmp6 = icmp sle i32 %16, %17, !dbg !42
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !42

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !49
  %mul = mul nsw i32 %18, 1, !dbg !47
  %add7 = add nsw i32 0, %mul, !dbg !47
  store i32 %add7, i32* %i4, align 4, !dbg !47
  %19 = load i32, i32* %3, align 4, !dbg !53
  %20 = load i32, i32* %i4, align 4, !dbg !55
  %idxprom = sext i32 %20 to i64, !dbg !56
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom, !dbg !56
  store i32 %19, i32* %arrayidx, align 4, !dbg !57
  %21 = load i32, i32* %i4, align 4, !dbg !58
  store i32 %21, i32* %3, align 4, !dbg !59
  br label %omp.body.continue, !dbg !60

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !61

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !49
  %add8 = add nsw i32 %22, 1, !dbg !42
  store i32 %add8, i32* %.omp.iv, align 4, !dbg !42
  br label %omp.inner.for.cond, !dbg !61, !llvm.loop !62

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !61

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !61
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2, i32 0, i32 0), i8** %23, align 8, !dbg !61
  %24 = load i32*, i32** %.global_tid..addr, align 8, !dbg !61
  %25 = load i32, i32* %24, align 4, !dbg !61
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %25), !dbg !61
  br label %omp.precond.end, !dbg !61

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %x) #2 !dbg !65 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !66, metadata !DIExpression()), !dbg !67
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !68, metadata !DIExpression()), !dbg !67
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !69, metadata !DIExpression()), !dbg !67
  store i32* %x, i32** %x.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !70, metadata !DIExpression()), !dbg !67
  %0 = load i32*, i32** %len.addr, align 8, !dbg !71
  %1 = load i32*, i32** %x.addr, align 8, !dbg !71
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !71
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !71
  %4 = load i32*, i32** %len.addr, align 8, !dbg !71
  %5 = load i32*, i32** %x.addr, align 8, !dbg !71
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #5, !dbg !71
  ret void, !dbg !71
}

declare !callback !72 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 63, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB016-outputdep-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
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
!14 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 65, type: !15, scopeLine: 66, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!7}
!17 = !DILocalVariable(name: "len", scope: !14, file: !3, line: 67, type: !7)
!18 = !DILocation(line: 67, column: 7, scope: !14)
!19 = !DILocalVariable(name: "i", scope: !14, file: !3, line: 68, type: !7)
!20 = !DILocation(line: 68, column: 7, scope: !14)
!21 = !DILocalVariable(name: "x", scope: !14, file: !3, line: 68, type: !7)
!22 = !DILocation(line: 68, column: 9, scope: !14)
!23 = !DILocation(line: 70, column: 1, scope: !14)
!24 = !DILocation(line: 76, column: 17, scope: !14)
!25 = !DILocation(line: 76, column: 3, scope: !14)
!26 = !DILocation(line: 77, column: 3, scope: !14)
!27 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 71, type: !28, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !30, !34, !34}
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!34 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!35 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !27, type: !30, flags: DIFlagArtificial)
!36 = !DILocation(line: 0, scope: !27)
!37 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !27, type: !30, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: "len", arg: 3, scope: !27, file: !3, line: 67, type: !34)
!39 = !DILocation(line: 67, column: 7, scope: !27)
!40 = !DILocalVariable(name: "x", arg: 4, scope: !27, file: !3, line: 68, type: !34)
!41 = !DILocation(line: 68, column: 9, scope: !27)
!42 = !DILocation(line: 71, column: 3, scope: !27)
!43 = !DILocalVariable(name: ".omp.iv", scope: !27, type: !7, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".capture_expr.", scope: !27, type: !7, flags: DIFlagArtificial)
!45 = !DILocation(line: 71, column: 14, scope: !27)
!46 = !DILocalVariable(name: "i", scope: !27, type: !7, flags: DIFlagArtificial)
!47 = !DILocation(line: 71, column: 18, scope: !27)
!48 = !DILocalVariable(name: ".omp.lb", scope: !27, type: !7, flags: DIFlagArtificial)
!49 = !DILocation(line: 71, column: 8, scope: !27)
!50 = !DILocalVariable(name: ".omp.ub", scope: !27, type: !7, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: ".omp.stride", scope: !27, type: !7, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: ".omp.is_last", scope: !27, type: !7, flags: DIFlagArtificial)
!53 = !DILocation(line: 73, column: 12, scope: !54)
!54 = distinct !DILexicalBlock(scope: !27, file: !3, line: 72, column: 3)
!55 = !DILocation(line: 73, column: 7, scope: !54)
!56 = !DILocation(line: 73, column: 5, scope: !54)
!57 = !DILocation(line: 73, column: 10, scope: !54)
!58 = !DILocation(line: 74, column: 7, scope: !54)
!59 = !DILocation(line: 74, column: 6, scope: !54)
!60 = !DILocation(line: 75, column: 3, scope: !54)
!61 = !DILocation(line: 70, column: 1, scope: !27)
!62 = distinct !{!62, !61, !63}
!63 = !DILocation(line: 70, column: 26, scope: !27)
!64 = !DILocation(line: 75, column: 3, scope: !27)
!65 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 71, type: !28, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!66 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !65, type: !30, flags: DIFlagArtificial)
!67 = !DILocation(line: 0, scope: !65)
!68 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !65, type: !30, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: "len", arg: 3, scope: !65, type: !34, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: "x", arg: 4, scope: !65, type: !34, flags: DIFlagArtificial)
!71 = !DILocation(line: 71, column: 3, scope: !65)
!72 = !{!73}
!73 = !{i64 2, i64 -1, i64 -1, i1 true}
