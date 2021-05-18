; ModuleID = 'integration/dataracebench/DRB074-flush-orig-yes.c'
source_filename = "integration/dataracebench/DRB074-flush-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [61 x i8] c";integration/dataracebench/DRB074-flush-orig-yes.c;f1;59;1;;\00", align 1
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@2 = private unnamed_addr constant [61 x i8] c";integration/dataracebench/DRB074-flush-orig-yes.c;f1;61;1;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [64 x i8] c";integration/dataracebench/DRB074-flush-orig-yes.c;main;68;57;;\00", align 1
@5 = private unnamed_addr constant [64 x i8] c";integration/dataracebench/DRB074-flush-orig-yes.c;main;68;41;;\00", align 1
@6 = private unnamed_addr constant [63 x i8] c";integration/dataracebench/DRB074-flush-orig-yes.c;main;68;3;;\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sum==10\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"integration/dataracebench/DRB074-flush-orig-yes.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"sum=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @f1(i32* %q) #0 !dbg !7 {
entry:
  %q.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !tbaa !14
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32* %q, i32** %q.addr, align 8, !tbaa !20
  call void @llvm.dbg.declare(metadata i32** %q.addr, metadata !13, metadata !DIExpression()), !dbg !21
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !22
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !22, !tbaa !14
  call void @__kmpc_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %3, [8 x i32]* @.gomp_critical_user_.var), !dbg !22
  %5 = load i32*, i32** %q.addr, align 8, !dbg !23, !tbaa !20
  store i32 1, i32* %5, align 4, !dbg !25, !tbaa !26
  call void @__kmpc_end_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %3, [8 x i32]* @.gomp_critical_user_.var), !dbg !27
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !28
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2, i32 0, i32 0), i8** %6, align 8, !dbg !28, !tbaa !14
  call void @__kmpc_flush(%struct.ident_t* %.kmpc_loc.addr), !dbg !28
  ret void, !dbg !29
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_flush(%struct.ident_t*)

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !30 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @5, i32 0, i32 0), i8** %2, align 8, !tbaa !14
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 0, i32* %retval, align 4
  %4 = bitcast i32* %i to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #6, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %i, metadata !34, metadata !DIExpression()), !dbg !37
  store i32 0, i32* %i, align 4, !dbg !37, !tbaa !26
  %5 = bitcast i32* %sum to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #6, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !35, metadata !DIExpression()), !dbg !38
  store i32 0, i32* %sum, align 4, !dbg !38, !tbaa !26
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !39
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @5, i32 0, i32 0), i8** %6, align 8, !dbg !39, !tbaa !14
  call void @__kmpc_push_num_threads(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 10), !dbg !39
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !39
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @6, i32 0, i32 0), i8** %7, align 8, !dbg !39, !tbaa !14
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %i, i32* %sum), !dbg !39
  %8 = load i32, i32* %sum, align 4, !dbg !40, !tbaa !26
  %cmp = icmp eq i32 %8, 10, !dbg !40
  br i1 %cmp, label %if.then, label %if.else, !dbg !43

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !43

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7, !dbg !40
  unreachable, !dbg !40

if.end:                                           ; preds = %if.then
  %9 = load i32, i32* %sum, align 4, !dbg !44, !tbaa !26
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %9), !dbg !45
  %10 = bitcast i32* %sum to i8*, !dbg !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #6, !dbg !46
  %11 = bitcast i32* %i to i8*, !dbg !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #6, !dbg !46
  ret i32 0, !dbg !47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i, i32* dereferenceable(4) %sum) #3 !dbg !48 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !20
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !57, metadata !DIExpression()), !dbg !62
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !20
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !58, metadata !DIExpression()), !dbg !62
  store i32* %i, i32** %i.addr, align 8, !tbaa !20
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !59, metadata !DIExpression()), !dbg !63
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !20
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !60, metadata !DIExpression()), !dbg !64
  %2 = load i32*, i32** %i.addr, align 8, !dbg !65, !tbaa !20
  %3 = load i32*, i32** %sum.addr, align 8, !dbg !65, !tbaa !20
  %4 = bitcast i32* %sum1 to i8*, !dbg !65
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #6, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %sum1, metadata !61, metadata !DIExpression()), !dbg !62
  store i32 0, i32* %sum1, align 4, !dbg !66, !tbaa !26
  call void @f1(i32* %2), !dbg !67
  %5 = load i32, i32* %2, align 4, !dbg !69, !tbaa !26
  %6 = load i32, i32* %sum1, align 4, !dbg !70, !tbaa !26
  %add = add nsw i32 %6, %5, !dbg !70
  store i32 %add, i32* %sum1, align 4, !dbg !70, !tbaa !26
  %7 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !71
  %8 = bitcast i32* %sum1 to i8*, !dbg !71
  store i8* %8, i8** %7, align 8, !dbg !71
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !71
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @4, i32 0, i32 0), i8** %9, align 8, !dbg !71, !tbaa !14
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !71
  %11 = load i32, i32* %10, align 4, !dbg !71, !tbaa !26
  %12 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !71
  %13 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 1, i64 8, i8* %12, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !71
  switch i32 %13, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !71

