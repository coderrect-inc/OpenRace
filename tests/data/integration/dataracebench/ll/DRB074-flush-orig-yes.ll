; ModuleID = 'DRB074-flush-orig-yes.c'
source_filename = "DRB074-flush-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [35 x i8] c";DRB074-flush-orig-yes.c;f1;59;1;;\00", align 1
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@2 = private unnamed_addr constant [35 x i8] c";DRB074-flush-orig-yes.c;f1;61;1;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [38 x i8] c";DRB074-flush-orig-yes.c;main;68;57;;\00", align 1
@5 = private unnamed_addr constant [38 x i8] c";DRB074-flush-orig-yes.c;main;68;41;;\00", align 1
@6 = private unnamed_addr constant [37 x i8] c";DRB074-flush-orig-yes.c;main;68;3;;\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sum==10\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"DRB074-flush-orig-yes.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"sum=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f1(i32* %q) #0 !dbg !7 {
entry:
  %q.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @1, i32 0, i32 0), i8** %2, align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32* %q, i32** %q.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %q.addr, metadata !12, metadata !DIExpression()), !dbg !13
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !14
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !14
  call void @__kmpc_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %3, [8 x i32]* @.gomp_critical_user_.var), !dbg !14
  %5 = load i32*, i32** %q.addr, align 8, !dbg !15
  store i32 1, i32* %5, align 4, !dbg !17
  call void @__kmpc_end_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %3, [8 x i32]* @.gomp_critical_user_.var), !dbg !18
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !19
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i32 0, i32 0), i8** %6, align 8, !dbg !19
  call void @__kmpc_flush(%struct.ident_t* %.kmpc_loc.addr), !dbg !19
  ret void, !dbg !20
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_flush(%struct.ident_t*)

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !21 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @5, i32 0, i32 0), i8** %2, align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !24, metadata !DIExpression()), !dbg !25
  store i32 0, i32* %i, align 4, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 0, i32* %sum, align 4, !dbg !27
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !28
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @5, i32 0, i32 0), i8** %4, align 8, !dbg !28
  call void @__kmpc_push_num_threads(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 10), !dbg !28
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !28
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @6, i32 0, i32 0), i8** %5, align 8, !dbg !28
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %i, i32* %sum), !dbg !28
  %6 = load i32, i32* %sum, align 4, !dbg !29
  %cmp = icmp eq i32 %6, 10, !dbg !29
  br i1 %cmp, label %if.then, label %if.else, !dbg !32

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !32

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7, !dbg !29
  unreachable, !dbg !29

if.end:                                           ; preds = %if.then
  %7 = load i32, i32* %sum, align 4, !dbg !33
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %7), !dbg !34
  ret i32 0, !dbg !35
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i, i32* dereferenceable(4) %sum) #3 !dbg !36 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  %sum1 = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !44, metadata !DIExpression()), !dbg !45
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !46, metadata !DIExpression()), !dbg !45
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !47, metadata !DIExpression()), !dbg !48
  store i32* %sum, i32** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !49, metadata !DIExpression()), !dbg !50
  %2 = load i32*, i32** %i.addr, align 8, !dbg !51
  %3 = load i32*, i32** %sum.addr, align 8, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %sum1, metadata !52, metadata !DIExpression()), !dbg !45
  store i32 0, i32* %sum1, align 4, !dbg !53
  call void @f1(i32* %2), !dbg !54
  %4 = load i32, i32* %2, align 4, !dbg !56
  %5 = load i32, i32* %sum1, align 4, !dbg !57
  %add = add nsw i32 %5, %4, !dbg !57
  store i32 %add, i32* %sum1, align 4, !dbg !57
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !58
  %7 = bitcast i32* %sum1 to i8*, !dbg !58
  store i8* %7, i8** %6, align 8, !dbg !58
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !58
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @4, i32 0, i32 0), i8** %8, align 8, !dbg !58
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !58
  %10 = load i32, i32* %9, align 4, !dbg !58
  %11 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !58
  %12 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %10, i32 1, i64 8, i8* %11, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !58
  switch i32 %12, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !58

.omp.reduction.case1:                             ; preds = %entry
  %13 = load i32, i32* %3, align 4, !dbg !53
  %14 = load i32, i32* %sum1, align 4, !dbg !53
  %add2 = add nsw i32 %13, %14, !dbg !59
  store i32 %add2, i32* %3, align 4, !dbg !59
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %10, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !58
  br label %.omp.reduction.default, !dbg !58

.omp.reduction.case2:                             ; preds = %entry
  %15 = load i32, i32* %sum1, align 4, !dbg !53
  %16 = atomicrmw add i32* %3, i32 %15 monotonic, !dbg !58
  br label %.omp.reduction.default, !dbg !58

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %entry
  ret void, !dbg !60
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #4 !dbg !61 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !63, metadata !DIExpression()), !dbg !65
  store i8* %1, i8** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !66, metadata !DIExpression()), !dbg !65
  %2 = load i8*, i8** %.addr, align 8, !dbg !67
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !67
  %4 = load i8*, i8** %.addr1, align 8, !dbg !67
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !67
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !67
  %7 = load i8*, i8** %6, align 8, !dbg !67
  %8 = bitcast i8* %7 to i32*, !dbg !67
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !67
  %10 = load i8*, i8** %9, align 8, !dbg !67
  %11 = bitcast i8* %10 to i32*, !dbg !67
  %12 = load i32, i32* %11, align 4, !dbg !68
  %13 = load i32, i32* %8, align 4, !dbg !68
  %add = add nsw i32 %12, %13, !dbg !69
  store i32 %add, i32* %11, align 4, !dbg !69
  ret void, !dbg !68
}

