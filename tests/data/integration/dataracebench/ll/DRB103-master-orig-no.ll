; ModuleID = 'DRB103-master-orig-no.c'
source_filename = "DRB103-master-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [37 x i8] c";DRB103-master-orig-no.c;main;53;1;;\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Number of Threads requested = %i\0A\00", align 1
@2 = private unnamed_addr constant [37 x i8] c";DRB103-master-orig-no.c;main;51;1;;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %k = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %k, metadata !11, metadata !DIExpression()), !dbg !12
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !13
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @2, i32 0, i32 0), i8** %2, align 8, !dbg !13
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %k), !dbg !13
  ret i32 0, !dbg !14
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %k) #2 !dbg !15 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %k.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !23, metadata !DIExpression()), !dbg !24
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !25, metadata !DIExpression()), !dbg !24
  store i32* %k, i32** %k.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %k.addr, metadata !26, metadata !DIExpression()), !dbg !27
  %2 = load i32*, i32** %k.addr, align 8, !dbg !28
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !29
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !29
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !29
  %5 = load i32, i32* %4, align 4, !dbg !29
  %6 = call i32 @__kmpc_master(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !29
  %7 = icmp ne i32 %6, 0, !dbg !29
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !29

omp_if.then:                                      ; preds = %entry
  %call = call i32 @omp_get_num_threads(), !dbg !31
  store i32 %call, i32* %2, align 4, !dbg !34
  %8 = load i32, i32* %2, align 4, !dbg !35
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %8), !dbg !36
  call void @__kmpc_end_master(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !37
  br label %omp_if.end, !dbg !37

omp_if.end:                                       ; preds = %omp_if.then, %entry
  ret void, !dbg !38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_end_master(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_master(%struct.ident_t*, i32)

declare dso_local i32 @omp_get_num_threads() #4

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %k) #2 !dbg !39 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %k.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !40, metadata !DIExpression()), !dbg !41
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !42, metadata !DIExpression()), !dbg !41
  store i32* %k, i32** %k.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %k.addr, metadata !43, metadata !DIExpression()), !dbg !41
  %0 = load i32*, i32** %k.addr, align 8, !dbg !44
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !44
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !44
  %3 = load i32*, i32** %k.addr, align 8, !dbg !44
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !44
  ret void, !dbg !44
}

declare !callback !45 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "DRB103-master-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 47, type: !8, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 49, type: !10)
!12 = !DILocation(line: 49, column: 7, scope: !7)
!13 = !DILocation(line: 51, column: 1, scope: !7)
!14 = !DILocation(line: 59, column: 3, scope: !7)
!15 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 52, type: !16, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!26 = !DILocalVariable(name: "k", arg: 3, scope: !15, file: !1, line: 49, type: !22)
!27 = !DILocation(line: 49, column: 7, scope: !15)
!28 = !DILocation(line: 52, column: 3, scope: !15)
!29 = !DILocation(line: 53, column: 1, scope: !30)
!30 = distinct !DILexicalBlock(scope: !15, file: !1, line: 52, column: 3)
!31 = !DILocation(line: 55, column: 11, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 54, column: 5)
!33 = distinct !DILexicalBlock(scope: !30, file: !1, line: 53, column: 1)
!34 = !DILocation(line: 55, column: 9, scope: !32)
!35 = !DILocation(line: 56, column: 52, scope: !32)
!36 = !DILocation(line: 56, column: 7, scope: !32)
!37 = !DILocation(line: 57, column: 5, scope: !32)
!38 = !DILocation(line: 58, column: 3, scope: !15)
!39 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 52, type: !16, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!40 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !39, type: !18, flags: DIFlagArtificial)
!41 = !DILocation(line: 0, scope: !39)
!42 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !39, type: !18, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: "k", arg: 3, scope: !39, type: !22, flags: DIFlagArtificial)
!44 = !DILocation(line: 52, column: 3, scope: !39)
!45 = !{!46}
!46 = !{i64 2, i64 -1, i64 -1, i1 true}
