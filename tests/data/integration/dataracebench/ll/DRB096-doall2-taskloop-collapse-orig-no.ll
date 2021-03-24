; ModuleID = 'DRB096-doall2-taskloop-collapse-orig-no.c'
source_filename = "DRB096-doall2-taskloop-collapse-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type {}
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t, i64, i64, i64, i32, i8* }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [55 x i8] c";DRB096-doall2-taskloop-collapse-orig-no.c;main;63;1;;\00", align 1
@2 = private unnamed_addr constant [55 x i8] c";DRB096-doall2-taskloop-collapse-orig-no.c;main;65;1;;\00", align 1
@a = common dso_local global [100 x [100 x i32]] zeroinitializer, align 16, !dbg !0
@3 = private unnamed_addr constant [55 x i8] c";DRB096-doall2-taskloop-collapse-orig-no.c;main;61;1;;\00", align 1
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
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @3, i32 0, i32 0), i8** %2, align 8, !dbg !21
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*)), !dbg !21
  %3 = load i32, i32* getelementptr inbounds ([100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 50, i64 50), align 8, !dbg !22
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %3), !dbg !23
  ret i32 0, !dbg !24
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 !dbg !25 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %agg.captured = alloca %struct.anon, align 1
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !32, metadata !DIExpression()), !dbg !33
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !34, metadata !DIExpression()), !dbg !33
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !35
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !35
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !35
  %4 = load i32, i32* %3, align 4, !dbg !35
  %5 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !35
  %6 = icmp ne i32 %5, 0, !dbg !35
  br i1 %6, label %omp_if.then, label %omp_if.end, !dbg !35

omp_if.then:                                      ; preds = %entry
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !37
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @2, i32 0, i32 0), i8** %7, align 8, !dbg !37
  call void @__kmpc_taskgroup(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !37
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !37
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @2, i32 0, i32 0), i8** %8, align 8, !dbg !37
  %9 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %4, i32 1, i64 80, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !37
  %10 = bitcast i8* %9 to %struct.kmp_task_t_with_privates*, !dbg !37
  %11 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %10, i32 0, i32 0, !dbg !37
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !37
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @2, i32 0, i32 0), i8** %12, align 8, !dbg !37
  %13 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %11, i32 0, i32 5, !dbg !37
  store i64 0, i64* %13, align 8, !dbg !37
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %11, i32 0, i32 6, !dbg !37
  store i64 9999, i64* %14, align 8, !dbg !37
  %15 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %11, i32 0, i32 7, !dbg !37
  store i64 1, i64* %15, align 8, !dbg !37
  %16 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %11, i32 0, i32 9, !dbg !37
  %17 = bitcast i8** %16 to i8*, !dbg !37
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 8, i1 false), !dbg !37
  %18 = load i64, i64* %15, align 8, !dbg !37
  call void @__kmpc_taskloop(%struct.ident_t* %.kmpc_loc.addr, i32 %4, i8* %9, i32 1, i64* %13, i64* %14, i64 %18, i32 1, i32 0, i64 0, i8* null), !dbg !37
  call void @__kmpc_end_taskgroup(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !40
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !42
  br label %omp_if.end, !dbg !42

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !43
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1, i32 0, i32 0), i8** %19, align 8, !dbg !43
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !43
  ret void, !dbg !44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_taskgroup(%struct.ident_t*, i32)

declare dso_local void @__kmpc_taskgroup(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !45 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !47, metadata !DIExpression()), !dbg !68
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !70, metadata !DIExpression()), !dbg !68
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !71, metadata !DIExpression()), !dbg !68
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !72, metadata !DIExpression()), !dbg !68
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !73, metadata !DIExpression()), !dbg !68
  %.lb..addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %.lb..addr.i, metadata !74, metadata !DIExpression()), !dbg !68
  %.ub..addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %.ub..addr.i, metadata !75, metadata !DIExpression()), !dbg !68
  %.st..addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %.st..addr.i, metadata !76, metadata !DIExpression()), !dbg !68
  %.liter..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.liter..addr.i, metadata !77, metadata !DIExpression()), !dbg !68
  %.reductions..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.reductions..addr.i, metadata !78, metadata !DIExpression()), !dbg !68
  %__context.addr.i = alloca %struct.anon*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr.i, metadata !79, metadata !DIExpression()), !dbg !68
  %i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.i, metadata !80, metadata !DIExpression()), !dbg !68
  %j.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %j.i, metadata !81, metadata !DIExpression()), !dbg !68
  %.omp.iv.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.omp.iv.i, metadata !82, metadata !DIExpression()), !dbg !68
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !83, metadata !DIExpression()), !dbg !84
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !85, metadata !DIExpression()), !dbg !84
  %2 = load i32, i32* %.addr, align 4, !dbg !96
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !96
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !96
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !96
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !96
  %7 = load i8*, i8** %6, align 8, !dbg !96
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !96
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !96
  %10 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 5, !dbg !96
  %11 = load i64, i64* %10, align 8, !dbg !96
  %12 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 6, !dbg !96
  %13 = load i64, i64* %12, align 8, !dbg !96
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 7, !dbg !96
  %15 = load i64, i64* %14, align 8, !dbg !96
  %16 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 8, !dbg !96
  %17 = load i32, i32* %16, align 8, !dbg !96
  %18 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 9, !dbg !96
  %19 = load i8*, i8** %18, align 8, !dbg !96
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !97
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !97
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !97
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !97
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !97
  store i64 %11, i64* %.lb..addr.i, align 8, !noalias !97
  store i64 %13, i64* %.ub..addr.i, align 8, !noalias !97
  store i64 %15, i64* %.st..addr.i, align 8, !noalias !97
  store i32 %17, i32* %.liter..addr.i, align 4, !noalias !97
  store i8* %19, i8** %.reductions..addr.i, align 8, !noalias !97
  store %struct.anon* %8, %struct.anon** %__context.addr.i, align 8, !noalias !97
  %20 = load %struct.anon*, %struct.anon** %__context.addr.i, align 8, !dbg !104, !noalias !97
  %21 = load i64, i64* %.lb..addr.i, align 8, !dbg !105, !noalias !97
  %conv.i = trunc i64 %21 to i32, !dbg !105
  store i32 %conv.i, i32* %.omp.iv.i, align 4, !dbg !105, !noalias !97
  br label %omp.inner.for.cond.i, !dbg !106

