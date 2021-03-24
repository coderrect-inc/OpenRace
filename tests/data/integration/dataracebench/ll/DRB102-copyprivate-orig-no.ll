; ModuleID = 'DRB102-copyprivate-orig-no.c'
source_filename = "DRB102-copyprivate-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

$_ZTW1x = comdat any

$_ZTW1y = comdat any

@x = dso_local thread_local global float 0.000000e+00, align 4, !dbg !0
@y = dso_local thread_local global i32 0, align 4, !dbg !6
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [42 x i8] c";DRB102-copyprivate-orig-no.c;main;60;1;;\00", align 1
@2 = private unnamed_addr constant [42 x i8] c";DRB102-copyprivate-orig-no.c;main;58;1;;\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"x=%f y=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !14 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !20, metadata !DIExpression()), !dbg !21
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !22, metadata !DIExpression()), !dbg !23
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !24
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2, i32 0, i32 0), i8** %2, align 8, !dbg !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !24
  %3 = load float, float* @x, align 4, !dbg !25
  %conv = fpext float %3 to double, !dbg !25
  %4 = load i32, i32* @y, align 4, !dbg !26
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double %conv, i32 %4), !dbg !27
  ret i32 0, !dbg !28
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 !dbg !29 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.omp.copyprivate.did_it = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.copyprivate.cpr_list = alloca [2 x i8*], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !36, metadata !DIExpression()), !dbg !37
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !38, metadata !DIExpression()), !dbg !37
  store i32 0, i32* %.omp.copyprivate.did_it, align 4, !dbg !39
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !39
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !39
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !39
  %4 = load i32, i32* %3, align 4, !dbg !39
  %5 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !39
  %6 = icmp ne i32 %5, 0, !dbg !39
  br i1 %6, label %omp_if.then, label %omp_if.end, !dbg !39

omp_if.then:                                      ; preds = %entry
  store float 1.000000e+00, float* @x, align 4, !dbg !41
  store i32 1, i32* @y, align 4, !dbg !44
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !45
  store i32 1, i32* %.omp.copyprivate.did_it, align 4, !dbg !45
  br label %omp_if.end, !dbg !45

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %7 = getelementptr inbounds [2 x i8*], [2 x i8*]* %.omp.copyprivate.cpr_list, i64 0, i64 0, !dbg !45
  store i8* bitcast (float* @x to i8*), i8** %7, align 8, !dbg !45
  %8 = getelementptr inbounds [2 x i8*], [2 x i8*]* %.omp.copyprivate.cpr_list, i64 0, i64 1, !dbg !45
  store i8* bitcast (i32* @y to i8*), i8** %8, align 8, !dbg !45
  %9 = bitcast [2 x i8*]* %.omp.copyprivate.cpr_list to i8*, !dbg !45
  %10 = load i32, i32* %.omp.copyprivate.did_it, align 4, !dbg !45
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !45
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !45
  call void @__kmpc_copyprivate(%struct.ident_t* %.kmpc_loc.addr, i32 %4, i64 16, i8* %9, void (i8*, i8*)* @.omp.copyprivate.copy_func, i32 %10), !dbg !45
  ret void, !dbg !46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.copyprivate.copy_func(i8* %0, i8* %1) #4 !dbg !47 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !49, metadata !DIExpression()), !dbg !51
  store i8* %1, i8** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !52, metadata !DIExpression()), !dbg !51
  %2 = load i8*, i8** %.addr, align 8, !dbg !53
  %3 = bitcast i8* %2 to [2 x i8*]*, !dbg !53
  %4 = load i8*, i8** %.addr1, align 8, !dbg !53
  %5 = bitcast i8* %4 to [2 x i8*]*, !dbg !53
  %6 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0, !dbg !53
  %7 = load i8*, i8** %6, align 8, !dbg !53
  %8 = bitcast i8* %7 to float*, !dbg !53
  %9 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0, !dbg !53
  %10 = load i8*, i8** %9, align 8, !dbg !53
  %11 = bitcast i8* %10 to float*, !dbg !53
  %12 = load float, float* %11, align 4, !dbg !54
  store float %12, float* %8, align 4, !dbg !54
  %13 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 1, !dbg !53
  %14 = load i8*, i8** %13, align 8, !dbg !53
  %15 = bitcast i8* %14 to i32*, !dbg !53
  %16 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1, !dbg !53
  %17 = load i8*, i8** %16, align 8, !dbg !53
  %18 = bitcast i8* %17 to i32*, !dbg !53
  %19 = load i32, i32* %18, align 4, !dbg !55
  store i32 %19, i32* %15, align 4, !dbg !55
  ret void, !dbg !55
}

