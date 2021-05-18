; ModuleID = 'integration/dataracebench/DRB116-target-teams-orig-yes.c'
source_filename = "integration/dataracebench/DRB116-target-teams-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [70 x i8] c";integration/dataracebench/DRB116-target-teams-orig-yes.c;main;64;1;;\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"a[50]=%f\0A\00", align 1

; Function Attrs: nounwind uwtable
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
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !27
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !31
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !34
  %0 = bitcast i32* %i to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !36
  %1 = bitcast i32* %len to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %len, metadata !20, metadata !DIExpression()), !dbg !38
  store i32 100, i32* %len, align 4, !dbg !38, !tbaa !27
  %2 = load i32, i32* %len, align 4, !dbg !39, !tbaa !27
  %3 = zext i32 %2 to i64, !dbg !40
  %4 = call i8* @llvm.stacksave(), !dbg !40
  store i8* %4, i8** %saved_stack, align 8, !dbg !40
  %vla = alloca double, i64 %3, align 16, !dbg !40
  store i64 %3, i64* %__vla_expr0, align 8, !dbg !40
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !21, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata double* %vla, metadata !23, metadata !DIExpression()), !dbg !42
  store i32 0, i32* %i, align 4, !dbg !43, !tbaa !27
  br label %for.cond, !dbg !45

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !46, !tbaa !27
  %6 = load i32, i32* %len, align 4, !dbg !48, !tbaa !27
  %cmp = icmp slt i32 %5, %6, !dbg !49
  br i1 %cmp, label %for.body, label %for.end, !dbg !50

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !51, !tbaa !27
  %conv = sitofp i32 %7 to double, !dbg !52
  %div = fdiv double %conv, 2.000000e+00, !dbg !53
  %8 = load i32, i32* %i, align 4, !dbg !54, !tbaa !27
  %idxprom = sext i32 %8 to i64, !dbg !55
  %arrayidx = getelementptr inbounds double, double* %vla, i64 %idxprom, !dbg !55
  store double %div, double* %arrayidx, align 8, !dbg !56, !tbaa !57
  br label %for.inc, !dbg !55

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !59, !tbaa !27
  %inc = add nsw i32 %9, 1, !dbg !59
  store i32 %inc, i32* %i, align 4, !dbg !59, !tbaa !27
  br label %for.cond, !dbg !60, !llvm.loop !61

