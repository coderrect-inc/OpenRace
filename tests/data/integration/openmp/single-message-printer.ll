; ModuleID = 'integration/openmp/single-message-printer.c'
source_filename = "integration/openmp/single-message-printer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [66 x i8] c";integration/openmp/single-message-printer.c;single_example;9;9;;\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Beginning work1.\0A\00", align 1
@2 = private unnamed_addr constant [67 x i8] c";integration/openmp/single-message-printer.c;single_example;13;9;;\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Finishing work1.\0A\00", align 1
@3 = private unnamed_addr constant [67 x i8] c";integration/openmp/single-message-printer.c;single_example;16;9;;\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Finished work1 and beginning work2.\0A\00", align 1
@4 = private unnamed_addr constant [66 x i8] c";integration/openmp/single-message-printer.c;single_example;7;5;;\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @single_example() #0 !dbg !7 {
entry:
  %total = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast i32* %total to i8*, !dbg !13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !13
  call void @llvm.dbg.declare(metadata i32* %total, metadata !11, metadata !DIExpression()), !dbg !14
  store i32 0, i32* %total, align 4, !dbg !14, !tbaa !15
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !19
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @4, i32 0, i32 0), i8** %3, align 8, !dbg !19, !tbaa !20
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %total), !dbg !19
  %4 = bitcast i32* %total to i8*, !dbg !23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #5, !dbg !23
  ret void, !dbg !23
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %total) #3 !dbg !24 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %total.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !33, metadata !DIExpression()), !dbg !37
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !34, metadata !DIExpression()), !dbg !37
  store i32* %total, i32** %total.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %total.addr, metadata !35, metadata !DIExpression()), !dbg !38
  %2 = load i32*, i32** %total.addr, align 8, !dbg !39, !tbaa !36
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !40
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !40, !tbaa !20
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !40
  %5 = load i32, i32* %4, align 4, !dbg !40, !tbaa !15
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !40
  %7 = icmp ne i32 %6, 0, !dbg !40
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !40

omp_if.then:                                      ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)), !dbg !42
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !42
  br label %omp_if.end, !dbg !42

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !44
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !44, !tbaa !20
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !44
  %9 = load i32, i32* %2, align 4, !dbg !45, !tbaa !15
  %add = add nsw i32 %9, 2, !dbg !45
  store i32 %add, i32* %2, align 4, !dbg !45, !tbaa !15
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !46
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @2, i32 0, i32 0), i8** %10, align 8, !dbg !46, !tbaa !20
  %11 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !46
  %12 = icmp ne i32 %11, 0, !dbg !46
  br i1 %12, label %omp_if.then1, label %omp_if.end3, !dbg !46

omp_if.then1:                                     ; preds = %omp_if.end
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)), !dbg !47
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !47
  br label %omp_if.end3, !dbg !47

omp_if.end3:                                      ; preds = %omp_if.then1, %omp_if.end
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !49
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @2, i32 0, i32 0), i8** %13, align 8, !dbg !49, !tbaa !20
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !49
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @3, i32 0, i32 0), i8** %14, align 8, !dbg !50, !tbaa !20
  %15 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !50
  %16 = icmp ne i32 %15, 0, !dbg !50
  br i1 %16, label %omp_if.then4, label %omp_if.end6, !dbg !50

omp_if.then4:                                     ; preds = %omp_if.end3
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0)), !dbg !51
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !51
  br label %omp_if.end6, !dbg !51

