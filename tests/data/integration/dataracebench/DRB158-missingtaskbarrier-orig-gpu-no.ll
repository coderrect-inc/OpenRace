; ModuleID = 'integration/dataracebench/DRB158-missingtaskbarrier-orig-gpu-no.c'
source_filename = "integration/dataracebench/DRB158-missingtaskbarrier-orig-gpu-no.c"
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
@1 = private unnamed_addr constant [79 x i8] c";integration/dataracebench/DRB158-missingtaskbarrier-orig-gpu-no.c;main;33;7;;\00", align 1
@2 = private unnamed_addr constant [79 x i8] c";integration/dataracebench/DRB158-missingtaskbarrier-orig-gpu-no.c;main;37;7;;\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Data Race Detected\0A\00", align 1
@3 = private unnamed_addr constant [79 x i8] c";integration/dataracebench/DRB158-missingtaskbarrier-orig-gpu-no.c;main;51;3;;\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !18 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %i3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @3, i32 0, i32 0), i8** %2, align 8, !tbaa !27
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 0, i32* %retval, align 4
  %4 = bitcast i32* %i to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #6, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %i, metadata !23, metadata !DIExpression()), !dbg !34
  store i32 0, i32* %i, align 4, !dbg !34, !tbaa !35
  br label %for.cond, !dbg !33

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !36, !tbaa !35
  %cmp = icmp slt i32 %5, 64, !dbg !38
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !39

for.cond.cleanup:                                 ; preds = %for.cond
  %6 = bitcast i32* %i to i8*, !dbg !40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #6, !dbg !40
  br label %for.end

for.body:                                         ; preds = %for.cond
  store float 5.000000e+00, float* @a, align 4, !dbg !41, !tbaa !43
  %7 = load i32, i32* %i, align 4, !dbg !45, !tbaa !35
  %idxprom = sext i32 %7 to i64, !dbg !46
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* @x, i64 0, i64 %idxprom, !dbg !46
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !47, !tbaa !43
  %8 = load i32, i32* %i, align 4, !dbg !48, !tbaa !35
  %idxprom1 = sext i32 %8 to i64, !dbg !49
  %arrayidx2 = getelementptr inbounds [64 x float], [64 x float]* @y, i64 0, i64 %idxprom1, !dbg !49
  store float 3.000000e+00, float* %arrayidx2, align 4, !dbg !50, !tbaa !43
  br label %for.inc, !dbg !51

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !52, !tbaa !35
  %inc = add nsw i32 %9, 1, !dbg !52
  store i32 %inc, i32* %i, align 4, !dbg !52, !tbaa !35
  br label %for.cond, !dbg !40, !llvm.loop !53

for.end:                                          ; preds = %for.cond.cleanup
  call void @__omp_offloading_1030a_2160960_main_l30([64 x float]* @x, float* @a, [64 x float]* @y) #6, !dbg !55
  %10 = bitcast i32* %i3 to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #6, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %i3, metadata !25, metadata !DIExpression()), !dbg !58
  store i32 0, i32* %i3, align 4, !dbg !58, !tbaa !35
  br label %for.cond4, !dbg !57

for.cond4:                                        ; preds = %for.inc11, %for.end
  %11 = load i32, i32* %i3, align 4, !dbg !59, !tbaa !35
  %cmp5 = icmp slt i32 %11, 64, !dbg !61
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !62

for.cond.cleanup6:                                ; preds = %for.cond4
  store i32 5, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !62

for.body7:                                        ; preds = %for.cond4
  %12 = load i32, i32* %i3, align 4, !dbg !63, !tbaa !35
  %idxprom8 = sext i32 %12 to i64, !dbg !66
  %arrayidx9 = getelementptr inbounds [64 x float], [64 x float]* @x, i64 0, i64 %idxprom8, !dbg !66
  %13 = load float, float* %arrayidx9, align 4, !dbg !66, !tbaa !43
  %cmp10 = fcmp une float %13, 3.000000e+00, !dbg !67
  br i1 %cmp10, label %if.then, label %if.end, !dbg !68

if.then:                                          ; preds = %for.body7
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0)), !dbg !69
  store i32 0, i32* %retval, align 4, !dbg !71
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !71

if.end:                                           ; preds = %for.body7
  br label %for.inc11, !dbg !72

for.inc11:                                        ; preds = %if.end
  %14 = load i32, i32* %i3, align 4, !dbg !73, !tbaa !35
  %inc12 = add nsw i32 %14, 1, !dbg !73
  store i32 %inc12, i32* %i3, align 4, !dbg !73, !tbaa !35
  br label %for.cond4, !dbg !74, !llvm.loop !75