for.end:                                          ; preds = %for.cond
  call void @__omp_offloading_1030a_2160934_main_l63(i64 %3, double* %vla) #3, !dbg !63
  %arrayidx1 = getelementptr inbounds double, double* %vla, i64 50, !dbg !65
  %10 = load double, double* %arrayidx1, align 16, !dbg !65, !tbaa !57
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), double %10), !dbg !66
  store i32 0, i32* %retval, align 4, !dbg !67
  %11 = load i8*, i8** %saved_stack, align 8, !dbg !68
  call void @llvm.stackrestore(i8* %11), !dbg !68
  %12 = bitcast i32* %len to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #3, !dbg !68
  %13 = bitcast i32* %i to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #3, !dbg !68
  %14 = load i32, i32* %retval, align 4, !dbg !68
  ret i32 %14, !dbg !68
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160934_main_l63_debug__(i64 %vla, double* dereferenceable(8) %a) #4 !dbg !69 {
entry:
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !tbaa !76
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !78
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !74, metadata !DIExpression()), !dbg !80
  store double* %a, double** %a.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !75, metadata !DIExpression()), !dbg !81
  %4 = load i64, i64* %vla.addr, align 8, !dbg !82, !tbaa !78
  %5 = load double*, double** %a.addr, align 8, !dbg !82, !tbaa !32
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !82
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !82, !tbaa !76
  %7 = call i32 @__kmpc_push_num_teams(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 2, i32 0), !dbg !82
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !82
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !82, !tbaa !76
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %4, double* %5), !dbg !82
  ret void, !dbg !83
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %vla, double* dereferenceable(8) %a) #4 !dbg !84 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !92, metadata !DIExpression()), !dbg !96
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !93, metadata !DIExpression()), !dbg !96
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !78
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !94, metadata !DIExpression()), !dbg !96
  store double* %a, double** %a.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !95, metadata !DIExpression()), !dbg !97
  %0 = load i64, i64* %vla.addr, align 8, !dbg !98, !tbaa !78
  %1 = load double*, double** %a.addr, align 8, !dbg !98, !tbaa !32
  %arrayidx = getelementptr inbounds double, double* %1, i64 50, !dbg !99
  %2 = load double, double* %arrayidx, align 16, !dbg !101, !tbaa !57
  %mul = fmul double %2, 2.000000e+00, !dbg !101
  store double %mul, double* %arrayidx, align 16, !dbg !101, !tbaa !57
  ret void, !dbg !102
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %vla, double* dereferenceable(8) %a) #4 !dbg !103 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !105, metadata !DIExpression()), !dbg !109
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !106, metadata !DIExpression()), !dbg !109
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !78
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !107, metadata !DIExpression()), !dbg !109
  store double* %a, double** %a.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !108, metadata !DIExpression()), !dbg !109
  %0 = load i64, i64* %vla.addr, align 8, !dbg !110, !tbaa !78
  %1 = load double*, double** %a.addr, align 8, !dbg !110, !tbaa !32
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !110, !tbaa !32
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !110, !tbaa !32
  %4 = load double*, double** %a.addr, align 8, !dbg !110, !tbaa !32
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i64 %0, double* %4) #3, !dbg !110
  ret void, !dbg !110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i32 @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32)

