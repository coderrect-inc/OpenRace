; ModuleID = 'DRB158-missingtaskbarrier-orig-gpu-no.c'
source_filename = "DRB158-missingtaskbarrier-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { [64 x float]*, i32*, float* }
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.anon.0 = type { [64 x float]*, i32*, [64 x float]* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t, %struct..kmp_privates.t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct..kmp_privates.t = type { i32 }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t, %struct..kmp_privates.t.2 }
%struct..kmp_privates.t.2 = type { i32 }

@a = common dso_local global float 0.000000e+00, align 4, !dbg !0
@x = common dso_local global [64 x float] zeroinitializer, align 16, !dbg !6
@y = common dso_local global [64 x float] zeroinitializer, align 16, !dbg !12
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [53 x i8] c";DRB158-missingtaskbarrier-orig-gpu-no.c;main;33;7;;\00", align 1
@2 = private unnamed_addr constant [53 x i8] c";DRB158-missingtaskbarrier-orig-gpu-no.c;main;37;7;;\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Data Race Detected\0A\00", align 1
@3 = private unnamed_addr constant [53 x i8] c";DRB158-missingtaskbarrier-orig-gpu-no.c;main;51;3;;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !18 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %i3 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @3, i32 0, i32 0), i8** %2, align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !22, metadata !DIExpression()), !dbg !24
  store i32 0, i32* %i, align 4, !dbg !24
  br label %for.cond, !dbg !25

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !26
  %cmp = icmp slt i32 %4, 64, !dbg !28
  br i1 %cmp, label %for.body, label %for.end, !dbg !29

for.body:                                         ; preds = %for.cond
  store float 5.000000e+00, float* @a, align 4, !dbg !30
  %5 = load i32, i32* %i, align 4, !dbg !32
  %idxprom = sext i32 %5 to i64, !dbg !33
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* @x, i64 0, i64 %idxprom, !dbg !33
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !34
  %6 = load i32, i32* %i, align 4, !dbg !35
  %idxprom1 = sext i32 %6 to i64, !dbg !36
  %arrayidx2 = getelementptr inbounds [64 x float], [64 x float]* @y, i64 0, i64 %idxprom1, !dbg !36
  store float 3.000000e+00, float* %arrayidx2, align 4, !dbg !37
  br label %for.inc, !dbg !38

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !39
  %inc = add nsw i32 %7, 1, !dbg !39
  store i32 %inc, i32* %i, align 4, !dbg !39
  br label %for.cond, !dbg !40, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  call void @__omp_offloading_10307_2ec41b7_main_l30([64 x float]* @x, float* @a, [64 x float]* @y) #7, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !45, metadata !DIExpression()), !dbg !47
  store i32 0, i32* %i3, align 4, !dbg !47
  br label %for.cond4, !dbg !48

for.cond4:                                        ; preds = %for.inc10, %for.end
  %8 = load i32, i32* %i3, align 4, !dbg !49
  %cmp5 = icmp slt i32 %8, 64, !dbg !51
  br i1 %cmp5, label %for.body6, label %for.end12, !dbg !52

for.body6:                                        ; preds = %for.cond4
  %9 = load i32, i32* %i3, align 4, !dbg !53
  %idxprom7 = sext i32 %9 to i64, !dbg !56
  %arrayidx8 = getelementptr inbounds [64 x float], [64 x float]* @x, i64 0, i64 %idxprom7, !dbg !56
  %10 = load float, float* %arrayidx8, align 4, !dbg !56
  %cmp9 = fcmp une float %10, 3.000000e+00, !dbg !57
  br i1 %cmp9, label %if.then, label %if.end, !dbg !58

if.then:                                          ; preds = %for.body6
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0)), !dbg !59
  store i32 0, i32* %retval, align 4, !dbg !61
  br label %return, !dbg !61

if.end:                                           ; preds = %for.body6
  br label %for.inc10, !dbg !62

for.inc10:                                        ; preds = %if.end
  %11 = load i32, i32* %i3, align 4, !dbg !63
  %inc11 = add nsw i32 %11, 1, !dbg !63
  store i32 %inc11, i32* %i3, align 4, !dbg !63
  br label %for.cond4, !dbg !64, !llvm.loop !65

for.end12:                                        ; preds = %for.cond4
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !67
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @3, i32 0, i32 0), i8** %12, align 8, !dbg !67
  %13 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* %.kmpc_loc.addr, i32 %3), !dbg !67
  store i32 0, i32* %retval, align 4, !dbg !68
  br label %return, !dbg !68

