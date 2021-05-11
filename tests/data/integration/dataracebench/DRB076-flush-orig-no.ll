; ModuleID = 'integration/dataracebench/DRB076-flush-orig-no.c'
source_filename = "integration/dataracebench/DRB076-flush-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [63 x i8] c";integration/dataracebench/DRB076-flush-orig-no.c;main;65;67;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [63 x i8] c";integration/dataracebench/DRB076-flush-orig-no.c;main;65;41;;\00", align 1
@4 = private unnamed_addr constant [62 x i8] c";integration/dataracebench/DRB076-flush-orig-no.c;main;65;3;;\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sum==10\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"integration/dataracebench/DRB076-flush-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"sum=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @f1(i32* %q) #0 !dbg !7 {
entry:
  %q.addr = alloca i32*, align 8
  store i32* %q, i32** %q.addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %q.addr, metadata !13, metadata !DIExpression()), !dbg !18
  %0 = load i32*, i32** %q.addr, align 8, !dbg !19, !tbaa !14
  store i32 1, i32* %0, align 4, !dbg !20, !tbaa !21
  ret void, !dbg !23
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !24 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @3, i32 0, i32 0), i8** %2, align 8, !tbaa !30
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 0, i32* %retval, align 4
  %4 = bitcast i32* %i to i8*, !dbg !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #6, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %i, metadata !28, metadata !DIExpression()), !dbg !33
  store i32 0, i32* %i, align 4, !dbg !33, !tbaa !21
  %5 = bitcast i32* %sum to i8*, !dbg !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #6, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !29, metadata !DIExpression()), !dbg !34
  store i32 0, i32* %sum, align 4, !dbg !34, !tbaa !21
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !35
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @3, i32 0, i32 0), i8** %6, align 8, !dbg !35, !tbaa !30
  call void @__kmpc_push_num_threads(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 10), !dbg !35
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !35
  store i8* getelementptr inbounds ([62 x i8], [62 x i8]* @4, i32 0, i32 0), i8** %7, align 8, !dbg !35, !tbaa !30
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %sum), !dbg !35
  %8 = load i32, i32* %sum, align 4, !dbg !36, !tbaa !21
  %cmp = icmp eq i32 %8, 10, !dbg !36
  br i1 %cmp, label %if.then, label %if.else, !dbg !39

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !39

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7, !dbg !36
  unreachable, !dbg !36

if.end:                                           ; preds = %if.then
  %9 = load i32, i32* %sum, align 4, !dbg !40, !tbaa !21
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %9), !dbg !41
  %10 = bitcast i32* %sum to i8*, !dbg !42
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #6, !dbg !42
  %11 = bitcast i32* %i to i8*, !dbg !42
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #6, !dbg !42
  ret i32 0, !dbg !43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %sum) #3 !dbg !44 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !53, metadata !DIExpression()), !dbg !58
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !54, metadata !DIExpression()), !dbg !58
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !55, metadata !DIExpression()), !dbg !59
  %2 = load i32*, i32** %sum.addr, align 8, !dbg !60, !tbaa !14
  %3 = bitcast i32* %i to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #6, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %i, metadata !56, metadata !DIExpression()), !dbg !58
  %4 = bitcast i32* %sum1 to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #6, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %sum1, metadata !57, metadata !DIExpression()), !dbg !58
  store i32 0, i32* %sum1, align 4, !dbg !61, !tbaa !21
  call void @f1(i32* %i), !dbg !62
  %5 = load i32, i32* %i, align 4, !dbg !64, !tbaa !21
  %6 = load i32, i32* %sum1, align 4, !dbg !65, !tbaa !21
  %add = add nsw i32 %6, %5, !dbg !65
  store i32 %add, i32* %sum1, align 4, !dbg !65, !tbaa !21
  %7 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !66
  %8 = bitcast i32* %sum1 to i8*, !dbg !66
  store i8* %8, i8** %7, align 8, !dbg !66
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !66
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !66, !tbaa !30
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !66
  %11 = load i32, i32* %10, align 4, !dbg !66, !tbaa !21
  %12 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !66
  %13 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 1, i64 8, i8* %12, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !66
  switch i32 %13, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !66

.omp.reduction.case1:                             ; preds = %entry
  %14 = load i32, i32* %2, align 4, !dbg !61, !tbaa !21
  %15 = load i32, i32* %sum1, align 4, !dbg !61, !tbaa !21
  %add2 = add nsw i32 %14, %15, !dbg !67
  store i32 %add2, i32* %2, align 4, !dbg !67, !tbaa !21
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %11, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !66
  br label %.omp.reduction.default, !dbg !66