cleanup:                                          ; preds = %if.then, %for.cond.cleanup6
  %15 = bitcast i32* %i3 to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #6, !dbg !74
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 5, label %for.end13
    i32 1, label %return
  ]

for.end13:                                        ; preds = %cleanup
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !77
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @3, i32 0, i32 0), i8** %16, align 8, !dbg !77, !tbaa !27
  %17 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* %.kmpc_loc.addr, i32 %3), !dbg !77
  store i32 0, i32* %retval, align 4, !dbg !78
  br label %return, !dbg !78

return:                                           ; preds = %for.end13, %cleanup
  %18 = load i32, i32* %retval, align 4, !dbg !79
  ret i32 %18, !dbg !79

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160960_main_l30_debug__([64 x float]* dereferenceable(256) %x, float* dereferenceable(4) %a, [64 x float]* dereferenceable(256) %y) #3 !dbg !80 {
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
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !tbaa !27
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store [64 x float]* %x, [64 x float]** %x.addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata [64 x float]** %x.addr, metadata !86, metadata !DIExpression()), !dbg !93
  store float* %a, float** %a.addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata float** %a.addr, metadata !87, metadata !DIExpression()), !dbg !94
  store [64 x float]* %y, [64 x float]** %y.addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata [64 x float]** %y.addr, metadata !88, metadata !DIExpression()), !dbg !95
  %4 = load [64 x float]*, [64 x float]** %x.addr, align 8, !dbg !96, !tbaa !92
  %5 = load float*, float** %a.addr, align 8, !dbg !96, !tbaa !92
  %6 = load [64 x float]*, [64 x float]** %y.addr, align 8, !dbg !96, !tbaa !92
  %7 = bitcast i32* %i to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #6, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %i, metadata !89, metadata !DIExpression()), !dbg !98
  store i32 0, i32* %i, align 4, !dbg !98, !tbaa !35
  br label %for.cond, !dbg !97

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !dbg !99, !tbaa !35
  %cmp = icmp slt i32 %8, 64, !dbg !101
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !102

for.cond.cleanup:                                 ; preds = %for.cond
  %9 = bitcast i32* %i to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #6, !dbg !103
  br label %for.end

