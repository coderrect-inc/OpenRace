; ModuleID = 'DRB155-missingordered-orig-gpu-no.c'
source_filename = "DRB155-missingordered-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [49 x i8] c";DRB155-missingordered-orig-gpu-no.c;main;29;5;;\00", align 1
@2 = private unnamed_addr constant [49 x i8] c";DRB155-missingordered-orig-gpu-no.c;main;31;7;;\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Data Race Present\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %var = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata [100 x i32]* %var, metadata !11, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %i, metadata !16, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %i, align 4, !dbg !18
  br label %for.cond, !dbg !19

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !20
  %cmp = icmp slt i32 %0, 100, !dbg !22
  br i1 %cmp, label %for.body, label %for.end, !dbg !23

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !24
  %idxprom = sext i32 %1 to i64, !dbg !26
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %var, i64 0, i64 %idxprom, !dbg !26
  store i32 0, i32* %arrayidx, align 4, !dbg !27
  br label %for.inc, !dbg !28

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4, !dbg !29
  %inc = add nsw i32 %2, 1, !dbg !29
  store i32 %inc, i32* %i, align 4, !dbg !29
  br label %for.cond, !dbg !30, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  call void @__omp_offloading_10307_2ec41b4_main_l28([100 x i32]* %var) #5, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !35, metadata !DIExpression()), !dbg !37
  store i32 0, i32* %i1, align 4, !dbg !37
  br label %for.cond2, !dbg !38

for.cond2:                                        ; preds = %for.inc8, %for.end
  %3 = load i32, i32* %i1, align 4, !dbg !39
  %cmp3 = icmp slt i32 %3, 100, !dbg !41
  br i1 %cmp3, label %for.body4, label %for.end10, !dbg !42

for.body4:                                        ; preds = %for.cond2
  %4 = load i32, i32* %i1, align 4, !dbg !43
  %idxprom5 = sext i32 %4 to i64, !dbg !46
  %arrayidx6 = getelementptr inbounds [100 x i32], [100 x i32]* %var, i64 0, i64 %idxprom5, !dbg !46
  %5 = load i32, i32* %arrayidx6, align 4, !dbg !46
  %6 = load i32, i32* %i1, align 4, !dbg !47
  %cmp7 = icmp ne i32 %5, %6, !dbg !48
  br i1 %cmp7, label %if.then, label %if.end, !dbg !49

if.then:                                          ; preds = %for.body4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)), !dbg !50
  store i32 0, i32* %retval, align 4, !dbg !52
  br label %return, !dbg !52

if.end:                                           ; preds = %for.body4
  br label %for.inc8, !dbg !53

for.inc8:                                         ; preds = %if.end
  %7 = load i32, i32* %i1, align 4, !dbg !54
  %inc9 = add nsw i32 %7, 1, !dbg !54
  store i32 %inc9, i32* %i1, align 4, !dbg !54
  br label %for.cond2, !dbg !55, !llvm.loop !56

for.end10:                                        ; preds = %for.cond2
  store i32 0, i32* %retval, align 4, !dbg !58
  br label %return, !dbg !58

return:                                           ; preds = %for.end10, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !59
  ret i32 %8, !dbg !59
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41b4_main_l28_debug__([100 x i32]* dereferenceable(400) %var) #2 !dbg !60 {
entry:
  %var.addr = alloca [100 x i32]*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !64, metadata !DIExpression()), !dbg !65
  %2 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !66
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !66
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !66
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [100 x i32]* %2), !dbg !66
  ret void, !dbg !67
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [100 x i32]* dereferenceable(400) %var) #2 !dbg !68 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [100 x i32]*, align 8
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !75, metadata !DIExpression()), !dbg !76
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !77, metadata !DIExpression()), !dbg !76
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !78, metadata !DIExpression()), !dbg !79
  %2 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !80
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !81, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !82, metadata !DIExpression()), !dbg !76
  store i32 0, i32* %.omp.lb, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !84, metadata !DIExpression()), !dbg !76
  store i32 98, i32* %.omp.ub, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !85, metadata !DIExpression()), !dbg !76
  store i32 1, i32* %.omp.stride, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !86, metadata !DIExpression()), !dbg !76
  store i32 0, i32* %.omp.is_last, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %i, metadata !87, metadata !DIExpression()), !dbg !76
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !80
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !80
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !80
  %5 = load i32, i32* %4, align 4, !dbg !80
  call void @__kmpc_dispatch_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 66, i32 0, i32 98, i32 1, i32 1), !dbg !80
  br label %omp.dispatch.cond, !dbg !80

omp.dispatch.cond:                                ; preds = %omp.dispatch.inc, %entry
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !80
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !80
  %7 = call i32 @__kmpc_dispatch_next_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride), !dbg !80
  %tobool = icmp ne i32 %7, 0, !dbg !80
  br i1 %tobool, label %omp.dispatch.body, label %omp.dispatch.end, !dbg !80