omp_if.end6:                                      ; preds = %omp_if.then4, %omp_if.end3
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !53
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @3, i32 0, i32 0), i8** %17, align 8, !dbg !53, !tbaa !20
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !53
  %18 = load i32, i32* %2, align 4, !dbg !54, !tbaa !15
  %sub = sub nsw i32 %18, 2, !dbg !54
  store i32 %sub, i32* %2, align 4, !dbg !54, !tbaa !15
  ret void, !dbg !55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local i32 @printf(i8*, ...) #4

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %total) #3 !dbg !56 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %total.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !58, metadata !DIExpression()), !dbg !61
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !59, metadata !DIExpression()), !dbg !61
  store i32* %total, i32** %total.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %total.addr, metadata !60, metadata !DIExpression()), !dbg !61
  %0 = load i32*, i32** %total.addr, align 8, !dbg !62, !tbaa !36
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !62, !tbaa !36
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !62, !tbaa !36
  %3 = load i32*, i32** %total.addr, align 8, !dbg !62, !tbaa !36
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !62
  ret void, !dbg !62
}

declare !callback !63 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !65 {
entry:
  call void @single_example(), !dbg !68
  ret i32 0, !dbg !69
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (git@github.com:coderrect-inc/classic-flang-llvm-project.git 385cb14c62f7038a201227dbe865453e88b40fe5)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/single-message-printer.c", directory: "/home/rohan/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 (git@github.com:coderrect-inc/classic-flang-llvm-project.git 385cb14c62f7038a201227dbe865453e88b40fe5)"}
!7 = distinct !DISubprogram(name: "single_example", scope: !1, file: !1, line: 4, type: !8, scopeLine: 5, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !{!11}
!11 = !DILocalVariable(name: "total", scope: !7, file: !1, line: 6, type: !12)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocation(line: 6, column: 5, scope: !7)
!14 = !DILocation(line: 6, column: 9, scope: !7)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 7, column: 5, scope: !7)
!20 = !{!21, !22, i64 16}
!21 = !{!"ident_t", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !22, i64 16}
!22 = !{!"any pointer", !17, i64 0}
!23 = !DILocation(line: 20, column: 2, scope: !7)
!24 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 8, type: !25, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !32)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !27, !27, !31}
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!31 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!32 = !{!33, !34, !35}
!33 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !24, type: !27, flags: DIFlagArtificial)
!34 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !24, type: !27, flags: DIFlagArtificial)
!35 = !DILocalVariable(name: "total", arg: 3, scope: !24, file: !1, line: 6, type: !31)
!36 = !{!22, !22, i64 0}
!37 = !DILocation(line: 0, scope: !24)
!38 = !DILocation(line: 6, column: 9, scope: !24)
!39 = !DILocation(line: 8, column: 5, scope: !24)
!40 = !DILocation(line: 9, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !24, file: !1, line: 8, column: 5)
!42 = !DILocation(line: 10, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !41, file: !1, line: 9, column: 9)
!44 = !DILocation(line: 9, column: 28, scope: !43)
!45 = !DILocation(line: 11, column: 14, scope: !41)
!46 = !DILocation(line: 13, column: 9, scope: !41)
!47 = !DILocation(line: 14, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !41, file: !1, line: 13, column: 9)
!49 = !DILocation(line: 13, column: 27, scope: !48)
!50 = !DILocation(line: 16, column: 9, scope: !41)
!51 = !DILocation(line: 17, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !41, file: !1, line: 16, column: 9)
!53 = !DILocation(line: 16, column: 28, scope: !52)
!54 = !DILocation(line: 18, column: 15, scope: !41)
!55 = !DILocation(line: 19, column: 5, scope: !24)
!56 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 8, type: !25, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !57)
!57 = !{!58, !59, !60}
!58 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !56, type: !27, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !56, type: !27, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: "total", arg: 3, scope: !56, type: !31, flags: DIFlagArtificial)
!61 = !DILocation(line: 0, scope: !56)
!62 = !DILocation(line: 8, column: 5, scope: !56)
!63 = !{!64}
!64 = !{i64 2, i64 -1, i64 -1, i1 true}
!65 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 22, type: !66, scopeLine: 22, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!66 = !DISubroutineType(types: !67)
!67 = !{!12}
!68 = !DILocation(line: 23, column: 6, scope: !65)
!69 = !DILocation(line: 24, column: 2, scope: !65)