for.body:                                         ; preds = %for.cond
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !104
  store [64 x float]* %4, [64 x float]** %10, align 8, !dbg !104, !tbaa !92
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 1, !dbg !104
  store i32* %i, i32** %11, align 8, !dbg !104, !tbaa !92
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 2, !dbg !104
  store float* %5, float** %12, align 8, !dbg !104, !tbaa !92
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !104
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @1, i32 0, i32 0), i8** %13, align 8, !dbg !104, !tbaa !27
  %14 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 48, i64 24, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !104
  %15 = bitcast i8* %14 to %struct.kmp_task_t_with_privates*, !dbg !104
  %16 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %15, i32 0, i32 0, !dbg !104
  %17 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %16, i32 0, i32 0, !dbg !104
  %18 = load i8*, i8** %17, align 8, !dbg !104, !tbaa !106
  %19 = bitcast %struct.anon* %agg.captured to i8*, !dbg !104
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 24, i1 false), !dbg !104, !tbaa.struct !110
  %20 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %15, i32 0, i32 1, !dbg !104
  %21 = bitcast i8* %18 to %struct.anon*, !dbg !104
  %22 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %20, i32 0, i32 0, !dbg !104
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 1, !dbg !104
  %24 = load i32*, i32** %23, align 8, !dbg !104, !tbaa !111
  %25 = load i32, i32* %24, align 4, !dbg !113, !tbaa !35
  store i32 %25, i32* %22, align 8, !dbg !104, !tbaa !115
  %26 = load i32, i32* %i, align 4, !dbg !116, !tbaa !35
  %idxprom = sext i32 %26 to i64, !dbg !117
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %4, i64 0, i64 %idxprom, !dbg !117
  %27 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !104
  %28 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %27, i32 0, i32 0, !dbg !104
  %29 = ptrtoint float* %arrayidx to i64, !dbg !104
  store i64 %29, i64* %28, align 8, !dbg !104, !tbaa !118
  %30 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %27, i32 0, i32 1, !dbg !104
  store i64 4, i64* %30, align 8, !dbg !104, !tbaa !121
  %31 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %27, i32 0, i32 2, !dbg !104
  store i8 3, i8* %31, align 8, !dbg !104, !tbaa !122
  %32 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !104
  %33 = bitcast %struct.kmp_depend_info* %32 to i8*, !dbg !104
  %34 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !104
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @1, i32 0, i32 0), i8** %34, align 8, !dbg !104, !tbaa !27
  %35 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %14, i32 1, i8* %33, i32 0, i8* null), !dbg !104
  %36 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !123
  store [64 x float]* %4, [64 x float]** %36, align 8, !dbg !123, !tbaa !92
  %37 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 1, !dbg !123
  store i32* %i, i32** %37, align 8, !dbg !123, !tbaa !92
  %38 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 2, !dbg !123
  store [64 x float]* %6, [64 x float]** %38, align 8, !dbg !123, !tbaa !92
  %39 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !123
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @2, i32 0, i32 0), i8** %39, align 8, !dbg !123, !tbaa !27
  %40 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 48, i64 24, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*)), !dbg !123
  %41 = bitcast i8* %40 to %struct.kmp_task_t_with_privates.1*, !dbg !123
  %42 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %41, i32 0, i32 0, !dbg !123
  %43 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %42, i32 0, i32 0, !dbg !123
  %44 = load i8*, i8** %43, align 8, !dbg !123, !tbaa !106
  %45 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !123
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 24, i1 false), !dbg !123, !tbaa.struct !110
  %46 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %41, i32 0, i32 1, !dbg !123
  %47 = bitcast i8* %44 to %struct.anon.0*, !dbg !123
  %48 = getelementptr inbounds %struct..kmp_privates.t.2, %struct..kmp_privates.t.2* %46, i32 0, i32 0, !dbg !123
  %49 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %47, i32 0, i32 1, !dbg !123
  %50 = load i32*, i32** %49, align 8, !dbg !123, !tbaa !111
  %51 = load i32, i32* %50, align 4, !dbg !124, !tbaa !35
  store i32 %51, i32* %48, align 8, !dbg !123, !tbaa !115
  %52 = load i32, i32* %i, align 4, !dbg !126, !tbaa !35
  %idxprom3 = sext i32 %52 to i64, !dbg !127
  %arrayidx4 = getelementptr inbounds [64 x float], [64 x float]* %4, i64 0, i64 %idxprom3, !dbg !127
  %53 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !123
  %54 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %53, i32 0, i32 0, !dbg !123
  %55 = ptrtoint float* %arrayidx4 to i64, !dbg !123
  store i64 %55, i64* %54, align 8, !dbg !123, !tbaa !118
  %56 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %53, i32 0, i32 1, !dbg !123
  store i64 4, i64* %56, align 8, !dbg !123, !tbaa !121
  %57 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %53, i32 0, i32 2, !dbg !123
  store i8 3, i8* %57, align 8, !dbg !123, !tbaa !122
  %58 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !123
  %59 = bitcast %struct.kmp_depend_info* %58 to i8*, !dbg !123
  %60 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !123
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @2, i32 0, i32 0), i8** %60, align 8, !dbg !123, !tbaa !27
  %61 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %40, i32 1, i8* %59, i32 0, i8* null), !dbg !123
  br label %for.inc, !dbg !128

for.inc:                                          ; preds = %for.body
  %62 = load i32, i32* %i, align 4, !dbg !129, !tbaa !35
  %inc = add nsw i32 %62, 1, !dbg !129
  store i32 %inc, i32* %i, align 4, !dbg !129, !tbaa !35
  br label %for.cond, !dbg !103, !llvm.loop !130