declare dso_local i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i, i32* dereferenceable(4) %sum) #3 !dbg !70 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !71, metadata !DIExpression()), !dbg !72
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !73, metadata !DIExpression()), !dbg !72
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !74, metadata !DIExpression()), !dbg !72
  store i32* %sum, i32** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !75, metadata !DIExpression()), !dbg !72
  %0 = load i32*, i32** %i.addr, align 8, !dbg !76
  %1 = load i32*, i32** %sum.addr, align 8, !dbg !76
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !76
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !76
  %4 = load i32*, i32** %i.addr, align 8, !dbg !76
  %5 = load i32*, i32** %sum.addr, align 8, !dbg !76
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #8, !dbg !76
  ret void, !dbg !76
}

declare dso_local void @__kmpc_push_num_threads(%struct.ident_t*, i32, i32)

declare !callback !77 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

declare dso_local i32 @printf(i8*, ...) #6

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB074-flush-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
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
!14 = !DILocation(line: 59, column: 1, scope: !7)
!15 = !DILocation(line: 60, column: 4, scope: !16)
!16 = distinct !DILexicalBlock(scope: !7, file: !1, line: 59, column: 1)
!17 = !DILocation(line: 60, column: 6, scope: !16)
!18 = !DILocation(line: 60, column: 3, scope: !16)
!19 = !DILocation(line: 61, column: 1, scope: !7)
!20 = !DILocation(line: 62, column: 1, scope: !7)
!21 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 64, type: !22, scopeLine: 65, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!22 = !DISubroutineType(types: !23)
!23 = !{!11}
!24 = !DILocalVariable(name: "i", scope: !21, file: !1, line: 66, type: !11)
!25 = !DILocation(line: 66, column: 7, scope: !21)
!26 = !DILocalVariable(name: "sum", scope: !21, file: !1, line: 66, type: !11)
!27 = !DILocation(line: 66, column: 12, scope: !21)
!28 = !DILocation(line: 68, column: 3, scope: !21)
!29 = !DILocation(line: 73, column: 3, scope: !30)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 73, column: 3)
!31 = distinct !DILexicalBlock(scope: !21, file: !1, line: 73, column: 3)
!32 = !DILocation(line: 73, column: 3, scope: !31)
!33 = !DILocation(line: 74, column: 22, scope: !21)
!34 = !DILocation(line: 74, column: 3, scope: !21)
!35 = !DILocation(line: 75, column: 3, scope: !21)
!36 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 69, type: !37, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !39, !39, !43, !43}
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!43 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !11, size: 64)
!44 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !36, type: !39, flags: DIFlagArtificial)
!45 = !DILocation(line: 0, scope: !36)
!46 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !36, type: !39, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: "i", arg: 3, scope: !36, file: !1, line: 66, type: !43)
!48 = !DILocation(line: 66, column: 7, scope: !36)
!49 = !DILocalVariable(name: "sum", arg: 4, scope: !36, file: !1, line: 66, type: !43)
!50 = !DILocation(line: 66, column: 12, scope: !36)
!51 = !DILocation(line: 69, column: 3, scope: !36)
!52 = !DILocalVariable(name: "sum", scope: !36, type: !11, flags: DIFlagArtificial)
!53 = !DILocation(line: 68, column: 36, scope: !36)
!54 = !DILocation(line: 70, column: 6, scope: !55)
!55 = distinct !DILexicalBlock(scope: !36, file: !1, line: 69, column: 3)
!56 = !DILocation(line: 71, column: 11, scope: !55)
!57 = !DILocation(line: 71, column: 9, scope: !55)
!58 = !DILocation(line: 72, column: 3, scope: !55)
!59 = !DILocation(line: 68, column: 34, scope: !36)
!60 = !DILocation(line: 72, column: 3, scope: !36)
!61 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 68, type: !62, scopeLine: 68, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!62 = !DISubroutineType(types: !2)
!63 = !DILocalVariable(arg: 1, scope: !61, type: !64, flags: DIFlagArtificial)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!65 = !DILocation(line: 0, scope: !61)
!66 = !DILocalVariable(arg: 2, scope: !61, type: !64, flags: DIFlagArtificial)
!67 = !DILocation(line: 68, column: 57, scope: !61)
!68 = !DILocation(line: 68, column: 36, scope: !61)
!69 = !DILocation(line: 68, column: 34, scope: !61)
!70 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 69, type: !37, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!71 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !70, type: !39, flags: DIFlagArtificial)
!72 = !DILocation(line: 0, scope: !70)
!73 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !70, type: !39, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "i", arg: 3, scope: !70, type: !43, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "sum", arg: 4, scope: !70, type: !43, flags: DIFlagArtificial)
!76 = !DILocation(line: 69, column: 3, scope: !70)
!77 = !{!78}
!78 = !{i64 2, i64 -1, i64 -1, i1 true}