return:                                           ; preds = %for.end12, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !69
  ret i32 %14, !dbg !69
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41b7_main_l30_debug__([64 x float]* dereferenceable(256) %x, float* dereferenceable(4) %a, [64 x float]* dereferenceable(256) %y) #2 !dbg !70 {
entry:
  %x.addr = alloca [64 x float]*, align 8
  %a.addr = alloca float*, align 8
  %y.addr = alloca [64 x float]*, align 8
  %i = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.dep.arr.addr = alloca [1 x %struct.kmp_depend_info], align 8
  %agg.captured1 = alloca %struct.anon.0, align 8
  %.dep.arr.addr2 = alloca [1 x %struct.kmp_depend_info], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1, i32 0, i32 0), i8** %2, align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store [64 x float]* %x, [64 x float]** %x.addr, align 8
  call void @llvm.dbg.declare(metadata [64 x float]** %x.addr, metadata !75, metadata !DIExpression()), !dbg !76
  store float* %a, float** %a.addr, align 8
  call void @llvm.dbg.declare(metadata float** %a.addr, metadata !77, metadata !DIExpression()), !dbg !78
  store [64 x float]* %y, [64 x float]** %y.addr, align 8
  call void @llvm.dbg.declare(metadata [64 x float]** %y.addr, metadata !79, metadata !DIExpression()), !dbg !80
  %4 = load [64 x float]*, [64 x float]** %x.addr, align 8, !dbg !81
  %5 = load float*, float** %a.addr, align 8, !dbg !81
  %6 = load [64 x float]*, [64 x float]** %y.addr, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %i, metadata !82, metadata !DIExpression()), !dbg !85
  store i32 0, i32* %i, align 4, !dbg !85
  br label %for.cond, !dbg !86

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !dbg !87
  %cmp = icmp slt i32 %7, 64, !dbg !89
  br i1 %cmp, label %for.body, label %for.end, !dbg !90

for.body:                                         ; preds = %for.cond
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !91
  store [64 x float]* %4, [64 x float]** %8, align 8, !dbg !91
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 1, !dbg !91
  store i32* %i, i32** %9, align 8, !dbg !91
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 2, !dbg !91
  store float* %5, float** %10, align 8, !dbg !91
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !91
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !91
  %12 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 48, i64 24, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !91
  %13 = bitcast i8* %12 to %struct.kmp_task_t_with_privates*, !dbg !91
  %14 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %13, i32 0, i32 0, !dbg !91
  %15 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %14, i32 0, i32 0, !dbg !91
  %16 = load i8*, i8** %15, align 8, !dbg !91
  %17 = bitcast %struct.anon* %agg.captured to i8*, !dbg !91
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 24, i1 false), !dbg !91
  %18 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %13, i32 0, i32 1, !dbg !91
  %19 = bitcast i8* %16 to %struct.anon*, !dbg !91
  %20 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %18, i32 0, i32 0, !dbg !91
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 1, !dbg !91
  %22 = load i32*, i32** %21, align 8, !dbg !91
  %23 = load i32, i32* %22, align 4, !dbg !93
  store i32 %23, i32* %20, align 8, !dbg !91
  %24 = load i32, i32* %i, align 4, !dbg !95
  %idxprom = sext i32 %24 to i64, !dbg !96
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %4, i64 0, i64 %idxprom, !dbg !96
  %25 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !91
  %26 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %25, i32 0, i32 0, !dbg !91
  %27 = ptrtoint float* %arrayidx to i64, !dbg !91
  store i64 %27, i64* %26, align 8, !dbg !91
  %28 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %25, i32 0, i32 1, !dbg !91
  store i64 4, i64* %28, align 8, !dbg !91
  %29 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %25, i32 0, i32 2, !dbg !91
  store i8 3, i8* %29, align 8, !dbg !91
  %30 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !91
  %31 = bitcast %struct.kmp_depend_info* %30 to i8*, !dbg !91
  %32 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !91
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1, i32 0, i32 0), i8** %32, align 8, !dbg !91
  %33 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %12, i32 1, i8* %31, i32 0, i8* null), !dbg !91
  %34 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !97
  store [64 x float]* %4, [64 x float]** %34, align 8, !dbg !97
  %35 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 1, !dbg !97
  store i32* %i, i32** %35, align 8, !dbg !97
  %36 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 2, !dbg !97
  store [64 x float]* %6, [64 x float]** %36, align 8, !dbg !97
  %37 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !97
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2, i32 0, i32 0), i8** %37, align 8, !dbg !97
  %38 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 48, i64 24, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*)), !dbg !97
  %39 = bitcast i8* %38 to %struct.kmp_task_t_with_privates.1*, !dbg !97
  %40 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %39, i32 0, i32 0, !dbg !97
  %41 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %40, i32 0, i32 0, !dbg !97
  %42 = load i8*, i8** %41, align 8, !dbg !97
  %43 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !97
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 24, i1 false), !dbg !97
  %44 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %39, i32 0, i32 1, !dbg !97
  %45 = bitcast i8* %42 to %struct.anon.0*, !dbg !97
  %46 = getelementptr inbounds %struct..kmp_privates.t.2, %struct..kmp_privates.t.2* %44, i32 0, i32 0, !dbg !97
  %47 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %45, i32 0, i32 1, !dbg !97
  %48 = load i32*, i32** %47, align 8, !dbg !97
  %49 = load i32, i32* %48, align 4, !dbg !98
  store i32 %49, i32* %46, align 8, !dbg !97
  %50 = load i32, i32* %i, align 4, !dbg !100
  %idxprom3 = sext i32 %50 to i64, !dbg !101
  %arrayidx4 = getelementptr inbounds [64 x float], [64 x float]* %4, i64 0, i64 %idxprom3, !dbg !101
  %51 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !97
  %52 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %51, i32 0, i32 0, !dbg !97
  %53 = ptrtoint float* %arrayidx4 to i64, !dbg !97
  store i64 %53, i64* %52, align 8, !dbg !97
  %54 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %51, i32 0, i32 1, !dbg !97
  store i64 4, i64* %54, align 8, !dbg !97
  %55 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %51, i32 0, i32 2, !dbg !97
  store i8 3, i8* %55, align 8, !dbg !97
  %56 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !97
  %57 = bitcast %struct.kmp_depend_info* %56 to i8*, !dbg !97
  %58 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !97
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2, i32 0, i32 0), i8** %58, align 8, !dbg !97
  %59 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %38, i32 1, i8* %57, i32 0, i8* null), !dbg !97
  br label %for.inc, !dbg !102

