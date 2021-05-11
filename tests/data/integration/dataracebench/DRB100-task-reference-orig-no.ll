; ModuleID = 'integration/dataracebench/DRB100-task-reference-orig-no.cpp'
source_filename = "integration/dataracebench/DRB100-task-reference-orig-no.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t, %struct..kmp_privates.t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct..kmp_privates.t = type { i32 }

$__clang_call_terminate = comdat any

@a = dso_local global [100 x i32] zeroinitializer, align 16, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [77 x i8] c";integration/dataracebench/DRB100-task-reference-orig-no.cpp;gen_task;62;1;;\00", align 1
@2 = private unnamed_addr constant [73 x i8] c";integration/dataracebench/DRB100-task-reference-orig-no.cpp;main;73;1;;\00", align 1
@3 = private unnamed_addr constant [73 x i8] c";integration/dataracebench/DRB100-task-reference-orig-no.cpp;main;71;1;;\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"warning: a[%d] = %d, not expected %d\0A\00", align 1

; Function Attrs: uwtable
define dso_local void @_Z8gen_taskRi(i32* dereferenceable(4) %i) #0 !dbg !14 {
entry:
  %i.addr = alloca i32*, align 8
  %agg.captured = alloca %struct.anon, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !tbaa !20
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32* %i, i32** %i.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !19, metadata !DIExpression()), !dbg !27
  %4 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !28
  %5 = load i32*, i32** %i.addr, align 8, !dbg !29, !tbaa !26
  store i32* %5, i32** %4, align 8, !dbg !28, !tbaa !26
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !28
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !28, !tbaa !20
  %7 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 48, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !28
  %8 = bitcast i8* %7 to %struct.kmp_task_t_with_privates*, !dbg !28
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %8, i32 0, i32 0, !dbg !28
  %10 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %9, i32 0, i32 0, !dbg !28
  %11 = load i8*, i8** %10, align 8, !dbg !28, !tbaa !30
  %12 = bitcast %struct.anon* %agg.captured to i8*, !dbg !28
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false), !dbg !28, !tbaa.struct !34
  %13 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %8, i32 0, i32 1, !dbg !28
  %14 = bitcast i8* %11 to %struct.anon*, !dbg !28
  %15 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %13, i32 0, i32 0, !dbg !28
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0, !dbg !28
  %17 = load i32*, i32** %16, align 8, !dbg !28, !tbaa !35
  %18 = load i32, i32* %17, align 8, !dbg !37, !tbaa !39
  store i32 %18, i32* %15, align 8, !dbg !28, !tbaa !40
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !28
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @1, i32 0, i32 0), i8** %19, align 8, !dbg !28, !tbaa !20
  %20 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %7), !dbg !28
  ret void, !dbg !41
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #2 !dbg !42 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  %.firstpriv.ptr.addr = alloca i32*, align 8
  %tmp = alloca i32*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !39
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !63, metadata !DIExpression()), !dbg !69
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !64, metadata !DIExpression()), !dbg !69
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !65, metadata !DIExpression()), !dbg !69
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !66, metadata !DIExpression()), !dbg !69
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !67, metadata !DIExpression()), !dbg !69
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !68, metadata !DIExpression()), !dbg !69
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !70
  %1 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr, align 8, !dbg !70
  %2 = load i8*, i8** %.privates..addr, align 8, !dbg !70
  call void (i8*, ...) %1(i8* %2, i32** %.firstpriv.ptr.addr), !dbg !71
  %3 = load i32*, i32** %.firstpriv.ptr.addr, align 8, !dbg !70
  store i32* %3, i32** %tmp, align 8, !dbg !70
  %4 = load i32*, i32** %tmp, align 8, !dbg !72, !tbaa !26
  %5 = load i32, i32* %4, align 4, !dbg !72, !tbaa !39
  %add = add nsw i32 %5, 1, !dbg !74
  %6 = load i32*, i32** %tmp, align 8, !dbg !75, !tbaa !26
  %7 = load i32, i32* %6, align 4, !dbg !75, !tbaa !39
  %idxprom = sext i32 %7 to i64, !dbg !76
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom, !dbg !76
  store i32 %add, i32* %arrayidx, align 4, !dbg !77, !tbaa !39
  ret void, !dbg !78
}

