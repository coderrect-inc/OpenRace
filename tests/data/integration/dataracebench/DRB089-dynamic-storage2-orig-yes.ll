; ModuleID = 'integration/dataracebench/DRB089-dynamic-storage2-orig-yes.c'
source_filename = "integration/dataracebench/DRB089-dynamic-storage2-orig-yes.c"
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
@1 = private unnamed_addr constant [74 x i8] c";integration/dataracebench/DRB089-dynamic-storage2-orig-yes.c;main;71;2;;\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !18 {
entry:
  %retval = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %call = call noalias i8* @malloc(i64 4) #7, !dbg !21
  %2 = bitcast i8* %call to i32*, !dbg !22
  store i32* %2, i32** @counter, align 8, !dbg !23, !tbaa !24
  %3 = load i32*, i32** @counter, align 8, !dbg !28, !tbaa !24
  %cmp = icmp eq i32* %3, null, !dbg !30
  br i1 %cmp, label %if.then, label %if.end, !dbg !31

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !32, !tbaa !24
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !34
  call void @exit(i32 1) #8, !dbg !35
  unreachable, !dbg !35

if.end:                                           ; preds = %entry
  %5 = load i32*, i32** @counter, align 8, !dbg !36, !tbaa !24
  store i32 0, i32* %5, align 4, !dbg !37, !tbaa !38
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !40
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !40, !tbaa !41
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !40
  %7 = load i32*, i32** @counter, align 8, !dbg !43, !tbaa !24
  %8 = load i32, i32* %7, align 4, !dbg !44, !tbaa !38
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %8), !dbg !45
  %9 = load i32*, i32** @counter, align 8, !dbg !46, !tbaa !24
  %10 = bitcast i32* %9 to i8*, !dbg !46
  call void @free(i8* %10) #7, !dbg !47
  ret i32 0, !dbg !48
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #4 !dbg !49 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !57, metadata !DIExpression()), !dbg !59
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !58, metadata !DIExpression()), !dbg !59
  %0 = load i32*, i32** @counter, align 8, !dbg !60, !tbaa !24
  %1 = load i32, i32* %0, align 4, !dbg !62, !tbaa !38
  %inc = add nsw i32 %1, 1, !dbg !62
  store i32 %inc, i32* %0, align 4, !dbg !62, !tbaa !38
  ret void, !dbg !63
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #4 !dbg !64 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !66, metadata !DIExpression()), !dbg !68
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !67, metadata !DIExpression()), !dbg !68
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !69, !tbaa !24
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !69, !tbaa !24
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #7, !dbg !69
  ret void, !dbg !69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare !callback !70 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!3 = !DIFile(filename: "integration/dataracebench/DRB089-dynamic-storage2-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!18 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 62, type: !19, scopeLine: 63, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!19 = !DISubroutineType(types: !20)
!20 = !{!7}
!21 = !DILocation(line: 64, column: 20, scope: !18)
!22 = !DILocation(line: 64, column: 13, scope: !18)
!23 = !DILocation(line: 64, column: 11, scope: !18)
!24 = !{!25, !25, i64 0}
!25 = !{!"any pointer", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 65, column: 7, scope: !29)
!29 = distinct !DILexicalBlock(scope: !18, file: !3, line: 65, column: 7)
!30 = !DILocation(line: 65, column: 14, scope: !29)
!31 = !DILocation(line: 65, column: 7, scope: !18)
!32 = !DILocation(line: 67, column: 13, scope: !33)
!33 = distinct !DILexicalBlock(scope: !29, file: !3, line: 66, column: 3)
!34 = !DILocation(line: 67, column: 5, scope: !33)
!35 = !DILocation(line: 68, column: 5, scope: !33)
!36 = !DILocation(line: 70, column: 4, scope: !18)
!37 = !DILocation(line: 70, column: 12, scope: !18)
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !26, i64 0}
!40 = !DILocation(line: 71, column: 2, scope: !18)
!41 = !{!42, !25, i64 16}
!42 = !{!"ident_t", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !25, i64 16}
!43 = !DILocation(line: 75, column: 20, scope: !18)
!44 = !DILocation(line: 75, column: 19, scope: !18)
!45 = !DILocation(line: 75, column: 3, scope: !18)
!46 = !DILocation(line: 76, column: 9, scope: !18)
!47 = !DILocation(line: 76, column: 3, scope: !18)
!48 = !DILocation(line: 77, column: 3, scope: !18)
!49 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 72, type: !50, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !56)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52, !52}
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!56 = !{!57, !58}
!57 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !49, type: !52, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !49, type: !52, flags: DIFlagArtificial)
!59 = !DILocation(line: 0, scope: !49)
!60 = !DILocation(line: 73, column: 7, scope: !61)
!61 = distinct !DILexicalBlock(scope: !49, file: !3, line: 72, column: 3)
!62 = !DILocation(line: 73, column: 15, scope: !61)
!63 = !DILocation(line: 74, column: 3, scope: !49)
!64 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 72, type: !50, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !65)
!65 = !{!66, !67}
!66 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !64, type: !52, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !64, type: !52, flags: DIFlagArtificial)
!68 = !DILocation(line: 0, scope: !64)
!69 = !DILocation(line: 72, column: 3, scope: !64)
!70 = !{!71}
!71 = !{i64 2, i64 -1, i64 -1, i1 true}