declare !callback !111 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160934_main_l63(i64 %vla, double* dereferenceable(8) %a) #4 !dbg !113 {
entry:
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !78
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !115, metadata !DIExpression()), !dbg !117
  store double* %a, double** %a.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !116, metadata !DIExpression()), !dbg !117
  %0 = load i64, i64* %vla.addr, align 8, !dbg !118, !tbaa !78
  %1 = load double*, double** %a.addr, align 8, !dbg !118, !tbaa !32
  %2 = load double*, double** %a.addr, align 8, !dbg !118, !tbaa !32
  call void @__omp_offloading_1030a_2160934_main_l63_debug__(i64 %0, double* %2) #3, !dbg !118
  ret void, !dbg !118
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB116-target-teams-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 10.0.1 "}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !10, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !20, !21, !23}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 53, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 53, type: !13)
!19 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 55, type: !12)
!20 = !DILocalVariable(name: "len", scope: !9, file: !1, line: 56, type: !12)
!21 = !DILocalVariable(name: "__vla_expr0", scope: !9, type: !22, flags: DIFlagArtificial)
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 57, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: !21)
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 53, column: 14, scope: !9)
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !29, i64 0}
!34 = !DILocation(line: 53, column: 26, scope: !9)
!35 = !DILocation(line: 55, column: 3, scope: !9)
!36 = !DILocation(line: 55, column: 7, scope: !9)
!37 = !DILocation(line: 56, column: 3, scope: !9)
!38 = !DILocation(line: 56, column: 7, scope: !9)
!39 = !DILocation(line: 57, column: 12, scope: !9)
!40 = !DILocation(line: 57, column: 3, scope: !9)
!41 = !DILocation(line: 0, scope: !9)
!42 = !DILocation(line: 57, column: 10, scope: !9)
!43 = !DILocation(line: 60, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !9, file: !1, line: 60, column: 3)
!45 = !DILocation(line: 60, column: 8, scope: !44)
!46 = !DILocation(line: 60, column: 13, scope: !47)
!47 = distinct !DILexicalBlock(scope: !44, file: !1, line: 60, column: 3)
!48 = !DILocation(line: 60, column: 15, scope: !47)
!49 = !DILocation(line: 60, column: 14, scope: !47)
!50 = !DILocation(line: 60, column: 3, scope: !44)
!51 = !DILocation(line: 61, column: 20, scope: !47)
!52 = !DILocation(line: 61, column: 12, scope: !47)
!53 = !DILocation(line: 61, column: 22, scope: !47)
!54 = !DILocation(line: 61, column: 7, scope: !47)
!55 = !DILocation(line: 61, column: 5, scope: !47)
!56 = !DILocation(line: 61, column: 9, scope: !47)
!57 = !{!58, !58, i64 0}
!58 = !{!"double", !29, i64 0}
!59 = !DILocation(line: 60, column: 21, scope: !47)
!60 = !DILocation(line: 60, column: 3, scope: !47)
!61 = distinct !{!61, !50, !62}
!62 = !DILocation(line: 61, column: 23, scope: !44)
!63 = !DILocation(line: 63, column: 1, scope: !64)
!64 = distinct !DILexicalBlock(scope: !9, file: !1, line: 63, column: 1)
!65 = !DILocation(line: 69, column: 25, scope: !9)
!66 = !DILocation(line: 69, column: 3, scope: !9)
!67 = !DILocation(line: 70, column: 3, scope: !9)
!68 = !DILocation(line: 71, column: 1, scope: !9)
!69 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160934_main_l63_debug__", scope: !1, file: !1, line: 64, type: !70, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !22, !72}
!72 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!73 = !{!74, !75}
!74 = !DILocalVariable(name: "vla", arg: 1, scope: !69, type: !22, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "a", arg: 2, scope: !69, file: !1, line: 57, type: !72)
!76 = !{!77, !33, i64 16}
!77 = !{!"ident_t", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !33, i64 16}
!78 = !{!79, !79, i64 0}
!79 = !{!"long", !29, i64 0}
!80 = !DILocation(line: 0, scope: !69)
!81 = !DILocation(line: 57, column: 10, scope: !69)
!82 = !DILocation(line: 64, column: 1, scope: !69)
!83 = !DILocation(line: 64, column: 32, scope: !69)
!84 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 65, type: !85, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !91)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !87, !87, !22, !72}
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!91 = !{!92, !93, !94, !95}
!92 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !84, type: !87, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !84, type: !87, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: "vla", arg: 3, scope: !84, type: !22, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "a", arg: 4, scope: !84, file: !1, line: 57, type: !72)
!96 = !DILocation(line: 0, scope: !84)
!97 = !DILocation(line: 57, column: 10, scope: !84)
!98 = !DILocation(line: 65, column: 3, scope: !84)
!99 = !DILocation(line: 66, column: 5, scope: !100)
!100 = distinct !DILexicalBlock(scope: !84, file: !1, line: 65, column: 3)
!101 = !DILocation(line: 66, column: 10, scope: !100)
!102 = !DILocation(line: 67, column: 3, scope: !84)
!103 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 65, type: !85, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !104)
!104 = !{!105, !106, !107, !108}
!105 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !103, type: !87, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !103, type: !87, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: "vla", arg: 3, scope: !103, type: !22, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: "a", arg: 4, scope: !103, type: !72, flags: DIFlagArtificial)
!109 = !DILocation(line: 0, scope: !103)
!110 = !DILocation(line: 65, column: 3, scope: !103)
!111 = !{!112}
!112 = !{i64 2, i64 -1, i64 -1, i1 true}
!113 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160934_main_l63", scope: !1, file: !1, line: 64, type: !70, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !114)
!114 = !{!115, !116}
!115 = !DILocalVariable(name: "vla", arg: 1, scope: !113, type: !22, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: "a", arg: 2, scope: !113, type: !72, flags: DIFlagArtificial)
!117 = !DILocation(line: 0, scope: !113)
!118 = !DILocation(line: 64, column: 1, scope: !113)