omp.dispatch.body:                                ; preds = %omp.dispatch.cond
  %8 = load i32, i32* %.omp.lb, align 4, !dbg !83
  store i32 %8, i32* %.omp.iv, align 4, !dbg !83
  br label %omp.inner.for.cond, !dbg !80

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.dispatch.body
  %9 = load i32, i32* %.omp.iv, align 4, !dbg !83
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !83
  %cmp = icmp sle i32 %9, %10, !dbg !80
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !80

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !83
  %mul = mul nsw i32 %11, 1, !dbg !88
  %add = add nsw i32 1, %mul, !dbg !88
  store i32 %add, i32* %i, align 4, !dbg !88
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !89
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2, i32 0, i32 0), i8** %12, align 8, !dbg !89
  call void @__kmpc_ordered(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !89
  %13 = load i32, i32* %i, align 4, !dbg !91
  %sub = sub nsw i32 %13, 1, !dbg !94
  %idxprom = sext i32 %sub to i64, !dbg !95
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %idxprom, !dbg !95
  %14 = load i32, i32* %arrayidx, align 4, !dbg !95
  %add1 = add nsw i32 %14, 1, !dbg !96
  %15 = load i32, i32* %i, align 4, !dbg !97
  %idxprom2 = sext i32 %15 to i64, !dbg !98
  %arrayidx3 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %idxprom2, !dbg !98
  store i32 %add1, i32* %arrayidx3, align 4, !dbg !99
  call void @__kmpc_end_ordered(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !100
  br label %omp.body.continue, !dbg !101

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !102

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !83
  %add4 = add nsw i32 %16, 1, !dbg !80
  store i32 %add4, i32* %.omp.iv, align 4, !dbg !80
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !102
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1, i32 0, i32 0), i8** %17, align 8, !dbg !102
  call void @__kmpc_dispatch_fini_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !102
  br label %omp.inner.for.cond, !dbg !102, !llvm.loop !103

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.dispatch.inc, !dbg !102

omp.dispatch.inc:                                 ; preds = %omp.inner.for.end
  br label %omp.dispatch.cond, !dbg !102, !llvm.loop !105

omp.dispatch.end:                                 ; preds = %omp.dispatch.cond
  ret void, !dbg !106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_dispatch_init_4(%struct.ident_t*, i32, i32, i32, i32, i32, i32)

declare dso_local i32 @__kmpc_dispatch_next_4(%struct.ident_t*, i32, i32*, i32*, i32*, i32*)

declare dso_local void @__kmpc_end_ordered(%struct.ident_t*, i32)

declare dso_local void @__kmpc_ordered(%struct.ident_t*, i32)

declare dso_local void @__kmpc_dispatch_fini_4(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [100 x i32]* dereferenceable(400) %var) #2 !dbg !107 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !108, metadata !DIExpression()), !dbg !109
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !110, metadata !DIExpression()), !dbg !109
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !111, metadata !DIExpression()), !dbg !109
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !112
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !112
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !112
  %3 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !112
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [100 x i32]* %3) #5, !dbg !112
  ret void, !dbg !112
}

