; ModuleID = 'integration/dataracebench/DRB122-taskundeferred-orig-no.c'
source_filename = "integration/dataracebench/DRB122-taskundeferred-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB122-taskundeferred-orig-no.c;main;25;3;;\00", align 1
@2 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB122-taskundeferred-orig-no.c;main;28;7;;\00", align 1
@3 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB122-taskundeferred-orig-no.c;main;25;33;;\00", align 1
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
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
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !19
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !15, metadata !DIExpression()), !dbg !23
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !26
  %2 = bitcast i32* %var to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %var, metadata !17, metadata !DIExpression()), !dbg !28
  store i32 0, i32* %var, align 4, !dbg !28, !tbaa !19
  %3 = bitcast i32* %i to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #6, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !30
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !31
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !31, !tbaa !32
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i32* %i, i32* %var), !dbg !31
  %5 = load i32, i32* %var, align 4, !dbg !34, !tbaa !19
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %5), !dbg !35
  %6 = bitcast i32* %i to i8*, !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #6, !dbg !36
  %7 = bitcast i32* %var to i8*, !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #6, !dbg !36
  ret i32 0, !dbg !37
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i, i32* dereferenceable(4) %var) #3 !dbg !38 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !47, metadata !DIExpression()), !dbg !51
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !48, metadata !DIExpression()), !dbg !51
  store i32* %i, i32** %i.addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !49, metadata !DIExpression()), !dbg !52
  store i32* %var, i32** %var.addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !50, metadata !DIExpression()), !dbg !53
  %2 = load i32*, i32** %i.addr, align 8, !dbg !54, !tbaa !24
  %3 = load i32*, i32** %var.addr, align 8, !dbg !54, !tbaa !24
  store i32 0, i32* %.omp.sections.lb., align 4, !dbg !54, !tbaa !19
  store i32 0, i32* %.omp.sections.ub., align 4, !dbg !54, !tbaa !19
  store i32 1, i32* %.omp.sections.st., align 4, !dbg !54, !tbaa !19
  store i32 0, i32* %.omp.sections.il., align 4, !dbg !54, !tbaa !19
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !54
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !54, !tbaa !32
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !54
  %6 = load i32, i32* %5, align 4, !dbg !54, !tbaa !19
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 34, i32* %.omp.sections.il., i32* %.omp.sections.lb., i32* %.omp.sections.ub., i32* %.omp.sections.st., i32 1, i32 1), !dbg !54
  %7 = load i32, i32* %.omp.sections.ub., align 4, !dbg !54, !tbaa !19
  %8 = icmp slt i32 %7, 0, !dbg !54
  %9 = select i1 %8, i32 %7, i32 0, !dbg !54
  store i32 %9, i32* %.omp.sections.ub., align 4, !dbg !54, !tbaa !19
  %10 = load i32, i32* %.omp.sections.lb., align 4, !dbg !54, !tbaa !19
  store i32 %10, i32* %.omp.sections.iv., align 4, !dbg !54, !tbaa !19
  br label %omp.inner.for.cond, !dbg !54

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %11 = load i32, i32* %.omp.sections.iv., align 4, !dbg !55, !tbaa !19
  %12 = load i32, i32* %.omp.sections.ub., align 4, !dbg !55, !tbaa !19
  %cmp = icmp sle i32 %11, %12, !dbg !55
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !54

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, i32* %.omp.sections.iv., align 4, !dbg !54, !tbaa !19
  switch i32 %13, label %.omp.sections.exit [
    i32 0, label %.omp.sections.case
  ], !dbg !54

.omp.sections.case:                               ; preds = %omp.inner.for.body
  store i32 0, i32* %2, align 4, !dbg !56, !tbaa !19
  br label %for.cond, !dbg !58

for.cond:                                         ; preds = %for.inc, %.omp.sections.case
  %14 = load i32, i32* %2, align 4, !dbg !59, !tbaa !19
  %cmp1 = icmp slt i32 %14, 10, !dbg !61
  br i1 %cmp1, label %for.body, label %for.end, !dbg !62

for.body:                                         ; preds = %for.cond
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !63
  store i32* %3, i32** %15, align 8, !dbg !63, !tbaa !24
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !63
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @2, i32 0, i32 0), i8** %16, align 8, !dbg !63, !tbaa !32
  %17 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !63
  %18 = bitcast i8* %17 to %struct.kmp_task_t_with_privates*, !dbg !63
  %19 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %18, i32 0, i32 0, !dbg !63
  %20 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %19, i32 0, i32 0, !dbg !63
  %21 = load i8*, i8** %20, align 8, !dbg !63, !tbaa !65
  %22 = bitcast %struct.anon* %agg.captured to i8*, !dbg !63
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 8, i1 false), !dbg !63, !tbaa.struct !68
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !63
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @2, i32 0, i32 0), i8** %23, align 8, !dbg !63, !tbaa !32
  call void @__kmpc_omp_task_begin_if0(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i8* %17), !dbg !69
  %24 = call i32 @.omp_task_entry.(i32 %6, %struct.kmp_task_t_with_privates* %18) #6, !dbg !71
  call void @__kmpc_omp_task_complete_if0(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i8* %17), !dbg !69
  br label %for.inc, !dbg !73

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %2, align 4, !dbg !74, !tbaa !19
  %inc = add nsw i32 %25, 1, !dbg !74
  store i32 %inc, i32* %2, align 4, !dbg !74, !tbaa !19
  br label %for.cond, !dbg !75, !llvm.loop !76