declare dso_local void @__kmpc_copyprivate(%struct.ident_t*, i32, i64, i8*, void (i8*, i8*)*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 !dbg !56 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !57, metadata !DIExpression()), !dbg !58
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !59, metadata !DIExpression()), !dbg !58
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !60
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !60
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #7, !dbg !60
  ret void, !dbg !60
}

declare !callback !61 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind uwtable
define weak_odr hidden float* @_ZTW1x() #6 comdat {
  ret float* @x
}

; Function Attrs: noinline nounwind uwtable
define weak_odr hidden i32* @_ZTW1y() #6 comdat {
  ret i32* @y
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 52, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB102-copyprivate-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !3, line: 53, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 10.0.1 "}
!14 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 56, type: !15, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!8, !8, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DILocalVariable(name: "argc", arg: 1, scope: !14, file: !3, line: 56, type: !8)
!21 = !DILocation(line: 56, column: 15, scope: !14)
!22 = !DILocalVariable(name: "argv", arg: 2, scope: !14, file: !3, line: 56, type: !17)
!23 = !DILocation(line: 56, column: 28, scope: !14)
!24 = !DILocation(line: 58, column: 1, scope: !14)
!25 = !DILocation(line: 66, column: 26, scope: !14)
!26 = !DILocation(line: 66, column: 29, scope: !14)
!27 = !DILocation(line: 66, column: 3, scope: !14)
!28 = !DILocation(line: 67, column: 3, scope: !14)
!29 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 59, type: !30, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32, !32}
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!36 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !29, type: !32, flags: DIFlagArtificial)
!37 = !DILocation(line: 0, scope: !29)
!38 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !29, type: !32, flags: DIFlagArtificial)
!39 = !DILocation(line: 60, column: 1, scope: !40)
!40 = distinct !DILexicalBlock(scope: !29, file: !3, line: 59, column: 3)
!41 = !DILocation(line: 62, column: 8, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !3, line: 61, column: 5)
!43 = distinct !DILexicalBlock(scope: !40, file: !3, line: 60, column: 1)
!44 = !DILocation(line: 63, column: 8, scope: !42)
!45 = !DILocation(line: 64, column: 5, scope: !42)
!46 = !DILocation(line: 65, column: 3, scope: !29)
!47 = distinct !DISubprogram(linkageName: ".omp.copyprivate.copy_func", scope: !3, file: !3, line: 60, type: !48, scopeLine: 60, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!48 = !DISubroutineType(types: !4)
!49 = !DILocalVariable(arg: 1, scope: !47, type: !50, flags: DIFlagArtificial)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!51 = !DILocation(line: 0, scope: !47)
!52 = !DILocalVariable(arg: 2, scope: !47, type: !50, flags: DIFlagArtificial)
!53 = !DILocation(line: 60, column: 1, scope: !47)
!54 = !DILocation(line: 60, column: 32, scope: !47)
!55 = !DILocation(line: 60, column: 34, scope: !47)
!56 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 59, type: !30, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!57 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !56, type: !32, flags: DIFlagArtificial)
!58 = !DILocation(line: 0, scope: !56)
!59 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !56, type: !32, flags: DIFlagArtificial)
!60 = !DILocation(line: 59, column: 3, scope: !56)
!61 = !{!62}
!62 = !{i64 2, i64 -1, i64 -1, i1 true}
