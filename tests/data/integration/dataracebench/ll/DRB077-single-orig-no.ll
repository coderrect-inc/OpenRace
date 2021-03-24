; ModuleID = 'DRB077-single-orig-no.c'
source_filename = "DRB077-single-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [37 x i8] c";DRB077-single-orig-no.c;main;52;1;;\00", align 1
@2 = private unnamed_addr constant [37 x i8] c";DRB077-single-orig-no.c;main;50;1;;\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"count= %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %count = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %count, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 0, i32* %count, align 4, !dbg !12
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !13
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @2, i32 0, i32 0), i8** %2, align 8, !dbg !13
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %count), !dbg !13
  %3 = load i32, i32* %count, align 4, !dbg !14
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %3), !dbg !15
  ret i32 0, !dbg !16
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %count) #2 !dbg !17 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %count.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !25, metadata !DIExpression()), !dbg !26
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !27, metadata !DIExpression()), !dbg !26
  store i32* %count, i32** %count.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %count.addr, metadata !28, metadata !DIExpression()), !dbg !29
  %2 = load i32*, i32** %count.addr, align 8, !dbg !30
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !31
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !31
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !31
  %5 = load i32, i32* %4, align 4, !dbg !31
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !31
  %7 = icmp ne i32 %6, 0, !dbg !31
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !31

omp_if.then:                                      ; preds = %entry
  %8 = load i32, i32* %2, align 4, !dbg !33
  %add = add nsw i32 %8, 1, !dbg !33
  store i32 %add, i32* %2, align 4, !dbg !33
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !35
  br label %omp_if.end, !dbg !35

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !36
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !36
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !36
  ret void, !dbg !37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %count) #2 !dbg !38 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %count.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !39, metadata !DIExpression()), !dbg !40
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !41, metadata !DIExpression()), !dbg !40
  store i32* %count, i32** %count.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %count.addr, metadata !42, metadata !DIExpression()), !dbg !40
  %0 = load i32*, i32** %count.addr, align 8, !dbg !43
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !43
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !43
  %3 = load i32*, i32** %count.addr, align 8, !dbg !43
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !43
  ret void, !dbg !43
}

declare !callback !44 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

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
!1 = !DIFile(filename: "DRB077-single-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 46, type: !8, scopeLine: 47, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "count", scope: !7, file: !1, line: 48, type: !10)
!12 = !DILocation(line: 48, column: 7, scope: !7)
!13 = !DILocation(line: 50, column: 1, scope: !7)
!14 = !DILocation(line: 56, column: 26, scope: !7)
!15 = !DILocation(line: 56, column: 3, scope: !7)
!16 = !DILocation(line: 57, column: 3, scope: !7)
!17 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 51, type: !18, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!28 = !DILocalVariable(name: "count", arg: 3, scope: !17, file: !1, line: 48, type: !24)
!29 = !DILocation(line: 48, column: 7, scope: !17)
!30 = !DILocation(line: 51, column: 3, scope: !17)
!31 = !DILocation(line: 52, column: 1, scope: !32)
!32 = distinct !DILexicalBlock(scope: !17, file: !1, line: 51, column: 3)
!33 = !DILocation(line: 53, column: 11, scope: !34)
!34 = distinct !DILexicalBlock(scope: !32, file: !1, line: 52, column: 1)
!35 = !DILocation(line: 53, column: 5, scope: !34)
!36 = !DILocation(line: 52, column: 19, scope: !34)
!37 = !DILocation(line: 54, column: 3, scope: !17)
!38 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 51, type: !18, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!39 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !38, type: !20, flags: DIFlagArtificial)
!40 = !DILocation(line: 0, scope: !38)
!41 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !38, type: !20, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: "count", arg: 3, scope: !38, type: !24, flags: DIFlagArtificial)
!43 = !DILocation(line: 51, column: 3, scope: !38)
!44 = !{!45}
!45 = !{i64 2, i64 -1, i64 -1, i1 true}
