; ModuleID = 'DRB120-barrier-orig-no.c'
source_filename = "DRB120-barrier-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [38 x i8] c";DRB120-barrier-orig-no.c;main;24;5;;\00", align 1
@2 = private unnamed_addr constant [38 x i8] c";DRB120-barrier-orig-no.c;main;27;5;;\00", align 1
@3 = private unnamed_addr constant [38 x i8] c";DRB120-barrier-orig-no.c;main;29;5;;\00", align 1
@4 = private unnamed_addr constant [38 x i8] c";DRB120-barrier-orig-no.c;main;22;3;;\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
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
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %var, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 0, i32* %var, align 4, !dbg !19
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !20
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @4, i32 0, i32 0), i8** %2, align 8, !dbg !20
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %var), !dbg !20
  %3 = load i32, i32* %var, align 4, !dbg !21
  %cmp = icmp ne i32 %3, 2, !dbg !23
  br i1 %cmp, label %if.then, label %if.end, !dbg !24

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %var, align 4, !dbg !25
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %4), !dbg !26
  br label %if.end, !dbg !26

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %error, metadata !27, metadata !DIExpression()), !dbg !28
  %5 = load i32, i32* %var, align 4, !dbg !29
  %cmp1 = icmp ne i32 %5, 2, !dbg !30
  %conv = zext i1 %cmp1 to i32, !dbg !30
  store i32 %conv, i32* %error, align 4, !dbg !28
  %6 = load i32, i32* %error, align 4, !dbg !31
  ret i32 %6, !dbg !32
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %var) #2 !dbg !33 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !41, metadata !DIExpression()), !dbg !42
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !43, metadata !DIExpression()), !dbg !42
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !44, metadata !DIExpression()), !dbg !45
  %2 = load i32*, i32** %var.addr, align 8, !dbg !46
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !47
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !47
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !47
  %5 = load i32, i32* %4, align 4, !dbg !47
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !47
  %7 = icmp ne i32 %6, 0, !dbg !47
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !47

omp_if.then:                                      ; preds = %entry
  %8 = load i32, i32* %2, align 4, !dbg !49
  %inc = add nsw i32 %8, 1, !dbg !49
  store i32 %inc, i32* %2, align 4, !dbg !49
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !51
  br label %omp_if.end, !dbg !51

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !52
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !52
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !52
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !53
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @2, i32 0, i32 0), i8** %10, align 8, !dbg !53
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !53
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !54
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @3, i32 0, i32 0), i8** %11, align 8, !dbg !54
  %12 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !54
  %13 = icmp ne i32 %12, 0, !dbg !54
  br i1 %13, label %omp_if.then1, label %omp_if.end3, !dbg !54

omp_if.then1:                                     ; preds = %omp_if.end
  %14 = load i32, i32* %2, align 4, !dbg !55
  %inc2 = add nsw i32 %14, 1, !dbg !55
  store i32 %inc2, i32* %2, align 4, !dbg !55
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !57
  br label %omp_if.end3, !dbg !57

omp_if.end3:                                      ; preds = %omp_if.then1, %omp_if.end
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !58
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @3, i32 0, i32 0), i8** %15, align 8, !dbg !58
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !58
  ret void, !dbg !59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %var) #2 !dbg !60 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !61, metadata !DIExpression()), !dbg !62
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !63, metadata !DIExpression()), !dbg !62
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !64, metadata !DIExpression()), !dbg !62
  %0 = load i32*, i32** %var.addr, align 8, !dbg !65
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !65
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !65
  %3 = load i32*, i32** %var.addr, align 8, !dbg !65
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !65
  ret void, !dbg !65
}

declare !callback !66 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "DRB120-barrier-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !8, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 18, type: !10)
!15 = !DILocation(line: 18, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 18, type: !11)
!17 = !DILocation(line: 18, column: 26, scope: !7)
!18 = !DILocalVariable(name: "var", scope: !7, file: !1, line: 20, type: !10)
!19 = !DILocation(line: 20, column: 7, scope: !7)
!20 = !DILocation(line: 22, column: 3, scope: !7)
!21 = !DILocation(line: 33, column: 6, scope: !22)
!22 = distinct !DILexicalBlock(scope: !7, file: !1, line: 33, column: 6)
!23 = !DILocation(line: 33, column: 10, scope: !22)
!24 = !DILocation(line: 33, column: 6, scope: !7)
!25 = !DILocation(line: 33, column: 30, scope: !22)
!26 = !DILocation(line: 33, column: 16, scope: !22)
!27 = !DILocalVariable(name: "error", scope: !7, file: !1, line: 34, type: !10)
!28 = !DILocation(line: 34, column: 7, scope: !7)
!29 = !DILocation(line: 34, column: 16, scope: !7)
!30 = !DILocation(line: 34, column: 20, scope: !7)
!31 = !DILocation(line: 35, column: 10, scope: !7)
!32 = !DILocation(line: 35, column: 3, scope: !7)
!33 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 23, type: !34, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36, !36, !40}
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!40 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!41 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !33, type: !36, flags: DIFlagArtificial)
!42 = !DILocation(line: 0, scope: !33)
!43 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !33, type: !36, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: "var", arg: 3, scope: !33, file: !1, line: 20, type: !40)
!45 = !DILocation(line: 20, column: 7, scope: !33)
!46 = !DILocation(line: 23, column: 3, scope: !33)
!47 = !DILocation(line: 24, column: 5, scope: !48)
!48 = distinct !DILexicalBlock(scope: !33, file: !1, line: 23, column: 3)
!49 = !DILocation(line: 25, column: 8, scope: !50)
!50 = distinct !DILexicalBlock(scope: !48, file: !1, line: 24, column: 5)
!51 = !DILocation(line: 25, column: 5, scope: !50)
!52 = !DILocation(line: 24, column: 23, scope: !50)
!53 = !DILocation(line: 27, column: 5, scope: !48)
!54 = !DILocation(line: 29, column: 5, scope: !48)
!55 = !DILocation(line: 30, column: 8, scope: !56)
!56 = distinct !DILexicalBlock(scope: !48, file: !1, line: 29, column: 5)
!57 = !DILocation(line: 30, column: 5, scope: !56)
!58 = !DILocation(line: 29, column: 23, scope: !56)
!59 = !DILocation(line: 31, column: 3, scope: !33)
!60 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 23, type: !34, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!61 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !60, type: !36, flags: DIFlagArtificial)
!62 = !DILocation(line: 0, scope: !60)
!63 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !60, type: !36, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: "var", arg: 3, scope: !60, type: !40, flags: DIFlagArtificial)
!65 = !DILocation(line: 23, column: 3, scope: !60)
!66 = !{!67}
!67 = !{i64 2, i64 -1, i64 -1, i1 true}