for.end:                                          ; preds = %for.cond
  br label %.omp.sections.exit, !dbg !77

.omp.sections.exit:                               ; preds = %for.end, %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !77

omp.inner.for.inc:                                ; preds = %.omp.sections.exit
  %26 = load i32, i32* %.omp.sections.iv., align 4, !dbg !55, !tbaa !19
  %inc2 = add nsw i32 %26, 1, !dbg !55
  store i32 %inc2, i32* %.omp.sections.iv., align 4, !dbg !55, !tbaa !19
  br label %omp.inner.for.cond, !dbg !77, !llvm.loop !78

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !77
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @3, i32 0, i32 0), i8** %27, align 8, !dbg !77, !tbaa !32
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !77
  ret void, !dbg !80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #4 !dbg !81 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !19
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !98, metadata !DIExpression()), !dbg !104
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !99, metadata !DIExpression()), !dbg !104
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !100, metadata !DIExpression()), !dbg !104
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !101, metadata !DIExpression()), !dbg !104
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !102, metadata !DIExpression()), !dbg !104
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !103, metadata !DIExpression()), !dbg !104
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !105
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !106
  %2 = load i32*, i32** %1, align 8, !dbg !106, !tbaa !108
  %3 = load i32, i32* %2, align 4, !dbg !110, !tbaa !19
  %inc = add nsw i32 %3, 1, !dbg !110
  store i32 %inc, i32* %2, align 4, !dbg !110, !tbaa !19
  ret void, !dbg !111
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !112 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !19
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !115, metadata !DIExpression()), !dbg !127
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !116, metadata !DIExpression()), !dbg !127
  %2 = load i32, i32* %.addr, align 4, !dbg !128, !tbaa !19
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !128
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !128
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !128
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !128
  %7 = load i8*, i8** %6, align 8, !dbg !128, !tbaa !65
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !128
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !128
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #6, !dbg !128
  ret i32 0, !dbg !128
}

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local void @__kmpc_omp_task_complete_if0(%struct.ident_t*, i32, i8*)

declare dso_local void @__kmpc_omp_task_begin_if0(%struct.ident_t*, i32, i8*)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i, i32* dereferenceable(4) %var) #3 !dbg !129 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !131, metadata !DIExpression()), !dbg !135
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !132, metadata !DIExpression()), !dbg !135
  store i32* %i, i32** %i.addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !133, metadata !DIExpression()), !dbg !135
  store i32* %var, i32** %var.addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !134, metadata !DIExpression()), !dbg !135
  %0 = load i32*, i32** %i.addr, align 8, !dbg !136, !tbaa !24
  %1 = load i32*, i32** %var.addr, align 8, !dbg !136, !tbaa !24
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !136, !tbaa !24
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !136, !tbaa !24
  %4 = load i32*, i32** %i.addr, align 8, !dbg !136, !tbaa !24
  %5 = load i32*, i32** %var.addr, align 8, !dbg !136, !tbaa !24
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #6, !dbg !136
  ret void, !dbg !136
}

