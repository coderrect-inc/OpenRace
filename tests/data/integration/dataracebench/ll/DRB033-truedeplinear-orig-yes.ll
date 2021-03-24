; ModuleID = 'DRB033-truedeplinear-orig-yes.c'
source_filename = "DRB033-truedeplinear-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [45 x i8] c";DRB033-truedeplinear-orig-yes.c;main;62;1;;\00", align 1
@2 = private unnamed_addr constant [46 x i8] c";DRB033-truedeplinear-orig-yes.c;main;62;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"a[1001]=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %a = alloca [2000 x i32], align 16
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
  call void @llvm.dbg.declare(metadata [2000 x i32]* %a, metadata !20, metadata !DIExpression()), !dbg !24
  store i32 0, i32* %i, align 4, !dbg !25
  br label %for.cond, !dbg !27

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !28
  %cmp = icmp slt i32 %2, 2000, !dbg !30
  br i1 %cmp, label %for.body, label %for.end, !dbg !31

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !32
  %4 = load i32, i32* %i, align 4, !dbg !33
  %idxprom = sext i32 %4 to i64, !dbg !34
  %arrayidx = getelementptr inbounds [2000 x i32], [2000 x i32]* %a, i64 0, i64 %idxprom, !dbg !34
  store i32 %3, i32* %arrayidx, align 4, !dbg !35
  br label %for.inc, !dbg !34

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !36
  %inc = add nsw i32 %5, 1, !dbg !36
  store i32 %inc, i32* %i, align 4, !dbg !36
  br label %for.cond, !dbg !37, !llvm.loop !38

for.end:                                          ; preds = %for.cond
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !40
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !40
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [2000 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [2000 x i32]* %a), !dbg !40
  %arrayidx1 = getelementptr inbounds [2000 x i32], [2000 x i32]* %a, i64 0, i64 1001, !dbg !41
  %7 = load i32, i32* %arrayidx1, align 4, !dbg !41
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %7), !dbg !42
  ret i32 0, !dbg !43
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [2000 x i32]* dereferenceable(8000) %a) #2 !dbg !44 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca [2000 x i32]*, align 8
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !52, metadata !DIExpression()), !dbg !53
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !54, metadata !DIExpression()), !dbg !53
  store [2000 x i32]* %a, [2000 x i32]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [2000 x i32]** %a.addr, metadata !55, metadata !DIExpression()), !dbg !56
  %2 = load [2000 x i32]*, [2000 x i32]** %a.addr, align 8, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !58, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !59, metadata !DIExpression()), !dbg !53
  store i32 0, i32* %.omp.lb, align 4, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !61, metadata !DIExpression()), !dbg !53
  store i32 999, i32* %.omp.ub, align 4, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !62, metadata !DIExpression()), !dbg !53
  store i32 1, i32* %.omp.stride, align 4, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !63, metadata !DIExpression()), !dbg !53
  store i32 0, i32* %.omp.is_last, align 4, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %i, metadata !64, metadata !DIExpression()), !dbg !53
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !57
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !57
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !57
  %5 = load i32, i32* %4, align 4, !dbg !57
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !57
  %6 = load i32, i32* %.omp.ub, align 4, !dbg !60
  %cmp = icmp sgt i32 %6, 999, !dbg !60
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !60

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !60

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %.omp.ub, align 4, !dbg !60
  br label %cond.end, !dbg !60

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 999, %cond.true ], [ %7, %cond.false ], !dbg !60
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !60
  %8 = load i32, i32* %.omp.lb, align 4, !dbg !60
  store i32 %8, i32* %.omp.iv, align 4, !dbg !60
  br label %omp.inner.for.cond, !dbg !57

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %9 = load i32, i32* %.omp.iv, align 4, !dbg !60
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !60
  %cmp1 = icmp sle i32 %9, %10, !dbg !57
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !57

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !60
  %mul = mul nsw i32 %11, 1, !dbg !65
  %add = add nsw i32 0, %mul, !dbg !65
  store i32 %add, i32* %i, align 4, !dbg !65
  %12 = load i32, i32* %i, align 4, !dbg !66
  %idxprom = sext i32 %12 to i64, !dbg !67
  %arrayidx = getelementptr inbounds [2000 x i32], [2000 x i32]* %2, i64 0, i64 %idxprom, !dbg !67
  %13 = load i32, i32* %arrayidx, align 4, !dbg !67
  %add2 = add nsw i32 %13, 1, !dbg !68
  %14 = load i32, i32* %i, align 4, !dbg !69
  %mul3 = mul nsw i32 2, %14, !dbg !70
  %add4 = add nsw i32 %mul3, 1, !dbg !71
  %idxprom5 = sext i32 %add4 to i64, !dbg !72
  %arrayidx6 = getelementptr inbounds [2000 x i32], [2000 x i32]* %2, i64 0, i64 %idxprom5, !dbg !72
  store i32 %add2, i32* %arrayidx6, align 4, !dbg !73
  br label %omp.body.continue, !dbg !72

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !74

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !60
  %add7 = add nsw i32 %15, 1, !dbg !57
  store i32 %add7, i32* %.omp.iv, align 4, !dbg !57
  br label %omp.inner.for.cond, !dbg !74, !llvm.loop !75

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !74

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !74
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2, i32 0, i32 0), i8** %16, align 8, !dbg !74
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !74
  ret void, !dbg !77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [2000 x i32]* dereferenceable(8000) %a) #2 !dbg !78 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca [2000 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !79, metadata !DIExpression()), !dbg !80
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !81, metadata !DIExpression()), !dbg !80
  store [2000 x i32]* %a, [2000 x i32]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [2000 x i32]** %a.addr, metadata !82, metadata !DIExpression()), !dbg !80
  %0 = load [2000 x i32]*, [2000 x i32]** %a.addr, align 8, !dbg !83
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !83
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !83
  %3 = load [2000 x i32]*, [2000 x i32]** %a.addr, align 8, !dbg !83
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [2000 x i32]* %3) #5, !dbg !83
  ret void, !dbg !83
}

