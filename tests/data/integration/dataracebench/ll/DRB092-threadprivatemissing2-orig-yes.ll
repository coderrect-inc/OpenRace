; ModuleID = 'DRB092-threadprivatemissing2-orig-yes.c'
source_filename = "DRB092-threadprivatemissing2-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [53 x i8] c";DRB092-threadprivatemissing2-orig-yes.c;main;65;1;;\00", align 1
@sum0 = dso_local global i32 0, align 4, !dbg !0
@2 = private unnamed_addr constant [54 x i8] c";DRB092-threadprivatemissing2-orig-yes.c;main;65;16;;\00", align 1
@3 = private unnamed_addr constant [53 x i8] c";DRB092-threadprivatemissing2-orig-yes.c;main;70;1;;\00", align 1
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [53 x i8] c";DRB092-threadprivatemissing2-orig-yes.c;main;63;1;;\00", align 1
@sum1 = dso_local global i32 0, align 4, !dbg !6
@.str.1 = private unnamed_addr constant [17 x i8] c"sum=%d; sum1=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 0, i32* %sum, align 4, !dbg !19
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !20
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @5, i32 0, i32 0), i8** %2, align 8, !dbg !20
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %sum), !dbg !20
  store i32 1, i32* %i, align 4, !dbg !21
  br label %for.cond, !dbg !23

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !24
  %cmp = icmp sle i32 %3, 1000, !dbg !26
  br i1 %cmp, label %for.body, label %for.end, !dbg !27

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* @sum1, align 4, !dbg !28
  %5 = load i32, i32* %i, align 4, !dbg !30
  %add = add nsw i32 %4, %5, !dbg !31
  store i32 %add, i32* @sum1, align 4, !dbg !32
  br label %for.inc, !dbg !33

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !34
  %inc = add nsw i32 %6, 1, !dbg !34
  store i32 %inc, i32* %i, align 4, !dbg !34
  br label %for.cond, !dbg !35, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %sum, align 4, !dbg !38
  %8 = load i32, i32* @sum1, align 4, !dbg !39
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 %8), !dbg !40
  ret i32 0, !dbg !41
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %sum) #2 !dbg !42 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !50, metadata !DIExpression()), !dbg !51
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !52, metadata !DIExpression()), !dbg !51
  store i32* %sum, i32** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !53, metadata !DIExpression()), !dbg !54
  %2 = load i32*, i32** %sum.addr, align 8, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !56, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !60, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %.omp.lb, align 4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !62, metadata !DIExpression()), !dbg !59
  store i32 999, i32* %.omp.ub, align 4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !63, metadata !DIExpression()), !dbg !59
  store i32 1, i32* %.omp.stride, align 4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !64, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %.omp.is_last, align 4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %i, metadata !65, metadata !DIExpression()), !dbg !59
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !66
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !66
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !66
  %5 = load i32, i32* %4, align 4, !dbg !66
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !66
  %6 = load i32, i32* %.omp.ub, align 4, !dbg !61
  %cmp = icmp sgt i32 %6, 999, !dbg !61
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !61

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !61

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %.omp.ub, align 4, !dbg !61
  br label %cond.end, !dbg !61

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 999, %cond.true ], [ %7, %cond.false ], !dbg !61
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !61
  %8 = load i32, i32* %.omp.lb, align 4, !dbg !61
  store i32 %8, i32* %.omp.iv, align 4, !dbg !61
  br label %omp.inner.for.cond, !dbg !66

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %9 = load i32, i32* %.omp.iv, align 4, !dbg !61
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !61
  %cmp1 = icmp sle i32 %9, %10, !dbg !67
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !66

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !61
  %mul = mul nsw i32 %11, 1, !dbg !68
  %add = add nsw i32 1, %mul, !dbg !68
  store i32 %add, i32* %i, align 4, !dbg !68
  %12 = load i32, i32* @sum0, align 4, !dbg !69
  %13 = load i32, i32* %i, align 4, !dbg !71
  %add2 = add nsw i32 %12, %13, !dbg !72
  store i32 %add2, i32* @sum0, align 4, !dbg !73
  br label %omp.body.continue, !dbg !74

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !75

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !61
  %add3 = add nsw i32 %14, 1, !dbg !67
  store i32 %add3, i32* %.omp.iv, align 4, !dbg !67
  br label %omp.inner.for.cond, !dbg !75, !llvm.loop !76

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !75

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !75
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @2, i32 0, i32 0), i8** %15, align 8, !dbg !75
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !75
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !77
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1, i32 0, i32 0), i8** %16, align 8, !dbg !77
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !77
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !78
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @3, i32 0, i32 0), i8** %17, align 8, !dbg !78
  call void @__kmpc_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %5, [8 x i32]* @.gomp_critical_user_.var), !dbg !78
  %18 = load i32, i32* %2, align 4, !dbg !79
  %19 = load i32, i32* @sum0, align 4, !dbg !82
  %add4 = add nsw i32 %18, %19, !dbg !83
  store i32 %add4, i32* %2, align 4, !dbg !84
  call void @__kmpc_end_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %5, [8 x i32]* @.gomp_critical_user_.var), !dbg !85
  ret void, !dbg !86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %sum) #2 !dbg !87 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !88, metadata !DIExpression()), !dbg !89
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !90, metadata !DIExpression()), !dbg !89
  store i32* %sum, i32** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !91, metadata !DIExpression()), !dbg !89
  %0 = load i32*, i32** %sum.addr, align 8, !dbg !92
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !92
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !92
  %3 = load i32*, i32** %sum.addr, align 8, !dbg !92
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !92
  ret void, !dbg !92
}