for.end:                                          ; preds = %for.cond.cleanup
  ret void, !dbg !132
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #4 !dbg !133 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  %.firstpriv.ptr.addr = alloca i32*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !35
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !154, metadata !DIExpression()), !dbg !160
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !155, metadata !DIExpression()), !dbg !160
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !156, metadata !DIExpression()), !dbg !160
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !157, metadata !DIExpression()), !dbg !160
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !158, metadata !DIExpression()), !dbg !160
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !159, metadata !DIExpression()), !dbg !160
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !161
  %1 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr, align 8, !dbg !161
  %2 = load i8*, i8** %.privates..addr, align 8, !dbg !161
  call void (i8*, ...) %1(i8* %2, i32** %.firstpriv.ptr.addr), !dbg !162
  %3 = load i32*, i32** %.firstpriv.ptr.addr, align 8, !dbg !161
  %4 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 2, !dbg !163
  %5 = load float*, float** %4, align 8, !dbg !163, !tbaa !165
  %6 = load float, float* %5, align 4, !dbg !163, !tbaa !43
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !166
  %8 = load [64 x float]*, [64 x float]** %7, align 8, !dbg !166, !tbaa !167
  %9 = load i32, i32* %3, align 4, !dbg !168, !tbaa !35
  %idxprom = sext i32 %9 to i64, !dbg !166
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %8, i64 0, i64 %idxprom, !dbg !166
  %10 = load float, float* %arrayidx, align 4, !dbg !166, !tbaa !43
  %mul = fmul float %6, %10, !dbg !169
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !170
  %12 = load [64 x float]*, [64 x float]** %11, align 8, !dbg !170, !tbaa !167
  %13 = load i32, i32* %3, align 4, !dbg !171, !tbaa !35
  %idxprom1 = sext i32 %13 to i64, !dbg !170
  %arrayidx2 = getelementptr inbounds [64 x float], [64 x float]* %12, i64 0, i64 %idxprom1, !dbg !170
  store float %mul, float* %arrayidx2, align 4, !dbg !172, !tbaa !43
  ret void, !dbg !173
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_task_privates_map.(%struct..kmp_privates.t* noalias %0, i32** noalias %1) #4 !dbg !174 {
entry:
  %.addr = alloca %struct..kmp_privates.t*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t* %0, %struct..kmp_privates.t** %.addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t** %.addr, metadata !177, metadata !DIExpression()), !dbg !187
  store i32** %1, i32*** %.addr1, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !182, metadata !DIExpression()), !dbg !187
  %2 = load %struct..kmp_privates.t*, %struct..kmp_privates.t** %.addr, align 8, !dbg !188
  %3 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %2, i32 0, i32 0, !dbg !188
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !188
  store i32* %3, i32** %4, align 8, !dbg !188, !tbaa !92
  ret void, !dbg !188
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !189 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !35
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !191, metadata !DIExpression()), !dbg !204
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !192, metadata !DIExpression()), !dbg !204
  %2 = load i32, i32* %.addr, align 4, !dbg !205, !tbaa !35
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !205
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !205
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !205
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !205
  %7 = load i8*, i8** %6, align 8, !dbg !205, !tbaa !106
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !205
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 1, !dbg !205
  %10 = bitcast %struct..kmp_privates.t* %9 to i8*, !dbg !205
  %11 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !205
  call void @.omp_outlined.(i32 %2, i32* %5, i8* %10, void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**)* @.omp_task_privates_map. to void (i8*, ...)*), i8* %11, %struct.anon* %8) #6, !dbg !205
  ret i32 0, !dbg !205
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #4 !dbg !206 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  %.firstpriv.ptr.addr = alloca i32*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !35
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !214, metadata !DIExpression()), !dbg !220
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !215, metadata !DIExpression()), !dbg !220
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !216, metadata !DIExpression()), !dbg !220
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !217, metadata !DIExpression()), !dbg !220
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !218, metadata !DIExpression()), !dbg !220
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !219, metadata !DIExpression()), !dbg !220
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !221
  %1 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr, align 8, !dbg !221
  %2 = load i8*, i8** %.privates..addr, align 8, !dbg !221
  call void (i8*, ...) %1(i8* %2, i32** %.firstpriv.ptr.addr), !dbg !222
  %3 = load i32*, i32** %.firstpriv.ptr.addr, align 8, !dbg !221
  %4 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !223
  %5 = load [64 x float]*, [64 x float]** %4, align 8, !dbg !223, !tbaa !167
  %6 = load i32, i32* %3, align 4, !dbg !225, !tbaa !35
  %idxprom = sext i32 %6 to i64, !dbg !223
  %arrayidx = getelementptr inbounds [64 x float], [64 x float]* %5, i64 0, i64 %idxprom, !dbg !223
  %7 = load float, float* %arrayidx, align 4, !dbg !223, !tbaa !43
  %8 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 2, !dbg !226
  %9 = load [64 x float]*, [64 x float]** %8, align 8, !dbg !226, !tbaa !165
  %10 = load i32, i32* %3, align 4, !dbg !227, !tbaa !35
  %idxprom1 = sext i32 %10 to i64, !dbg !226
  %arrayidx2 = getelementptr inbounds [64 x float], [64 x float]* %9, i64 0, i64 %idxprom1, !dbg !226
  %11 = load float, float* %arrayidx2, align 4, !dbg !226, !tbaa !43
  %add = fadd float %7, %11, !dbg !228
  %12 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !229
  %13 = load [64 x float]*, [64 x float]** %12, align 8, !dbg !229, !tbaa !167
  %14 = load i32, i32* %3, align 4, !dbg !230, !tbaa !35
  %idxprom3 = sext i32 %14 to i64, !dbg !229
  %arrayidx4 = getelementptr inbounds [64 x float], [64 x float]* %13, i64 0, i64 %idxprom3, !dbg !229
  store float %add, float* %arrayidx4, align 4, !dbg !231, !tbaa !43
  ret void, !dbg !232
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_task_privates_map..2(%struct..kmp_privates.t.2* noalias %0, i32** noalias %1) #4 !dbg !233 {
entry:
  %.addr = alloca %struct..kmp_privates.t.2*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t.2* %0, %struct..kmp_privates.t.2** %.addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t.2** %.addr, metadata !235, metadata !DIExpression()), !dbg !241
  store i32** %1, i32*** %.addr1, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !240, metadata !DIExpression()), !dbg !241
  %2 = load %struct..kmp_privates.t.2*, %struct..kmp_privates.t.2** %.addr, align 8, !dbg !242
  %3 = getelementptr inbounds %struct..kmp_privates.t.2, %struct..kmp_privates.t.2* %2, i32 0, i32 0, !dbg !242
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !242
  store i32* %3, i32** %4, align 8, !dbg !242, !tbaa !92
  ret void, !dbg !242
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #3 !dbg !243 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !35
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !245, metadata !DIExpression()), !dbg !253
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !246, metadata !DIExpression()), !dbg !253
  %2 = load i32, i32* %.addr, align 4, !dbg !254, !tbaa !35
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !254
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !254
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !254
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !254
  %7 = load i8*, i8** %6, align 8, !dbg !254, !tbaa !106
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !254
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 1, !dbg !254
  %10 = bitcast %struct..kmp_privates.t.2* %9 to i8*, !dbg !254
  %11 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !254
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* %10, void (i8*, ...)* bitcast (void (%struct..kmp_privates.t.2*, i32**)* @.omp_task_privates_map..2 to void (i8*, ...)*), i8* %11, %struct.anon.0* %8) #6, !dbg !254
  ret i32 0, !dbg !254
}

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160960_main_l30([64 x float]* dereferenceable(256) %x, float* dereferenceable(4) %a, [64 x float]* dereferenceable(256) %y) #3 !dbg !255 {
entry:
  %x.addr = alloca [64 x float]*, align 8
  %a.addr = alloca float*, align 8
  %y.addr = alloca [64 x float]*, align 8
  store [64 x float]* %x, [64 x float]** %x.addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata [64 x float]** %x.addr, metadata !257, metadata !DIExpression()), !dbg !260
  store float* %a, float** %a.addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata float** %a.addr, metadata !258, metadata !DIExpression()), !dbg !260
  store [64 x float]* %y, [64 x float]** %y.addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata [64 x float]** %y.addr, metadata !259, metadata !DIExpression()), !dbg !260
  %0 = load [64 x float]*, [64 x float]** %x.addr, align 8, !dbg !261, !tbaa !92
  %1 = load float*, float** %a.addr, align 8, !dbg !261, !tbaa !92
  %2 = load [64 x float]*, [64 x float]** %y.addr, align 8, !dbg !261, !tbaa !92
  %3 = load [64 x float]*, [64 x float]** %x.addr, align 8, !dbg !261, !tbaa !92
  %4 = load float*, float** %a.addr, align 8, !dbg !261, !tbaa !92
  %5 = load [64 x float]*, [64 x float]** %y.addr, align 8, !dbg !261, !tbaa !92
  call void @__omp_offloading_1030a_2160960_main_l30_debug__([64 x float]* %3, float* %4, [64 x float]* %5) #6, !dbg !261
  ret void, !dbg !261
}

