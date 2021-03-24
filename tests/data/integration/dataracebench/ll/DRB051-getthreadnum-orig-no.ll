; ModuleID = 'DRB051-getthreadnum-orig-no.c'
source_filename = "DRB051-getthreadnum-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [43 x i8] c";DRB051-getthreadnum-orig-no.c;main;56;1;;\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"numThreads=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %numThreads = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %numThreads, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 0, i32* %numThreads, align 4, !dbg !12
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !13
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !13
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %numThreads), !dbg !13
  %3 = load i32, i32* %numThreads, align 4, !dbg !14
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %3), !dbg !15
  ret i32 0, !dbg !16
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %numThreads) #2 !dbg !17 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %numThreads.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !25, metadata !DIExpression()), !dbg !26
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !27, metadata !DIExpression()), !dbg !26
  store i32* %numThreads, i32** %numThreads.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %numThreads.addr, metadata !28, metadata !DIExpression()), !dbg !29
  %0 = load i32*, i32** %numThreads.addr, align 8, !dbg !30
  %call = call i32 @omp_get_thread_num(), !dbg !31
  %cmp = icmp eq i32 %call, 0, !dbg !34
  br i1 %cmp, label %if.then, label %if.end, !dbg !35

if.then:                                          ; preds = %entry
  %call1 = call i32 @omp_get_num_threads(), !dbg !36
  store i32 %call1, i32* %0, align 4, !dbg !38
  br label %if.end, !dbg !39

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !40
}

declare dso_local i32 @omp_get_thread_num() #3

declare dso_local i32 @omp_get_num_threads() #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %numThreads) #2 !dbg !41 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %numThreads.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !42, metadata !DIExpression()), !dbg !43
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !44, metadata !DIExpression()), !dbg !43
  store i32* %numThreads, i32** %numThreads.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %numThreads.addr, metadata !45, metadata !DIExpression()), !dbg !43
  %0 = load i32*, i32** %numThreads.addr, align 8, !dbg !46
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !46
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !46
  %3 = load i32*, i32** %numThreads.addr, align 8, !dbg !46
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !46
  ret void, !dbg !46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare !callback !47 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB051-getthreadnum-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !8, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "numThreads", scope: !7, file: !1, line: 55, type: !10)
!12 = !DILocation(line: 55, column: 7, scope: !7)
!13 = !DILocation(line: 56, column: 1, scope: !7)
!14 = !DILocation(line: 62, column: 30, scope: !7)
!15 = !DILocation(line: 62, column: 3, scope: !7)
!16 = !DILocation(line: 63, column: 3, scope: !7)
!17 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 57, type: !18, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !20, !24}
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!24 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!25 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !17, type: !20, flags: DIFlagArtificial)
!26 = !DILocation(line: 0, scope: !17)
!27 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !17, type: !20, flags: DIFlagArtificial)
!28 = !DILocalVariable(name: "numThreads", arg: 3, scope: !17, file: !1, line: 55, type: !24)
!29 = !DILocation(line: 55, column: 7, scope: !17)
!30 = !DILocation(line: 57, column: 3, scope: !17)
!31 = !DILocation(line: 58, column: 10, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 58, column: 10)
!33 = distinct !DILexicalBlock(scope: !17, file: !1, line: 57, column: 3)
!34 = !DILocation(line: 58, column: 30, scope: !32)
!35 = !DILocation(line: 58, column: 10, scope: !33)
!36 = !DILocation(line: 59, column: 20, scope: !37)
!37 = distinct !DILexicalBlock(scope: !32, file: !1, line: 58, column: 36)
!38 = !DILocation(line: 59, column: 18, scope: !37)
!39 = !DILocation(line: 60, column: 5, scope: !37)
!40 = !DILocation(line: 61, column: 3, scope: !17)
!41 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 57, type: !18, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!42 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !41, type: !20, flags: DIFlagArtificial)
!43 = !DILocation(line: 0, scope: !41)
!44 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !41, type: !20, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: "numThreads", arg: 3, scope: !41, type: !24, flags: DIFlagArtificial)
!46 = !DILocation(line: 57, column: 3, scope: !41)
!47 = !{!48}
!48 = !{i64 2, i64 -1, i64 -1, i1 true}
