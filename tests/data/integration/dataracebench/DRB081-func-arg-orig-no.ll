; ModuleID = 'integration/dataracebench/DRB081-func-arg-orig-no.c'
source_filename = "integration/dataracebench/DRB081-func-arg-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB081-func-arg-orig-no.c;main;63;3;;\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"i==0\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"integration/dataracebench/DRB081-func-arg-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"i=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @f1(i32 %q) #0 !dbg !7 {
entry:
  %q.addr = alloca i32, align 4
  store i32 %q, i32* %q.addr, align 4, !tbaa !13
  call void @llvm.dbg.declare(metadata i32* %q.addr, metadata !12, metadata !DIExpression()), !dbg !17
  %0 = load i32, i32* %q.addr, align 4, !dbg !18, !tbaa !13
  %add = add nsw i32 %0, 1, !dbg !18
  store i32 %add, i32* %q.addr, align 4, !dbg !18, !tbaa !13
  ret void, !dbg !19
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !20 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %i to i8*, !dbg !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %i, metadata !24, metadata !DIExpression()), !dbg !26
  store i32 0, i32* %i, align 4, !dbg !26, !tbaa !13
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !27
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !27, !tbaa !28
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %i), !dbg !27
  %4 = load i32, i32* %i, align 4, !dbg !31, !tbaa !13
  %cmp = icmp eq i32 %4, 0, !dbg !31
  br i1 %cmp, label %if.then, label %if.else, !dbg !34

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !34

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7, !dbg !31
  unreachable, !dbg !31

if.end:                                           ; preds = %if.then
  %5 = load i32, i32* %i, align 4, !dbg !35, !tbaa !13
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %5), !dbg !36
  %6 = bitcast i32* %i to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #6, !dbg !37
  ret i32 0, !dbg !38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #3 !dbg !39 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !48, metadata !DIExpression()), !dbg !52
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !49, metadata !DIExpression()), !dbg !52
  store i32* %i, i32** %i.addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !50, metadata !DIExpression()), !dbg !53
  %0 = load i32*, i32** %i.addr, align 8, !dbg !54, !tbaa !51
  %1 = load i32, i32* %0, align 4, !dbg !55, !tbaa !13
  call void @f1(i32 %1), !dbg !57
  ret void, !dbg !58
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #3 !dbg !59 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !61, metadata !DIExpression()), !dbg !64
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !62, metadata !DIExpression()), !dbg !64
  store i32* %i, i32** %i.addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !63, metadata !DIExpression()), !dbg !64
  %0 = load i32*, i32** %i.addr, align 8, !dbg !65, !tbaa !51
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !65, !tbaa !51
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !65, !tbaa !51
  %3 = load i32*, i32** %i.addr, align 8, !dbg !65, !tbaa !51
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #6, !dbg !65
  ret void, !dbg !65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare !callback !66 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB081-func-arg-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "f1", scope: !1, file: !1, line: 55, type: !8, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DILocalVariable(name: "q", arg: 1, scope: !7, file: !1, line: 55, type: !10)
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !15, i64 0}
!15 = !{!"omnipotent char", !16, i64 0}
!16 = !{!"Simple C/C++ TBAA"}
!17 = !DILocation(line: 55, column: 13, scope: !7)
!18 = !DILocation(line: 57, column: 5, scope: !7)
!19 = !DILocation(line: 58, column: 1, scope: !7)
!20 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 60, type: !21, scopeLine: 61, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !23)
!21 = !DISubroutineType(types: !22)
!22 = !{!10}
!23 = !{!24}
!24 = !DILocalVariable(name: "i", scope: !20, file: !1, line: 62, type: !10)
!25 = !DILocation(line: 62, column: 3, scope: !20)
!26 = !DILocation(line: 62, column: 7, scope: !20)
!27 = !DILocation(line: 63, column: 3, scope: !20)
!28 = !{!29, !30, i64 16}
!29 = !{!"ident_t", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !30, i64 16}
!30 = !{!"any pointer", !15, i64 0}
!31 = !DILocation(line: 67, column: 3, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 67, column: 3)
!33 = distinct !DILexicalBlock(scope: !20, file: !1, line: 67, column: 3)
!34 = !DILocation(line: 67, column: 3, scope: !33)
!35 = !DILocation(line: 68, column: 20, scope: !20)
!36 = !DILocation(line: 68, column: 3, scope: !20)
!37 = !DILocation(line: 70, column: 1, scope: !20)
!38 = !DILocation(line: 69, column: 3, scope: !20)
!39 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 64, type: !40, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !47)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !42, !46}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!46 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!47 = !{!48, !49, !50}
!48 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !39, type: !42, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !39, type: !42, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: "i", arg: 3, scope: !39, file: !1, line: 62, type: !46)
!51 = !{!30, !30, i64 0}
!52 = !DILocation(line: 0, scope: !39)
!53 = !DILocation(line: 62, column: 7, scope: !39)
!54 = !DILocation(line: 64, column: 3, scope: !39)
!55 = !DILocation(line: 65, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !39, file: !1, line: 64, column: 3)
!57 = !DILocation(line: 65, column: 6, scope: !56)
!58 = !DILocation(line: 66, column: 3, scope: !39)
!59 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 64, type: !40, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !60)
!60 = !{!61, !62, !63}
!61 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !59, type: !42, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !59, type: !42, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: "i", arg: 3, scope: !59, type: !46, flags: DIFlagArtificial)
!64 = !DILocation(line: 0, scope: !59)
!65 = !DILocation(line: 64, column: 3, scope: !59)
!66 = !{!67}
!67 = !{i64 2, i64 -1, i64 -1, i1 true}