for.inc:                                          ; preds = %for.body
  %60 = load i32, i32* %i, align 4, !dbg !103
  %inc = add nsw i32 %60, 1, !dbg !103
  store i32 %inc, i32* %i, align 4, !dbg !103
  br label %for.cond, !dbg !104, !llvm.loop !105

for.end:                                          ; preds = %for.cond
  ret void, !dbg !107
}

; Function Attrs: noinline nounwind uwtable
define internal void @.omp_task_privates_map.(%struct..kmp_privates.t* noalias %0, i32** noalias %1) #3 !dbg !108 {
entry:
  %.addr = alloca %struct..kmp_privates.t*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t* %0, %struct..kmp_privates.t** %.addr, align 8
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t** %.addr, metadata !110, metadata !DIExpression()), !dbg !115
  store i32** %1, i32*** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !116, metadata !DIExpression()), !dbg !115
  %2 = load %struct..kmp_privates.t*, %struct..kmp_privates.t** %.addr, align 8, !dbg !121
  %3 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %2, i32 0, i32 0, !dbg !121
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !121
  store i32* %3, i32** %4, align 8, !dbg !121
  ret void, !dbg !121
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !122 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !123, metadata !DIExpression()), !dbg !144
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !146, metadata !DIExpression()), !dbg !144
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !147, metadata !DIExpression()), !dbg !144
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !148, metadata !DIExpression()), !dbg !144
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !149, metadata !DIExpression()), !dbg !144
  %__context.addr.i = alloca %struct.anon*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr.i, metadata !150, metadata !DIExpression()), !dbg !144
  %.firstpriv.ptr.addr.i = alloca i32*, align 8
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !151, metadata !DIExpression()), !dbg !152
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !153, metadata !DIExpression()), !dbg !152
  %2 = load i32, i32* %.addr, align 4, !dbg !165
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !165
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !165
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !165
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !165
  %7 = load i8*, i8** %6, align 8, !dbg !165
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !165
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 1, !dbg !165
  %10 = bitcast %struct..kmp_privates.t* %9 to i8*, !dbg !165
  %11 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !165
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !166
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !166
  store i8* %10, i8** %.privates..addr.i, align 8, !noalias !166
  store void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**)* @.omp_task_privates_map. to void (i8*, ...)*), void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !166
  store i8* %11, i8** %.task_t..addr.i, align 8, !noalias !166
  store %struct.anon* %8, %struct.anon** %__context.addr.i, align 8, !noalias !166
  %12 = load %struct.anon*, %struct.anon** %__context.addr.i, align 8, !dbg !172, !noalias !166
  %13 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr.i, align 8, !dbg !172, !noalias !166
  %14 = load i8*, i8** %.privates..addr.i, align 8, !dbg !172, !noalias !166
  call void (i8*, ...) %13(i8* %14, i32** %.firstpriv.ptr.addr.i) #7, !dbg !173
  %15 = load i32*, i32** %.firstpriv.ptr.addr.i, align 8, !dbg !172, !noalias !166
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 2, !dbg !174
  %17 = load float*, float** %16, align 8, !dbg !174
  %18 = load float, float* %17, align 4, !dbg !174
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0, !dbg !176
  %20 = load [64 x float]*, [64 x float]** %19, align 8, !dbg !176
  %21 = load i32, i32* %15, align 4, !dbg !177
  %idxprom.i = sext i32 %21 to i64, !dbg !176
  %arrayidx.i = getelementptr inbounds [64 x float], [64 x float]* %20, i64 0, i64 %idxprom.i, !dbg !176
  %22 = load float, float* %arrayidx.i, align 4, !dbg !176
  %mul.i = fmul float %18, %22, !dbg !178
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0, !dbg !179
  %24 = load [64 x float]*, [64 x float]** %23, align 8, !dbg !179
  %25 = load i32, i32* %15, align 4, !dbg !180
  %idxprom1.i = sext i32 %25 to i64, !dbg !179
  %arrayidx2.i = getelementptr inbounds [64 x float], [64 x float]* %24, i64 0, i64 %idxprom1.i, !dbg !179
  store float %mul.i, float* %arrayidx2.i, align 4, !dbg !181
  ret i32 0, !dbg !165
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*)

