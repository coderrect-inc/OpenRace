; ModuleID = 'DRB116-target-teams-orig-yes.c'
source_filename = "DRB116-target-teams-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [44 x i8] c";DRB116-target-teams-orig-yes.c;main;64;1;;\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"a[50]=%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %len, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 100, i32* %len, align 4, !dbg !23
  %0 = load i32, i32* %len, align 4, !dbg !24
  %1 = zext i32 %0 to i64, !dbg !25
  %2 = call i8* @llvm.stacksave(), !dbg !25
  store i8* %2, i8** %saved_stack, align 8, !dbg !25
  %vla = alloca double, i64 %1, align 16, !dbg !25
  store i64 %1, i64* %__vla_expr0, align 8, !dbg !25
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !26, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata double* %vla, metadata !29, metadata !DIExpression()), !dbg !33
  store i32 0, i32* %i, align 4, !dbg !34
  br label %for.cond, !dbg !36

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !37
  %4 = load i32, i32* %len, align 4, !dbg !39
  %cmp = icmp slt i32 %3, %4, !dbg !40
  br i1 %cmp, label %for.body, label %for.end, !dbg !41

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !42
  %conv = sitofp i32 %5 to double, !dbg !43
  %div = fdiv double %conv, 2.000000e+00, !dbg !44
  %6 = load i32, i32* %i, align 4, !dbg !45
  %idxprom = sext i32 %6 to i64, !dbg !46
  %arrayidx = getelementptr inbounds double, double* %vla, i64 %idxprom, !dbg !46
  store double %div, double* %arrayidx, align 8, !dbg !47
  br label %for.inc, !dbg !46

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !48
  %inc = add nsw i32 %7, 1, !dbg !48
  store i32 %inc, i32* %i, align 4, !dbg !48
  br label %for.cond, !dbg !49, !llvm.loop !50

for.end:                                          ; preds = %for.cond
  call void @__omp_offloading_10307_2ec418d_main_l63(i64 %1, double* %vla) #2, !dbg !52
  %arrayidx1 = getelementptr inbounds double, double* %vla, i64 50, !dbg !54
  %8 = load double, double* %arrayidx1, align 16, !dbg !54
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), double %8), !dbg !55
  store i32 0, i32* %retval, align 4, !dbg !56
  %9 = load i8*, i8** %saved_stack, align 8, !dbg !57
  call void @llvm.stackrestore(i8* %9), !dbg !57
  %10 = load i32, i32* %retval, align 4, !dbg !57
  ret i32 %10, !dbg !57
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec418d_main_l63_debug__(i64 %vla, double* dereferenceable(8) %a) #3 !dbg !58 {
entry:
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i32 0, i32 0), i8** %2, align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !62, metadata !DIExpression()), !dbg !63
  store double* %a, double** %a.addr, align 8
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !64, metadata !DIExpression()), !dbg !65
  %4 = load i64, i64* %vla.addr, align 8, !dbg !66
  %5 = load double*, double** %a.addr, align 8, !dbg !66
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !66
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !66
  %7 = call i32 @__kmpc_push_num_teams(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 2, i32 0), !dbg !66
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !66
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !66
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %4, double* %5), !dbg !66
  ret void, !dbg !67
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %vla, double* dereferenceable(8) %a) #3 !dbg !68 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !75, metadata !DIExpression()), !dbg !76
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !77, metadata !DIExpression()), !dbg !76
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !78, metadata !DIExpression()), !dbg !76
  store double* %a, double** %a.addr, align 8
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !79, metadata !DIExpression()), !dbg !80
  %0 = load i64, i64* %vla.addr, align 8, !dbg !81
  %1 = load double*, double** %a.addr, align 8, !dbg !81
  %arrayidx = getelementptr inbounds double, double* %1, i64 50, !dbg !82
  %2 = load double, double* %arrayidx, align 16, !dbg !84
  %mul = fmul double %2, 2.000000e+00, !dbg !84
  store double %mul, double* %arrayidx, align 16, !dbg !84
  ret void, !dbg !85
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %vla, double* dereferenceable(8) %a) #3 !dbg !86 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !87, metadata !DIExpression()), !dbg !88
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !89, metadata !DIExpression()), !dbg !88
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !90, metadata !DIExpression()), !dbg !88
  store double* %a, double** %a.addr, align 8
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !91, metadata !DIExpression()), !dbg !88
  %0 = load i64, i64* %vla.addr, align 8, !dbg !92
  %1 = load double*, double** %a.addr, align 8, !dbg !92
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !92
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !92
  %4 = load double*, double** %a.addr, align 8, !dbg !92
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i64 %0, double* %4) #2, !dbg !92
  ret void, !dbg !92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i32 @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32)