declare !callback !113 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41b4_main_l28([100 x i32]* dereferenceable(400) %var) #2 !dbg !115 {
entry:
  %var.addr = alloca [100 x i32]*, align 8
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !116, metadata !DIExpression()), !dbg !117
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !118
  %1 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !118
  call void @__omp_offloading_10307_2ec41b4_main_l28_debug__([100 x i32]* %1) #5, !dbg !118
  ret void, !dbg !118
}

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
!1 = !DIFile(filename: "DRB155-missingordered-orig-gpu-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !8, scopeLine: 20, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "var", scope: !7, file: !1, line: 22, type: !12)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 3200, elements: !13)
!13 = !{!14}
!14 = !DISubrange(count: 100)
!15 = !DILocation(line: 22, column: 7, scope: !7)
!16 = !DILocalVariable(name: "i", scope: !17, file: !1, line: 24, type: !10)
!17 = distinct !DILexicalBlock(scope: !7, file: !1, line: 24, column: 3)
!18 = !DILocation(line: 24, column: 11, scope: !17)
!19 = !DILocation(line: 24, column: 7, scope: !17)
!20 = !DILocation(line: 24, column: 16, scope: !21)
!21 = distinct !DILexicalBlock(scope: !17, file: !1, line: 24, column: 3)
!22 = !DILocation(line: 24, column: 17, scope: !21)
!23 = !DILocation(line: 24, column: 3, scope: !17)
!24 = !DILocation(line: 25, column: 9, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !1, line: 24, column: 25)
!26 = !DILocation(line: 25, column: 5, scope: !25)
!27 = !DILocation(line: 25, column: 11, scope: !25)
!28 = !DILocation(line: 26, column: 3, scope: !25)
!29 = !DILocation(line: 24, column: 22, scope: !21)
!30 = !DILocation(line: 24, column: 3, scope: !21)
!31 = distinct !{!31, !23, !32}
!32 = !DILocation(line: 26, column: 3, scope: !17)
!33 = !DILocation(line: 28, column: 3, scope: !34)
!34 = distinct !DILexicalBlock(scope: !7, file: !1, line: 28, column: 3)
!35 = !DILocalVariable(name: "i", scope: !36, file: !1, line: 37, type: !10)
!36 = distinct !DILexicalBlock(scope: !7, file: !1, line: 37, column: 3)
!37 = !DILocation(line: 37, column: 11, scope: !36)
!38 = !DILocation(line: 37, column: 7, scope: !36)
!39 = !DILocation(line: 37, column: 16, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !1, line: 37, column: 3)
!41 = !DILocation(line: 37, column: 17, scope: !40)
!42 = !DILocation(line: 37, column: 3, scope: !36)
!43 = !DILocation(line: 38, column: 12, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 38, column: 8)
!45 = distinct !DILexicalBlock(scope: !40, file: !1, line: 37, column: 25)
!46 = !DILocation(line: 38, column: 8, scope: !44)
!47 = !DILocation(line: 38, column: 16, scope: !44)
!48 = !DILocation(line: 38, column: 14, scope: !44)
!49 = !DILocation(line: 38, column: 8, scope: !45)
!50 = !DILocation(line: 39, column: 7, scope: !51)
!51 = distinct !DILexicalBlock(scope: !44, file: !1, line: 38, column: 18)
!52 = !DILocation(line: 40, column: 7, scope: !51)
!53 = !DILocation(line: 42, column: 3, scope: !45)
!54 = !DILocation(line: 37, column: 22, scope: !40)
!55 = !DILocation(line: 37, column: 3, scope: !40)
!56 = distinct !{!56, !42, !57}
!57 = !DILocation(line: 42, column: 3, scope: !36)
!58 = !DILocation(line: 44, column: 3, scope: !7)
!59 = !DILocation(line: 45, column: 1, scope: !7)
!60 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41b4_main_l28_debug__", scope: !1, file: !1, line: 29, type: !61, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !63}
!63 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!64 = !DILocalVariable(name: "var", arg: 1, scope: !60, file: !1, line: 22, type: !63)
!65 = !DILocation(line: 22, column: 7, scope: !60)
!66 = !DILocation(line: 29, column: 5, scope: !60)
!67 = !DILocation(line: 29, column: 37, scope: !60)
!68 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 30, type: !69, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !71, !63}
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!75 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !68, type: !71, flags: DIFlagArtificial)
!76 = !DILocation(line: 0, scope: !68)
!77 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !68, type: !71, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: "var", arg: 3, scope: !68, file: !1, line: 22, type: !63)
!79 = !DILocation(line: 22, column: 7, scope: !68)
!80 = !DILocation(line: 30, column: 5, scope: !68)
!81 = !DILocalVariable(name: ".omp.iv", scope: !68, type: !10, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.lb", scope: !68, type: !10, flags: DIFlagArtificial)
!83 = !DILocation(line: 30, column: 10, scope: !68)
!84 = !DILocalVariable(name: ".omp.ub", scope: !68, type: !10, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: ".omp.stride", scope: !68, type: !10, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".omp.is_last", scope: !68, type: !10, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: "i", scope: !68, type: !10, flags: DIFlagArtificial)
!88 = !DILocation(line: 30, column: 24, scope: !68)
!89 = !DILocation(line: 31, column: 7, scope: !90)
!90 = distinct !DILexicalBlock(scope: !68, file: !1, line: 30, column: 28)
!91 = !DILocation(line: 33, column: 20, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !1, line: 32, column: 7)
!93 = distinct !DILexicalBlock(scope: !90, file: !1, line: 31, column: 7)
!94 = !DILocation(line: 33, column: 21, scope: !92)
!95 = !DILocation(line: 33, column: 16, scope: !92)
!96 = !DILocation(line: 33, column: 24, scope: !92)
!97 = !DILocation(line: 33, column: 13, scope: !92)
!98 = !DILocation(line: 33, column: 9, scope: !92)
!99 = !DILocation(line: 33, column: 15, scope: !92)
!100 = !DILocation(line: 34, column: 7, scope: !92)
!101 = !DILocation(line: 35, column: 5, scope: !90)
!102 = !DILocation(line: 29, column: 5, scope: !68)
!103 = distinct !{!103, !102, !104}
!104 = !DILocation(line: 29, column: 37, scope: !68)
!105 = distinct !{!105, !102, !104}
!106 = !DILocation(line: 35, column: 5, scope: !68)
!107 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 30, type: !69, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!108 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !107, type: !71, flags: DIFlagArtificial)
!109 = !DILocation(line: 0, scope: !107)
!110 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !107, type: !71, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: "var", arg: 3, scope: !107, type: !63, flags: DIFlagArtificial)
!112 = !DILocation(line: 30, column: 5, scope: !107)
!113 = !{!114}
!114 = !{i64 2, i64 -1, i64 -1, i1 true}
!115 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41b4_main_l28", scope: !1, file: !1, line: 29, type: !61, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!116 = !DILocalVariable(name: "var", arg: 1, scope: !115, type: !63, flags: DIFlagArtificial)
!117 = !DILocation(line: 0, scope: !115)
!118 = !DILocation(line: 29, column: 5, scope: !115)
