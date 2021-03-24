; ModuleID = 'DRB095-doall2-taskloop-orig-yes.c'
source_filename = "DRB095-doall2-taskloop-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t, i64, i64, i64, i32, i8* }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [47 x i8] c";DRB095-doall2-taskloop-orig-yes.c;main;65;1;;\00", align 1
@2 = private unnamed_addr constant [47 x i8] c";DRB095-doall2-taskloop-orig-yes.c;main;67;1;;\00", align 1
@a = common dso_local global [100 x [100 x i32]] zeroinitializer, align 16, !dbg !0
@3 = private unnamed_addr constant [47 x i8] c";DRB095-doall2-taskloop-orig-yes.c;main;63;1;;\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"a[50][50]=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %j, metadata !19, metadata !DIExpression()), !dbg !20
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !21
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @3, i32 0, i32 0), i8** %2, align 8, !dbg !21
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i32* %j), !dbg !21
  %3 = load i32, i32* getelementptr inbounds ([100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 50, i64 50), align 8, !dbg !22
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %3), !dbg !23
  ret i32 0, !dbg !24
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %j) #2 !dbg !25 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %agg.captured = alloca %struct.anon, align 8
  %tmp = alloca i32, align 4
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !33, metadata !DIExpression()), !dbg !34
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !35, metadata !DIExpression()), !dbg !34
  store i32* %j, i32** %j.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %j.addr, metadata !36, metadata !DIExpression()), !dbg !37
  %2 = load i32*, i32** %j.addr, align 8, !dbg !38
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !39
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !39
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !39
  %5 = load i32, i32* %4, align 4, !dbg !39
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !39
  %7 = icmp ne i32 %6, 0, !dbg !39
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !39

omp_if.then:                                      ; preds = %entry
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !41
  store i32* %2, i32** %8, align 8, !dbg !41
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !41
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @2, i32 0, i32 0), i8** %9, align 8, !dbg !41
  call void @__kmpc_taskgroup(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !41
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !41
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @2, i32 0, i32 0), i8** %10, align 8, !dbg !41
  %11 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 1, i64 80, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !41
  %12 = bitcast i8* %11 to %struct.kmp_task_t_with_privates*, !dbg !41
  %13 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %12, i32 0, i32 0, !dbg !41
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 0, !dbg !41
  %15 = load i8*, i8** %14, align 8, !dbg !41
  %16 = bitcast %struct.anon* %agg.captured to i8*, !dbg !41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false), !dbg !41
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !41
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @2, i32 0, i32 0), i8** %17, align 8, !dbg !41
  %18 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 5, !dbg !41
  store i64 0, i64* %18, align 8, !dbg !41
  %19 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 6, !dbg !41
  store i64 99, i64* %19, align 8, !dbg !41
  %20 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 7, !dbg !41
  store i64 1, i64* %20, align 8, !dbg !41
  %21 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 9, !dbg !41
  %22 = bitcast i8** %21 to i8*, !dbg !41
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 8, i1 false), !dbg !41
  %23 = load i64, i64* %20, align 8, !dbg !41
  call void @__kmpc_taskloop(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i8* %11, i32 1, i64* %18, i64* %19, i64 %23, i32 1, i32 0, i64 0, i8* null), !dbg !41
  call void @__kmpc_end_taskgroup(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !44
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !46
  br label %omp_if.end, !dbg !46

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !47
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1, i32 0, i32 0), i8** %24, align 8, !dbg !47
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !47
  ret void, !dbg !48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_taskgroup(%struct.ident_t*, i32)