; Function Attrs: alwaysinline uwtable
define internal void @.omp_task_privates_map.(%struct..kmp_privates.t* noalias %0, i32** noalias %1) #3 !dbg !79 {
entry:
  %.addr = alloca %struct..kmp_privates.t*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t* %0, %struct..kmp_privates.t** %.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t** %.addr, metadata !82, metadata !DIExpression()), !dbg !92
  store i32** %1, i32*** %.addr1, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !87, metadata !DIExpression()), !dbg !92
  %2 = load %struct..kmp_privates.t*, %struct..kmp_privates.t** %.addr, align 8, !dbg !93
  %3 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %2, i32 0, i32 0, !dbg !93
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !93
  store i32* %3, i32** %4, align 8, !dbg !93, !tbaa !26
  ret void, !dbg !93
}

; Function Attrs: norecurse uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !94 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !39
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !96, metadata !DIExpression()), !dbg !101
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !97, metadata !DIExpression()), !dbg !101
  %2 = load i32, i32* %.addr, align 4, !dbg !102, !tbaa !39
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !102
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !102
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !102
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !102
  %7 = load i8*, i8** %6, align 8, !dbg !102, !tbaa !30
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !102
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 1, !dbg !102
  %10 = bitcast %struct..kmp_privates.t* %9 to i8*, !dbg !102
  %11 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !102
  call void @.omp_outlined.(i32 %2, i32* %5, i8* %10, void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**)* @.omp_task_privates_map. to void (i8*, ...)*), i8* %11, %struct.anon* %8) #9, !dbg !102
  ret i32 0, !dbg !102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

; Function Attrs: norecurse uwtable
define dso_local i32 @main() #4 !dbg !103 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %i to i8*, !dbg !108
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #9, !dbg !108
  call void @llvm.dbg.declare(metadata i32* %i, metadata !107, metadata !DIExpression()), !dbg !109
  store i32 0, i32* %i, align 4, !dbg !109, !tbaa !39
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !110
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @3, i32 0, i32 0), i8** %3, align 8, !dbg !110, !tbaa !20
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i32* %i), !dbg !110
  store i32 0, i32* %i, align 4, !dbg !111, !tbaa !39
  br label %for.cond, !dbg !113

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !114, !tbaa !39
  %cmp = icmp slt i32 %4, 100, !dbg !116
  br i1 %cmp, label %for.body, label %for.end, !dbg !117

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !118, !tbaa !39
  %idxprom = sext i32 %5 to i64, !dbg !121
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom, !dbg !121
  %6 = load i32, i32* %arrayidx, align 4, !dbg !121, !tbaa !39
  %7 = load i32, i32* %i, align 4, !dbg !122, !tbaa !39
  %add = add nsw i32 %7, 1, !dbg !123
  %cmp1 = icmp ne i32 %6, %add, !dbg !124
  br i1 %cmp1, label %if.then, label %if.end, !dbg !125

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !126, !tbaa !39
  %9 = load i32, i32* %i, align 4, !dbg !128, !tbaa !39
  %idxprom2 = sext i32 %9 to i64, !dbg !129
  %arrayidx3 = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom2, !dbg !129
  %10 = load i32, i32* %arrayidx3, align 4, !dbg !129, !tbaa !39
  %11 = load i32, i32* %i, align 4, !dbg !130, !tbaa !39
  %add4 = add nsw i32 %11, 1, !dbg !131
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %8, i32 %10, i32 %add4), !dbg !132
  br label %if.end, !dbg !133

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !134

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4, !dbg !135, !tbaa !39
  %inc = add nsw i32 %12, 1, !dbg !135
  store i32 %inc, i32* %i, align 4, !dbg !135, !tbaa !39
  br label %for.cond, !dbg !136, !llvm.loop !137

