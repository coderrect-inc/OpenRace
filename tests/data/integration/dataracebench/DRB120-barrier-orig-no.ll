; ModuleID = 'integration/dataracebench/DRB120-barrier-orig-no.c'
source_filename = "integration/dataracebench/DRB120-barrier-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [64 x i8] c";integration/dataracebench/DRB120-barrier-orig-no.c;main;24;5;;\00", align 1
@2 = private unnamed_addr constant [64 x i8] c";integration/dataracebench/DRB120-barrier-orig-no.c;main;27;5;;\00", align 1
@3 = private unnamed_addr constant [64 x i8] c";integration/dataracebench/DRB120-barrier-orig-no.c;main;29;5;;\00", align 1
@4 = private unnamed_addr constant [64 x i8] c";integration/dataracebench/DRB120-barrier-orig-no.c;main;22;3;;\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %var = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %error = alloca i32, align 4
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !19
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !15, metadata !DIExpression()), !dbg !23
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !26
  %2 = bitcast i32* %var to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %var, metadata !17, metadata !DIExpression()), !dbg !28
  store i32 0, i32* %var, align 4, !dbg !28, !tbaa !19
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !29
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @4, i32 0, i32 0), i8** %3, align 8, !dbg !29, !tbaa !30
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %var), !dbg !29
  %4 = load i32, i32* %var, align 4, !dbg !32, !tbaa !19
  %cmp = icmp ne i32 %4, 2, !dbg !34
  br i1 %cmp, label %if.then, label %if.end, !dbg !35

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %var, align 4, !dbg !36, !tbaa !19
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %5), !dbg !37
  br label %if.end, !dbg !37

if.end:                                           ; preds = %if.then, %entry
  %6 = bitcast i32* %error to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %error, metadata !18, metadata !DIExpression()), !dbg !39
  %7 = load i32, i32* %var, align 4, !dbg !40, !tbaa !19
  %cmp1 = icmp ne i32 %7, 2, !dbg !41
  %conv = zext i1 %cmp1 to i32, !dbg !41
  store i32 %conv, i32* %error, align 4, !dbg !39, !tbaa !19
  %8 = load i32, i32* %error, align 4, !dbg !42, !tbaa !19
  %9 = bitcast i32* %error to i8*, !dbg !43
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #5, !dbg !43
  %10 = bitcast i32* %var to i8*, !dbg !43
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #5, !dbg !43
  ret i32 %8, !dbg !44
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %var) #3 !dbg !45 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !54, metadata !DIExpression()), !dbg !57
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !55, metadata !DIExpression()), !dbg !57
  store i32* %var, i32** %var.addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !56, metadata !DIExpression()), !dbg !58
  %2 = load i32*, i32** %var.addr, align 8, !dbg !59, !tbaa !24
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !60
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !60, !tbaa !30
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !60
  %5 = load i32, i32* %4, align 4, !dbg !60, !tbaa !19
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !60
  %7 = icmp ne i32 %6, 0, !dbg !60
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !60

omp_if.then:                                      ; preds = %entry
  %8 = load i32, i32* %2, align 4, !dbg !62, !tbaa !19
  %inc = add nsw i32 %8, 1, !dbg !62
  store i32 %inc, i32* %2, align 4, !dbg !62, !tbaa !19
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !64
  br label %omp_if.end, !dbg !64

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !65
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !65, !tbaa !30
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !65
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !66
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @2, i32 0, i32 0), i8** %10, align 8, !dbg !66, !tbaa !30
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !66
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !67
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @3, i32 0, i32 0), i8** %11, align 8, !dbg !67, !tbaa !30
  %12 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !67
  %13 = icmp ne i32 %12, 0, !dbg !67
  br i1 %13, label %omp_if.then1, label %omp_if.end3, !dbg !67

omp_if.then1:                                     ; preds = %omp_if.end
  %14 = load i32, i32* %2, align 4, !dbg !68, !tbaa !19
  %inc2 = add nsw i32 %14, 1, !dbg !68
  store i32 %inc2, i32* %2, align 4, !dbg !68, !tbaa !19
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !70
  br label %omp_if.end3, !dbg !70

