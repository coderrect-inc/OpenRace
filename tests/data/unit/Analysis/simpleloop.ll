; ModuleID = 'simpleloop.c'
source_filename = "simpleloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [25 x i8] c";simpleloop.c;main;5;1;;\00", align 1
@2 = private unnamed_addr constant [26 x i8] c";simpleloop.c;main;5;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %N = alloca i32, align 4
  %A = alloca [10 x i32], align 16
  %B = alloca [10 x i32], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  call void @llvm.dbg.declare(metadata i32* %N, metadata !11, metadata !DIExpression()), !dbg !13
  store i32 10, i32* %N, align 4, !dbg !13
  call void @llvm.dbg.declare(metadata [10 x i32]* %A, metadata !14, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata [10 x i32]* %B, metadata !19, metadata !DIExpression()), !dbg !20
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !21
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !21
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [10 x i32]*, [10 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %N, [10 x i32]* %A, [10 x i32]* %B), !dbg !21
  ret i32 0, !dbg !22
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, [10 x i32]* dereferenceable(40) %A, [10 x i32]* dereferenceable(40) %B) #2 !dbg !23 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %A.addr = alloca [10 x i32]*, align 8
  %B.addr = alloca [10 x i32]*, align 8
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !31, metadata !DIExpression()), !dbg !32
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !33, metadata !DIExpression()), !dbg !32
  store i32* %N, i32** %N.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !34, metadata !DIExpression()), !dbg !35
  store [10 x i32]* %A, [10 x i32]** %A.addr, align 8
  call void @llvm.dbg.declare(metadata [10 x i32]** %A.addr, metadata !36, metadata !DIExpression()), !dbg !37
  store [10 x i32]* %B, [10 x i32]** %B.addr, align 8
  call void @llvm.dbg.declare(metadata [10 x i32]** %B.addr, metadata !38, metadata !DIExpression()), !dbg !39
  %2 = load i32*, i32** %N.addr, align 8, !dbg !40
  %3 = load [10 x i32]*, [10 x i32]** %A.addr, align 8, !dbg !40
  %4 = load [10 x i32]*, [10 x i32]** %B.addr, align 8, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !41, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !42, metadata !DIExpression()), !dbg !32
  store i32 0, i32* %.omp.lb, align 4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !44, metadata !DIExpression()), !dbg !32
  store i32 9, i32* %.omp.ub, align 4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !45, metadata !DIExpression()), !dbg !32
  store i32 1, i32* %.omp.stride, align 4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !46, metadata !DIExpression()), !dbg !32
  store i32 0, i32* %.omp.is_last, align 4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %i, metadata !47, metadata !DIExpression()), !dbg !32
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !40
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !40
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !40
  %7 = load i32, i32* %6, align 4, !dbg !40
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !40
  %8 = load i32, i32* %.omp.ub, align 4, !dbg !43
  %cmp = icmp sgt i32 %8, 9, !dbg !43
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !43

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !43

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !43
  br label %cond.end, !dbg !43

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 9, %cond.true ], [ %9, %cond.false ], !dbg !43
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !43
  %10 = load i32, i32* %.omp.lb, align 4, !dbg !43
  store i32 %10, i32* %.omp.iv, align 4, !dbg !43
  br label %omp.inner.for.cond, !dbg !40

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !43
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !43
  %cmp1 = icmp sle i32 %11, %12, !dbg !40
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !40

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !43
  %mul = mul nsw i32 %13, 1, !dbg !48
  %add = add nsw i32 0, %mul, !dbg !48
  store i32 %add, i32* %i, align 4, !dbg !48
  %14 = load i32, i32* %i, align 4, !dbg !49
  %idxprom = sext i32 %14 to i64, !dbg !51
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %idxprom, !dbg !51
  %15 = load i32, i32* %arrayidx, align 4, !dbg !51
  %add2 = add nsw i32 %15, 1, !dbg !52
  %16 = load i32, i32* %i, align 4, !dbg !53
  %idxprom3 = sext i32 %16 to i64, !dbg !54
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %idxprom3, !dbg !54
  store i32 %add2, i32* %arrayidx4, align 4, !dbg !55
  %17 = load i32, i32* %i, align 4, !dbg !56
  %add5 = add nsw i32 %17, 1, !dbg !57
  %idxprom6 = sext i32 %add5 to i64, !dbg !58
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %idxprom6, !dbg !58
  %18 = load i32, i32* %arrayidx7, align 4, !dbg !58
  %19 = load i32, i32* %i, align 4, !dbg !59
  %idxprom8 = sext i32 %19 to i64, !dbg !60
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %idxprom8, !dbg !60
  store i32 %18, i32* %arrayidx9, align 4, !dbg !61
  br label %omp.body.continue, !dbg !62

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !63

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !43
  %add10 = add nsw i32 %20, 1, !dbg !40
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !40
  br label %omp.inner.for.cond, !dbg !63, !llvm.loop !64

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !63

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !63
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0), i8** %21, align 8, !dbg !63
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !63
  ret void, !dbg !66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, [10 x i32]* dereferenceable(40) %A, [10 x i32]* dereferenceable(40) %B) #2 !dbg !67 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %A.addr = alloca [10 x i32]*, align 8
  %B.addr = alloca [10 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !68, metadata !DIExpression()), !dbg !69
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !70, metadata !DIExpression()), !dbg !69
  store i32* %N, i32** %N.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !71, metadata !DIExpression()), !dbg !69
  store [10 x i32]* %A, [10 x i32]** %A.addr, align 8
  call void @llvm.dbg.declare(metadata [10 x i32]** %A.addr, metadata !72, metadata !DIExpression()), !dbg !69
  store [10 x i32]* %B, [10 x i32]** %B.addr, align 8
  call void @llvm.dbg.declare(metadata [10 x i32]** %B.addr, metadata !73, metadata !DIExpression()), !dbg !69
  %0 = load i32*, i32** %N.addr, align 8, !dbg !74
  %1 = load [10 x i32]*, [10 x i32]** %A.addr, align 8, !dbg !74
  %2 = load [10 x i32]*, [10 x i32]** %B.addr, align 8, !dbg !74
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !74
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !74
  %5 = load i32*, i32** %N.addr, align 8, !dbg !74
  %6 = load [10 x i32]*, [10 x i32]** %A.addr, align 8, !dbg !74
  %7 = load [10 x i32]*, [10 x i32]** %B.addr, align 8, !dbg !74
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, [10 x i32]* %6, [10 x i32]* %7) #4, !dbg !74
  ret void, !dbg !74
}