.omp.reduction.case2:                             ; preds = %entry
  %16 = load i32, i32* %sum1, align 4, !dbg !61, !tbaa !21
  %17 = atomicrmw add i32* %2, i32 %16 monotonic, !dbg !66
  br label %.omp.reduction.default, !dbg !66

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %entry
  %18 = bitcast i32* %sum1 to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #6, !dbg !66
  %19 = bitcast i32* %i to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #6, !dbg !66
  ret void, !dbg !68
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #3 !dbg !69 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !72, metadata !DIExpression()), !dbg !75
  store i8* %1, i8** %.addr1, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !74, metadata !DIExpression()), !dbg !75
  %2 = load i8*, i8** %.addr, align 8, !dbg !76
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !76
  %4 = load i8*, i8** %.addr1, align 8, !dbg !76
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !76
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !76
  %7 = load i8*, i8** %6, align 8, !dbg !76
  %8 = bitcast i8* %7 to i32*, !dbg !76
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !76
  %10 = load i8*, i8** %9, align 8, !dbg !76
  %11 = bitcast i8* %10 to i32*, !dbg !76
  %12 = load i32, i32* %11, align 4, !dbg !77, !tbaa !21
  %13 = load i32, i32* %8, align 4, !dbg !77, !tbaa !21
  %add = add nsw i32 %12, %13, !dbg !78
  store i32 %add, i32* %11, align 4, !dbg !78, !tbaa !21
  ret void, !dbg !77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %sum) #3 !dbg !79 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !81, metadata !DIExpression()), !dbg !84
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !82, metadata !DIExpression()), !dbg !84
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !83, metadata !DIExpression()), !dbg !84
  %0 = load i32*, i32** %sum.addr, align 8, !dbg !85, !tbaa !14
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !85, !tbaa !14
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !85, !tbaa !14
  %3 = load i32*, i32** %sum.addr, align 8, !dbg !85, !tbaa !14
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #6, !dbg !85
  ret void, !dbg !85
}

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local void @__kmpc_push_num_threads(%struct.ident_t*, i32, i32)

declare !callback !86 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

declare dso_local i32 @printf(i8*, ...) #5

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
!1 = !DIFile(filename: "integration/dataracebench/DRB076-flush-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "f1", scope: !1, file: !1, line: 57, type: !8, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13}
!13 = !DILocalVariable(name: "q", arg: 1, scope: !7, file: !1, line: 57, type: !10)
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !DILocation(line: 57, column: 14, scope: !7)
!19 = !DILocation(line: 59, column: 4, scope: !7)
!20 = !DILocation(line: 59, column: 6, scope: !7)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !16, i64 0}
!23 = !DILocation(line: 60, column: 1, scope: !7)
!24 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 62, type: !25, scopeLine: 63, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{!11}
!27 = !{!28, !29}
!28 = !DILocalVariable(name: "i", scope: !24, file: !1, line: 64, type: !11)
!29 = !DILocalVariable(name: "sum", scope: !24, file: !1, line: 64, type: !11)
!30 = !{!31, !15, i64 16}
!31 = !{!"ident_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !15, i64 16}
!32 = !DILocation(line: 64, column: 3, scope: !24)
!33 = !DILocation(line: 64, column: 7, scope: !24)
!34 = !DILocation(line: 64, column: 12, scope: !24)
!35 = !DILocation(line: 65, column: 3, scope: !24)
!36 = !DILocation(line: 70, column: 3, scope: !37)
!37 = distinct !DILexicalBlock(scope: !38, file: !1, line: 70, column: 3)
!38 = distinct !DILexicalBlock(scope: !24, file: !1, line: 70, column: 3)
!39 = !DILocation(line: 70, column: 3, scope: !38)
!40 = !DILocation(line: 71, column: 22, scope: !24)
!41 = !DILocation(line: 71, column: 3, scope: !24)
!42 = !DILocation(line: 73, column: 1, scope: !24)
!43 = !DILocation(line: 72, column: 3, scope: !24)
!44 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 66, type: !45, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47, !47, !51}
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!51 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !11, size: 64)
!52 = !{!53, !54, !55, !56, !57}
!53 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !44, type: !47, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !44, type: !47, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: "sum", arg: 3, scope: !44, file: !1, line: 64, type: !51)
!56 = !DILocalVariable(name: "i", scope: !44, type: !11, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: "sum", scope: !44, type: !11, flags: DIFlagArtificial)
!58 = !DILocation(line: 0, scope: !44)
!59 = !DILocation(line: 64, column: 12, scope: !44)
!60 = !DILocation(line: 66, column: 3, scope: !44)
!61 = !DILocation(line: 65, column: 36, scope: !44)
!62 = !DILocation(line: 67, column: 6, scope: !63)
!63 = distinct !DILexicalBlock(scope: !44, file: !1, line: 66, column: 3)
!64 = !DILocation(line: 68, column: 12, scope: !63)
!65 = !DILocation(line: 68, column: 9, scope: !63)
!66 = !DILocation(line: 69, column: 3, scope: !63)
!67 = !DILocation(line: 65, column: 34, scope: !44)
!68 = !DILocation(line: 69, column: 3, scope: !44)
!69 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 65, type: !70, scopeLine: 65, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !71)
!70 = !DISubroutineType(types: !2)
!71 = !{!72, !74}
!72 = !DILocalVariable(arg: 1, scope: !69, type: !73, flags: DIFlagArtificial)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!74 = !DILocalVariable(arg: 2, scope: !69, type: !73, flags: DIFlagArtificial)
!75 = !DILocation(line: 0, scope: !69)
!76 = !DILocation(line: 65, column: 67, scope: !69)
!77 = !DILocation(line: 65, column: 36, scope: !69)
!78 = !DILocation(line: 65, column: 34, scope: !69)
!79 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 66, type: !45, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !80)
!80 = !{!81, !82, !83}
!81 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !79, type: !47, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !79, type: !47, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: "sum", arg: 3, scope: !79, type: !51, flags: DIFlagArtificial)
!84 = !DILocation(line: 0, scope: !79)
!85 = !DILocation(line: 66, column: 3, scope: !79)
!86 = !{!87}
!87 = !{i64 2, i64 -1, i64 -1, i1 true}