declare dso_local void @__kmpc_taskgroup(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !49 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !51, metadata !DIExpression()), !dbg !72
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !74, metadata !DIExpression()), !dbg !72
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !75, metadata !DIExpression()), !dbg !72
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !76, metadata !DIExpression()), !dbg !72
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !77, metadata !DIExpression()), !dbg !72
  %.lb..addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %.lb..addr.i, metadata !78, metadata !DIExpression()), !dbg !72
  %.ub..addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %.ub..addr.i, metadata !79, metadata !DIExpression()), !dbg !72
  %.st..addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %.st..addr.i, metadata !80, metadata !DIExpression()), !dbg !72
  %.liter..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.liter..addr.i, metadata !81, metadata !DIExpression()), !dbg !72
  %.reductions..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.reductions..addr.i, metadata !82, metadata !DIExpression()), !dbg !72
  %__context.addr.i = alloca %struct.anon*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr.i, metadata !83, metadata !DIExpression()), !dbg !72
  %i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.i, metadata !84, metadata !DIExpression()), !dbg !72
  %.omp.iv.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.omp.iv.i, metadata !85, metadata !DIExpression()), !dbg !72
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !86, metadata !DIExpression()), !dbg !87
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !88, metadata !DIExpression()), !dbg !87
  %2 = load i32, i32* %.addr, align 4, !dbg !99
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !99
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !99
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !99
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !99
  %7 = load i8*, i8** %6, align 8, !dbg !99
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !99
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !99
  %10 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 5, !dbg !99
  %11 = load i64, i64* %10, align 8, !dbg !99
  %12 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 6, !dbg !99
  %13 = load i64, i64* %12, align 8, !dbg !99
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 7, !dbg !99
  %15 = load i64, i64* %14, align 8, !dbg !99
  %16 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 8, !dbg !99
  %17 = load i32, i32* %16, align 8, !dbg !99
  %18 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 9, !dbg !99
  %19 = load i8*, i8** %18, align 8, !dbg !99
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !100
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !100
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !100
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !100
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !100
  store i64 %11, i64* %.lb..addr.i, align 8, !noalias !100
  store i64 %13, i64* %.ub..addr.i, align 8, !noalias !100
  store i64 %15, i64* %.st..addr.i, align 8, !noalias !100
  store i32 %17, i32* %.liter..addr.i, align 4, !noalias !100
  store i8* %19, i8** %.reductions..addr.i, align 8, !noalias !100
  store %struct.anon* %8, %struct.anon** %__context.addr.i, align 8, !noalias !100
  %20 = load %struct.anon*, %struct.anon** %__context.addr.i, align 8, !dbg !107, !noalias !100
  %21 = load i64, i64* %.lb..addr.i, align 8, !dbg !108, !noalias !100
  %conv.i = trunc i64 %21 to i32, !dbg !108
  store i32 %conv.i, i32* %.omp.iv.i, align 4, !dbg !108, !noalias !100
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 0, !dbg !109
  %23 = load i32*, i32** %22, align 8, !dbg !109
  br label %omp.inner.for.cond.i, !dbg !111

omp.inner.for.cond.i:                             ; preds = %for.end.i, %entry
  %24 = load i32, i32* %.omp.iv.i, align 4, !dbg !112, !noalias !100
  %conv1.i = sext i32 %24 to i64, !dbg !112
  %25 = load i64, i64* %.ub..addr.i, align 8, !dbg !112, !noalias !100
  %cmp.i = icmp ule i64 %conv1.i, %25, !dbg !113
  br i1 %cmp.i, label %omp.inner.for.body.i, label %.omp_outlined..exit, !dbg !111

omp.inner.for.body.i:                             ; preds = %omp.inner.for.cond.i
  %26 = load i32, i32* %.omp.iv.i, align 4, !dbg !112, !noalias !100
  store i32 %26, i32* %i.i, align 4, !dbg !114, !noalias !100
  store i32 0, i32* %23, align 4, !dbg !115
  br label %for.cond.i, !dbg !117

for.cond.i:                                       ; preds = %for.body.i, %omp.inner.for.body.i
  %27 = load i32, i32* %23, align 4, !dbg !118
  %cmp3.i = icmp slt i32 %27, 100, !dbg !120
  br i1 %cmp3.i, label %for.body.i, label %for.end.i, !dbg !121

for.body.i:                                       ; preds = %for.cond.i
  %28 = load i32, i32* %i.i, align 4, !dbg !122, !noalias !100
  %idxprom.i = sext i32 %28 to i64, !dbg !123
  %arrayidx.i = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom.i, !dbg !123
  %29 = load i32, i32* %23, align 4, !dbg !124
  %idxprom5.i = sext i32 %29 to i64, !dbg !123
  %arrayidx6.i = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx.i, i64 0, i64 %idxprom5.i, !dbg !123
  %30 = load i32, i32* %arrayidx6.i, align 4, !dbg !125
  %add7.i = add nsw i32 %30, 1, !dbg !125
  store i32 %add7.i, i32* %arrayidx6.i, align 4, !dbg !125
  %31 = load i32, i32* %23, align 4, !dbg !126
  %inc.i = add nsw i32 %31, 1, !dbg !126
  store i32 %inc.i, i32* %23, align 4, !dbg !126
  br label %for.cond.i, !dbg !127, !llvm.loop !128