declare dso_local i32 @printf(i8*, ...) #5

declare dso_local i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32)

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 19, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB158-missingtaskbarrier-orig-gpu-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!18 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 23, type: !19, scopeLine: 23, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !22)
!19 = !DISubroutineType(types: !20)
!20 = !{!21}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{!23, !25}
!23 = !DILocalVariable(name: "i", scope: !24, file: !3, line: 24, type: !21)
!24 = distinct !DILexicalBlock(scope: !18, file: !3, line: 24, column: 3)
!25 = !DILocalVariable(name: "i", scope: !26, file: !3, line: 44, type: !21)
!26 = distinct !DILexicalBlock(scope: !18, file: !3, line: 44, column: 3)
!27 = !{!28, !32, i64 16}
!28 = !{!"ident_t", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !32, i64 16}
!29 = !{!"int", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !{!"any pointer", !30, i64 0}
!33 = !DILocation(line: 24, column: 7, scope: !24)
!34 = !DILocation(line: 24, column: 11, scope: !24)
!35 = !{!29, !29, i64 0}
!36 = !DILocation(line: 24, column: 16, scope: !37)
!37 = distinct !DILexicalBlock(scope: !24, file: !3, line: 24, column: 3)
!38 = !DILocation(line: 24, column: 17, scope: !37)
!39 = !DILocation(line: 24, column: 3, scope: !24)
!40 = !DILocation(line: 24, column: 3, scope: !37)
!41 = !DILocation(line: 25, column: 6, scope: !42)
!42 = distinct !DILexicalBlock(scope: !37, file: !3, line: 24, column: 25)
!43 = !{!44, !44, i64 0}
!44 = !{!"float", !30, i64 0}
!45 = !DILocation(line: 26, column: 7, scope: !42)
!46 = !DILocation(line: 26, column: 5, scope: !42)
!47 = !DILocation(line: 26, column: 9, scope: !42)
!48 = !DILocation(line: 27, column: 7, scope: !42)
!49 = !DILocation(line: 27, column: 5, scope: !42)
!50 = !DILocation(line: 27, column: 9, scope: !42)
!51 = !DILocation(line: 28, column: 3, scope: !42)
!52 = !DILocation(line: 24, column: 22, scope: !37)
!53 = distinct !{!53, !39, !54}
!54 = !DILocation(line: 28, column: 3, scope: !24)
!55 = !DILocation(line: 30, column: 3, scope: !56)
!56 = distinct !DILexicalBlock(scope: !18, file: !3, line: 30, column: 3)
!57 = !DILocation(line: 44, column: 7, scope: !26)
!58 = !DILocation(line: 44, column: 11, scope: !26)
!59 = !DILocation(line: 44, column: 16, scope: !60)
!60 = distinct !DILexicalBlock(scope: !26, file: !3, line: 44, column: 3)
!61 = !DILocation(line: 44, column: 17, scope: !60)
!62 = !DILocation(line: 44, column: 3, scope: !26)
!63 = !DILocation(line: 45, column: 10, scope: !64)
!64 = distinct !DILexicalBlock(scope: !65, file: !3, line: 45, column: 8)
!65 = distinct !DILexicalBlock(scope: !60, file: !3, line: 44, column: 25)
!66 = !DILocation(line: 45, column: 8, scope: !64)
!67 = !DILocation(line: 45, column: 12, scope: !64)
!68 = !DILocation(line: 45, column: 8, scope: !65)
!69 = !DILocation(line: 46, column: 7, scope: !70)
!70 = distinct !DILexicalBlock(scope: !64, file: !3, line: 45, column: 16)
!71 = !DILocation(line: 47, column: 7, scope: !70)
!72 = !DILocation(line: 49, column: 3, scope: !65)
!73 = !DILocation(line: 44, column: 22, scope: !60)
!74 = !DILocation(line: 44, column: 3, scope: !60)
!75 = distinct !{!75, !62, !76}
!76 = !DILocation(line: 49, column: 3, scope: !26)
!77 = !DILocation(line: 51, column: 3, scope: !18)
!78 = !DILocation(line: 52, column: 3, scope: !18)
!79 = !DILocation(line: 53, column: 1, scope: !18)
!80 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160960_main_l30_debug__", scope: !3, file: !3, line: 31, type: !81, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !85)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !83, !84, !83}
!83 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9, size: 64)
!85 = !{!86, !87, !88, !89}
!86 = !DILocalVariable(name: "x", arg: 1, scope: !80, file: !3, line: 20, type: !83)
!87 = !DILocalVariable(name: "a", arg: 2, scope: !80, file: !3, line: 19, type: !84)
!88 = !DILocalVariable(name: "y", arg: 3, scope: !80, file: !3, line: 21, type: !83)
!89 = !DILocalVariable(name: "i", scope: !90, file: !3, line: 32, type: !21)
!90 = distinct !DILexicalBlock(scope: !91, file: !3, line: 32, column: 5)
!91 = distinct !DILexicalBlock(scope: !80, file: !3, line: 31, column: 3)
!92 = !{!32, !32, i64 0}
!93 = !DILocation(line: 20, column: 7, scope: !80)
!94 = !DILocation(line: 19, column: 7, scope: !80)
!95 = !DILocation(line: 21, column: 7, scope: !80)
!96 = !DILocation(line: 31, column: 3, scope: !80)
!97 = !DILocation(line: 32, column: 9, scope: !90)
!98 = !DILocation(line: 32, column: 13, scope: !90)
!99 = !DILocation(line: 32, column: 18, scope: !100)
!100 = distinct !DILexicalBlock(scope: !90, file: !3, line: 32, column: 5)
!101 = !DILocation(line: 32, column: 19, scope: !100)
!102 = !DILocation(line: 32, column: 5, scope: !90)
!103 = !DILocation(line: 32, column: 5, scope: !100)
!104 = !DILocation(line: 33, column: 7, scope: !105)
!105 = distinct !DILexicalBlock(scope: !100, file: !3, line: 32, column: 27)
!106 = !{!107, !32, i64 0}
!107 = !{!"kmp_task_t_with_privates", !108, i64 0, !109, i64 40}
!108 = !{!"kmp_task_t", !32, i64 0, !32, i64 8, !29, i64 16, !30, i64 24, !30, i64 32}
!109 = !{!".kmp_privates.t", !29, i64 0}
!110 = !{i64 0, i64 8, !92, i64 8, i64 8, !92, i64 16, i64 8, !92}
!111 = !{!112, !32, i64 8}
!112 = !{!"", !32, i64 0, !32, i64 8, !32, i64 16}
!113 = !DILocation(line: 35, column: 11, scope: !114)
!114 = distinct !DILexicalBlock(scope: !105, file: !3, line: 33, column: 7)
!115 = !{!107, !29, i64 40}
!116 = !DILocation(line: 33, column: 39, scope: !114)
!117 = !DILocation(line: 33, column: 37, scope: !114)
!118 = !{!119, !120, i64 0}
!119 = !{!"kmp_depend_info", !120, i64 0, !120, i64 8, !30, i64 16}
!120 = !{!"long", !30, i64 0}
!121 = !{!119, !120, i64 8}
!122 = !{!119, !30, i64 16}
!123 = !DILocation(line: 37, column: 7, scope: !105)
!124 = !DILocation(line: 39, column: 11, scope: !125)
!125 = distinct !DILexicalBlock(scope: !105, file: !3, line: 37, column: 7)
!126 = !DILocation(line: 37, column: 39, scope: !125)
!127 = !DILocation(line: 37, column: 37, scope: !125)
!128 = !DILocation(line: 41, column: 5, scope: !105)
!129 = !DILocation(line: 32, column: 24, scope: !100)
!130 = distinct !{!130, !102, !131}
!131 = !DILocation(line: 41, column: 5, scope: !90)
!132 = !DILocation(line: 42, column: 3, scope: !80)
!133 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 35, type: !134, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !153)
!134 = !DISubroutineType(types: !135)
!135 = !{null, !136, !137, !140, !143, !148, !149}
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !140, null}
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !80, file: !3, line: 33, size: 192, elements: !4)
!153 = !{!154, !155, !156, !157, !158, !159}
!154 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !133, type: !136, flags: DIFlagArtificial)
!155 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !133, type: !137, flags: DIFlagArtificial)
!156 = !DILocalVariable(name: ".privates.", arg: 3, scope: !133, type: !140, flags: DIFlagArtificial)
!157 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !133, type: !143, flags: DIFlagArtificial)
!158 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !133, type: !148, flags: DIFlagArtificial)
!159 = !DILocalVariable(name: "__context", arg: 6, scope: !133, type: !149, flags: DIFlagArtificial)
!160 = !DILocation(line: 0, scope: !133)
!161 = !DILocation(line: 34, column: 7, scope: !133)
!162 = !DILocation(line: 33, column: 7, scope: !133)
!163 = !DILocation(line: 35, column: 16, scope: !164)
!164 = distinct !DILexicalBlock(scope: !133, file: !3, line: 34, column: 7)
!165 = !{!112, !32, i64 16}
!166 = !DILocation(line: 35, column: 20, scope: !164)
!167 = !{!112, !32, i64 0}
!168 = !DILocation(line: 35, column: 22, scope: !164)
!169 = !DILocation(line: 35, column: 18, scope: !164)
!170 = !DILocation(line: 35, column: 9, scope: !164)
!171 = !DILocation(line: 35, column: 11, scope: !164)
!172 = !DILocation(line: 35, column: 14, scope: !164)
!173 = !DILocation(line: 36, column: 7, scope: !133)
!174 = distinct !DISubprogram(linkageName: ".omp_task_privates_map.", scope: !3, file: !3, line: 33, type: !175, scopeLine: 33, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !176)
!175 = !DISubroutineType(types: !4)
!176 = !{!177, !182}
!177 = !DILocalVariable(arg: 1, scope: !174, type: !178, flags: DIFlagArtificial)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, size: 32, elements: !4)
!182 = !DILocalVariable(arg: 2, scope: !174, type: !183, flags: DIFlagArtificial)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!187 = !DILocation(line: 0, scope: !174)
!188 = !DILocation(line: 33, column: 7, scope: !174)
!189 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 33, type: !175, scopeLine: 33, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !190)
!190 = !{!191, !192}
!191 = !DILocalVariable(arg: 1, scope: !189, type: !21, flags: DIFlagArtificial)
!192 = !DILocalVariable(arg: 2, scope: !189, type: !193, flags: DIFlagArtificial)
!193 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 384, elements: !196)
!196 = !{!197, !203}
!197 = !DIDerivedType(tag: DW_TAG_member, scope: !195, file: !3, baseType: !198, size: 320)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !3, size: 320, elements: !199)
!199 = !{!200, !202}
!200 = !DIDerivedType(tag: DW_TAG_member, scope: !198, file: !3, baseType: !201, size: 64, offset: 192)
!201 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !3, size: 64, elements: !4)
!202 = !DIDerivedType(tag: DW_TAG_member, scope: !198, file: !3, baseType: !201, size: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, scope: !195, file: !3, baseType: !181, size: 32, offset: 320)
!204 = !DILocation(line: 0, scope: !189)
!205 = !DILocation(line: 33, column: 7, scope: !189)
!206 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 39, type: !207, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !136, !137, !140, !143, !148, !209}
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !80, file: !3, line: 37, size: 192, elements: !4)
!213 = !{!214, !215, !216, !217, !218, !219}
!214 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !206, type: !136, flags: DIFlagArtificial)
!215 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !206, type: !137, flags: DIFlagArtificial)
!216 = !DILocalVariable(name: ".privates.", arg: 3, scope: !206, type: !140, flags: DIFlagArtificial)
!217 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !206, type: !143, flags: DIFlagArtificial)
!218 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !206, type: !148, flags: DIFlagArtificial)
!219 = !DILocalVariable(name: "__context", arg: 6, scope: !206, type: !209, flags: DIFlagArtificial)
!220 = !DILocation(line: 0, scope: !206)
!221 = !DILocation(line: 38, column: 7, scope: !206)
!222 = !DILocation(line: 37, column: 7, scope: !206)
!223 = !DILocation(line: 39, column: 16, scope: !224)
!224 = distinct !DILexicalBlock(scope: !206, file: !3, line: 38, column: 7)
!225 = !DILocation(line: 39, column: 18, scope: !224)
!226 = !DILocation(line: 39, column: 23, scope: !224)
!227 = !DILocation(line: 39, column: 25, scope: !224)
!228 = !DILocation(line: 39, column: 21, scope: !224)
!229 = !DILocation(line: 39, column: 9, scope: !224)
!230 = !DILocation(line: 39, column: 11, scope: !224)
!231 = !DILocation(line: 39, column: 14, scope: !224)
!232 = !DILocation(line: 40, column: 7, scope: !206)
!233 = distinct !DISubprogram(linkageName: ".omp_task_privates_map..2", scope: !3, file: !3, line: 37, type: !175, scopeLine: 37, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !234)
!234 = !{!235, !240}
!235 = !DILocalVariable(arg: 1, scope: !233, type: !236, flags: DIFlagArtificial)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, size: 32, elements: !4)
!240 = !DILocalVariable(arg: 2, scope: !233, type: !183, flags: DIFlagArtificial)
!241 = !DILocation(line: 0, scope: !233)
!242 = !DILocation(line: 37, column: 7, scope: !233)
!243 = distinct !DISubprogram(linkageName: ".omp_task_entry..3", scope: !3, file: !3, line: 37, type: !175, scopeLine: 37, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !244)
!244 = !{!245, !246}
!245 = !DILocalVariable(arg: 1, scope: !243, type: !21, flags: DIFlagArtificial)
!246 = !DILocalVariable(arg: 2, scope: !243, type: !247, flags: DIFlagArtificial)
!247 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 384, elements: !250)
!250 = !{!251, !252}
!251 = !DIDerivedType(tag: DW_TAG_member, scope: !249, file: !3, baseType: !198, size: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, scope: !249, file: !3, baseType: !239, size: 32, offset: 320)
!253 = !DILocation(line: 0, scope: !243)
!254 = !DILocation(line: 37, column: 7, scope: !243)
!255 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160960_main_l30", scope: !3, file: !3, line: 31, type: !81, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !256)
!256 = !{!257, !258, !259}
!257 = !DILocalVariable(name: "x", arg: 1, scope: !255, type: !83, flags: DIFlagArtificial)
!258 = !DILocalVariable(name: "a", arg: 2, scope: !255, type: !84, flags: DIFlagArtificial)
!259 = !DILocalVariable(name: "y", arg: 3, scope: !255, type: !83, flags: DIFlagArtificial)
!260 = !DILocation(line: 0, scope: !255)
!261 = !DILocation(line: 31, column: 3, scope: !255)
