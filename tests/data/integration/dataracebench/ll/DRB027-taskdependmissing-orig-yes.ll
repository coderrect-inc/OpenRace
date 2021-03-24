; ModuleID = 'DRB027-taskdependmissing-orig-yes.c'
source_filename = "DRB027-taskdependmissing-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.anon.0 = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [49 x i8] c";DRB027-taskdependmissing-orig-yes.c;main;58;1;;\00", align 1
@2 = private unnamed_addr constant [49 x i8] c";DRB027-taskdependmissing-orig-yes.c;main;60;1;;\00", align 1
@3 = private unnamed_addr constant [49 x i8] c";DRB027-taskdependmissing-orig-yes.c;main;62;1;;\00", align 1
@4 = private unnamed_addr constant [49 x i8] c";DRB027-taskdependmissing-orig-yes.c;main;57;1;;\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"i=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 0, i32* %i, align 4, !dbg !12
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !13
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @4, i32 0, i32 0), i8** %2, align 8, !dbg !13
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), i32* %i), !dbg !13
  %3 = load i32, i32* %i, align 4, !dbg !14
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %3), !dbg !15
  ret i32 0, !dbg !16
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #2 !dbg !17 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %agg.captured = alloca %struct.anon, align 8
  %agg.captured1 = alloca %struct.anon.0, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !25, metadata !DIExpression()), !dbg !26
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !27, metadata !DIExpression()), !dbg !26
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !28, metadata !DIExpression()), !dbg !29
  %2 = load i32*, i32** %i.addr, align 8, !dbg !30
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !30
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !30
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !30
  %5 = load i32, i32* %4, align 4, !dbg !30
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !30
  %7 = icmp ne i32 %6, 0, !dbg !30
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !30

