; ModuleID = 'integration/dataracebench/DRB101-task-value-orig-no.cpp'
source_filename = "integration/dataracebench/DRB101-task-value-orig-no.cpp"
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
@1 = private unnamed_addr constant [73 x i8] c";integration/dataracebench/DRB101-task-value-orig-no.cpp;gen_task;58;1;;\00", align 1
@2 = private unnamed_addr constant [69 x i8] c";integration/dataracebench/DRB101-task-value-orig-no.cpp;main;69;1;;\00", align 1
@3 = private unnamed_addr constant [69 x i8] c";integration/dataracebench/DRB101-task-value-orig-no.cpp;main;67;1;;\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"warning: a[%d] = %d, not expected %d\0A\00", align 1

; Function Attrs: uwtable
define dso_local void @_Z8gen_taski(i32 %i) #0 !dbg !14 {
entry:
  %i.addr = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !tbaa !19
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 %i, i32* %i.addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !18, metadata !DIExpression()), !dbg !26
  %4 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !27
  store i32* %i.addr, i32** %4, align 8, !dbg !27, !tbaa !28
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !27
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !27, !tbaa !19
  %6 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 48, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !27
  %7 = bitcast i8* %6 to %struct.kmp_task_t_with_privates*, !dbg !27
  %8 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %7, i32 0, i32 0, !dbg !27
  %9 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %8, i32 0, i32 0, !dbg !27
  %10 = load i8*, i8** %9, align 8, !dbg !27, !tbaa !29
  %11 = bitcast %struct.anon* %agg.captured to i8*, !dbg !27
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false), !dbg !27, !tbaa.struct !33
  %12 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %7, i32 0, i32 1, !dbg !27
  %13 = bitcast i8* %10 to %struct.anon*, !dbg !27
  %14 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %12, i32 0, i32 0, !dbg !27
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0, !dbg !27
  %16 = load i32*, i32** %15, align 8, !dbg !27, !tbaa !34
  %17 = load i32, i32* %16, align 4, !dbg !36, !tbaa !25
  store i32 %17, i32* %14, align 8, !dbg !27, !tbaa !38
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !27
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @1, i32 0, i32 0), i8** %18, align 8, !dbg !27, !tbaa !19
  %19 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %6), !dbg !27
  ret void, !dbg !39
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #2 !dbg !40 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  %.firstpriv.ptr.addr = alloca i32*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !61, metadata !DIExpression()), !dbg !67
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !62, metadata !DIExpression()), !dbg !67
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !63, metadata !DIExpression()), !dbg !67
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !64, metadata !DIExpression()), !dbg !67
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !65, metadata !DIExpression()), !dbg !67
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !66, metadata !DIExpression()), !dbg !67
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !68
  %1 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr, align 8, !dbg !68
  %2 = load i8*, i8** %.privates..addr, align 8, !dbg !68
  call void (i8*, ...) %1(i8* %2, i32** %.firstpriv.ptr.addr), !dbg !69
  %3 = load i32*, i32** %.firstpriv.ptr.addr, align 8, !dbg !68
  %4 = load i32, i32* %3, align 4, !dbg !70, !tbaa !25
  %add = add nsw i32 %4, 1, !dbg !72
  %5 = load i32, i32* %3, align 4, !dbg !73, !tbaa !25
  %idxprom = sext i32 %5 to i64, !dbg !74
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom, !dbg !74
  store i32 %add, i32* %arrayidx, align 4, !dbg !75, !tbaa !25
  ret void, !dbg !76
}

; Function Attrs: alwaysinline uwtable
define internal void @.omp_task_privates_map.(%struct..kmp_privates.t* noalias %0, i32** noalias %1) #3 !dbg !77 {
entry:
  %.addr = alloca %struct..kmp_privates.t*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t* %0, %struct..kmp_privates.t** %.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t** %.addr, metadata !80, metadata !DIExpression()), !dbg !90
  store i32** %1, i32*** %.addr1, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !85, metadata !DIExpression()), !dbg !90
  %2 = load %struct..kmp_privates.t*, %struct..kmp_privates.t** %.addr, align 8, !dbg !91
  %3 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %2, i32 0, i32 0, !dbg !91
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !91
  store i32* %3, i32** %4, align 8, !dbg !91, !tbaa !28
  ret void, !dbg !91
}