.omp.reduction.case1:                             ; preds = %entry
  %14 = load i32, i32* %3, align 4, !dbg !66, !tbaa !26
  %15 = load i32, i32* %sum1, align 4, !dbg !66, !tbaa !26
  %add2 = add nsw i32 %14, %15, !dbg !72
  store i32 %add2, i32* %3, align 4, !dbg !72, !tbaa !26
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %11, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !71
  br label %.omp.reduction.default, !dbg !71

.omp.reduction.case2:                             ; preds = %entry
  %16 = load i32, i32* %sum1, align 4, !dbg !66, !tbaa !26
  %17 = atomicrmw add i32* %3, i32 %16 monotonic, !dbg !71
  br label %.omp.reduction.default, !dbg !71

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %entry
  %18 = bitcast i32* %sum1 to i8*, !dbg !71
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #6, !dbg !71
  ret void, !dbg !73
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #3 !dbg !74 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !20
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !77, metadata !DIExpression()), !dbg !80
  store i8* %1, i8** %.addr1, align 8, !tbaa !20
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !79, metadata !DIExpression()), !dbg !80
  %2 = load i8*, i8** %.addr, align 8, !dbg !81
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !81
  %4 = load i8*, i8** %.addr1, align 8, !dbg !81
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !81
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !81
  %7 = load i8*, i8** %6, align 8, !dbg !81
  %8 = bitcast i8* %7 to i32*, !dbg !81
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !81
  %10 = load i8*, i8** %9, align 8, !dbg !81
  %11 = bitcast i8* %10 to i32*, !dbg !81
  %12 = load i32, i32* %11, align 4, !dbg !82, !tbaa !26
  %13 = load i32, i32* %8, align 4, !dbg !82, !tbaa !26
  %add = add nsw i32 %12, %13, !dbg !83
  store i32 %add, i32* %11, align 4, !dbg !83, !tbaa !26
  ret void, !dbg !82
}

declare dso_local i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i, i32* dereferenceable(4) %sum) #3 !dbg !84 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !20
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !86, metadata !DIExpression()), !dbg !90
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !20
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !87, metadata !DIExpression()), !dbg !90
  store i32* %i, i32** %i.addr, align 8, !tbaa !20
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !88, metadata !DIExpression()), !dbg !90
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !20
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !89, metadata !DIExpression()), !dbg !90
  %0 = load i32*, i32** %i.addr, align 8, !dbg !91, !tbaa !20
  %1 = load i32*, i32** %sum.addr, align 8, !dbg !91, !tbaa !20
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !91, !tbaa !20
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !91, !tbaa !20
  %4 = load i32*, i32** %i.addr, align 8, !dbg !91, !tbaa !20
  %5 = load i32*, i32** %sum.addr, align 8, !dbg !91, !tbaa !20
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #6, !dbg !91
  ret void, !dbg !91
}

declare dso_local void @__kmpc_push_num_threads(%struct.ident_t*, i32, i32)