omp_if.end3:                                      ; preds = %omp_if.then1, %omp_if.end
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !71
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @3, i32 0, i32 0), i8** %15, align 8, !dbg !71, !tbaa !30
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !71
  ret void, !dbg !72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %var) #3 !dbg !73 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !75, metadata !DIExpression()), !dbg !78
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !76, metadata !DIExpression()), !dbg !78
  store i32* %var, i32** %var.addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !77, metadata !DIExpression()), !dbg !78
  %0 = load i32*, i32** %var.addr, align 8, !dbg !79, !tbaa !24
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !79, !tbaa !24
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !79, !tbaa !24
  %3 = load i32*, i32** %var.addr, align 8, !dbg !79, !tbaa !24
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !79
  ret void, !dbg !79
}

declare !callback !80 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB120-barrier-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !8, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15, !16, !17, !18}
!15 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 18, type: !10)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 18, type: !11)
!17 = !DILocalVariable(name: "var", scope: !7, file: !1, line: 20, type: !10)
!18 = !DILocalVariable(name: "error", scope: !7, file: !1, line: 34, type: !10)
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !DILocation(line: 18, column: 14, scope: !7)
!24 = !{!25, !25, i64 0}
!25 = !{!"any pointer", !21, i64 0}
!26 = !DILocation(line: 18, column: 26, scope: !7)
!27 = !DILocation(line: 20, column: 3, scope: !7)
!28 = !DILocation(line: 20, column: 7, scope: !7)
!29 = !DILocation(line: 22, column: 3, scope: !7)
!30 = !{!31, !25, i64 16}
!31 = !{!"ident_t", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !25, i64 16}
!32 = !DILocation(line: 33, column: 6, scope: !33)
!33 = distinct !DILexicalBlock(scope: !7, file: !1, line: 33, column: 6)
!34 = !DILocation(line: 33, column: 10, scope: !33)
!35 = !DILocation(line: 33, column: 6, scope: !7)
!36 = !DILocation(line: 33, column: 30, scope: !33)
!37 = !DILocation(line: 33, column: 16, scope: !33)
!38 = !DILocation(line: 34, column: 3, scope: !7)
!39 = !DILocation(line: 34, column: 7, scope: !7)
!40 = !DILocation(line: 34, column: 16, scope: !7)
!41 = !DILocation(line: 34, column: 20, scope: !7)
!42 = !DILocation(line: 35, column: 10, scope: !7)
!43 = !DILocation(line: 36, column: 1, scope: !7)
!44 = !DILocation(line: 35, column: 3, scope: !7)
!45 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 23, type: !46, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !53)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !48, !52}
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!52 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!53 = !{!54, !55, !56}
!54 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !45, type: !48, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !45, type: !48, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: "var", arg: 3, scope: !45, file: !1, line: 20, type: !52)
!57 = !DILocation(line: 0, scope: !45)
!58 = !DILocation(line: 20, column: 7, scope: !45)
!59 = !DILocation(line: 23, column: 3, scope: !45)
!60 = !DILocation(line: 24, column: 5, scope: !61)
!61 = distinct !DILexicalBlock(scope: !45, file: !1, line: 23, column: 3)
!62 = !DILocation(line: 25, column: 8, scope: !63)
!63 = distinct !DILexicalBlock(scope: !61, file: !1, line: 24, column: 5)
!64 = !DILocation(line: 25, column: 5, scope: !63)
!65 = !DILocation(line: 24, column: 23, scope: !63)
!66 = !DILocation(line: 27, column: 5, scope: !61)
!67 = !DILocation(line: 29, column: 5, scope: !61)
!68 = !DILocation(line: 30, column: 8, scope: !69)
!69 = distinct !DILexicalBlock(scope: !61, file: !1, line: 29, column: 5)
!70 = !DILocation(line: 30, column: 5, scope: !69)
!71 = !DILocation(line: 29, column: 23, scope: !69)
!72 = !DILocation(line: 31, column: 3, scope: !45)
!73 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 23, type: !46, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !74)
!74 = !{!75, !76, !77}
!75 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !73, type: !48, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !73, type: !48, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "var", arg: 3, scope: !73, type: !52, flags: DIFlagArtificial)
!78 = !DILocation(line: 0, scope: !73)
!79 = !DILocation(line: 23, column: 3, scope: !73)
!80 = !{!81}
!81 = !{i64 2, i64 -1, i64 -1, i1 true}
