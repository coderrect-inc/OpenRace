; ModuleID = 'DRB124-master-orig-yes.c'
source_filename = "DRB124-master-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [38 x i8] c";DRB124-master-orig-yes.c;main;31;5;;\00", align 1
@2 = private unnamed_addr constant [38 x i8] c";DRB124-master-orig-yes.c;main;29;3;;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %init = alloca i32, align 4
  %local = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %init, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %local, metadata !20, metadata !DIExpression()), !dbg !21
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !22
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @2, i32 0, i32 0), i8** %2, align 8, !dbg !22
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %init), !dbg !22
  ret i32 0, !dbg !23
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %init) #2 !dbg !24 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %init.addr = alloca i32*, align 8
  %local = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !32, metadata !DIExpression()), !dbg !33
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !34, metadata !DIExpression()), !dbg !33
  store i32* %init, i32** %init.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %init.addr, metadata !35, metadata !DIExpression()), !dbg !36
  %2 = load i32*, i32** %init.addr, align 8, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %local, metadata !38, metadata !DIExpression()), !dbg !33
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !39
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !39
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !39
  %5 = load i32, i32* %4, align 4, !dbg !39
  %6 = call i32 @__kmpc_master(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !39
  %7 = icmp ne i32 %6, 0, !dbg !39
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !39

omp_if.then:                                      ; preds = %entry
  store i32 10, i32* %2, align 4, !dbg !41
  call void @__kmpc_end_master(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !44
  br label %omp_if.end, !dbg !44

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %8 = load i32, i32* %2, align 4, !dbg !45
  store i32 %8, i32* %local, align 4, !dbg !46
  ret void, !dbg !47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_end_master(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_master(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %init) #2 !dbg !48 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %init.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !49, metadata !DIExpression()), !dbg !50
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !51, metadata !DIExpression()), !dbg !50
  store i32* %init, i32** %init.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %init.addr, metadata !52, metadata !DIExpression()), !dbg !50
  %0 = load i32*, i32** %init.addr, align 8, !dbg !53
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !53
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !53
  %3 = load i32*, i32** %init.addr, align 8, !dbg !53
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #4, !dbg !53
  ret void, !dbg !53
}

declare !callback !54 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB124-master-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 25, type: !8, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 25, type: !10)
!15 = !DILocation(line: 25, column: 15, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 25, type: !11)
!17 = !DILocation(line: 25, column: 28, scope: !7)
!18 = !DILocalVariable(name: "init", scope: !7, file: !1, line: 27, type: !10)
!19 = !DILocation(line: 27, column: 7, scope: !7)
!20 = !DILocalVariable(name: "local", scope: !7, file: !1, line: 27, type: !10)
!21 = !DILocation(line: 27, column: 13, scope: !7)
!22 = !DILocation(line: 29, column: 3, scope: !7)
!23 = !DILocation(line: 39, column: 3, scope: !7)
!24 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 30, type: !25, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !27, !27, !31}
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!31 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!32 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !24, type: !27, flags: DIFlagArtificial)
!33 = !DILocation(line: 0, scope: !24)
!34 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !24, type: !27, flags: DIFlagArtificial)
!35 = !DILocalVariable(name: "init", arg: 3, scope: !24, file: !1, line: 27, type: !31)
!36 = !DILocation(line: 27, column: 7, scope: !24)
!37 = !DILocation(line: 30, column: 3, scope: !24)
!38 = !DILocalVariable(name: "local", scope: !24, type: !10, flags: DIFlagArtificial)
!39 = !DILocation(line: 31, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !24, file: !1, line: 30, column: 3)
!41 = !DILocation(line: 33, column: 12, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 32, column: 5)
!43 = distinct !DILexicalBlock(scope: !40, file: !1, line: 31, column: 5)
!44 = !DILocation(line: 34, column: 5, scope: !42)
!45 = !DILocation(line: 36, column: 13, scope: !40)
!46 = !DILocation(line: 36, column: 11, scope: !40)
!47 = !DILocation(line: 37, column: 3, scope: !24)
!48 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 30, type: !25, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!49 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !48, type: !27, flags: DIFlagArtificial)
!50 = !DILocation(line: 0, scope: !48)
!51 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !48, type: !27, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: "init", arg: 3, scope: !48, type: !31, flags: DIFlagArtificial)
!53 = !DILocation(line: 30, column: 3, scope: !48)
!54 = !{!55}
!55 = !{i64 2, i64 -1, i64 -1, i1 true}
