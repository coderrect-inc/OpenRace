; ModuleID = 'DRB088-dynamic-storage-orig-yes.c'
source_filename = "DRB088-dynamic-storage-orig-yes.c"
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
@1 = private unnamed_addr constant [47 x i8] c";DRB088-dynamic-storage-orig-yes.c;main;75;2;;\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo() #0 !dbg !14 {
entry:
  %0 = load i32*, i32** @counter, align 8, !dbg !17
  %1 = load i32, i32* %0, align 4, !dbg !18
  %inc = add nsw i32 %1, 1, !dbg !18
  store i32 %inc, i32* %0, align 4, !dbg !18
  ret void, !dbg !19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !20 {
entry:
  %retval = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %call = call noalias i8* @malloc(i64 4) #7, !dbg !23
  %2 = bitcast i8* %call to i32*, !dbg !24
  store i32* %2, i32** @counter, align 8, !dbg !25
  %3 = load i32*, i32** @counter, align 8, !dbg !26
  %cmp = icmp eq i32* %3, null, !dbg !28
  br i1 %cmp, label %if.then, label %if.end, !dbg !29

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !30
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !32
  call void @exit(i32 1) #8, !dbg !33
  unreachable, !dbg !33

if.end:                                           ; preds = %entry
  %5 = load i32*, i32** @counter, align 8, !dbg !34
  store i32 0, i32* %5, align 4, !dbg !35
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !36
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !36
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !36
  %7 = load i32*, i32** @counter, align 8, !dbg !37
  %8 = load i32, i32* %7, align 4, !dbg !38
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %8), !dbg !39
  %9 = load i32*, i32** @counter, align 8, !dbg !40
  %10 = bitcast i32* %9 to i8*, !dbg !40
  call void @free(i8* %10) #7, !dbg !41
  ret i32 0, !dbg !42
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #4 !dbg !43 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !50, metadata !DIExpression()), !dbg !51
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !52, metadata !DIExpression()), !dbg !51
  call void @foo(), !dbg !53
  ret void, !dbg !55
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #4 !dbg !56 {
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

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare !callback !61 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "counter", scope: !2, file: !3, line: 59, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB088-dynamic-storage-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{!0}
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 10.0.1 "}
!14 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 61, type: !15, scopeLine: 62, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{null}
!17 = !DILocation(line: 63, column: 6, scope: !14)
!18 = !DILocation(line: 63, column: 14, scope: !14)
!19 = !DILocation(line: 64, column: 1, scope: !14)
!20 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 66, type: !21, scopeLine: 67, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!21 = !DISubroutineType(types: !22)
!22 = !{!7}
!23 = !DILocation(line: 68, column: 20, scope: !20)
!24 = !DILocation(line: 68, column: 13, scope: !20)
!25 = !DILocation(line: 68, column: 11, scope: !20)
!26 = !DILocation(line: 69, column: 7, scope: !27)
!27 = distinct !DILexicalBlock(scope: !20, file: !3, line: 69, column: 7)
!28 = !DILocation(line: 69, column: 14, scope: !27)
!29 = !DILocation(line: 69, column: 7, scope: !20)
!30 = !DILocation(line: 71, column: 13, scope: !31)
!31 = distinct !DILexicalBlock(scope: !27, file: !3, line: 70, column: 3)
!32 = !DILocation(line: 71, column: 5, scope: !31)
!33 = !DILocation(line: 72, column: 5, scope: !31)
!34 = !DILocation(line: 74, column: 4, scope: !20)
!35 = !DILocation(line: 74, column: 12, scope: !20)
!36 = !DILocation(line: 75, column: 2, scope: !20)
!37 = !DILocation(line: 79, column: 20, scope: !20)
!38 = !DILocation(line: 79, column: 19, scope: !20)
!39 = !DILocation(line: 79, column: 3, scope: !20)
!40 = !DILocation(line: 80, column: 9, scope: !20)
!41 = !DILocation(line: 80, column: 3, scope: !20)
!42 = !DILocation(line: 81, column: 3, scope: !20)
!43 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 76, type: !44, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !46, !46}
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!50 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !43, type: !46, flags: DIFlagArtificial)
!51 = !DILocation(line: 0, scope: !43)
!52 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !43, type: !46, flags: DIFlagArtificial)
!53 = !DILocation(line: 77, column: 6, scope: !54)
!54 = distinct !DILexicalBlock(scope: !43, file: !3, line: 76, column: 3)
!55 = !DILocation(line: 78, column: 3, scope: !43)
!56 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 76, type: !44, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!57 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !56, type: !46, flags: DIFlagArtificial)
!58 = !DILocation(line: 0, scope: !56)
!59 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !56, type: !46, flags: DIFlagArtificial)
!60 = !DILocation(line: 76, column: 3, scope: !56)
!61 = !{!62}
!62 = !{i64 2, i64 -1, i64 -1, i1 true}