for.end:                                          ; preds = %for.cond
  %13 = bitcast i32* %i to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #9, !dbg !139
  ret i32 0, !dbg !140
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !141 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !145, metadata !DIExpression()), !dbg !148
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !146, metadata !DIExpression()), !dbg !148
  store i32* %i, i32** %i.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !147, metadata !DIExpression()), !dbg !149
  %2 = load i32*, i32** %i.addr, align 8, !dbg !150, !tbaa !26
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !151
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @2, i32 0, i32 0), i8** %3, align 8, !dbg !151, !tbaa !20
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !151
  %5 = load i32, i32* %4, align 4, !dbg !151, !tbaa !39
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !151
  %7 = icmp ne i32 %6, 0, !dbg !151
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !151

omp_if.then:                                      ; preds = %entry
  store i32 0, i32* %2, align 4, !dbg !153, !tbaa !39
  br label %for.cond, !dbg !157

for.cond:                                         ; preds = %for.inc, %omp_if.then
  %8 = load i32, i32* %2, align 4, !dbg !158, !tbaa !39
  %cmp = icmp slt i32 %8, 100, !dbg !160
  br i1 %cmp, label %for.body, label %for.end, !dbg !161

for.body:                                         ; preds = %for.cond
  invoke void @_Z8gen_taskRi(i32* dereferenceable(4) %2)
          to label %invoke.cont unwind label %lpad, !dbg !162

invoke.cont:                                      ; preds = %for.body
  br label %for.inc, !dbg !164

for.inc:                                          ; preds = %invoke.cont
  %9 = load i32, i32* %2, align 4, !dbg !165, !tbaa !39
  %inc = add nsw i32 %9, 1, !dbg !165
  store i32 %inc, i32* %2, align 4, !dbg !165, !tbaa !39
  br label %for.cond, !dbg !166, !llvm.loop !167

lpad:                                             ; preds = %for.body
  %10 = landingpad { i8*, i32 }
          catch i8* null, !dbg !169
  %11 = extractvalue { i8*, i32 } %10, 0, !dbg !169
  store i8* %11, i8** %exn.slot, align 8, !dbg !169
  %12 = extractvalue { i8*, i32 } %10, 1, !dbg !169
  store i32 %12, i32* %ehselector.slot, align 4, !dbg !169
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !170
  br label %terminate.handler, !dbg !170

for.end:                                          ; preds = %for.cond
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !170
  br label %omp_if.end, !dbg !170

omp_if.end:                                       ; preds = %for.end, %entry
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !171
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @2, i32 0, i32 0), i8** %13, align 8, !dbg !171, !tbaa !20
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !171
  ret void, !dbg !172

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !170
  call void @__clang_call_terminate(i8* %exn) #10, !dbg !170
  unreachable, !dbg !170
}

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #7 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #9
  call void @_ZSt9terminatev() #10
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #6 !dbg !173 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !175, metadata !DIExpression()), !dbg !178
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !176, metadata !DIExpression()), !dbg !178
  store i32* %i, i32** %i.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !177, metadata !DIExpression()), !dbg !178
  %0 = load i32*, i32** %i.addr, align 8, !dbg !179, !tbaa !26
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !179, !tbaa !26
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !179, !tbaa !26
  %3 = load i32*, i32** %i.addr, align 8, !dbg !179, !tbaa !26
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #9, !dbg !179
  ret void, !dbg !179
}

declare !callback !180 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #8

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