omp_if.then:                                      ; preds = %entry
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !31
  store i32* %2, i32** %8, align 8, !dbg !31
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !31
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2, i32 0, i32 0), i8** %9, align 8, !dbg !31
  %10 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !31
  %11 = bitcast i8* %10 to %struct.kmp_task_t_with_privates*, !dbg !31
  %12 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %11, i32 0, i32 0, !dbg !31
  %13 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %12, i32 0, i32 0, !dbg !31
  %14 = load i8*, i8** %13, align 8, !dbg !31
  %15 = bitcast %struct.anon* %agg.captured to i8*, !dbg !31
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false), !dbg !31
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !31
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2, i32 0, i32 0), i8** %16, align 8, !dbg !31
  %17 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i8* %10), !dbg !31
  %18 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !34
  store i32* %2, i32** %18, align 8, !dbg !34
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !34
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @3, i32 0, i32 0), i8** %19, align 8, !dbg !34
  %20 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !34
  %21 = bitcast i8* %20 to %struct.kmp_task_t_with_privates.1*, !dbg !34
  %22 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %21, i32 0, i32 0, !dbg !34
  %23 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %22, i32 0, i32 0, !dbg !34
  %24 = load i8*, i8** %23, align 8, !dbg !34
  %25 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !34
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 8, i1 false), !dbg !34
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !34
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @3, i32 0, i32 0), i8** %26, align 8, !dbg !34
  %27 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i8* %20), !dbg !34
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !35
  br label %omp_if.end, !dbg !35

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %28 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !36
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1, i32 0, i32 0), i8** %28, align 8, !dbg !36
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !36
  ret void, !dbg !37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !38 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !40, metadata !DIExpression()), !dbg !57
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !59, metadata !DIExpression()), !dbg !57
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !60, metadata !DIExpression()), !dbg !57
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !61, metadata !DIExpression()), !dbg !57
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !62, metadata !DIExpression()), !dbg !57
  %__context.addr.i = alloca %struct.anon*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr.i, metadata !63, metadata !DIExpression()), !dbg !57
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !64, metadata !DIExpression()), !dbg !65
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !66, metadata !DIExpression()), !dbg !65
  %2 = load i32, i32* %.addr, align 4, !dbg !77
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !77
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !77
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !77
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !77
  %7 = load i8*, i8** %6, align 8, !dbg !77
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !77
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !77
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !78
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !78
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !78
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !78
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !78
  store %struct.anon* %8, %struct.anon** %__context.addr.i, align 8, !noalias !78
  %10 = load %struct.anon*, %struct.anon** %__context.addr.i, align 8, !dbg !84, !noalias !78
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0, !dbg !84
  %12 = load i32*, i32** %11, align 8, !dbg !84
  store i32 1, i32* %12, align 4, !dbg !85
  ret i32 0, !dbg !77
}

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #4 !dbg !86 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !87, metadata !DIExpression()), !dbg !95
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !97, metadata !DIExpression()), !dbg !95
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !98, metadata !DIExpression()), !dbg !95
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !99, metadata !DIExpression()), !dbg !95
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !100, metadata !DIExpression()), !dbg !95
  %__context.addr.i = alloca %struct.anon.0*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr.i, metadata !101, metadata !DIExpression()), !dbg !95
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !102, metadata !DIExpression()), !dbg !103
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !104, metadata !DIExpression()), !dbg !103
  %2 = load i32, i32* %.addr, align 4, !dbg !110
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !110
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !110
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !110
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !110
  %7 = load i8*, i8** %6, align 8, !dbg !110
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !110
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !110
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !111
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !111
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !111
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !111
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !111
  store %struct.anon.0* %8, %struct.anon.0** %__context.addr.i, align 8, !noalias !111
  %10 = load %struct.anon.0*, %struct.anon.0** %__context.addr.i, align 8, !dbg !117, !noalias !111
  %11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %10, i32 0, i32 0, !dbg !117
  %12 = load i32*, i32** %11, align 8, !dbg !117
  store i32 2, i32* %12, align 4, !dbg !118
  ret i32 0, !dbg !110
}

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #2 !dbg !119 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !120, metadata !DIExpression()), !dbg !121
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !122, metadata !DIExpression()), !dbg !121
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !123, metadata !DIExpression()), !dbg !121
  %0 = load i32*, i32** %i.addr, align 8, !dbg !124
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !124
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !124
  %3 = load i32*, i32** %i.addr, align 8, !dbg !124
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #6, !dbg !124
  ret void, !dbg !124
}