for.end.i:                                        ; preds = %for.cond.i
  %32 = load i32, i32* %.omp.iv.i, align 4, !dbg !112, !noalias !100
  %add8.i = add nsw i32 %32, 1, !dbg !113
  store i32 %add8.i, i32* %.omp.iv.i, align 4, !dbg !113, !noalias !100
  br label %omp.inner.for.cond.i, !dbg !130, !llvm.loop !131

.omp_outlined..exit:                              ; preds = %omp.inner.for.cond.i
  ret i32 0, !dbg !99
}

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local void @__kmpc_taskloop(%struct.ident_t*, i32, i8*, i32, i64*, i64*, i64, i32, i32, i64, i8*)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %j) #2 !dbg !133 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !134, metadata !DIExpression()), !dbg !135
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !136, metadata !DIExpression()), !dbg !135
  store i32* %j, i32** %j.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %j.addr, metadata !137, metadata !DIExpression()), !dbg !135
  %0 = load i32*, i32** %j.addr, align 8, !dbg !138
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !138
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !138
  %3 = load i32*, i32** %j.addr, align 8, !dbg !138
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #6, !dbg !138
  ret void, !dbg !138
}

declare !callback !139 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 59, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB095-doall2-taskloop-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 320000, elements: !8)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !9}
!9 = !DISubrange(count: 100)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 10.0.1 "}
!14 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 60, type: !15, scopeLine: 61, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!7}
!17 = !DILocalVariable(name: "i", scope: !14, file: !3, line: 62, type: !7)
!18 = !DILocation(line: 62, column: 7, scope: !14)
!19 = !DILocalVariable(name: "j", scope: !14, file: !3, line: 62, type: !7)
!20 = !DILocation(line: 62, column: 10, scope: !14)
!21 = !DILocation(line: 63, column: 1, scope: !14)
!22 = !DILocation(line: 73, column: 29, scope: !14)
!23 = !DILocation(line: 73, column: 3, scope: !14)
!24 = !DILocation(line: 74, column: 3, scope: !14)
!25 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 64, type: !26, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28, !28, !32}
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!32 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!33 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !25, type: !28, flags: DIFlagArtificial)
!34 = !DILocation(line: 0, scope: !25)
!35 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !25, type: !28, flags: DIFlagArtificial)
!36 = !DILocalVariable(name: "j", arg: 3, scope: !25, file: !3, line: 62, type: !32)
!37 = !DILocation(line: 62, column: 10, scope: !25)
!38 = !DILocation(line: 64, column: 3, scope: !25)
!39 = !DILocation(line: 65, column: 1, scope: !40)
!40 = distinct !DILexicalBlock(scope: !25, file: !3, line: 64, column: 3)
!41 = !DILocation(line: 67, column: 1, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !3, line: 66, column: 5)
!43 = distinct !DILexicalBlock(scope: !40, file: !3, line: 65, column: 1)
!44 = !DILocation(line: 67, column: 21, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !3, line: 67, column: 1)
!46 = !DILocation(line: 71, column: 5, scope: !42)
!47 = !DILocation(line: 65, column: 19, scope: !43)
!48 = !DILocation(line: 72, column: 3, scope: !25)
!49 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 67, type: !50, scopeLine: 67, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!50 = !DISubroutineType(types: !4)
!51 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !52, type: !31, flags: DIFlagArtificial)
!52 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 69, type: !53, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !31, !28, !55, !58, !63, !64, !64, !66, !31, !55, !68}
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !55, null}
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 67, size: 64, elements: !4)
!72 = !DILocation(line: 0, scope: !52, inlinedAt: !73)
!73 = distinct !DILocation(line: 67, column: 1, scope: !49)
!74 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !52, type: !28, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".privates.", arg: 3, scope: !52, type: !55, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !52, type: !58, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !52, type: !63, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".lb.", arg: 6, scope: !52, type: !64, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".ub.", arg: 7, scope: !52, type: !64, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".st.", arg: 8, scope: !52, type: !66, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".liter.", arg: 9, scope: !52, type: !31, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".reductions.", arg: 10, scope: !52, type: !55, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: "__context", arg: 11, scope: !52, type: !68, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: "i", scope: !52, type: !7, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: ".omp.iv", scope: !52, type: !7, flags: DIFlagArtificial)
!86 = !DILocalVariable(arg: 1, scope: !49, type: !7, flags: DIFlagArtificial)
!87 = !DILocation(line: 0, scope: !49)
!88 = !DILocalVariable(arg: 2, scope: !49, type: !89, flags: DIFlagArtificial)
!89 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 640, elements: !92)
!92 = !{!93}
!93 = !DIDerivedType(tag: DW_TAG_member, scope: !91, file: !3, baseType: !94, size: 640)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !3, size: 640, elements: !95)
!95 = !{!96, !98}
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !94, file: !3, baseType: !97, size: 64, offset: 192)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !3, size: 64, elements: !4)
!98 = !DIDerivedType(tag: DW_TAG_member, scope: !94, file: !3, baseType: !97, size: 64, offset: 256)
!99 = !DILocation(line: 67, column: 1, scope: !49)
!100 = !{!101, !103, !104, !105, !106}
!101 = distinct !{!101, !102, !".omp_outlined.: %.part_id."}
!102 = distinct !{!102, !".omp_outlined."}
!103 = distinct !{!103, !102, !".omp_outlined.: %.privates."}
!104 = distinct !{!104, !102, !".omp_outlined.: %.copy_fn."}
!105 = distinct !{!105, !102, !".omp_outlined.: %.reductions."}
!106 = distinct !{!106, !102, !".omp_outlined.: %__context"}
!107 = !DILocation(line: 68, column: 7, scope: !52, inlinedAt: !73)
!108 = !DILocation(line: 68, column: 12, scope: !52, inlinedAt: !73)
!109 = !DILocation(line: 69, column: 14, scope: !110, inlinedAt: !73)
!110 = distinct !DILexicalBlock(scope: !52, file: !3, line: 67, column: 1)
!111 = !DILocation(line: 67, column: 1, scope: !52, inlinedAt: !73)
!112 = !DILocation(line: 68, column: 12, scope: !110, inlinedAt: !73)
!113 = !DILocation(line: 68, column: 7, scope: !110, inlinedAt: !73)
!114 = !DILocation(line: 68, column: 28, scope: !110, inlinedAt: !73)
!115 = !DILocation(line: 69, column: 16, scope: !116, inlinedAt: !73)
!116 = distinct !DILexicalBlock(scope: !110, file: !3, line: 69, column: 9)
!117 = !DILocation(line: 69, column: 14, scope: !116, inlinedAt: !73)
!118 = !DILocation(line: 69, column: 21, scope: !119, inlinedAt: !73)
!119 = distinct !DILexicalBlock(scope: !116, file: !3, line: 69, column: 9)
!120 = !DILocation(line: 69, column: 23, scope: !119, inlinedAt: !73)
!121 = !DILocation(line: 69, column: 9, scope: !116, inlinedAt: !73)
!122 = !DILocation(line: 70, column: 13, scope: !119, inlinedAt: !73)
!123 = !DILocation(line: 70, column: 11, scope: !119, inlinedAt: !73)
!124 = !DILocation(line: 70, column: 16, scope: !119, inlinedAt: !73)
!125 = !DILocation(line: 70, column: 18, scope: !119, inlinedAt: !73)
!126 = !DILocation(line: 69, column: 31, scope: !119, inlinedAt: !73)
!127 = !DILocation(line: 69, column: 9, scope: !119, inlinedAt: !73)
!128 = distinct !{!128, !121, !129}
!129 = !DILocation(line: 70, column: 20, scope: !116, inlinedAt: !73)
!130 = !DILocation(line: 67, column: 1, scope: !110, inlinedAt: !73)
!131 = distinct !{!131, !130, !132}
!132 = !DILocation(line: 67, column: 21, scope: !110, inlinedAt: !73)
!133 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 64, type: !26, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!134 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !133, type: !28, flags: DIFlagArtificial)
!135 = !DILocation(line: 0, scope: !133)
!136 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !133, type: !28, flags: DIFlagArtificial)
!137 = !DILocalVariable(name: "j", arg: 3, scope: !133, type: !32, flags: DIFlagArtificial)
!138 = !DILocation(line: 64, column: 3, scope: !133)
!139 = !{!140}
!140 = !{i64 2, i64 -1, i64 -1, i1 true}