; Function Attrs: norecurse uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !92 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !94, metadata !DIExpression()), !dbg !99
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !95, metadata !DIExpression()), !dbg !99
  %2 = load i32, i32* %.addr, align 4, !dbg !100, !tbaa !25
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !100
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !100
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !100
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !100
  %7 = load i8*, i8** %6, align 8, !dbg !100, !tbaa !29
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !100
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 1, !dbg !100
  %10 = bitcast %struct..kmp_privates.t* %9 to i8*, !dbg !100
  %11 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !100
  call void @.omp_outlined.(i32 %2, i32* %5, i8* %10, void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**)* @.omp_task_privates_map. to void (i8*, ...)*), i8* %11, %struct.anon* %8) #9, !dbg !100
  ret i32 0, !dbg !100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

; Function Attrs: norecurse uwtable
define dso_local i32 @main() #4 !dbg !101 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %i to i8*, !dbg !106
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #9, !dbg !106
  call void @llvm.dbg.declare(metadata i32* %i, metadata !105, metadata !DIExpression()), !dbg !107
  store i32 0, i32* %i, align 4, !dbg !107, !tbaa !25
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !108
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @3, i32 0, i32 0), i8** %3, align 8, !dbg !108, !tbaa !19
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i32* %i), !dbg !108
  store i32 0, i32* %i, align 4, !dbg !109, !tbaa !25
  br label %for.cond, !dbg !111

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !112, !tbaa !25
  %cmp = icmp slt i32 %4, 100, !dbg !114
  br i1 %cmp, label %for.body, label %for.end, !dbg !115

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !116, !tbaa !25
  %idxprom = sext i32 %5 to i64, !dbg !119
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom, !dbg !119
  %6 = load i32, i32* %arrayidx, align 4, !dbg !119, !tbaa !25
  %7 = load i32, i32* %i, align 4, !dbg !120, !tbaa !25
  %add = add nsw i32 %7, 1, !dbg !121
  %cmp1 = icmp ne i32 %6, %add, !dbg !122
  br i1 %cmp1, label %if.then, label %if.end, !dbg !123

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !124, !tbaa !25
  %9 = load i32, i32* %i, align 4, !dbg !126, !tbaa !25
  %idxprom2 = sext i32 %9 to i64, !dbg !127
  %arrayidx3 = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom2, !dbg !127
  %10 = load i32, i32* %arrayidx3, align 4, !dbg !127, !tbaa !25
  %11 = load i32, i32* %i, align 4, !dbg !128, !tbaa !25
  %add4 = add nsw i32 %11, 1, !dbg !129
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %8, i32 %10, i32 %add4), !dbg !130
  br label %if.end, !dbg !131

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !132

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4, !dbg !133, !tbaa !25
  %inc = add nsw i32 %12, 1, !dbg !133
  store i32 %inc, i32* %i, align 4, !dbg !133, !tbaa !25
  br label %for.cond, !dbg !134, !llvm.loop !135

for.end:                                          ; preds = %for.cond
  %13 = bitcast i32* %i to i8*, !dbg !137
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #9, !dbg !137
  ret i32 0, !dbg !138
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !139 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !144, metadata !DIExpression()), !dbg !147
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !145, metadata !DIExpression()), !dbg !147
  store i32* %i, i32** %i.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !146, metadata !DIExpression()), !dbg !148
  %2 = load i32*, i32** %i.addr, align 8, !dbg !149, !tbaa !28
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !150
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @2, i32 0, i32 0), i8** %3, align 8, !dbg !150, !tbaa !19
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !150
  %5 = load i32, i32* %4, align 4, !dbg !150, !tbaa !25
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !150
  %7 = icmp ne i32 %6, 0, !dbg !150
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !150