declare !callback !125 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "DRB027-taskdependmissing-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !8, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 56, type: !10)
!12 = !DILocation(line: 56, column: 7, scope: !7)
!13 = !DILocation(line: 57, column: 1, scope: !7)
!14 = !DILocation(line: 66, column: 20, scope: !7)
!15 = !DILocation(line: 66, column: 3, scope: !7)
!16 = !DILocation(line: 67, column: 3, scope: !7)
!17 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 58, type: !18, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !20, !24}
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!24 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!25 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !17, type: !20, flags: DIFlagArtificial)
!26 = !DILocation(line: 0, scope: !17)
!27 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !17, type: !20, flags: DIFlagArtificial)
!28 = !DILocalVariable(name: "i", arg: 3, scope: !17, file: !1, line: 56, type: !24)
!29 = !DILocation(line: 56, column: 7, scope: !17)
!30 = !DILocation(line: 58, column: 1, scope: !17)
!31 = !DILocation(line: 60, column: 1, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 59, column: 3)
!33 = distinct !DILexicalBlock(scope: !17, file: !1, line: 58, column: 1)
!34 = !DILocation(line: 62, column: 1, scope: !32)
!35 = !DILocation(line: 64, column: 3, scope: !32)
!36 = !DILocation(line: 58, column: 19, scope: !33)
!37 = !DILocation(line: 58, column: 19, scope: !17)
!38 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 60, type: !39, scopeLine: 60, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!39 = !DISubroutineType(types: !2)
!40 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !41, type: !23, flags: DIFlagArtificial)
!41 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 61, type: !42, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !23, !20, !44, !47, !52, !53}
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !44, null}
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 60, size: 64, elements: !2)
!57 = !DILocation(line: 0, scope: !41, inlinedAt: !58)
!58 = distinct !DILocation(line: 60, column: 1, scope: !38)
!59 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !41, type: !20, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".privates.", arg: 3, scope: !41, type: !44, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !41, type: !47, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !41, type: !52, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: "__context", arg: 6, scope: !41, type: !53, flags: DIFlagArtificial)
!64 = !DILocalVariable(arg: 1, scope: !38, type: !10, flags: DIFlagArtificial)
!65 = !DILocation(line: 0, scope: !38)
!66 = !DILocalVariable(arg: 2, scope: !38, type: !67, flags: DIFlagArtificial)
!67 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !70)
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, scope: !69, file: !1, baseType: !72, size: 320)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !73)
!73 = !{!74, !76}
!74 = !DIDerivedType(tag: DW_TAG_member, scope: !72, file: !1, baseType: !75, size: 64, offset: 192)
!75 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!76 = !DIDerivedType(tag: DW_TAG_member, scope: !72, file: !1, baseType: !75, size: 64, offset: 256)
!77 = !DILocation(line: 60, column: 1, scope: !38)
!78 = !{!79, !81, !82, !83}
!79 = distinct !{!79, !80, !".omp_outlined.: %.part_id."}
!80 = distinct !{!80, !".omp_outlined."}
!81 = distinct !{!81, !80, !".omp_outlined.: %.privates."}
!82 = distinct !{!82, !80, !".omp_outlined.: %.copy_fn."}
!83 = distinct !{!83, !80, !".omp_outlined.: %__context"}
!84 = !DILocation(line: 61, column: 5, scope: !41, inlinedAt: !58)
!85 = !DILocation(line: 61, column: 7, scope: !41, inlinedAt: !58)
!86 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 62, type: !39, scopeLine: 62, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!87 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !88, type: !23, flags: DIFlagArtificial)
!88 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 63, type: !89, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !23, !20, !44, !47, !52, !91}
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 62, size: 64, elements: !2)
!95 = !DILocation(line: 0, scope: !88, inlinedAt: !96)
!96 = distinct !DILocation(line: 62, column: 1, scope: !86)
!97 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !88, type: !20, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: ".privates.", arg: 3, scope: !88, type: !44, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !88, type: !47, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !88, type: !52, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: "__context", arg: 6, scope: !88, type: !91, flags: DIFlagArtificial)
!102 = !DILocalVariable(arg: 1, scope: !86, type: !10, flags: DIFlagArtificial)
!103 = !DILocation(line: 0, scope: !86)
!104 = !DILocalVariable(arg: 2, scope: !86, type: !105, flags: DIFlagArtificial)
!105 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !108)
!108 = !{!109}
!109 = !DIDerivedType(tag: DW_TAG_member, scope: !107, file: !1, baseType: !72, size: 320)
!110 = !DILocation(line: 62, column: 1, scope: !86)
!111 = !{!112, !114, !115, !116}
!112 = distinct !{!112, !113, !".omp_outlined..1: %.part_id."}
!113 = distinct !{!113, !".omp_outlined..1"}
!114 = distinct !{!114, !113, !".omp_outlined..1: %.privates."}
!115 = distinct !{!115, !113, !".omp_outlined..1: %.copy_fn."}
!116 = distinct !{!116, !113, !".omp_outlined..1: %__context"}
!117 = !DILocation(line: 63, column: 5, scope: !88, inlinedAt: !96)
!118 = !DILocation(line: 63, column: 7, scope: !88, inlinedAt: !96)
!119 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 58, type: !18, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!120 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !119, type: !20, flags: DIFlagArtificial)
!121 = !DILocation(line: 0, scope: !119)
!122 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !119, type: !20, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "i", arg: 3, scope: !119, type: !24, flags: DIFlagArtificial)
!124 = !DILocation(line: 58, column: 1, scope: !119)
!125 = !{!126}
!126 = !{i64 2, i64 -1, i64 -1, i1 true}
