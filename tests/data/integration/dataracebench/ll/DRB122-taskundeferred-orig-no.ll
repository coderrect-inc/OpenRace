; ModuleID = 'DRB122-taskundeferred-orig-no.c'
source_filename = "DRB122-taskundeferred-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [45 x i8] c";DRB122-taskundeferred-orig-no.c;main;25;3;;\00", align 1
@2 = private unnamed_addr constant [45 x i8] c";DRB122-taskundeferred-orig-no.c;main;28;7;;\00", align 1
@3 = private unnamed_addr constant [46 x i8] c";DRB122-taskundeferred-orig-no.c;main;25;33;;\00", align 1
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %var = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %var, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 0, i32* %var, align 4, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !21
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !22
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !22
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i32* %i, i32* %var), !dbg !22
  %3 = load i32, i32* %var, align 4, !dbg !23
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %3), !dbg !24
  ret i32 0, !dbg !25
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i, i32* dereferenceable(4) %var) #2 !dbg !26 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  %.omp.sections.lb. = alloca i32, align 4
  %.omp.sections.ub. = alloca i32, align 4
  %.omp.sections.st. = alloca i32, align 4
  %.omp.sections.il. = alloca i32, align 4
  %.omp.sections.iv. = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %agg.captured = alloca %struct.anon, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !34, metadata !DIExpression()), !dbg !35
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !36, metadata !DIExpression()), !dbg !35
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !37, metadata !DIExpression()), !dbg !38
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !39, metadata !DIExpression()), !dbg !40
  %2 = load i32*, i32** %i.addr, align 8, !dbg !41
  %3 = load i32*, i32** %var.addr, align 8, !dbg !41
  store i32 0, i32* %.omp.sections.lb., align 4, !dbg !41
  store i32 0, i32* %.omp.sections.ub., align 4, !dbg !41
  store i32 1, i32* %.omp.sections.st., align 4, !dbg !41
  store i32 0, i32* %.omp.sections.il., align 4, !dbg !41
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !41
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !41
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !41
  %6 = load i32, i32* %5, align 4, !dbg !41
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 34, i32* %.omp.sections.il., i32* %.omp.sections.lb., i32* %.omp.sections.ub., i32* %.omp.sections.st., i32 1, i32 1), !dbg !41
  %7 = load i32, i32* %.omp.sections.ub., align 4, !dbg !41
  %8 = icmp slt i32 %7, 0, !dbg !41
  %9 = select i1 %8, i32 %7, i32 0, !dbg !41
  store i32 %9, i32* %.omp.sections.ub., align 4, !dbg !41
  %10 = load i32, i32* %.omp.sections.lb., align 4, !dbg !41
  store i32 %10, i32* %.omp.sections.iv., align 4, !dbg !41
  br label %omp.inner.for.cond, !dbg !41

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %11 = load i32, i32* %.omp.sections.iv., align 4, !dbg !42
  %12 = load i32, i32* %.omp.sections.ub., align 4, !dbg !42
  %cmp = icmp sle i32 %11, %12, !dbg !42
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !41

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, i32* %.omp.sections.iv., align 4, !dbg !41
  switch i32 %13, label %.omp.sections.exit [
    i32 0, label %.omp.sections.case
  ], !dbg !41

.omp.sections.case:                               ; preds = %omp.inner.for.body
  store i32 0, i32* %2, align 4, !dbg !43
  br label %for.cond, !dbg !45

for.cond:                                         ; preds = %for.inc, %.omp.sections.case
  %14 = load i32, i32* %2, align 4, !dbg !46
  %cmp1 = icmp slt i32 %14, 10, !dbg !48
  br i1 %cmp1, label %for.body, label %for.end, !dbg !49

for.body:                                         ; preds = %for.cond
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !50
  store i32* %3, i32** %15, align 8, !dbg !50
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @2, i32 0, i32 0), i8** %16, align 8, !dbg !50
  %17 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !50
  %18 = bitcast i8* %17 to %struct.kmp_task_t_with_privates*, !dbg !50
  %19 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %18, i32 0, i32 0, !dbg !50
  %20 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %19, i32 0, i32 0, !dbg !50
  %21 = load i8*, i8** %20, align 8, !dbg !50
  %22 = bitcast %struct.anon* %agg.captured to i8*, !dbg !50
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 8, i1 false), !dbg !50
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @2, i32 0, i32 0), i8** %23, align 8, !dbg !50
  call void @__kmpc_omp_task_begin_if0(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i8* %17), !dbg !52
  %24 = call i32 @.omp_task_entry.(i32 %6, %struct.kmp_task_t_with_privates* %18) #6, !dbg !54
  call void @__kmpc_omp_task_complete_if0(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i8* %17), !dbg !52
  br label %for.inc, !dbg !56

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %2, align 4, !dbg !57
  %inc = add nsw i32 %25, 1, !dbg !57
  store i32 %inc, i32* %2, align 4, !dbg !57
  br label %for.cond, !dbg !58, !llvm.loop !59