attributes #0 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline noreturn nounwind }
attributes #8 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 58, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB100-task-reference-orig-no.cpp", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3200, elements: !8)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9}
!9 = !DISubrange(count: 100)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 10.0.1 "}
!14 = distinct !DISubprogram(name: "gen_task", linkageName: "_Z8gen_taskRi", scope: !3, file: !3, line: 60, type: !15, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!18 = !{!19}
!19 = !DILocalVariable(name: "i", arg: 1, scope: !14, file: !3, line: 60, type: !17)
!20 = !{!21, !25, i64 16}
!21 = !{!"_ZTS7ident_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !25, i64 16}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C++ TBAA"}
!25 = !{!"any pointer", !23, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !DILocation(line: 60, column: 20, scope: !14)
!28 = !DILocation(line: 62, column: 1, scope: !14)
!29 = !DILocation(line: 64, column: 7, scope: !14)
!30 = !{!31, !25, i64 0}
!31 = !{!"_ZTS24kmp_task_t_with_privates", !32, i64 0, !33, i64 40}
!32 = !{!"_ZTS10kmp_task_t", !25, i64 0, !25, i64 8, !22, i64 16, !23, i64 24, !23, i64 32}
!33 = !{!"_ZTS15.kmp_privates.t", !22, i64 0}
!34 = !{i64 0, i64 8, !26}
!35 = !{!36, !25, i64 0}
!36 = !{!"_ZTSZ8gen_taskRiE3$_0", !25, i64 0}
!37 = !DILocation(line: 64, column: 7, scope: !38)
!38 = distinct !DILexicalBlock(scope: !14, file: !3, line: 62, column: 1)
!39 = !{!22, !22, i64 0}
!40 = !{!31, !22, i64 40}
!41 = !DILocation(line: 66, column: 1, scope: !14)
!42 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 64, type: !43, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !62)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !45, !46, !49, !52, !57, !58}
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !49, null}
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DICompositeType(tag: DW_TAG_structure_type, scope: !14, file: !3, line: 62, flags: DIFlagFwdDecl)
!62 = !{!63, !64, !65, !66, !67, !68}
!63 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !42, type: !45, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !42, type: !46, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: ".privates.", arg: 3, scope: !42, type: !49, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !42, type: !52, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !42, type: !57, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: "__context", arg: 6, scope: !42, type: !58, flags: DIFlagArtificial)
!69 = !DILocation(line: 0, scope: !42)
!70 = !DILocation(line: 63, column: 3, scope: !42)
!71 = !DILocation(line: 62, column: 1, scope: !42)
!72 = !DILocation(line: 64, column: 11, scope: !73)
!73 = distinct !DILexicalBlock(scope: !42, file: !3, line: 63, column: 3)
!74 = !DILocation(line: 64, column: 12, scope: !73)
!75 = !DILocation(line: 64, column: 7, scope: !73)
!76 = !DILocation(line: 64, column: 5, scope: !73)
!77 = !DILocation(line: 64, column: 9, scope: !73)
!78 = !DILocation(line: 65, column: 3, scope: !42)
!79 = distinct !DISubprogram(linkageName: ".omp_task_privates_map.", scope: !3, file: !3, line: 62, type: !80, scopeLine: 62, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !81)
!80 = !DISubroutineType(types: !4)
!81 = !{!82, !87}
!82 = !DILocalVariable(arg: 1, scope: !79, type: !83, flags: DIFlagArtificial)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, flags: DIFlagFwdDecl, identifier: "_ZTS15.kmp_privates.t")
!87 = !DILocalVariable(arg: 2, scope: !79, type: !88, flags: DIFlagArtificial)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!92 = !DILocation(line: 0, scope: !79)
!93 = !DILocation(line: 62, column: 1, scope: !79)
!94 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 62, type: !80, scopeLine: 62, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !95)
!95 = !{!96, !97}
!96 = !DILocalVariable(arg: 1, scope: !94, type: !7, flags: DIFlagArtificial)
!97 = !DILocalVariable(arg: 2, scope: !94, type: !98, flags: DIFlagArtificial)
!98 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, flags: DIFlagFwdDecl, identifier: "_ZTS24kmp_task_t_with_privates")
!101 = !DILocation(line: 0, scope: !94)
!102 = !DILocation(line: 62, column: 1, scope: !94)
!103 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 68, type: !104, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !106)
!104 = !DISubroutineType(types: !105)
!105 = !{!7}
!106 = !{!107}
!107 = !DILocalVariable(name: "i", scope: !103, file: !3, line: 70, type: !7)
!108 = !DILocation(line: 70, column: 3, scope: !103)
!109 = !DILocation(line: 70, column: 7, scope: !103)
!110 = !DILocation(line: 71, column: 1, scope: !103)
!111 = !DILocation(line: 83, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !103, file: !3, line: 83, column: 3)
!113 = !DILocation(line: 83, column: 8, scope: !112)
!114 = !DILocation(line: 83, column: 13, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !3, line: 83, column: 3)
!116 = !DILocation(line: 83, column: 14, scope: !115)
!117 = !DILocation(line: 83, column: 3, scope: !112)
!118 = !DILocation(line: 86, column: 11, scope: !119)
!119 = distinct !DILexicalBlock(scope: !120, file: !3, line: 86, column: 9)
!120 = distinct !DILexicalBlock(scope: !115, file: !3, line: 84, column: 3)
!121 = !DILocation(line: 86, column: 9, scope: !119)
!122 = !DILocation(line: 86, column: 16, scope: !119)
!123 = !DILocation(line: 86, column: 17, scope: !119)
!124 = !DILocation(line: 86, column: 13, scope: !119)
!125 = !DILocation(line: 86, column: 9, scope: !120)
!126 = !DILocation(line: 88, column: 56, scope: !127)
!127 = distinct !DILexicalBlock(scope: !119, file: !3, line: 87, column: 5)
!128 = !DILocation(line: 88, column: 61, scope: !127)
!129 = !DILocation(line: 88, column: 59, scope: !127)
!130 = !DILocation(line: 88, column: 65, scope: !127)
!131 = !DILocation(line: 88, column: 66, scope: !127)
!132 = !DILocation(line: 88, column: 7, scope: !127)
!133 = !DILocation(line: 89, column: 5, scope: !127)
!134 = !DILocation(line: 90, column: 3, scope: !120)
!135 = !DILocation(line: 83, column: 23, scope: !115)
!136 = !DILocation(line: 83, column: 3, scope: !115)
!137 = distinct !{!137, !117, !138}
!138 = !DILocation(line: 90, column: 3, scope: !112)
!139 = !DILocation(line: 92, column: 1, scope: !103)
!140 = !DILocation(line: 91, column: 3, scope: !103)
!141 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 72, type: !142, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !144)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !46, !46, !17}
!144 = !{!145, !146, !147}
!145 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !141, type: !46, flags: DIFlagArtificial)
!146 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !141, type: !46, flags: DIFlagArtificial)
!147 = !DILocalVariable(name: "i", arg: 3, scope: !141, file: !3, line: 70, type: !17)
!148 = !DILocation(line: 0, scope: !141)
!149 = !DILocation(line: 70, column: 7, scope: !141)
!150 = !DILocation(line: 72, column: 3, scope: !141)
!151 = !DILocation(line: 73, column: 1, scope: !152)
!152 = distinct !DILexicalBlock(scope: !141, file: !3, line: 72, column: 3)
!153 = !DILocation(line: 75, column: 13, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !3, line: 75, column: 7)
!155 = distinct !DILexicalBlock(scope: !156, file: !3, line: 74, column: 5)
!156 = distinct !DILexicalBlock(scope: !152, file: !3, line: 73, column: 1)
!157 = !DILocation(line: 75, column: 12, scope: !154)
!158 = !DILocation(line: 75, column: 17, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !3, line: 75, column: 7)
!160 = !DILocation(line: 75, column: 18, scope: !159)
!161 = !DILocation(line: 75, column: 7, scope: !154)
!162 = !DILocation(line: 77, column: 9, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !3, line: 76, column: 7)
!164 = !DILocation(line: 78, column: 7, scope: !163)
!165 = !DILocation(line: 75, column: 27, scope: !159)
!166 = !DILocation(line: 75, column: 7, scope: !159)
!167 = distinct !{!167, !161, !168}
!168 = !DILocation(line: 78, column: 7, scope: !154)
!169 = !DILocation(line: 0, scope: !163)
!170 = !DILocation(line: 79, column: 5, scope: !155)
!171 = !DILocation(line: 73, column: 19, scope: !156)
!172 = !DILocation(line: 80, column: 3, scope: !141)
!173 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 72, type: !142, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !174)
!174 = !{!175, !176, !177}
!175 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !173, type: !46, flags: DIFlagArtificial)
!176 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !173, type: !46, flags: DIFlagArtificial)
!177 = !DILocalVariable(name: "i", arg: 3, scope: !173, type: !17, flags: DIFlagArtificial)
!178 = !DILocation(line: 0, scope: !173)
!179 = !DILocation(line: 72, column: 3, scope: !173)
!180 = !{!181}
!181 = !{i64 2, i64 -1, i64 -1, i1 true}
