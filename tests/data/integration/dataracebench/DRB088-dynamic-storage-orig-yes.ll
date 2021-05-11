; ModuleID = 'integration/dataracebench/DRB088-dynamic-storage-orig-yes.c'
source_filename = "integration/dataracebench/DRB088-dynamic-storage-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ident_t = type { i32, i32, i32, i32, i8* }

@counter = common dso_local global i32* null, align 8, !dbg !0
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [17 x i8] c"malloc() failes\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [73 x i8] c";integration/dataracebench/DRB088-dynamic-storage-orig-yes.c;main;75;2;;\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @foo() #0 !dbg !18 {
entry:
  %0 = load i32*, i32** @counter, align 8, !dbg !21, !tbaa !22
  %1 = load i32, i32* %0, align 4, !dbg !26, !tbaa !27
  %inc = add nsw i32 %1, 1, !dbg !26
  store i32 %inc, i32* %0, align 4, !dbg !26, !tbaa !27
  ret void, !dbg !29
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !30 {
entry:
  %retval = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %call = call noalias i8* @malloc(i64 4) #7, !dbg !33
  %2 = bitcast i8* %call to i32*, !dbg !34
  store i32* %2, i32** @counter, align 8, !dbg !35, !tbaa !22
  %3 = load i32*, i32** @counter, align 8, !dbg !36, !tbaa !22
  %cmp = icmp eq i32* %3, null, !dbg !38
  br i1 %cmp, label %if.then, label %if.end, !dbg !39

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !40, !tbaa !22
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !42
  call void @exit(i32 1) #8, !dbg !43
  unreachable, !dbg !43

if.end:                                           ; preds = %entry
  %5 = load i32*, i32** @counter, align 8, !dbg !44, !tbaa !22
  store i32 0, i32* %5, align 4, !dbg !45, !tbaa !27
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !46
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !46, !tbaa !47
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !46
  %7 = load i32*, i32** @counter, align 8, !dbg !49, !tbaa !22
  %8 = load i32, i32* %7, align 4, !dbg !50, !tbaa !27
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %8), !dbg !51
  %9 = load i32*, i32** @counter, align 8, !dbg !52, !tbaa !22
  %10 = bitcast i32* %9 to i8*, !dbg !52
  call void @free(i8* %10) #7, !dbg !53
  ret i32 0, !dbg !54
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #4 !dbg !55 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !63, metadata !DIExpression()), !dbg !65
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !64, metadata !DIExpression()), !dbg !65
  call void @foo(), !dbg !66
  ret void, !dbg !68
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #4 !dbg !69 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !71, metadata !DIExpression()), !dbg !73
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !22
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !72, metadata !DIExpression()), !dbg !73
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !74, !tbaa !22
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !74, !tbaa !22
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #7, !dbg !74
  ret void, !dbg !74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare !callback !75 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare !dbg !9 dso_local void @free(i8*) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "counter", scope: !2, file: !3, line: 59, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB088-dynamic-storage-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DISubprogram(name: "free", scope: !10, file: !10, line: 565, type: !11, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!10 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!11 = !DISubroutineType(types: !12)
!12 = !{null, !8}
!13 = !{!0}
!14 = !{i32 7, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 10.0.1 "}
!18 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 61, type: !19, scopeLine: 62, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!19 = !DISubroutineType(types: !20)
!20 = !{null}
!21 = !DILocation(line: 63, column: 6, scope: !18)
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !DILocation(line: 63, column: 14, scope: !18)
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !24, i64 0}
!29 = !DILocation(line: 64, column: 1, scope: !18)
!30 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 66, type: !31, scopeLine: 67, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!31 = !DISubroutineType(types: !32)
!32 = !{!7}
!33 = !DILocation(line: 68, column: 20, scope: !30)
!34 = !DILocation(line: 68, column: 13, scope: !30)
!35 = !DILocation(line: 68, column: 11, scope: !30)
!36 = !DILocation(line: 69, column: 7, scope: !37)
!37 = distinct !DILexicalBlock(scope: !30, file: !3, line: 69, column: 7)
!38 = !DILocation(line: 69, column: 14, scope: !37)
!39 = !DILocation(line: 69, column: 7, scope: !30)
!40 = !DILocation(line: 71, column: 13, scope: !41)
!41 = distinct !DILexicalBlock(scope: !37, file: !3, line: 70, column: 3)
!42 = !DILocation(line: 71, column: 5, scope: !41)
!43 = !DILocation(line: 72, column: 5, scope: !41)
!44 = !DILocation(line: 74, column: 4, scope: !30)
!45 = !DILocation(line: 74, column: 12, scope: !30)
!46 = !DILocation(line: 75, column: 2, scope: !30)
!47 = !{!48, !23, i64 16}
!48 = !{!"ident_t", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !23, i64 16}
!49 = !DILocation(line: 79, column: 20, scope: !30)
!50 = !DILocation(line: 79, column: 19, scope: !30)
!51 = !DILocation(line: 79, column: 3, scope: !30)
!52 = !DILocation(line: 80, column: 9, scope: !30)
!53 = !DILocation(line: 80, column: 3, scope: !30)
!54 = !DILocation(line: 81, column: 3, scope: !30)
!55 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 76, type: !56, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !62)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !58, !58}
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!62 = !{!63, !64}
!63 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !55, type: !58, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !55, type: !58, flags: DIFlagArtificial)
!65 = !DILocation(line: 0, scope: !55)
!66 = !DILocation(line: 77, column: 6, scope: !67)
!67 = distinct !DILexicalBlock(scope: !55, file: !3, line: 76, column: 3)
!68 = !DILocation(line: 78, column: 3, scope: !55)
!69 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 76, type: !56, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !70)
!70 = !{!71, !72}
!71 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !69, type: !58, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !69, type: !58, flags: DIFlagArtificial)
!73 = !DILocation(line: 0, scope: !69)
!74 = !DILocation(line: 76, column: 3, scope: !69)
!75 = !{!76}
!76 = !{i64 2, i64 -1, i64 -1, i1 true}