omp_if.then:                                      ; preds = %entry
  store i32 0, i32* %2, align 4, !dbg !152, !tbaa !25
  br label %for.cond, !dbg !156

for.cond:                                         ; preds = %for.inc, %omp_if.then
  %8 = load i32, i32* %2, align 4, !dbg !157, !tbaa !25
  %cmp = icmp slt i32 %8, 100, !dbg !159
  br i1 %cmp, label %for.body, label %for.end, !dbg !160

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %2, align 4, !dbg !161, !tbaa !25
  invoke void @_Z8gen_taski(i32 %9)
          to label %invoke.cont unwind label %lpad, !dbg !163

invoke.cont:                                      ; preds = %for.body
  br label %for.inc, !dbg !164

for.inc:                                          ; preds = %invoke.cont
  %10 = load i32, i32* %2, align 4, !dbg !165, !tbaa !25
  %inc = add nsw i32 %10, 1, !dbg !165
  store i32 %inc, i32* %2, align 4, !dbg !165, !tbaa !25
  br label %for.cond, !dbg !166, !llvm.loop !167

lpad:                                             ; preds = %for.body
  %11 = landingpad { i8*, i32 }
          catch i8* null, !dbg !169
  %12 = extractvalue { i8*, i32 } %11, 0, !dbg !169
  store i8* %12, i8** %exn.slot, align 8, !dbg !169
  %13 = extractvalue { i8*, i32 } %11, 1, !dbg !169
  store i32 %13, i32* %ehselector.slot, align 4, !dbg !169
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !170
  br label %terminate.handler, !dbg !170

for.end:                                          ; preds = %for.cond
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !170
  br label %omp_if.end, !dbg !170