; Function Attrs: noinline nounwind uwtable
define internal void @.omp_task_privates_map..2(%struct..kmp_privates.t.2* noalias %0, i32** noalias %1) #3 !dbg !182 {
entry:
  %.addr = alloca %struct..kmp_privates.t.2*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t.2* %0, %struct..kmp_privates.t.2** %.addr, align 8
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t.2** %.addr, metadata !183, metadata !DIExpression()), !dbg !188
  store i32** %1, i32*** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !189, metadata !DIExpression()), !dbg !188
  %2 = load %struct..kmp_privates.t.2*, %struct..kmp_privates.t.2** %.addr, align 8, !dbg !190
  %3 = getelementptr inbounds %struct..kmp_privates.t.2, %struct..kmp_privates.t.2* %2, i32 0, i32 0, !dbg !190
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !190
  store i32* %3, i32** %4, align 8, !dbg !190
  ret void, !dbg !190
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #4 !dbg !191 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !192, metadata !DIExpression()), !dbg !200
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !202, metadata !DIExpression()), !dbg !200
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !203, metadata !DIExpression()), !dbg !200
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !204, metadata !DIExpression()), !dbg !200
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !205, metadata !DIExpression()), !dbg !200
  %__context.addr.i = alloca %struct.anon.0*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr.i, metadata !206, metadata !DIExpression()), !dbg !200
  %.firstpriv.ptr.addr.i = alloca i32*, align 8
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !207, metadata !DIExpression()), !dbg !208
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !209, metadata !DIExpression()), !dbg !208
  %2 = load i32, i32* %.addr, align 4, !dbg !216
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !216
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !216
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !216
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !216
  %7 = load i8*, i8** %6, align 8, !dbg !216
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !216
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 1, !dbg !216
  %10 = bitcast %struct..kmp_privates.t.2* %9 to i8*, !dbg !216
  %11 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !216
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !217
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !217
  store i8* %10, i8** %.privates..addr.i, align 8, !noalias !217
  store void (i8*, ...)* bitcast (void (%struct..kmp_privates.t.2*, i32**)* @.omp_task_privates_map..2 to void (i8*, ...)*), void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !217
  store i8* %11, i8** %.task_t..addr.i, align 8, !noalias !217
  store %struct.anon.0* %8, %struct.anon.0** %__context.addr.i, align 8, !noalias !217
  %12 = load %struct.anon.0*, %struct.anon.0** %__context.addr.i, align 8, !dbg !223, !noalias !217
  %13 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr.i, align 8, !dbg !223, !noalias !217
  %14 = load i8*, i8** %.privates..addr.i, align 8, !dbg !223, !noalias !217
  call void (i8*, ...) %13(i8* %14, i32** %.firstpriv.ptr.addr.i) #7, !dbg !224
  %15 = load i32*, i32** %.firstpriv.ptr.addr.i, align 8, !dbg !223, !noalias !217
  %16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %12, i32 0, i32 0, !dbg !225
  %17 = load [64 x float]*, [64 x float]** %16, align 8, !dbg !225
  %18 = load i32, i32* %15, align 4, !dbg !227
  %idxprom.i = sext i32 %18 to i64, !dbg !225
  %arrayidx.i = getelementptr inbounds [64 x float], [64 x float]* %17, i64 0, i64 %idxprom.i, !dbg !225
  %19 = load float, float* %arrayidx.i, align 4, !dbg !225
  %20 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %12, i32 0, i32 2, !dbg !228
  %21 = load [64 x float]*, [64 x float]** %20, align 8, !dbg !228
  %22 = load i32, i32* %15, align 4, !dbg !229
  %idxprom1.i = sext i32 %22 to i64, !dbg !228
  %arrayidx2.i = getelementptr inbounds [64 x float], [64 x float]* %21, i64 0, i64 %idxprom1.i, !dbg !228
  %23 = load float, float* %arrayidx2.i, align 4, !dbg !228
  %add.i = fadd float %19, %23, !dbg !230
  %24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %12, i32 0, i32 0, !dbg !231
  %25 = load [64 x float]*, [64 x float]** %24, align 8, !dbg !231
  %26 = load i32, i32* %15, align 4, !dbg !232
  %idxprom3.i = sext i32 %26 to i64, !dbg !231
  %arrayidx4.i = getelementptr inbounds [64 x float], [64 x float]* %25, i64 0, i64 %idxprom3.i, !dbg !231
  store float %add.i, float* %arrayidx4.i, align 4, !dbg !233
  ret i32 0, !dbg !216
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41b7_main_l30([64 x float]* dereferenceable(256) %x, float* dereferenceable(4) %a, [64 x float]* dereferenceable(256) %y) #2 !dbg !234 {
entry:
  %x.addr = alloca [64 x float]*, align 8
  %a.addr = alloca float*, align 8
  %y.addr = alloca [64 x float]*, align 8
  store [64 x float]* %x, [64 x float]** %x.addr, align 8
  call void @llvm.dbg.declare(metadata [64 x float]** %x.addr, metadata !235, metadata !DIExpression()), !dbg !236
  store float* %a, float** %a.addr, align 8
  call void @llvm.dbg.declare(metadata float** %a.addr, metadata !237, metadata !DIExpression()), !dbg !236
  store [64 x float]* %y, [64 x float]** %y.addr, align 8
  call void @llvm.dbg.declare(metadata [64 x float]** %y.addr, metadata !238, metadata !DIExpression()), !dbg !236
  %0 = load [64 x float]*, [64 x float]** %x.addr, align 8, !dbg !239
  %1 = load float*, float** %a.addr, align 8, !dbg !239
  %2 = load [64 x float]*, [64 x float]** %y.addr, align 8, !dbg !239
  %3 = load [64 x float]*, [64 x float]** %x.addr, align 8, !dbg !239
  %4 = load float*, float** %a.addr, align 8, !dbg !239
  %5 = load [64 x float]*, [64 x float]** %y.addr, align 8, !dbg !239
  call void @__omp_offloading_10307_2ec41b7_main_l30_debug__([64 x float]* %3, float* %4, [64 x float]* %5) #7, !dbg !239
  ret void, !dbg !239
}