declare !callback !137 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB122-taskundeferred-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !8, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15, !16, !17, !18}
!15 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 20, type: !10)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 20, type: !11)
!17 = !DILocalVariable(name: "var", scope: !7, file: !1, line: 22, type: !10)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 23, type: !10)
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !DILocation(line: 20, column: 14, scope: !7)
!24 = !{!25, !25, i64 0}
!25 = !{!"any pointer", !21, i64 0}
!26 = !DILocation(line: 20, column: 26, scope: !7)
!27 = !DILocation(line: 22, column: 3, scope: !7)
!28 = !DILocation(line: 22, column: 7, scope: !7)
!29 = !DILocation(line: 23, column: 3, scope: !7)
!30 = !DILocation(line: 23, column: 7, scope: !7)
!31 = !DILocation(line: 25, column: 3, scope: !7)
!32 = !{!33, !25, i64 16}
!33 = !{!"ident_t", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !25, i64 16}
!34 = !DILocation(line: 35, column: 17, scope: !7)
!35 = !DILocation(line: 35, column: 3, scope: !7)
!36 = !DILocation(line: 37, column: 1, scope: !7)
!37 = !DILocation(line: 36, column: 3, scope: !7)
!38 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 26, type: !39, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !46)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !41, !45, !45}
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!45 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!46 = !{!47, !48, !49, !50}
!47 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !38, type: !41, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !38, type: !41, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: "i", arg: 3, scope: !38, file: !1, line: 23, type: !45)
!50 = !DILocalVariable(name: "var", arg: 4, scope: !38, file: !1, line: 22, type: !45)
!51 = !DILocation(line: 0, scope: !38)
!52 = !DILocation(line: 23, column: 7, scope: !38)
!53 = !DILocation(line: 22, column: 7, scope: !38)
!54 = !DILocation(line: 26, column: 3, scope: !38)
!55 = !DILocation(line: 25, column: 3, scope: !38)
!56 = !DILocation(line: 27, column: 12, scope: !57)
!57 = distinct !DILexicalBlock(scope: !38, file: !1, line: 27, column: 5)
!58 = !DILocation(line: 27, column: 10, scope: !57)
!59 = !DILocation(line: 27, column: 17, scope: !60)
!60 = distinct !DILexicalBlock(scope: !57, file: !1, line: 27, column: 5)
!61 = !DILocation(line: 27, column: 19, scope: !60)
!62 = !DILocation(line: 27, column: 5, scope: !57)
!63 = !DILocation(line: 28, column: 7, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 27, column: 30)
!65 = !{!66, !25, i64 0}
!66 = !{!"kmp_task_t_with_privates", !67, i64 0}
!67 = !{!"kmp_task_t", !25, i64 0, !25, i64 8, !20, i64 16, !21, i64 24, !21, i64 32}
!68 = !{i64 0, i64 8, !24}
!69 = !DILocation(line: 28, column: 39, scope: !70)
!70 = distinct !DILexicalBlock(scope: !64, file: !1, line: 28, column: 7)
!71 = !DILocation(line: 28, column: 7, scope: !72)
!72 = distinct !DILexicalBlock(scope: !70, file: !1, line: 28, column: 39)
!73 = !DILocation(line: 32, column: 5, scope: !64)
!74 = !DILocation(line: 27, column: 26, scope: !60)
!75 = !DILocation(line: 27, column: 5, scope: !60)
!76 = distinct !{!76, !62, !77}
!77 = !DILocation(line: 32, column: 5, scope: !57)
!78 = distinct !{!78, !55, !79}
!79 = !DILocation(line: 25, column: 33, scope: !38)
!80 = !DILocation(line: 33, column: 3, scope: !38)
!81 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 30, type: !82, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !97)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !44, !41, !84, !87, !92, !93}
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !84, null}
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !38, file: !1, line: 28, size: 64, elements: !2)
!97 = !{!98, !99, !100, !101, !102, !103}
!98 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !81, type: !44, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !81, type: !41, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".privates.", arg: 3, scope: !81, type: !84, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !81, type: !87, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !81, type: !92, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: "__context", arg: 6, scope: !81, type: !93, flags: DIFlagArtificial)
!104 = !DILocation(line: 0, scope: !81)
!105 = !DILocation(line: 29, column: 7, scope: !81)
!106 = !DILocation(line: 30, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !81, file: !1, line: 29, column: 7)
!108 = !{!109, !25, i64 0}
!109 = !{!"", !25, i64 0}
!110 = !DILocation(line: 30, column: 12, scope: !107)
!111 = !DILocation(line: 31, column: 7, scope: !81)
!112 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 28, type: !113, scopeLine: 28, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !114)
!113 = !DISubroutineType(types: !2)
!114 = !{!115, !116}
!115 = !DILocalVariable(arg: 1, scope: !112, type: !10, flags: DIFlagArtificial)
!116 = !DILocalVariable(arg: 2, scope: !112, type: !117, flags: DIFlagArtificial)
!117 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !120)
!120 = !{!121}
!121 = !DIDerivedType(tag: DW_TAG_member, scope: !119, file: !1, baseType: !122, size: 320)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !123)
!123 = !{!124, !126}
!124 = !DIDerivedType(tag: DW_TAG_member, scope: !122, file: !1, baseType: !125, size: 64, offset: 192)
!125 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!126 = !DIDerivedType(tag: DW_TAG_member, scope: !122, file: !1, baseType: !125, size: 64, offset: 256)
!127 = !DILocation(line: 0, scope: !112)
!128 = !DILocation(line: 28, column: 7, scope: !112)
!129 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 26, type: !39, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !130)
!130 = !{!131, !132, !133, !134}
!131 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !129, type: !41, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !129, type: !41, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: "i", arg: 3, scope: !129, type: !45, flags: DIFlagArtificial)
!134 = !DILocalVariable(name: "var", arg: 4, scope: !129, type: !45, flags: DIFlagArtificial)
!135 = !DILocation(line: 0, scope: !129)
!136 = !DILocation(line: 26, column: 3, scope: !129)
!137 = !{!138}
!138 = !{i64 2, i64 -1, i64 -1, i1 true}