declare !callback !93 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec418d_main_l63(i64 %vla, double* dereferenceable(8) %a) #3 !dbg !95 {
entry:
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !96, metadata !DIExpression()), !dbg !97
  store double* %a, double** %a.addr, align 8
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !98, metadata !DIExpression()), !dbg !97
  %0 = load i64, i64* %vla.addr, align 8, !dbg !99
  %1 = load double*, double** %a.addr, align 8, !dbg !99
  %2 = load double*, double** %a.addr, align 8, !dbg !99
  call void @__omp_offloading_10307_2ec418d_main_l63_debug__(i64 %0, double* %2) #2, !dbg !99
  ret void, !dbg !99
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB116-target-teams-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 10.0.1 "}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !10, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 53, type: !12)
!17 = !DILocation(line: 53, column: 14, scope: !9)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 53, type: !13)
!19 = !DILocation(line: 53, column: 26, scope: !9)
!20 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 55, type: !12)
!21 = !DILocation(line: 55, column: 7, scope: !9)
!22 = !DILocalVariable(name: "len", scope: !9, file: !1, line: 56, type: !12)
!23 = !DILocation(line: 56, column: 7, scope: !9)
!24 = !DILocation(line: 57, column: 12, scope: !9)
!25 = !DILocation(line: 57, column: 3, scope: !9)
!26 = !DILocalVariable(name: "__vla_expr0", scope: !9, type: !27, flags: DIFlagArtificial)
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 0, scope: !9)
!29 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 57, type: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: !26)
!33 = !DILocation(line: 57, column: 10, scope: !9)
!34 = !DILocation(line: 60, column: 9, scope: !35)
!35 = distinct !DILexicalBlock(scope: !9, file: !1, line: 60, column: 3)
!36 = !DILocation(line: 60, column: 8, scope: !35)
!37 = !DILocation(line: 60, column: 13, scope: !38)
!38 = distinct !DILexicalBlock(scope: !35, file: !1, line: 60, column: 3)
!39 = !DILocation(line: 60, column: 15, scope: !38)
!40 = !DILocation(line: 60, column: 14, scope: !38)
!41 = !DILocation(line: 60, column: 3, scope: !35)
!42 = !DILocation(line: 61, column: 20, scope: !38)
!43 = !DILocation(line: 61, column: 12, scope: !38)
!44 = !DILocation(line: 61, column: 22, scope: !38)
!45 = !DILocation(line: 61, column: 7, scope: !38)
!46 = !DILocation(line: 61, column: 5, scope: !38)
!47 = !DILocation(line: 61, column: 9, scope: !38)
!48 = !DILocation(line: 60, column: 21, scope: !38)
!49 = !DILocation(line: 60, column: 3, scope: !38)
!50 = distinct !{!50, !41, !51}
!51 = !DILocation(line: 61, column: 23, scope: !35)
!52 = !DILocation(line: 63, column: 1, scope: !53)
!53 = distinct !DILexicalBlock(scope: !9, file: !1, line: 63, column: 1)
!54 = !DILocation(line: 69, column: 25, scope: !9)
!55 = !DILocation(line: 69, column: 3, scope: !9)
!56 = !DILocation(line: 70, column: 3, scope: !9)
!57 = !DILocation(line: 71, column: 1, scope: !9)
!58 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec418d_main_l63_debug__", scope: !1, file: !1, line: 64, type: !59, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !27, !61}
!61 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!62 = !DILocalVariable(name: "vla", arg: 1, scope: !58, type: !27, flags: DIFlagArtificial)
!63 = !DILocation(line: 0, scope: !58)
!64 = !DILocalVariable(name: "a", arg: 2, scope: !58, file: !1, line: 57, type: !61)
!65 = !DILocation(line: 57, column: 10, scope: !58)
!66 = !DILocation(line: 64, column: 1, scope: !58)
!67 = !DILocation(line: 64, column: 32, scope: !58)
!68 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 65, type: !69, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !71, !27, !61}
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!75 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !68, type: !71, flags: DIFlagArtificial)
!76 = !DILocation(line: 0, scope: !68)
!77 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !68, type: !71, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: "vla", arg: 3, scope: !68, type: !27, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: "a", arg: 4, scope: !68, file: !1, line: 57, type: !61)
!80 = !DILocation(line: 57, column: 10, scope: !68)
!81 = !DILocation(line: 65, column: 3, scope: !68)
!82 = !DILocation(line: 66, column: 5, scope: !83)
!83 = distinct !DILexicalBlock(scope: !68, file: !1, line: 65, column: 3)
!84 = !DILocation(line: 66, column: 10, scope: !83)
!85 = !DILocation(line: 67, column: 3, scope: !68)
!86 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 65, type: !69, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!87 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !86, type: !71, flags: DIFlagArtificial)
!88 = !DILocation(line: 0, scope: !86)
!89 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !86, type: !71, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: "vla", arg: 3, scope: !86, type: !27, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: "a", arg: 4, scope: !86, type: !61, flags: DIFlagArtificial)
!92 = !DILocation(line: 65, column: 3, scope: !86)
!93 = !{!94}
!94 = !{i64 2, i64 -1, i64 -1, i1 true}
!95 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec418d_main_l63", scope: !1, file: !1, line: 64, type: !59, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!96 = !DILocalVariable(name: "vla", arg: 1, scope: !95, type: !27, flags: DIFlagArtificial)
!97 = !DILocation(line: 0, scope: !95)
!98 = !DILocalVariable(name: "a", arg: 2, scope: !95, type: !61, flags: DIFlagArtificial)
!99 = !DILocation(line: 64, column: 1, scope: !95)