omp_if.end:                                       ; preds = %for.end, %entry
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !171
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @2, i32 0, i32 0), i8** %14, align 8, !dbg !171, !tbaa !19
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !175, metadata !DIExpression()), !dbg !178
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !176, metadata !DIExpression()), !dbg !178
  store i32* %i, i32** %i.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !177, metadata !DIExpression()), !dbg !178
  %0 = load i32*, i32** %i.addr, align 8, !dbg !179, !tbaa !28
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !179, !tbaa !28
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !179, !tbaa !28
  %3 = load i32*, i32** %i.addr, align 8, !dbg !179, !tbaa !28
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
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 54, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB101-task-value-orig-no.cpp", directory: "/home/brad/Code/OpenRace/tests/data")
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
!14 = distinct !DISubprogram(name: "gen_task", linkageName: "_Z8gen_taski", scope: !3, file: !3, line: 56, type: !15, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !7}
!17 = !{!18}
!18 = !DILocalVariable(name: "i", arg: 1, scope: !14, file: !3, line: 56, type: !7)
!19 = !{!20, !24, i64 16}
!20 = !{!"_ZTS7ident_t", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !24, i64 16}
!21 = !{!"int", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C++ TBAA"}
!24 = !{!"any pointer", !22, i64 0}
!25 = !{!21, !21, i64 0}
!26 = !DILocation(line: 56, column: 19, scope: !14)
!27 = !DILocation(line: 58, column: 1, scope: !14)
!28 = !{!24, !24, i64 0}
!29 = !{!30, !24, i64 0}
!30 = !{!"_ZTS24kmp_task_t_with_privates", !31, i64 0, !32, i64 40}
!31 = !{!"_ZTS10kmp_task_t", !24, i64 0, !24, i64 8, !21, i64 16, !22, i64 24, !22, i64 32}
!32 = !{!"_ZTS15.kmp_privates.t", !21, i64 0}
!33 = !{i64 0, i64 8, !28}
!34 = !{!35, !24, i64 0}
!35 = !{!"_ZTSZ8gen_taskiE3$_0", !24, i64 0}
!36 = !DILocation(line: 60, column: 7, scope: !37)
!37 = distinct !DILexicalBlock(scope: !14, file: !3, line: 58, column: 1)
!38 = !{!30, !21, i64 40}
!39 = !DILocation(line: 62, column: 1, scope: !14)
!40 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 60, type: !41, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !60)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43, !44, !47, !50, !55, !56}
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !47, null}
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, scope: !14, file: !3, line: 58, flags: DIFlagFwdDecl)
!60 = !{!61, !62, !63, !64, !65, !66}
!61 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !40, type: !43, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !40, type: !44, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: ".privates.", arg: 3, scope: !40, type: !47, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !40, type: !50, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !40, type: !55, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: "__context", arg: 6, scope: !40, type: !56, flags: DIFlagArtificial)
!67 = !DILocation(line: 0, scope: !40)
!68 = !DILocation(line: 59, column: 3, scope: !40)
!69 = !DILocation(line: 58, column: 1, scope: !40)
!70 = !DILocation(line: 60, column: 11, scope: !71)
!71 = distinct !DILexicalBlock(scope: !40, file: !3, line: 59, column: 3)
!72 = !DILocation(line: 60, column: 12, scope: !71)
!73 = !DILocation(line: 60, column: 7, scope: !71)
!74 = !DILocation(line: 60, column: 5, scope: !71)
!75 = !DILocation(line: 60, column: 9, scope: !71)
!76 = !DILocation(line: 61, column: 3, scope: !40)
!77 = distinct !DISubprogram(linkageName: ".omp_task_privates_map.", scope: !3, file: !3, line: 58, type: !78, scopeLine: 58, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !79)
!78 = !DISubroutineType(types: !4)
!79 = !{!80, !85}
!80 = !DILocalVariable(arg: 1, scope: !77, type: !81, flags: DIFlagArtificial)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, flags: DIFlagFwdDecl, identifier: "_ZTS15.kmp_privates.t")
!85 = !DILocalVariable(arg: 2, scope: !77, type: !86, flags: DIFlagArtificial)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!90 = !DILocation(line: 0, scope: !77)
!91 = !DILocation(line: 58, column: 1, scope: !77)
!92 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 58, type: !78, scopeLine: 58, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !93)
!93 = !{!94, !95}
!94 = !DILocalVariable(arg: 1, scope: !92, type: !7, flags: DIFlagArtificial)
!95 = !DILocalVariable(arg: 2, scope: !92, type: !96, flags: DIFlagArtificial)
!96 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, flags: DIFlagFwdDecl, identifier: "_ZTS24kmp_task_t_with_privates")
!99 = !DILocation(line: 0, scope: !92)
!100 = !DILocation(line: 58, column: 1, scope: !92)
!101 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 64, type: !102, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !104)
!102 = !DISubroutineType(types: !103)
!103 = !{!7}
!104 = !{!105}
!105 = !DILocalVariable(name: "i", scope: !101, file: !3, line: 66, type: !7)
!106 = !DILocation(line: 66, column: 3, scope: !101)
!107 = !DILocation(line: 66, column: 7, scope: !101)
!108 = !DILocation(line: 67, column: 1, scope: !101)
!109 = !DILocation(line: 79, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !101, file: !3, line: 79, column: 3)
!111 = !DILocation(line: 79, column: 8, scope: !110)
!112 = !DILocation(line: 79, column: 13, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !3, line: 79, column: 3)
!114 = !DILocation(line: 79, column: 14, scope: !113)
!115 = !DILocation(line: 79, column: 3, scope: !110)
!116 = !DILocation(line: 82, column: 11, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !3, line: 82, column: 9)
!118 = distinct !DILexicalBlock(scope: !113, file: !3, line: 80, column: 3)
!119 = !DILocation(line: 82, column: 9, scope: !117)
!120 = !DILocation(line: 82, column: 16, scope: !117)
!121 = !DILocation(line: 82, column: 17, scope: !117)
!122 = !DILocation(line: 82, column: 13, scope: !117)
!123 = !DILocation(line: 82, column: 9, scope: !118)
!124 = !DILocation(line: 84, column: 56, scope: !125)
!125 = distinct !DILexicalBlock(scope: !117, file: !3, line: 83, column: 5)
!126 = !DILocation(line: 84, column: 61, scope: !125)
!127 = !DILocation(line: 84, column: 59, scope: !125)
!128 = !DILocation(line: 84, column: 65, scope: !125)
!129 = !DILocation(line: 84, column: 66, scope: !125)
!130 = !DILocation(line: 84, column: 7, scope: !125)
!131 = !DILocation(line: 85, column: 5, scope: !125)
!132 = !DILocation(line: 86, column: 3, scope: !118)
!133 = !DILocation(line: 79, column: 23, scope: !113)
!134 = !DILocation(line: 79, column: 3, scope: !113)
!135 = distinct !{!135, !115, !136}
!136 = !DILocation(line: 86, column: 3, scope: !110)
!137 = !DILocation(line: 88, column: 1, scope: !101)
!138 = !DILocation(line: 87, column: 3, scope: !101)
!139 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 68, type: !140, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !143)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !44, !44, !142}
!142 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!143 = !{!144, !145, !146}
!144 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !139, type: !44, flags: DIFlagArtificial)
!145 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !139, type: !44, flags: DIFlagArtificial)
!146 = !DILocalVariable(name: "i", arg: 3, scope: !139, file: !3, line: 66, type: !142)
!147 = !DILocation(line: 0, scope: !139)
!148 = !DILocation(line: 66, column: 7, scope: !139)
!149 = !DILocation(line: 68, column: 3, scope: !139)
!150 = !DILocation(line: 69, column: 1, scope: !151)
!151 = distinct !DILexicalBlock(scope: !139, file: !3, line: 68, column: 3)
!152 = !DILocation(line: 71, column: 13, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !3, line: 71, column: 7)
!154 = distinct !DILexicalBlock(scope: !155, file: !3, line: 70, column: 5)
!155 = distinct !DILexicalBlock(scope: !151, file: !3, line: 69, column: 1)
!156 = !DILocation(line: 71, column: 12, scope: !153)
!157 = !DILocation(line: 71, column: 17, scope: !158)
!158 = distinct !DILexicalBlock(scope: !153, file: !3, line: 71, column: 7)
!159 = !DILocation(line: 71, column: 18, scope: !158)
!160 = !DILocation(line: 71, column: 7, scope: !153)
!161 = !DILocation(line: 73, column: 18, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !3, line: 72, column: 7)
!163 = !DILocation(line: 73, column: 9, scope: !162)
!164 = !DILocation(line: 74, column: 7, scope: !162)
!165 = !DILocation(line: 71, column: 27, scope: !158)
!166 = !DILocation(line: 71, column: 7, scope: !158)
!167 = distinct !{!167, !160, !168}
!168 = !DILocation(line: 74, column: 7, scope: !153)
!169 = !DILocation(line: 0, scope: !162)
!170 = !DILocation(line: 75, column: 5, scope: !154)
!171 = !DILocation(line: 69, column: 19, scope: !155)
!172 = !DILocation(line: 76, column: 3, scope: !139)
!173 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 68, type: !140, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !174)
!174 = !{!175, !176, !177}
!175 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !173, type: !44, flags: DIFlagArtificial)
!176 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !173, type: !44, flags: DIFlagArtificial)
!177 = !DILocalVariable(name: "i", arg: 3, scope: !173, type: !142, flags: DIFlagArtificial)
!178 = !DILocation(line: 0, scope: !173)
!179 = !DILocation(line: 68, column: 3, scope: !173)
!180 = !{!181}
!181 = !{i64 2, i64 -1, i64 -1, i1 true}