declare !callback !92 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/dataracebench/DRB074-flush-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!14 = !{!15, !19, i64 16}
!15 = !{!"ident_t", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !19, i64 16}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !{!"any pointer", !17, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !DILocation(line: 57, column: 14, scope: !7)
!22 = !DILocation(line: 59, column: 1, scope: !7)
!23 = !DILocation(line: 60, column: 4, scope: !24)
!24 = distinct !DILexicalBlock(scope: !7, file: !1, line: 59, column: 1)
!25 = !DILocation(line: 60, column: 6, scope: !24)
!26 = !{!16, !16, i64 0}
!27 = !DILocation(line: 60, column: 3, scope: !24)
!28 = !DILocation(line: 61, column: 1, scope: !7)
!29 = !DILocation(line: 62, column: 1, scope: !7)
!30 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 64, type: !31, scopeLine: 65, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{!11}
!33 = !{!34, !35}
!34 = !DILocalVariable(name: "i", scope: !30, file: !1, line: 66, type: !11)
!35 = !DILocalVariable(name: "sum", scope: !30, file: !1, line: 66, type: !11)
!36 = !DILocation(line: 66, column: 3, scope: !30)
!37 = !DILocation(line: 66, column: 7, scope: !30)
!38 = !DILocation(line: 66, column: 12, scope: !30)
!39 = !DILocation(line: 68, column: 3, scope: !30)
!40 = !DILocation(line: 73, column: 3, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 73, column: 3)
!42 = distinct !DILexicalBlock(scope: !30, file: !1, line: 73, column: 3)
!43 = !DILocation(line: 73, column: 3, scope: !42)
!44 = !DILocation(line: 74, column: 22, scope: !30)
!45 = !DILocation(line: 74, column: 3, scope: !30)
!46 = !DILocation(line: 76, column: 1, scope: !30)
!47 = !DILocation(line: 75, column: 3, scope: !30)
!48 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 69, type: !49, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !56)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51, !51, !55, !55}
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!55 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !11, size: 64)
!56 = !{!57, !58, !59, !60, !61}
!57 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !48, type: !51, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !48, type: !51, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: "i", arg: 3, scope: !48, file: !1, line: 66, type: !55)
!60 = !DILocalVariable(name: "sum", arg: 4, scope: !48, file: !1, line: 66, type: !55)
!61 = !DILocalVariable(name: "sum", scope: !48, type: !11, flags: DIFlagArtificial)
!62 = !DILocation(line: 0, scope: !48)
!63 = !DILocation(line: 66, column: 7, scope: !48)
!64 = !DILocation(line: 66, column: 12, scope: !48)
!65 = !DILocation(line: 69, column: 3, scope: !48)
!66 = !DILocation(line: 68, column: 36, scope: !48)
!67 = !DILocation(line: 70, column: 6, scope: !68)
!68 = distinct !DILexicalBlock(scope: !48, file: !1, line: 69, column: 3)
!69 = !DILocation(line: 71, column: 11, scope: !68)
!70 = !DILocation(line: 71, column: 9, scope: !68)
!71 = !DILocation(line: 72, column: 3, scope: !68)
!72 = !DILocation(line: 68, column: 34, scope: !48)
!73 = !DILocation(line: 72, column: 3, scope: !48)
!74 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 68, type: !75, scopeLine: 68, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !76)
!75 = !DISubroutineType(types: !2)
!76 = !{!77, !79}
!77 = !DILocalVariable(arg: 1, scope: !74, type: !78, flags: DIFlagArtificial)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!79 = !DILocalVariable(arg: 2, scope: !74, type: !78, flags: DIFlagArtificial)
!80 = !DILocation(line: 0, scope: !74)
!81 = !DILocation(line: 68, column: 57, scope: !74)
!82 = !DILocation(line: 68, column: 36, scope: !74)
!83 = !DILocation(line: 68, column: 34, scope: !74)
!84 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 69, type: !49, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !85)
!85 = !{!86, !87, !88, !89}
!86 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !84, type: !51, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !84, type: !51, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: "i", arg: 3, scope: !84, type: !55, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: "sum", arg: 4, scope: !84, type: !55, flags: DIFlagArtificial)
!90 = !DILocation(line: 0, scope: !84)
!91 = !DILocation(line: 69, column: 3, scope: !84)
!92 = !{!93}
!93 = !{i64 2, i64 -1, i64 -1, i1 true}