declare dso_local i32 @printf(i8*, ...) #6

declare dso_local i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 19, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB158-missingtaskbarrier-orig-gpu-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6, !12}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 20, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !10)
!9 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!10 = !{!11}
!11 = !DISubrange(count: 64)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !3, line: 21, type: !8, isLocal: false, isDefinition: true)
!14 = !{i32 7, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 10.0.1 "}
!18 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 23, type: !19, scopeLine: 23, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!19 = !DISubroutineType(types: !20)
!20 = !{!21}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DILocalVariable(name: "i", scope: !23, file: !3, line: 24, type: !21)
!23 = distinct !DILexicalBlock(scope: !18, file: !3, line: 24, column: 3)
!24 = !DILocation(line: 24, column: 11, scope: !23)
!25 = !DILocation(line: 24, column: 7, scope: !23)
!26 = !DILocation(line: 24, column: 16, scope: !27)
!27 = distinct !DILexicalBlock(scope: !23, file: !3, line: 24, column: 3)
!28 = !DILocation(line: 24, column: 17, scope: !27)
!29 = !DILocation(line: 24, column: 3, scope: !23)
!30 = !DILocation(line: 25, column: 6, scope: !31)
!31 = distinct !DILexicalBlock(scope: !27, file: !3, line: 24, column: 25)
!32 = !DILocation(line: 26, column: 7, scope: !31)
!33 = !DILocation(line: 26, column: 5, scope: !31)
!34 = !DILocation(line: 26, column: 9, scope: !31)
!35 = !DILocation(line: 27, column: 7, scope: !31)
!36 = !DILocation(line: 27, column: 5, scope: !31)
!37 = !DILocation(line: 27, column: 9, scope: !31)
!38 = !DILocation(line: 28, column: 3, scope: !31)
!39 = !DILocation(line: 24, column: 22, scope: !27)
!40 = !DILocation(line: 24, column: 3, scope: !27)
!41 = distinct !{!41, !29, !42}
!42 = !DILocation(line: 28, column: 3, scope: !23)
!43 = !DILocation(line: 30, column: 3, scope: !44)
!44 = distinct !DILexicalBlock(scope: !18, file: !3, line: 30, column: 3)
!45 = !DILocalVariable(name: "i", scope: !46, file: !3, line: 44, type: !21)
!46 = distinct !DILexicalBlock(scope: !18, file: !3, line: 44, column: 3)
!47 = !DILocation(line: 44, column: 11, scope: !46)
!48 = !DILocation(line: 44, column: 7, scope: !46)
!49 = !DILocation(line: 44, column: 16, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !3, line: 44, column: 3)
!51 = !DILocation(line: 44, column: 17, scope: !50)
!52 = !DILocation(line: 44, column: 3, scope: !46)
!53 = !DILocation(line: 45, column: 10, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !3, line: 45, column: 8)
!55 = distinct !DILexicalBlock(scope: !50, file: !3, line: 44, column: 25)
!56 = !DILocation(line: 45, column: 8, scope: !54)
!57 = !DILocation(line: 45, column: 12, scope: !54)
!58 = !DILocation(line: 45, column: 8, scope: !55)
!59 = !DILocation(line: 46, column: 7, scope: !60)
!60 = distinct !DILexicalBlock(scope: !54, file: !3, line: 45, column: 16)
!61 = !DILocation(line: 47, column: 7, scope: !60)
!62 = !DILocation(line: 49, column: 3, scope: !55)
!63 = !DILocation(line: 44, column: 22, scope: !50)
!64 = !DILocation(line: 44, column: 3, scope: !50)
!65 = distinct !{!65, !52, !66}
!66 = !DILocation(line: 49, column: 3, scope: !46)
!67 = !DILocation(line: 51, column: 3, scope: !18)
!68 = !DILocation(line: 52, column: 3, scope: !18)
!69 = !DILocation(line: 53, column: 1, scope: !18)
!70 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41b7_main_l30_debug__", scope: !3, file: !3, line: 31, type: !71, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !73, !74, !73}
!73 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9, size: 64)
!75 = !DILocalVariable(name: "x", arg: 1, scope: !70, file: !3, line: 20, type: !73)
!76 = !DILocation(line: 20, column: 7, scope: !70)
!77 = !DILocalVariable(name: "a", arg: 2, scope: !70, file: !3, line: 19, type: !74)
!78 = !DILocation(line: 19, column: 7, scope: !70)
!79 = !DILocalVariable(name: "y", arg: 3, scope: !70, file: !3, line: 21, type: !73)
!80 = !DILocation(line: 21, column: 7, scope: !70)
!81 = !DILocation(line: 31, column: 3, scope: !70)
!82 = !DILocalVariable(name: "i", scope: !83, file: !3, line: 32, type: !21)
!83 = distinct !DILexicalBlock(scope: !84, file: !3, line: 32, column: 5)
!84 = distinct !DILexicalBlock(scope: !70, file: !3, line: 31, column: 3)
!85 = !DILocation(line: 32, column: 13, scope: !83)
!86 = !DILocation(line: 32, column: 9, scope: !83)
!87 = !DILocation(line: 32, column: 18, scope: !88)
!88 = distinct !DILexicalBlock(scope: !83, file: !3, line: 32, column: 5)
!89 = !DILocation(line: 32, column: 19, scope: !88)
!90 = !DILocation(line: 32, column: 5, scope: !83)
!91 = !DILocation(line: 33, column: 7, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !3, line: 32, column: 27)
!93 = !DILocation(line: 35, column: 11, scope: !94)
!94 = distinct !DILexicalBlock(scope: !92, file: !3, line: 33, column: 7)
!95 = !DILocation(line: 33, column: 39, scope: !94)
!96 = !DILocation(line: 33, column: 37, scope: !94)
!97 = !DILocation(line: 37, column: 7, scope: !92)
!98 = !DILocation(line: 39, column: 11, scope: !99)
!99 = distinct !DILexicalBlock(scope: !92, file: !3, line: 37, column: 7)
!100 = !DILocation(line: 37, column: 39, scope: !99)
!101 = !DILocation(line: 37, column: 37, scope: !99)
!102 = !DILocation(line: 41, column: 5, scope: !92)
!103 = !DILocation(line: 32, column: 24, scope: !88)
!104 = !DILocation(line: 32, column: 5, scope: !88)
!105 = distinct !{!105, !90, !106}
!106 = !DILocation(line: 41, column: 5, scope: !83)
!107 = !DILocation(line: 42, column: 3, scope: !70)
!108 = distinct !DISubprogram(linkageName: ".omp_task_privates_map.", scope: !3, file: !3, line: 33, type: !109, scopeLine: 33, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!109 = !DISubroutineType(types: !4)
!110 = !DILocalVariable(arg: 1, scope: !108, type: !111, flags: DIFlagArtificial)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, size: 32, elements: !4)
!115 = !DILocation(line: 0, scope: !108)
!116 = !DILocalVariable(arg: 2, scope: !108, type: !117, flags: DIFlagArtificial)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!121 = !DILocation(line: 33, column: 7, scope: !108)
!122 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 33, type: !109, scopeLine: 33, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!123 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !124, type: !127, flags: DIFlagArtificial)
!124 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 35, type: !125, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !127, !128, !131, !134, !139, !140}
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !131, null}
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !70, file: !3, line: 33, size: 192, elements: !4)
!144 = !DILocation(line: 0, scope: !124, inlinedAt: !145)
!145 = distinct !DILocation(line: 33, column: 7, scope: !122)
!146 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !124, type: !128, flags: DIFlagArtificial)
!147 = !DILocalVariable(name: ".privates.", arg: 3, scope: !124, type: !131, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !124, type: !134, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !124, type: !139, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: "__context", arg: 6, scope: !124, type: !140, flags: DIFlagArtificial)
!151 = !DILocalVariable(arg: 1, scope: !122, type: !21, flags: DIFlagArtificial)
!152 = !DILocation(line: 0, scope: !122)
!153 = !DILocalVariable(arg: 2, scope: !122, type: !154, flags: DIFlagArtificial)
!154 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 384, elements: !157)
!157 = !{!158, !164}
!158 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !3, baseType: !159, size: 320)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !3, size: 320, elements: !160)
!160 = !{!161, !163}
!161 = !DIDerivedType(tag: DW_TAG_member, scope: !159, file: !3, baseType: !162, size: 64, offset: 192)
!162 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !3, size: 64, elements: !4)
!163 = !DIDerivedType(tag: DW_TAG_member, scope: !159, file: !3, baseType: !162, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !3, baseType: !114, size: 32, offset: 320)
!165 = !DILocation(line: 33, column: 7, scope: !122)
!166 = !{!167, !169, !170, !171}
!167 = distinct !{!167, !168, !".omp_outlined.: %.part_id."}
!168 = distinct !{!168, !".omp_outlined."}
!169 = distinct !{!169, !168, !".omp_outlined.: %.privates."}
!170 = distinct !{!170, !168, !".omp_outlined.: %.copy_fn."}
!171 = distinct !{!171, !168, !".omp_outlined.: %__context"}
!172 = !DILocation(line: 34, column: 7, scope: !124, inlinedAt: !145)
!173 = !DILocation(line: 33, column: 7, scope: !124, inlinedAt: !145)
!174 = !DILocation(line: 35, column: 16, scope: !175, inlinedAt: !145)
!175 = distinct !DILexicalBlock(scope: !124, file: !3, line: 34, column: 7)
!176 = !DILocation(line: 35, column: 20, scope: !175, inlinedAt: !145)
!177 = !DILocation(line: 35, column: 22, scope: !175, inlinedAt: !145)
!178 = !DILocation(line: 35, column: 18, scope: !175, inlinedAt: !145)
!179 = !DILocation(line: 35, column: 9, scope: !175, inlinedAt: !145)
!180 = !DILocation(line: 35, column: 11, scope: !175, inlinedAt: !145)
!181 = !DILocation(line: 35, column: 14, scope: !175, inlinedAt: !145)
!182 = distinct !DISubprogram(linkageName: ".omp_task_privates_map..2", scope: !3, file: !3, line: 37, type: !109, scopeLine: 37, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!183 = !DILocalVariable(arg: 1, scope: !182, type: !184, flags: DIFlagArtificial)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, size: 32, elements: !4)
!188 = !DILocation(line: 0, scope: !182)
!189 = !DILocalVariable(arg: 2, scope: !182, type: !117, flags: DIFlagArtificial)
!190 = !DILocation(line: 37, column: 7, scope: !182)
!191 = distinct !DISubprogram(linkageName: ".omp_task_entry..3", scope: !3, file: !3, line: 37, type: !109, scopeLine: 37, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!192 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !193, type: !127, flags: DIFlagArtificial)
!193 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 39, type: !194, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !127, !128, !131, !134, !139, !196}
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !70, file: !3, line: 37, size: 192, elements: !4)
!200 = !DILocation(line: 0, scope: !193, inlinedAt: !201)
!201 = distinct !DILocation(line: 37, column: 7, scope: !191)
!202 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !193, type: !128, flags: DIFlagArtificial)
!203 = !DILocalVariable(name: ".privates.", arg: 3, scope: !193, type: !131, flags: DIFlagArtificial)
!204 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !193, type: !134, flags: DIFlagArtificial)
!205 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !193, type: !139, flags: DIFlagArtificial)
!206 = !DILocalVariable(name: "__context", arg: 6, scope: !193, type: !196, flags: DIFlagArtificial)
!207 = !DILocalVariable(arg: 1, scope: !191, type: !21, flags: DIFlagArtificial)
!208 = !DILocation(line: 0, scope: !191)
!209 = !DILocalVariable(arg: 2, scope: !191, type: !210, flags: DIFlagArtificial)
!210 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 384, elements: !213)
!213 = !{!214, !215}
!214 = !DIDerivedType(tag: DW_TAG_member, scope: !212, file: !3, baseType: !159, size: 320)
!215 = !DIDerivedType(tag: DW_TAG_member, scope: !212, file: !3, baseType: !187, size: 32, offset: 320)
!216 = !DILocation(line: 37, column: 7, scope: !191)
!217 = !{!218, !220, !221, !222}
!218 = distinct !{!218, !219, !".omp_outlined..1: %.part_id."}
!219 = distinct !{!219, !".omp_outlined..1"}
!220 = distinct !{!220, !219, !".omp_outlined..1: %.privates."}
!221 = distinct !{!221, !219, !".omp_outlined..1: %.copy_fn."}
!222 = distinct !{!222, !219, !".omp_outlined..1: %__context"}
!223 = !DILocation(line: 38, column: 7, scope: !193, inlinedAt: !201)
!224 = !DILocation(line: 37, column: 7, scope: !193, inlinedAt: !201)
!225 = !DILocation(line: 39, column: 16, scope: !226, inlinedAt: !201)
!226 = distinct !DILexicalBlock(scope: !193, file: !3, line: 38, column: 7)
!227 = !DILocation(line: 39, column: 18, scope: !226, inlinedAt: !201)
!228 = !DILocation(line: 39, column: 23, scope: !226, inlinedAt: !201)
!229 = !DILocation(line: 39, column: 25, scope: !226, inlinedAt: !201)
!230 = !DILocation(line: 39, column: 21, scope: !226, inlinedAt: !201)
!231 = !DILocation(line: 39, column: 9, scope: !226, inlinedAt: !201)
!232 = !DILocation(line: 39, column: 11, scope: !226, inlinedAt: !201)
!233 = !DILocation(line: 39, column: 14, scope: !226, inlinedAt: !201)
!234 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41b7_main_l30", scope: !3, file: !3, line: 31, type: !71, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!235 = !DILocalVariable(name: "x", arg: 1, scope: !234, type: !73, flags: DIFlagArtificial)
!236 = !DILocation(line: 0, scope: !234)
!237 = !DILocalVariable(name: "a", arg: 2, scope: !234, type: !74, flags: DIFlagArtificial)
!238 = !DILocalVariable(name: "y", arg: 3, scope: !234, type: !73, flags: DIFlagArtificial)
!239 = !DILocation(line: 31, column: 3, scope: !234)
