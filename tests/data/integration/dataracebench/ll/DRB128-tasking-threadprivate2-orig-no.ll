; ModuleID = 'DRB128-tasking-threadprivate2-orig-no.c'
source_filename = "DRB128-tasking-threadprivate2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type {}
%struct.kmp_task_t_with_privates.3 = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.anon.1 = type {}
%struct.kmp_task_t_with_privates.2 = type { %struct.kmp_task_t }
%struct.anon.0 = type {}

$_ZTW2tp = comdat any

@tp = dso_local thread_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [53 x i8] c";DRB128-tasking-threadprivate2-orig-no.c;main;32;7;;\00", align 1
@var = common dso_local global i32 0, align 4, !dbg !6
@2 = private unnamed_addr constant [53 x i8] c";DRB128-tasking-threadprivate2-orig-no.c;main;29;5;;\00", align 1
@3 = private unnamed_addr constant [53 x i8] c";DRB128-tasking-threadprivate2-orig-no.c;main;27;3;;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 1
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @3, i32 0, i32 0), i8** %2, align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 0, i32* %retval, align 4
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !16
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @3, i32 0, i32 0), i8** %4, align 8, !dbg !16
  %5 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..4 to i32 (i32, i8*)*)), !dbg !16
  %6 = bitcast i8* %5 to %struct.kmp_task_t_with_privates.3*, !dbg !16
  %7 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %6, i32 0, i32 0, !dbg !16
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !16
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @3, i32 0, i32 0), i8** %8, align 8, !dbg !16
  %9 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %5), !dbg !16
  ret i32 0, !dbg !17
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #2 !dbg !18 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !20, metadata !DIExpression()), !dbg !55
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !57, metadata !DIExpression()), !dbg !55
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !58, metadata !DIExpression()), !dbg !55
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !59, metadata !DIExpression()), !dbg !55
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !60, metadata !DIExpression()), !dbg !55
  %__context.addr.i = alloca %struct.anon.1*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon.1** %__context.addr.i, metadata !61, metadata !DIExpression()), !dbg !55
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !62, metadata !DIExpression()), !dbg !63
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !64, metadata !DIExpression()), !dbg !63
  %2 = load i32, i32* %.addr, align 4, !dbg !75
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !75
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !75
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !75
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !75
  %7 = load i8*, i8** %6, align 8, !dbg !75
  %8 = bitcast i8* %7 to %struct.anon.1*, !dbg !75
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !75
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !76
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !76
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !76
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !76
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !76
  store %struct.anon.1* %8, %struct.anon.1** %__context.addr.i, align 8, !noalias !76
  %10 = load %struct.anon.1*, %struct.anon.1** %__context.addr.i, align 8, !dbg !82, !noalias !76
  ret i32 0, !dbg !75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.2* noalias %1) #2 !dbg !83 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !84, metadata !DIExpression()), !dbg !85
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !87, metadata !DIExpression()), !dbg !85
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !88, metadata !DIExpression()), !dbg !85
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !89, metadata !DIExpression()), !dbg !85
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !90, metadata !DIExpression()), !dbg !85
  %__context.addr.i = alloca %struct.anon.0*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr.i, metadata !91, metadata !DIExpression()), !dbg !85
  %.kmpc_loc.addr.i = alloca %struct.ident_t, align 8
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.2*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !92, metadata !DIExpression()), !dbg !93
  store %struct.kmp_task_t_with_privates.2* %1, %struct.kmp_task_t_with_privates.2** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.2** %.addr1, metadata !94, metadata !DIExpression()), !dbg !93
  %2 = load i32, i32* %.addr, align 4, !dbg !100
  %3 = load %struct.kmp_task_t_with_privates.2*, %struct.kmp_task_t_with_privates.2** %.addr1, align 8, !dbg !100
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.2, %struct.kmp_task_t_with_privates.2* %3, i32 0, i32 0, !dbg !100
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !100
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !100
  %7 = load i8*, i8** %6, align 8, !dbg !100
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !100
  %9 = bitcast %struct.kmp_task_t_with_privates.2* %3 to i8*, !dbg !100
  %10 = bitcast %struct.ident_t* %.kmpc_loc.addr.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #5, !noalias !101
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !101
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !101
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !101
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !101
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !101
  store %struct.anon.0* %8, %struct.anon.0** %__context.addr.i, align 8, !noalias !101
  %11 = load %struct.anon.0*, %struct.anon.0** %__context.addr.i, align 8, !dbg !107, !noalias !101
  store i32 1, i32* @tp, align 4, !dbg !108
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr.i, i32 0, i32 4, !dbg !110
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1, i32 0, i32 0), i8** %12, align 8, !dbg !110, !noalias !101
  %13 = load i32, i32* %.global_tid..addr.i, align 4, !dbg !110, !noalias !101
  %14 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr.i, i32 %13, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)) #5, !dbg !110
  %15 = bitcast i8* %14 to %struct.kmp_task_t_with_privates*, !dbg !110
  %16 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %15, i32 0, i32 0, !dbg !110
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr.i, i32 0, i32 4, !dbg !110
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1, i32 0, i32 0), i8** %17, align 8, !dbg !110, !noalias !101
  %18 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr.i, i32 %13, i8* %14) #5, !dbg !110
  %19 = load i32, i32* @tp, align 4, !dbg !111
  store i32 %19, i32* @var, align 4, !dbg !112
  ret i32 0, !dbg !100
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..4(i32 %0, %struct.kmp_task_t_with_privates.3* noalias %1) #2 !dbg !113 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !114, metadata !DIExpression()), !dbg !115
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !117, metadata !DIExpression()), !dbg !115
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !118, metadata !DIExpression()), !dbg !115
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !119, metadata !DIExpression()), !dbg !115
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !120, metadata !DIExpression()), !dbg !115
  %__context.addr.i = alloca %struct.anon*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr.i, metadata !121, metadata !DIExpression()), !dbg !115
  %.kmpc_loc.addr.i = alloca %struct.ident_t, align 8
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.3*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !122, metadata !DIExpression()), !dbg !123
  store %struct.kmp_task_t_with_privates.3* %1, %struct.kmp_task_t_with_privates.3** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.3** %.addr1, metadata !124, metadata !DIExpression()), !dbg !123
  %2 = load i32, i32* %.addr, align 4, !dbg !130
  %3 = load %struct.kmp_task_t_with_privates.3*, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !dbg !130
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %3, i32 0, i32 0, !dbg !130
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !130
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !130
  %7 = load i8*, i8** %6, align 8, !dbg !130
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !130
  %9 = bitcast %struct.kmp_task_t_with_privates.3* %3 to i8*, !dbg !130
  %10 = bitcast %struct.ident_t* %.kmpc_loc.addr.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #5, !noalias !131
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !131
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !131
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !131
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !131
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !131
  store %struct.anon* %8, %struct.anon** %__context.addr.i, align 8, !noalias !131
  %11 = load %struct.anon*, %struct.anon** %__context.addr.i, align 8, !dbg !137, !noalias !131
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr.i, i32 0, i32 4, !dbg !138
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2, i32 0, i32 0), i8** %12, align 8, !dbg !138, !noalias !131
  %13 = load i32, i32* %.global_tid..addr.i, align 4, !dbg !138, !noalias !131
  %14 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr.i, i32 %13, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.2*)* @.omp_task_entry..3 to i32 (i32, i8*)*)) #5, !dbg !138
  %15 = bitcast i8* %14 to %struct.kmp_task_t_with_privates.2*, !dbg !138
  %16 = getelementptr inbounds %struct.kmp_task_t_with_privates.2, %struct.kmp_task_t_with_privates.2* %15, i32 0, i32 0, !dbg !138
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr.i, i32 0, i32 4, !dbg !138
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2, i32 0, i32 0), i8** %17, align 8, !dbg !138, !noalias !131
  %18 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr.i, i32 %13, i8* %14) #5, !dbg !138
  ret i32 0, !dbg !130
}

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

