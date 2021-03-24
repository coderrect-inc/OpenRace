; ModuleID = 'DRB075-getthreadnum-orig-yes.c'
source_filename = "DRB075-getthreadnum-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [15 x i8] c"numThreads=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [44 x i8] c";DRB075-getthreadnum-orig-yes.c;main;57;1;;\00", align 1

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
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !13
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %numThreads), !dbg !13
  ret i32 0, !dbg !14
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %numThreads) #2 !dbg !15 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %numThreads.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !23, metadata !DIExpression()), !dbg !24
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !25, metadata !DIExpression()), !dbg !24
  store i32* %numThreads, i32** %numThreads.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %numThreads.addr, metadata !26, metadata !DIExpression()), !dbg !27
  %0 = load i32*, i32** %numThreads.addr, align 8, !dbg !28
  %call = call i32 @omp_get_thread_num(), !dbg !29
  %cmp = icmp eq i32 %call, 0, !dbg !32
  br i1 %cmp, label %if.then, label %if.else, !dbg !33

if.then:                                          ; preds = %entry
  %call1 = call i32 @omp_get_num_threads(), !dbg !34
  store i32 %call1, i32* %0, align 4, !dbg !36
  br label %if.end, !dbg !37

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %0, align 4, !dbg !38
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %1), !dbg !40
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !41
}

declare dso_local i32 @omp_get_thread_num() #3

declare dso_local i32 @omp_get_num_threads() #3

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %numThreads) #2 !dbg !42 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %numThreads.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !43, metadata !DIExpression()), !dbg !44
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !45, metadata !DIExpression()), !dbg !44
  store i32* %numThreads, i32** %numThreads.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %numThreads.addr, metadata !46, metadata !DIExpression()), !dbg !44
  %0 = load i32*, i32** %numThreads.addr, align 8, !dbg !47
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !47
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !47
  %3 = load i32*, i32** %numThreads.addr, align 8, !dbg !47
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !47
  ret void, !dbg !47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare !callback !48 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "DRB075-getthreadnum-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !8, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "numThreads", scope: !7, file: !1, line: 56, type: !10)
!12 = !DILocation(line: 56, column: 7, scope: !7)
!13 = !DILocation(line: 57, column: 1, scope: !7)
!14 = !DILocation(line: 67, column: 3, scope: !7)
!15 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 58, type: !16, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !18, !22}
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!22 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!23 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !15, type: !18, flags: DIFlagArtificial)
!24 = !DILocation(line: 0, scope: !15)
!25 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !15, type: !18, flags: DIFlagArtificial)
!26 = !DILocalVariable(name: "numThreads", arg: 3, scope: !15, file: !1, line: 56, type: !22)
!27 = !DILocation(line: 56, column: 7, scope: !15)
!28 = !DILocation(line: 58, column: 3, scope: !15)
!29 = !DILocation(line: 59, column: 10, scope: !30)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 59, column: 10)
!31 = distinct !DILexicalBlock(scope: !15, file: !1, line: 58, column: 3)
!32 = !DILocation(line: 59, column: 30, scope: !30)
!33 = !DILocation(line: 59, column: 10, scope: !31)
!34 = !DILocation(line: 60, column: 20, scope: !35)
!35 = distinct !DILexicalBlock(scope: !30, file: !1, line: 59, column: 36)
!36 = !DILocation(line: 60, column: 18, scope: !35)
!37 = !DILocation(line: 61, column: 5, scope: !35)
!38 = !DILocation(line: 64, column: 33, scope: !39)
!39 = distinct !DILexicalBlock(scope: !30, file: !1, line: 63, column: 5)
!40 = !DILocation(line: 64, column: 7, scope: !39)
!41 = !DILocation(line: 66, column: 3, scope: !15)
!42 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 58, type: !16, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!43 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !42, type: !18, flags: DIFlagArtificial)
!44 = !DILocation(line: 0, scope: !42)
!45 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !42, type: !18, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "numThreads", arg: 3, scope: !42, type: !22, flags: DIFlagArtificial)
!47 = !DILocation(line: 58, column: 3, scope: !42)
!48 = !{!49}
!49 = !{i64 2, i64 -1, i64 -1, i1 true}
