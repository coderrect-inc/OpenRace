; ModuleID = 'DRB146-atomicupdate-orig-gpu-no.c'
source_filename = "DRB146-atomicupdate-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [47 x i8] c";DRB146-atomicupdate-orig-gpu-no.c;main;22;3;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@var = dso_local global i32 0, align 4, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"%d\0A \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @__omp_offloading_10307_2ec41ab_main_l21(i32* @var) #5, !dbg !14
  %0 = load i32, i32* @var, align 4, !dbg !16
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %0), !dbg !17
  ret i32 0, !dbg !18
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41ab_main_l21_debug__(i32* dereferenceable(4) %var) #1 !dbg !19 {
entry:
  %var.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !23, metadata !DIExpression()), !dbg !24
  %2 = load i32*, i32** %var.addr, align 8, !dbg !25
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !25
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !25
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %2), !dbg !25
  ret void, !dbg !26
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %var) #1 !dbg !27 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !34, metadata !DIExpression()), !dbg !35
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !36, metadata !DIExpression()), !dbg !35
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !37, metadata !DIExpression()), !dbg !38
  %2 = load i32*, i32** %var.addr, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !40, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !41, metadata !DIExpression()), !dbg !35
  store i32 0, i32* %.omp.lb, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !43, metadata !DIExpression()), !dbg !35
  store i32 99, i32* %.omp.ub, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !44, metadata !DIExpression()), !dbg !35
  store i32 1, i32* %.omp.stride, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !45, metadata !DIExpression()), !dbg !35
  store i32 0, i32* %.omp.is_last, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %i, metadata !46, metadata !DIExpression()), !dbg !35
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !39
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !39
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !39
  %5 = load i32, i32* %4, align 4, !dbg !39
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 92, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !39
  %6 = load i32, i32* %.omp.ub, align 4, !dbg !42
  %cmp = icmp sgt i32 %6, 99, !dbg !42
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !42

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !42

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %.omp.ub, align 4, !dbg !42
  br label %cond.end, !dbg !42

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %7, %cond.false ], !dbg !42
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !42
  %8 = load i32, i32* %.omp.lb, align 4, !dbg !42
  store i32 %8, i32* %.omp.iv, align 4, !dbg !42
  br label %omp.inner.for.cond, !dbg !39

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %9 = load i32, i32* %.omp.iv, align 4, !dbg !42
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !42
  %cmp1 = icmp sle i32 %9, %10, !dbg !39
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !39

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !42
  %mul = mul nsw i32 %11, 1, !dbg !47
  %add = add nsw i32 0, %mul, !dbg !47
  store i32 %add, i32* %i, align 4, !dbg !47
  %12 = atomicrmw add i32* %2, i32 1 monotonic, !dbg !48
  br label %omp.body.continue, !dbg !51

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !52

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !42
  %add2 = add nsw i32 %13, 1, !dbg !39
  store i32 %add2, i32* %.omp.iv, align 4, !dbg !39
  br label %omp.inner.for.cond, !dbg !52, !llvm.loop !53

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !52

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !52
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1, i32 0, i32 0), i8** %14, align 8, !dbg !52
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !52
  ret void, !dbg !55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %var) #1 !dbg !56 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !57, metadata !DIExpression()), !dbg !58
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !59, metadata !DIExpression()), !dbg !58
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !60, metadata !DIExpression()), !dbg !58
  %0 = load i32*, i32** %var.addr, align 8, !dbg !61
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !61
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !61
  %3 = load i32*, i32** %var.addr, align 8, !dbg !61
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !61
  ret void, !dbg !61
}

declare !callback !62 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41ab_main_l21(i32* dereferenceable(4) %var) #1 !dbg !64 {
entry:
  %var.addr = alloca i32*, align 8
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !65, metadata !DIExpression()), !dbg !66
  %0 = load i32*, i32** %var.addr, align 8, !dbg !67
  %1 = load i32*, i32** %var.addr, align 8, !dbg !67
  call void @__omp_offloading_10307_2ec41ab_main_l21_debug__(i32* %1) #5, !dbg !67
  ret void, !dbg !67
}

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "var", scope: !2, file: !3, line: 18, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB146-atomicupdate-orig-gpu-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 10.0.1 "}
!11 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 20, type: !12, scopeLine: 20, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!12 = !DISubroutineType(types: !13)
!13 = !{!6}
!14 = !DILocation(line: 21, column: 3, scope: !15)
!15 = distinct !DILexicalBlock(scope: !11, file: !3, line: 21, column: 3)
!16 = !DILocation(line: 27, column: 18, scope: !11)
!17 = !DILocation(line: 27, column: 3, scope: !11)
!18 = !DILocation(line: 28, column: 3, scope: !11)
!19 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41ab_main_l21_debug__", scope: !3, file: !3, line: 22, type: !20, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22}
!22 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6, size: 64)
!23 = !DILocalVariable(name: "var", arg: 1, scope: !19, file: !3, line: 18, type: !22)
!24 = !DILocation(line: 18, column: 5, scope: !19)
!25 = !DILocation(line: 22, column: 3, scope: !19)
!26 = !DILocation(line: 22, column: 31, scope: !19)
!27 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 23, type: !28, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !30, !22}
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!34 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !27, type: !30, flags: DIFlagArtificial)
!35 = !DILocation(line: 0, scope: !27)
!36 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !27, type: !30, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: "var", arg: 3, scope: !27, file: !3, line: 18, type: !22)
!38 = !DILocation(line: 18, column: 5, scope: !27)
!39 = !DILocation(line: 23, column: 3, scope: !27)
!40 = !DILocalVariable(name: ".omp.iv", scope: !27, type: !6, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".omp.lb", scope: !27, type: !6, flags: DIFlagArtificial)
!42 = !DILocation(line: 23, column: 8, scope: !27)
!43 = !DILocalVariable(name: ".omp.ub", scope: !27, type: !6, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".omp.stride", scope: !27, type: !6, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".omp.is_last", scope: !27, type: !6, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "i", scope: !27, type: !6, flags: DIFlagArtificial)
!47 = !DILocation(line: 23, column: 22, scope: !27)
!48 = !DILocation(line: 25, column: 5, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !3, line: 24, column: 5)
!50 = distinct !DILexicalBlock(scope: !27, file: !3, line: 23, column: 26)
!51 = !DILocation(line: 26, column: 3, scope: !50)
!52 = !DILocation(line: 22, column: 3, scope: !27)
!53 = distinct !{!53, !52, !54}
!54 = !DILocation(line: 22, column: 31, scope: !27)
!55 = !DILocation(line: 26, column: 3, scope: !27)
!56 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 23, type: !28, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!57 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !56, type: !30, flags: DIFlagArtificial)
!58 = !DILocation(line: 0, scope: !56)
!59 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !56, type: !30, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: "var", arg: 3, scope: !56, type: !22, flags: DIFlagArtificial)
!61 = !DILocation(line: 23, column: 3, scope: !56)
!62 = !{!63}
!63 = !{i64 2, i64 -1, i64 -1, i1 true}
!64 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41ab_main_l21", scope: !3, file: !3, line: 22, type: !20, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!65 = !DILocalVariable(name: "var", arg: 1, scope: !64, type: !22, flags: DIFlagArtificial)
!66 = !DILocation(line: 0, scope: !64)
!67 = !DILocation(line: 22, column: 3, scope: !64)