declare !callback !75 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "simpleloop.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 1, type: !8, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 2, type: !12)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!13 = !DILocation(line: 2, column: 13, scope: !7)
!14 = !DILocalVariable(name: "A", scope: !7, file: !1, line: 3, type: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 10)
!18 = !DILocation(line: 3, column: 7, scope: !7)
!19 = !DILocalVariable(name: "B", scope: !7, file: !1, line: 4, type: !15)
!20 = !DILocation(line: 4, column: 7, scope: !7)
!21 = !DILocation(line: 5, column: 1, scope: !7)
!22 = !DILocation(line: 10, column: 1, scope: !7)
!23 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 6, type: !24, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !26, !26, !29, !30, !30}
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!31 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !23, type: !26, flags: DIFlagArtificial)
!32 = !DILocation(line: 0, scope: !23)
!33 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !23, type: !26, flags: DIFlagArtificial)
!34 = !DILocalVariable(name: "N", arg: 3, scope: !23, file: !1, line: 2, type: !29)
!35 = !DILocation(line: 2, column: 13, scope: !23)
!36 = !DILocalVariable(name: "A", arg: 4, scope: !23, file: !1, line: 3, type: !30)
!37 = !DILocation(line: 3, column: 7, scope: !23)
!38 = !DILocalVariable(name: "B", arg: 5, scope: !23, file: !1, line: 4, type: !30)
!39 = !DILocation(line: 4, column: 7, scope: !23)
!40 = !DILocation(line: 6, column: 3, scope: !23)
!41 = !DILocalVariable(name: ".omp.iv", scope: !23, type: !10, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: ".omp.lb", scope: !23, type: !10, flags: DIFlagArtificial)
!43 = !DILocation(line: 6, column: 8, scope: !23)
!44 = !DILocalVariable(name: ".omp.ub", scope: !23, type: !10, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".omp.stride", scope: !23, type: !10, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: ".omp.is_last", scope: !23, type: !10, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: "i", scope: !23, type: !10, flags: DIFlagArtificial)
!48 = !DILocation(line: 6, column: 26, scope: !23)
!49 = !DILocation(line: 7, column: 14, scope: !50)
!50 = distinct !DILexicalBlock(scope: !23, file: !1, line: 6, column: 31)
!51 = !DILocation(line: 7, column: 12, scope: !50)
!52 = !DILocation(line: 7, column: 17, scope: !50)
!53 = !DILocation(line: 7, column: 7, scope: !50)
!54 = !DILocation(line: 7, column: 5, scope: !50)
!55 = !DILocation(line: 7, column: 10, scope: !50)
!56 = !DILocation(line: 8, column: 14, scope: !50)
!57 = !DILocation(line: 8, column: 16, scope: !50)
!58 = !DILocation(line: 8, column: 12, scope: !50)
!59 = !DILocation(line: 8, column: 7, scope: !50)
!60 = !DILocation(line: 8, column: 5, scope: !50)
!61 = !DILocation(line: 8, column: 10, scope: !50)
!62 = !DILocation(line: 9, column: 3, scope: !50)
!63 = !DILocation(line: 5, column: 1, scope: !23)
!64 = distinct !{!64, !63, !65}
!65 = !DILocation(line: 5, column: 25, scope: !23)
!66 = !DILocation(line: 9, column: 3, scope: !23)
!67 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 6, type: !24, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!68 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !67, type: !26, flags: DIFlagArtificial)
!69 = !DILocation(line: 0, scope: !67)
!70 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !67, type: !26, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: "N", arg: 3, scope: !67, type: !29, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: "A", arg: 4, scope: !67, type: !30, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "B", arg: 5, scope: !67, type: !30, flags: DIFlagArtificial)
!74 = !DILocation(line: 6, column: 3, scope: !67)
!75 = !{!76}
!76 = !{i64 2, i64 -1, i64 -1, i1 true}