declare !callback !84 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "DRB033-truedeplinear-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !8, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 53, type: !10)
!15 = !DILocation(line: 53, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 53, type: !11)
!17 = !DILocation(line: 53, column: 26, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 55, type: !10)
!19 = !DILocation(line: 55, column: 7, scope: !7)
!20 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 57, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64000, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 2000)
!24 = !DILocation(line: 57, column: 7, scope: !7)
!25 = !DILocation(line: 59, column: 9, scope: !26)
!26 = distinct !DILexicalBlock(scope: !7, file: !1, line: 59, column: 3)
!27 = !DILocation(line: 59, column: 8, scope: !26)
!28 = !DILocation(line: 59, column: 13, scope: !29)
!29 = distinct !DILexicalBlock(scope: !26, file: !1, line: 59, column: 3)
!30 = !DILocation(line: 59, column: 14, scope: !29)
!31 = !DILocation(line: 59, column: 3, scope: !26)
!32 = !DILocation(line: 60, column: 10, scope: !29)
!33 = !DILocation(line: 60, column: 7, scope: !29)
!34 = !DILocation(line: 60, column: 5, scope: !29)
!35 = !DILocation(line: 60, column: 9, scope: !29)
!36 = !DILocation(line: 59, column: 22, scope: !29)
!37 = !DILocation(line: 59, column: 3, scope: !29)
!38 = distinct !{!38, !31, !39}
!39 = !DILocation(line: 60, column: 10, scope: !26)
!40 = !DILocation(line: 62, column: 1, scope: !7)
!41 = !DILocation(line: 66, column: 26, scope: !7)
!42 = !DILocation(line: 66, column: 3, scope: !7)
!43 = !DILocation(line: 67, column: 3, scope: !7)
!44 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 63, type: !45, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47, !47, !51}
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!51 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !21, size: 64)
!52 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !44, type: !47, flags: DIFlagArtificial)
!53 = !DILocation(line: 0, scope: !44)
!54 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !44, type: !47, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: "a", arg: 3, scope: !44, file: !1, line: 57, type: !51)
!56 = !DILocation(line: 57, column: 7, scope: !44)
!57 = !DILocation(line: 63, column: 3, scope: !44)
!58 = !DILocalVariable(name: ".omp.iv", scope: !44, type: !10, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".omp.lb", scope: !44, type: !10, flags: DIFlagArtificial)
!60 = !DILocation(line: 63, column: 8, scope: !44)
!61 = !DILocalVariable(name: ".omp.ub", scope: !44, type: !10, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".omp.stride", scope: !44, type: !10, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: ".omp.is_last", scope: !44, type: !10, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: "i", scope: !44, type: !10, flags: DIFlagArtificial)
!65 = !DILocation(line: 63, column: 19, scope: !44)
!66 = !DILocation(line: 64, column: 16, scope: !44)
!67 = !DILocation(line: 64, column: 14, scope: !44)
!68 = !DILocation(line: 64, column: 18, scope: !44)
!69 = !DILocation(line: 64, column: 9, scope: !44)
!70 = !DILocation(line: 64, column: 8, scope: !44)
!71 = !DILocation(line: 64, column: 10, scope: !44)
!72 = !DILocation(line: 64, column: 5, scope: !44)
!73 = !DILocation(line: 64, column: 13, scope: !44)
!74 = !DILocation(line: 62, column: 1, scope: !44)
!75 = distinct !{!75, !74, !76}
!76 = !DILocation(line: 62, column: 25, scope: !44)
!77 = !DILocation(line: 64, column: 19, scope: !44)
!78 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 63, type: !45, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!79 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !78, type: !47, flags: DIFlagArtificial)
!80 = !DILocation(line: 0, scope: !78)
!81 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !78, type: !47, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "a", arg: 3, scope: !78, type: !51, flags: DIFlagArtificial)
!83 = !DILocation(line: 63, column: 3, scope: !78)
!84 = !{!85}
!85 = !{i64 2, i64 -1, i64 -1, i1 true}