for.end:                                          ; preds = %for.cond
  br label %.omp.sections.exit, !dbg !60

.omp.sections.exit:                               ; preds = %for.end, %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !60

omp.inner.for.inc:                                ; preds = %.omp.sections.exit
  %26 = load i32, i32* %.omp.sections.iv., align 4, !dbg !42
  %inc2 = add nsw i32 %26, 1, !dbg !42
  store i32 %inc2, i32* %.omp.sections.iv., align 4, !dbg !42
  br label %omp.inner.for.cond, !dbg !60, !llvm.loop !61

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !60
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @3, i32 0, i32 0), i8** %27, align 8, !dbg !60
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !60
  ret void, !dbg !63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !64 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !66, metadata !DIExpression()), !dbg !83
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !85, metadata !DIExpression()), !dbg !83
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !86, metadata !DIExpression()), !dbg !83
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !87, metadata !DIExpression()), !dbg !83
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !88, metadata !DIExpression()), !dbg !83
  %__context.addr.i = alloca %struct.anon*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr.i, metadata !89, metadata !DIExpression()), !dbg !83
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !90, metadata !DIExpression()), !dbg !91
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !92, metadata !DIExpression()), !dbg !91
  %2 = load i32, i32* %.addr, align 4, !dbg !103
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !103
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !103
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !103
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !103
  %7 = load i8*, i8** %6, align 8, !dbg !103
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !103
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !103
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !104
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !104
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !104
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !104
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !104
  store %struct.anon* %8, %struct.anon** %__context.addr.i, align 8, !noalias !104
  %10 = load %struct.anon*, %struct.anon** %__context.addr.i, align 8, !dbg !110, !noalias !104
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0, !dbg !111
  %12 = load i32*, i32** %11, align 8, !dbg !111
  %13 = load i32, i32* %12, align 4, !dbg !113
  %inc.i = add nsw i32 %13, 1, !dbg !113
  store i32 %inc.i, i32* %12, align 4, !dbg !113
  ret i32 0, !dbg !103
}

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local void @__kmpc_omp_task_complete_if0(%struct.ident_t*, i32, i8*)

declare dso_local void @__kmpc_omp_task_begin_if0(%struct.ident_t*, i32, i8*)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i, i32* dereferenceable(4) %var) #2 !dbg !114 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !115, metadata !DIExpression()), !dbg !116
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !117, metadata !DIExpression()), !dbg !116
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !118, metadata !DIExpression()), !dbg !116
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !119, metadata !DIExpression()), !dbg !116
  %0 = load i32*, i32** %i.addr, align 8, !dbg !120
  %1 = load i32*, i32** %var.addr, align 8, !dbg !120
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !120
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !120
  %4 = load i32*, i32** %i.addr, align 8, !dbg !120
  %5 = load i32*, i32** %var.addr, align 8, !dbg !120
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #6, !dbg !120
  ret void, !dbg !120
}

