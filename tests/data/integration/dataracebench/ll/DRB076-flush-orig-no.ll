; ModuleID = 'DRB076-flush-orig-no.c'
source_filename = "DRB076-flush-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [37 x i8] c";DRB076-flush-orig-no.c;main;65;67;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [37 x i8] c";DRB076-flush-orig-no.c;main;65;41;;\00", align 1
@4 = private unnamed_addr constant [36 x i8] c";DRB076-flush-orig-no.c;main;65;3;;\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sum==10\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"DRB076-flush-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"sum=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f1(i32* %q) #0 !dbg !7 {
entry:
  %q.addr = alloca i32*, align 8
  store i32* %q, i32** %q.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %q.addr, metadata !12, metadata !DIExpression()), !dbg !13
  %0 = load i32*, i32** %q.addr, align 8, !dbg !14
  store i32 1, i32* %0, align 4, !dbg !15
  ret void, !dbg !16
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !17 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @3, i32 0, i32 0), i8** %2, align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 0, i32* %i, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 0, i32* %sum, align 4, !dbg !23
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !24
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @3, i32 0, i32 0), i8** %4, align 8, !dbg !24
  call void @__kmpc_push_num_threads(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 10), !dbg !24
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !24
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @4, i32 0, i32 0), i8** %5, align 8, !dbg !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %sum), !dbg !24
  %6 = load i32, i32* %sum, align 4, !dbg !25
  %cmp = icmp eq i32 %6, 10, !dbg !25
  br i1 %cmp, label %if.then, label %if.else, !dbg !28

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !28

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7, !dbg !25
  unreachable, !dbg !25

if.end:                                           ; preds = %if.then
  %7 = load i32, i32* %sum, align 4, !dbg !29
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %7), !dbg !30
  ret i32 0, !dbg !31
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %sum) #2 !dbg !32 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !40, metadata !DIExpression()), !dbg !41
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !42, metadata !DIExpression()), !dbg !41
  store i32* %sum, i32** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !43, metadata !DIExpression()), !dbg !44
  %2 = load i32*, i32** %sum.addr, align 8, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %i, metadata !46, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %sum1, metadata !47, metadata !DIExpression()), !dbg !41
  store i32 0, i32* %sum1, align 4, !dbg !48
  call void @f1(i32* %i), !dbg !49
  %3 = load i32, i32* %i, align 4, !dbg !51
  %4 = load i32, i32* %sum1, align 4, !dbg !52
  %add = add nsw i32 %4, %3, !dbg !52
  store i32 %add, i32* %sum1, align 4, !dbg !52
  %5 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !53
  %6 = bitcast i32* %sum1 to i8*, !dbg !53
  store i8* %6, i8** %5, align 8, !dbg !53
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !53
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @1, i32 0, i32 0), i8** %7, align 8, !dbg !53
  %8 = load i32*, i32** %.global_tid..addr, align 8, !dbg !53
  %9 = load i32, i32* %8, align 4, !dbg !53
  %10 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !53
  %11 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %9, i32 1, i64 8, i8* %10, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !53
  switch i32 %11, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !53

.omp.reduction.case1:                             ; preds = %entry
  %12 = load i32, i32* %2, align 4, !dbg !48
  %13 = load i32, i32* %sum1, align 4, !dbg !48
  %add2 = add nsw i32 %12, %13, !dbg !54
  store i32 %add2, i32* %2, align 4, !dbg !54
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %9, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !53
  br label %.omp.reduction.default, !dbg !53

.omp.reduction.case2:                             ; preds = %entry
  %14 = load i32, i32* %sum1, align 4, !dbg !48
  %15 = atomicrmw add i32* %2, i32 %14 monotonic, !dbg !53
  br label %.omp.reduction.default, !dbg !53

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %entry
  ret void, !dbg !55
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #3 !dbg !56 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !58, metadata !DIExpression()), !dbg !60
  store i8* %1, i8** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !61, metadata !DIExpression()), !dbg !60
  %2 = load i8*, i8** %.addr, align 8, !dbg !62
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !62
  %4 = load i8*, i8** %.addr1, align 8, !dbg !62
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !62
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !62
  %7 = load i8*, i8** %6, align 8, !dbg !62
  %8 = bitcast i8* %7 to i32*, !dbg !62
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !62
  %10 = load i8*, i8** %9, align 8, !dbg !62
  %11 = bitcast i8* %10 to i32*, !dbg !62
  %12 = load i32, i32* %11, align 4, !dbg !63
  %13 = load i32, i32* %8, align 4, !dbg !63
  %add = add nsw i32 %12, %13, !dbg !64
  store i32 %add, i32* %11, align 4, !dbg !64
  ret void, !dbg !63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %sum) #2 !dbg !65 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !66, metadata !DIExpression()), !dbg !67
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !68, metadata !DIExpression()), !dbg !67
  store i32* %sum, i32** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !69, metadata !DIExpression()), !dbg !67
  %0 = load i32*, i32** %sum.addr, align 8, !dbg !70
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !70
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !70
  %3 = load i32*, i32** %sum.addr, align 8, !dbg !70
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #8, !dbg !70
  ret void, !dbg !70
}

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local void @__kmpc_push_num_threads(%struct.ident_t*, i32, i32)