omp.inner.for.cond.i:                             ; preds = %omp.inner.for.body.i, %entry
  %22 = load i32, i32* %.omp.iv.i, align 4, !dbg !107, !noalias !97
  %conv2.i = sext i32 %22 to i64, !dbg !107
  %23 = load i64, i64* %.ub..addr.i, align 8, !dbg !107, !noalias !97
  %cmp.i = icmp ule i64 %conv2.i, %23, !dbg !109
  br i1 %cmp.i, label %omp.inner.for.body.i, label %.omp_outlined..exit, !dbg !106

omp.inner.for.body.i:                             ; preds = %omp.inner.for.cond.i
  %24 = load i32, i32* %.omp.iv.i, align 4, !dbg !107, !noalias !97
  %div.i = sdiv i32 %24, 100, !dbg !110
  store i32 %div.i, i32* %i.i, align 4, !dbg !110, !noalias !97
  %25 = load i32, i32* %.omp.iv.i, align 4, !dbg !107, !noalias !97
  %26 = load i32, i32* %.omp.iv.i, align 4, !dbg !107, !noalias !97
  %div4.i = sdiv i32 %26, 100, !dbg !110
  %mul5.i = mul nsw i32 %div4.i, 100, !dbg !110
  %sub.i = sub nsw i32 %25, %mul5.i, !dbg !110
  store i32 %sub.i, i32* %j.i, align 4, !dbg !111, !noalias !97
  %27 = load i32, i32* %i.i, align 4, !dbg !112, !noalias !97
  %idxprom.i = sext i32 %27 to i64, !dbg !113
  %arrayidx.i = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom.i, !dbg !113
  %28 = load i32, i32* %j.i, align 4, !dbg !114, !noalias !97
  %idxprom8.i = sext i32 %28 to i64, !dbg !113
  %arrayidx9.i = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx.i, i64 0, i64 %idxprom8.i, !dbg !113
  %29 = load i32, i32* %arrayidx9.i, align 4, !dbg !115
  %add10.i = add nsw i32 %29, 1, !dbg !115
  store i32 %add10.i, i32* %arrayidx9.i, align 4, !dbg !115
  %30 = load i32, i32* %.omp.iv.i, align 4, !dbg !107, !noalias !97
  %add11.i = add nsw i32 %30, 1, !dbg !109
  store i32 %add11.i, i32* %.omp.iv.i, align 4, !dbg !109, !noalias !97
  br label %omp.inner.for.cond.i, !dbg !116, !llvm.loop !117

.omp_outlined..exit:                              ; preds = %omp.inner.for.cond.i
  ret i32 0, !dbg !96
}

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local void @__kmpc_taskloop(%struct.ident_t*, i32, i8*, i32, i64*, i64*, i64, i32, i32, i64, i8*)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..1(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 !dbg !119 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !120, metadata !DIExpression()), !dbg !121
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !122, metadata !DIExpression()), !dbg !121
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !123
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !123
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #6, !dbg !123
  ret void, !dbg !123
}