declare !callback !121 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB122-taskundeferred-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !8, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 20, type: !10)
!15 = !DILocation(line: 20, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 20, type: !11)
!17 = !DILocation(line: 20, column: 26, scope: !7)
!18 = !DILocalVariable(name: "var", scope: !7, file: !1, line: 22, type: !10)
!19 = !DILocation(line: 22, column: 7, scope: !7)
!20 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 23, type: !10)
!21 = !DILocation(line: 23, column: 7, scope: !7)
!22 = !DILocation(line: 25, column: 3, scope: !7)
!23 = !DILocation(line: 35, column: 17, scope: !7)
!24 = !DILocation(line: 35, column: 3, scope: !7)
!25 = !DILocation(line: 36, column: 3, scope: !7)
!26 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 26, type: !27, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29, !29, !33, !33}
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!33 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!34 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !26, type: !29, flags: DIFlagArtificial)
!35 = !DILocation(line: 0, scope: !26)
!36 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !26, type: !29, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: "i", arg: 3, scope: !26, file: !1, line: 23, type: !33)
!38 = !DILocation(line: 23, column: 7, scope: !26)
!39 = !DILocalVariable(name: "var", arg: 4, scope: !26, file: !1, line: 22, type: !33)
!40 = !DILocation(line: 22, column: 7, scope: !26)
!41 = !DILocation(line: 26, column: 3, scope: !26)
!42 = !DILocation(line: 25, column: 3, scope: !26)
!43 = !DILocation(line: 27, column: 12, scope: !44)
!44 = distinct !DILexicalBlock(scope: !26, file: !1, line: 27, column: 5)
!45 = !DILocation(line: 27, column: 10, scope: !44)
!46 = !DILocation(line: 27, column: 17, scope: !47)
!47 = distinct !DILexicalBlock(scope: !44, file: !1, line: 27, column: 5)
!48 = !DILocation(line: 27, column: 19, scope: !47)
!49 = !DILocation(line: 27, column: 5, scope: !44)
!50 = !DILocation(line: 28, column: 7, scope: !51)
!51 = distinct !DILexicalBlock(scope: !47, file: !1, line: 27, column: 30)
!52 = !DILocation(line: 28, column: 39, scope: !53)
!53 = distinct !DILexicalBlock(scope: !51, file: !1, line: 28, column: 7)
!54 = !DILocation(line: 28, column: 7, scope: !55)
!55 = distinct !DILexicalBlock(scope: !53, file: !1, line: 28, column: 39)
!56 = !DILocation(line: 32, column: 5, scope: !51)
!57 = !DILocation(line: 27, column: 26, scope: !47)
!58 = !DILocation(line: 27, column: 5, scope: !47)
!59 = distinct !{!59, !49, !60}
!60 = !DILocation(line: 32, column: 5, scope: !44)
!61 = distinct !{!61, !42, !62}
!62 = !DILocation(line: 25, column: 33, scope: !26)
!63 = !DILocation(line: 33, column: 3, scope: !26)
!64 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 28, type: !65, scopeLine: 28, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!65 = !DISubroutineType(types: !2)
!66 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !67, type: !32, flags: DIFlagArtificial)
!67 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 30, type: !68, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !32, !29, !70, !73, !78, !79}
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !70, null}
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !26, file: !1, line: 28, size: 64, elements: !2)
!83 = !DILocation(line: 0, scope: !67, inlinedAt: !84)
!84 = distinct !DILocation(line: 28, column: 7, scope: !64)
!85 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !67, type: !29, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".privates.", arg: 3, scope: !67, type: !70, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !67, type: !73, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !67, type: !78, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: "__context", arg: 6, scope: !67, type: !79, flags: DIFlagArtificial)
!90 = !DILocalVariable(arg: 1, scope: !64, type: !10, flags: DIFlagArtificial)
!91 = !DILocation(line: 0, scope: !64)
!92 = !DILocalVariable(arg: 2, scope: !64, type: !93, flags: DIFlagArtificial)
!93 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !96)
!96 = !{!97}
!97 = !DIDerivedType(tag: DW_TAG_member, scope: !95, file: !1, baseType: !98, size: 320)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !99)
!99 = !{!100, !102}
!100 = !DIDerivedType(tag: DW_TAG_member, scope: !98, file: !1, baseType: !101, size: 64, offset: 192)
!101 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!102 = !DIDerivedType(tag: DW_TAG_member, scope: !98, file: !1, baseType: !101, size: 64, offset: 256)
!103 = !DILocation(line: 28, column: 7, scope: !64)
!104 = !{!105, !107, !108, !109}
!105 = distinct !{!105, !106, !".omp_outlined.: %.part_id."}
!106 = distinct !{!106, !".omp_outlined."}
!107 = distinct !{!107, !106, !".omp_outlined.: %.privates."}
!108 = distinct !{!108, !106, !".omp_outlined.: %.copy_fn."}
!109 = distinct !{!109, !106, !".omp_outlined.: %__context"}
!110 = !DILocation(line: 29, column: 7, scope: !67, inlinedAt: !84)
!111 = !DILocation(line: 30, column: 9, scope: !112, inlinedAt: !84)
!112 = distinct !DILexicalBlock(scope: !67, file: !1, line: 29, column: 7)
!113 = !DILocation(line: 30, column: 12, scope: !112, inlinedAt: !84)
!114 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 26, type: !27, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!115 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !114, type: !29, flags: DIFlagArtificial)
!116 = !DILocation(line: 0, scope: !114)
!117 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !114, type: !29, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: "i", arg: 3, scope: !114, type: !33, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: "var", arg: 4, scope: !114, type: !33, flags: DIFlagArtificial)
!120 = !DILocation(line: 26, column: 3, scope: !114)
!121 = !{!122}
!122 = !{i64 2, i64 -1, i64 -1, i1 true}