declare !callback !93 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sum0", scope: !2, file: !3, line: 57, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB092-threadprivatemissing2-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "sum1", scope: !2, file: !3, line: 57, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 10.0.1 "}
!13 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 60, type: !14, scopeLine: 61, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!14 = !DISubroutineType(types: !15)
!15 = !{!8}
!16 = !DILocalVariable(name: "i", scope: !13, file: !3, line: 62, type: !8)
!17 = !DILocation(line: 62, column: 7, scope: !13)
!18 = !DILocalVariable(name: "sum", scope: !13, file: !3, line: 62, type: !8)
!19 = !DILocation(line: 62, column: 10, scope: !13)
!20 = !DILocation(line: 63, column: 1, scope: !13)
!21 = !DILocation(line: 76, column: 9, scope: !22)
!22 = distinct !DILexicalBlock(scope: !13, file: !3, line: 76, column: 3)
!23 = !DILocation(line: 76, column: 8, scope: !22)
!24 = !DILocation(line: 76, column: 12, scope: !25)
!25 = distinct !DILexicalBlock(scope: !22, file: !3, line: 76, column: 3)
!26 = !DILocation(line: 76, column: 13, scope: !25)
!27 = !DILocation(line: 76, column: 3, scope: !22)
!28 = !DILocation(line: 78, column: 10, scope: !29)
!29 = distinct !DILexicalBlock(scope: !25, file: !3, line: 77, column: 3)
!30 = !DILocation(line: 78, column: 15, scope: !29)
!31 = !DILocation(line: 78, column: 14, scope: !29)
!32 = !DILocation(line: 78, column: 9, scope: !29)
!33 = !DILocation(line: 79, column: 3, scope: !29)
!34 = !DILocation(line: 76, column: 21, scope: !25)
!35 = !DILocation(line: 76, column: 3, scope: !25)
!36 = distinct !{!36, !27, !37}
!37 = !DILocation(line: 79, column: 3, scope: !22)
!38 = !DILocation(line: 80, column: 30, scope: !13)
!39 = !DILocation(line: 80, column: 34, scope: !13)
!40 = !DILocation(line: 80, column: 3, scope: !13)
!41 = !DILocation(line: 82, column: 3, scope: !13)
!42 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 64, type: !43, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !45, !45, !49}
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!49 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!50 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !42, type: !45, flags: DIFlagArtificial)
!51 = !DILocation(line: 0, scope: !42)
!52 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !42, type: !45, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: "sum", arg: 3, scope: !42, file: !3, line: 62, type: !49)
!54 = !DILocation(line: 62, column: 10, scope: !42)
!55 = !DILocation(line: 64, column: 3, scope: !42)
!56 = !DILocalVariable(name: ".omp.iv", scope: !57, type: !8, flags: DIFlagArtificial)
!57 = distinct !DILexicalBlock(scope: !58, file: !3, line: 65, column: 1)
!58 = distinct !DILexicalBlock(scope: !42, file: !3, line: 64, column: 3)
!59 = !DILocation(line: 0, scope: !57)
!60 = !DILocalVariable(name: ".omp.lb", scope: !57, type: !8, flags: DIFlagArtificial)
!61 = !DILocation(line: 66, column: 10, scope: !57)
!62 = !DILocalVariable(name: ".omp.ub", scope: !57, type: !8, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: ".omp.stride", scope: !57, type: !8, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".omp.is_last", scope: !57, type: !8, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: "i", scope: !57, type: !8, flags: DIFlagArtificial)
!66 = !DILocation(line: 65, column: 1, scope: !58)
!67 = !DILocation(line: 66, column: 5, scope: !57)
!68 = !DILocation(line: 66, column: 22, scope: !57)
!69 = !DILocation(line: 68, column: 12, scope: !70)
!70 = distinct !DILexicalBlock(scope: !57, file: !3, line: 67, column: 5)
!71 = !DILocation(line: 68, column: 17, scope: !70)
!72 = !DILocation(line: 68, column: 16, scope: !70)
!73 = !DILocation(line: 68, column: 11, scope: !70)
!74 = !DILocation(line: 69, column: 5, scope: !70)
!75 = !DILocation(line: 65, column: 1, scope: !57)
!76 = distinct !{!76, !75, !77}
!77 = !DILocation(line: 65, column: 16, scope: !57)
!78 = !DILocation(line: 70, column: 1, scope: !58)
!79 = !DILocation(line: 72, column: 12, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !3, line: 71, column: 5)
!81 = distinct !DILexicalBlock(scope: !58, file: !3, line: 70, column: 1)
!82 = !DILocation(line: 72, column: 16, scope: !80)
!83 = !DILocation(line: 72, column: 15, scope: !80)
!84 = !DILocation(line: 72, column: 10, scope: !80)
!85 = !DILocation(line: 73, column: 5, scope: !80)
!86 = !DILocation(line: 74, column: 3, scope: !42)
!87 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 64, type: !43, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!88 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !87, type: !45, flags: DIFlagArtificial)
!89 = !DILocation(line: 0, scope: !87)
!90 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !87, type: !45, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: "sum", arg: 3, scope: !87, type: !49, flags: DIFlagArtificial)
!92 = !DILocation(line: 64, column: 3, scope: !87)
!93 = !{!94}
!94 = !{i64 2, i64 -1, i64 -1, i1 true}