declare !callback !71 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

declare dso_local i32 @printf(i8*, ...) #6

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB076-flush-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "f1", scope: !1, file: !1, line: 57, type: !8, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocalVariable(name: "q", arg: 1, scope: !7, file: !1, line: 57, type: !10)
!13 = !DILocation(line: 57, column: 14, scope: !7)
!14 = !DILocation(line: 59, column: 4, scope: !7)
!15 = !DILocation(line: 59, column: 6, scope: !7)
!16 = !DILocation(line: 60, column: 1, scope: !7)
!17 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 62, type: !18, scopeLine: 63, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!18 = !DISubroutineType(types: !19)
!19 = !{!11}
!20 = !DILocalVariable(name: "i", scope: !17, file: !1, line: 64, type: !11)
!21 = !DILocation(line: 64, column: 7, scope: !17)
!22 = !DILocalVariable(name: "sum", scope: !17, file: !1, line: 64, type: !11)
!23 = !DILocation(line: 64, column: 12, scope: !17)
!24 = !DILocation(line: 65, column: 3, scope: !17)
!25 = !DILocation(line: 70, column: 3, scope: !26)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 70, column: 3)
!27 = distinct !DILexicalBlock(scope: !17, file: !1, line: 70, column: 3)
!28 = !DILocation(line: 70, column: 3, scope: !27)
!29 = !DILocation(line: 71, column: 22, scope: !17)
!30 = !DILocation(line: 71, column: 3, scope: !17)
!31 = !DILocation(line: 72, column: 3, scope: !17)
!32 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 66, type: !33, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35, !35, !39}
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!39 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !11, size: 64)
!40 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !32, type: !35, flags: DIFlagArtificial)
!41 = !DILocation(line: 0, scope: !32)
!42 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !32, type: !35, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: "sum", arg: 3, scope: !32, file: !1, line: 64, type: !39)
!44 = !DILocation(line: 64, column: 12, scope: !32)
!45 = !DILocation(line: 66, column: 3, scope: !32)
!46 = !DILocalVariable(name: "i", scope: !32, type: !11, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: "sum", scope: !32, type: !11, flags: DIFlagArtificial)
!48 = !DILocation(line: 65, column: 36, scope: !32)
!49 = !DILocation(line: 67, column: 6, scope: !50)
!50 = distinct !DILexicalBlock(scope: !32, file: !1, line: 66, column: 3)
!51 = !DILocation(line: 68, column: 12, scope: !50)
!52 = !DILocation(line: 68, column: 9, scope: !50)
!53 = !DILocation(line: 69, column: 3, scope: !50)
!54 = !DILocation(line: 65, column: 34, scope: !32)
!55 = !DILocation(line: 69, column: 3, scope: !32)
!56 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 65, type: !57, scopeLine: 65, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!57 = !DISubroutineType(types: !2)
!58 = !DILocalVariable(arg: 1, scope: !56, type: !59, flags: DIFlagArtificial)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!60 = !DILocation(line: 0, scope: !56)
!61 = !DILocalVariable(arg: 2, scope: !56, type: !59, flags: DIFlagArtificial)
!62 = !DILocation(line: 65, column: 67, scope: !56)
!63 = !DILocation(line: 65, column: 36, scope: !56)
!64 = !DILocation(line: 65, column: 34, scope: !56)
!65 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 66, type: !33, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!66 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !65, type: !35, flags: DIFlagArtificial)
!67 = !DILocation(line: 0, scope: !65)
!68 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !65, type: !35, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: "sum", arg: 3, scope: !65, type: !39, flags: DIFlagArtificial)
!70 = !DILocation(line: 66, column: 3, scope: !65)
!71 = !{!72}
!72 = !{i64 2, i64 -1, i64 -1, i1 true}