; Function Attrs: noinline nounwind uwtable
define weak_odr hidden i32* @_ZTW2tp() #4 comdat {
  ret i32* @tp
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tp", scope: !2, file: !3, line: 22, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB128-tasking-threadprivate2-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "var", scope: !2, file: !3, line: 24, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 10.0.1 "}
!13 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 26, type: !14, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!14 = !DISubroutineType(types: !15)
!15 = !{!8}
!16 = !DILocation(line: 27, column: 3, scope: !13)
!17 = !DILocation(line: 38, column: 3, scope: !13)
!18 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 32, type: !19, scopeLine: 32, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!19 = !DISubroutineType(types: !4)
!20 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !21, type: !24, flags: DIFlagArtificial)
!21 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !3, file: !3, line: 32, type: !22, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24, !25, !28, !31, !36, !37}
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !28, null}
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !41, file: !3, line: 32, elements: !4)
!41 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 29, type: !42, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !24, !25, !28, !31, !36, !44}
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !48, file: !3, line: 29, elements: !4)
!48 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 27, type: !49, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !24, !25, !28, !31, !36, !51}
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !13, file: !3, line: 27, elements: !4)
!55 = !DILocation(line: 0, scope: !21, inlinedAt: !56)
!56 = distinct !DILocation(line: 32, column: 7, scope: !18)
!57 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !21, type: !25, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: ".privates.", arg: 3, scope: !21, type: !28, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !21, type: !31, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !21, type: !36, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: "__context", arg: 6, scope: !21, type: !37, flags: DIFlagArtificial)
!62 = !DILocalVariable(arg: 1, scope: !18, type: !8, flags: DIFlagArtificial)
!63 = !DILocation(line: 0, scope: !18)
!64 = !DILocalVariable(arg: 2, scope: !18, type: !65, flags: DIFlagArtificial)
!65 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 320, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !3, baseType: !70, size: 320)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !3, size: 320, elements: !71)
!71 = !{!72, !74}
!72 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !3, baseType: !73, size: 64, offset: 192)
!73 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !3, size: 64, elements: !4)
!74 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !3, baseType: !73, size: 64, offset: 256)
!75 = !DILocation(line: 32, column: 7, scope: !18)
!76 = !{!77, !79, !80, !81}
!77 = distinct !{!77, !78, !".omp_outlined..2: %.part_id."}
!78 = distinct !{!78, !".omp_outlined..2"}
!79 = distinct !{!79, !78, !".omp_outlined..2: %.privates."}
!80 = distinct !{!80, !78, !".omp_outlined..2: %.copy_fn."}
!81 = distinct !{!81, !78, !".omp_outlined..2: %__context"}
!82 = !DILocation(line: 33, column: 7, scope: !21, inlinedAt: !56)
!83 = distinct !DISubprogram(linkageName: ".omp_task_entry..3", scope: !3, file: !3, line: 29, type: !19, scopeLine: 29, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!84 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !41, type: !24, flags: DIFlagArtificial)
!85 = !DILocation(line: 0, scope: !41, inlinedAt: !86)
!86 = distinct !DILocation(line: 29, column: 5, scope: !83)
!87 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !41, type: !25, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".privates.", arg: 3, scope: !41, type: !28, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !41, type: !31, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !41, type: !36, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: "__context", arg: 6, scope: !41, type: !44, flags: DIFlagArtificial)
!92 = !DILocalVariable(arg: 1, scope: !83, type: !8, flags: DIFlagArtificial)
!93 = !DILocation(line: 0, scope: !83)
!94 = !DILocalVariable(arg: 2, scope: !83, type: !95, flags: DIFlagArtificial)
!95 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 320, elements: !98)
!98 = !{!99}
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !97, file: !3, baseType: !70, size: 320)
!100 = !DILocation(line: 29, column: 5, scope: !83)
!101 = !{!102, !104, !105, !106}
!102 = distinct !{!102, !103, !".omp_outlined..1: %.part_id."}
!103 = distinct !{!103, !".omp_outlined..1"}
!104 = distinct !{!104, !103, !".omp_outlined..1: %.privates."}
!105 = distinct !{!105, !103, !".omp_outlined..1: %.copy_fn."}
!106 = distinct !{!106, !103, !".omp_outlined..1: %__context"}
!107 = !DILocation(line: 30, column: 5, scope: !41, inlinedAt: !86)
!108 = !DILocation(line: 31, column: 10, scope: !109, inlinedAt: !86)
!109 = distinct !DILexicalBlock(scope: !41, file: !3, line: 30, column: 5)
!110 = !DILocation(line: 32, column: 7, scope: !109, inlinedAt: !86)
!111 = !DILocation(line: 35, column: 13, scope: !109, inlinedAt: !86)
!112 = !DILocation(line: 35, column: 11, scope: !109, inlinedAt: !86)
!113 = distinct !DISubprogram(linkageName: ".omp_task_entry..4", scope: !3, file: !3, line: 27, type: !19, scopeLine: 27, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!114 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !48, type: !24, flags: DIFlagArtificial)
!115 = !DILocation(line: 0, scope: !48, inlinedAt: !116)
!116 = distinct !DILocation(line: 27, column: 3, scope: !113)
!117 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !48, type: !25, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: ".privates.", arg: 3, scope: !48, type: !28, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !48, type: !31, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !48, type: !36, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: "__context", arg: 6, scope: !48, type: !51, flags: DIFlagArtificial)
!122 = !DILocalVariable(arg: 1, scope: !113, type: !8, flags: DIFlagArtificial)
!123 = !DILocation(line: 0, scope: !113)
!124 = !DILocalVariable(arg: 2, scope: !113, type: !125, flags: DIFlagArtificial)
!125 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 320, elements: !128)
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, scope: !127, file: !3, baseType: !70, size: 320)
!130 = !DILocation(line: 27, column: 3, scope: !113)
!131 = !{!132, !134, !135, !136}
!132 = distinct !{!132, !133, !".omp_outlined.: %.part_id."}
!133 = distinct !{!133, !".omp_outlined."}
!134 = distinct !{!134, !133, !".omp_outlined.: %.privates."}
!135 = distinct !{!135, !133, !".omp_outlined.: %.copy_fn."}
!136 = distinct !{!136, !133, !".omp_outlined.: %__context"}
!137 = !DILocation(line: 28, column: 3, scope: !48, inlinedAt: !116)
!138 = !DILocation(line: 29, column: 5, scope: !139, inlinedAt: !116)
!139 = distinct !DILexicalBlock(scope: !48, file: !3, line: 28, column: 3)