declare !callback !124 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 57, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB096-doall2-taskloop-collapse-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
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
!14 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 58, type: !15, scopeLine: 59, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!7}
!17 = !DILocalVariable(name: "i", scope: !14, file: !3, line: 60, type: !7)
!18 = !DILocation(line: 60, column: 7, scope: !14)
!19 = !DILocalVariable(name: "j", scope: !14, file: !3, line: 60, type: !7)
!20 = !DILocation(line: 60, column: 10, scope: !14)
!21 = !DILocation(line: 61, column: 1, scope: !14)
!22 = !DILocation(line: 71, column: 29, scope: !14)
!23 = !DILocation(line: 71, column: 3, scope: !14)
!24 = !DILocation(line: 72, column: 3, scope: !14)
!25 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 62, type: !26, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28, !28}
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!32 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !25, type: !28, flags: DIFlagArtificial)
!33 = !DILocation(line: 0, scope: !25)
!34 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !25, type: !28, flags: DIFlagArtificial)
!35 = !DILocation(line: 63, column: 1, scope: !36)
!36 = distinct !DILexicalBlock(scope: !25, file: !3, line: 62, column: 3)
!37 = !DILocation(line: 65, column: 1, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !3, line: 64, column: 5)
!39 = distinct !DILexicalBlock(scope: !36, file: !3, line: 63, column: 1)
!40 = !DILocation(line: 65, column: 33, scope: !41)
!41 = distinct !DILexicalBlock(scope: !38, file: !3, line: 65, column: 1)
!42 = !DILocation(line: 69, column: 5, scope: !38)
!43 = !DILocation(line: 63, column: 19, scope: !39)
!44 = !DILocation(line: 70, column: 3, scope: !25)
!45 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 65, type: !46, scopeLine: 65, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!46 = !DISubroutineType(types: !4)
!47 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !48, type: !31, flags: DIFlagArtificial)
!48 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 65, type: !49, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !31, !28, !51, !54, !59, !60, !60, !62, !31, !51, !64}
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !51, null}
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 65, elements: !4)
!68 = !DILocation(line: 0, scope: !48, inlinedAt: !69)
!69 = distinct !DILocation(line: 65, column: 1, scope: !45)
!70 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !48, type: !28, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".privates.", arg: 3, scope: !48, type: !51, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !48, type: !54, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !48, type: !59, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".lb.", arg: 6, scope: !48, type: !60, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".ub.", arg: 7, scope: !48, type: !60, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".st.", arg: 8, scope: !48, type: !62, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: ".liter.", arg: 9, scope: !48, type: !31, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".reductions.", arg: 10, scope: !48, type: !51, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: "__context", arg: 11, scope: !48, type: !64, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: "i", scope: !48, type: !7, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: "j", scope: !48, type: !7, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.iv", scope: !48, type: !7, flags: DIFlagArtificial)
!83 = !DILocalVariable(arg: 1, scope: !45, type: !7, flags: DIFlagArtificial)
!84 = !DILocation(line: 0, scope: !45)
!85 = !DILocalVariable(arg: 2, scope: !45, type: !86, flags: DIFlagArtificial)
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 640, elements: !89)
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !3, baseType: !91, size: 640)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !3, size: 640, elements: !92)
!92 = !{!93, !95}
!93 = !DIDerivedType(tag: DW_TAG_member, scope: !91, file: !3, baseType: !94, size: 64, offset: 192)
!94 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !3, size: 64, elements: !4)
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !91, file: !3, baseType: !94, size: 64, offset: 256)
!96 = !DILocation(line: 65, column: 1, scope: !45)
!97 = !{!98, !100, !101, !102, !103}
!98 = distinct !{!98, !99, !".omp_outlined.: %.part_id."}
!99 = distinct !{!99, !".omp_outlined."}
!100 = distinct !{!100, !99, !".omp_outlined.: %.privates."}
!101 = distinct !{!101, !99, !".omp_outlined.: %.copy_fn."}
!102 = distinct !{!102, !99, !".omp_outlined.: %.reductions."}
!103 = distinct !{!103, !99, !".omp_outlined.: %__context"}
!104 = !DILocation(line: 66, column: 7, scope: !48, inlinedAt: !69)
!105 = !DILocation(line: 66, column: 12, scope: !48, inlinedAt: !69)
!106 = !DILocation(line: 65, column: 1, scope: !48, inlinedAt: !69)
!107 = !DILocation(line: 66, column: 12, scope: !108, inlinedAt: !69)
!108 = distinct !DILexicalBlock(scope: !48, file: !3, line: 65, column: 1)
!109 = !DILocation(line: 66, column: 7, scope: !108, inlinedAt: !69)
!110 = !DILocation(line: 66, column: 28, scope: !108, inlinedAt: !69)
!111 = !DILocation(line: 67, column: 30, scope: !108, inlinedAt: !69)
!112 = !DILocation(line: 68, column: 13, scope: !108, inlinedAt: !69)
!113 = !DILocation(line: 68, column: 11, scope: !108, inlinedAt: !69)
!114 = !DILocation(line: 68, column: 16, scope: !108, inlinedAt: !69)
!115 = !DILocation(line: 68, column: 18, scope: !108, inlinedAt: !69)
!116 = !DILocation(line: 65, column: 1, scope: !108, inlinedAt: !69)
!117 = distinct !{!117, !116, !118}
!118 = !DILocation(line: 65, column: 33, scope: !108, inlinedAt: !69)
!119 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 62, type: !26, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!120 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !119, type: !28, flags: DIFlagArtificial)
!121 = !DILocation(line: 0, scope: !119)
!122 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !119, type: !28, flags: DIFlagArtificial)
!123 = !DILocation(line: 62, column: 3, scope: !119)
!124 = !{!125}
!125 = !{i64 2, i64 -1, i64 -1, i1 true}
