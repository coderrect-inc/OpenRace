; ModuleID = 'DRB101-task-value-orig-no.cpp'
source_filename = "DRB101-task-value-orig-no.cpp"
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
@1 = private unnamed_addr constant [47 x i8] c";DRB101-task-value-orig-no.cpp;gen_task;58;1;;\00", align 1
@2 = private unnamed_addr constant [43 x i8] c";DRB101-task-value-orig-no.cpp;main;69;1;;\00", align 1
@3 = private unnamed_addr constant [43 x i8] c";DRB101-task-value-orig-no.cpp;main;67;1;;\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"warning: a[%d] = %d, not expected %d\0A\00", align 1

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z8gen_taski(i32 %i) #0 !dbg !14 {
entry:
  %i.addr = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1, i32 0, i32 0), i8** %2, align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !17, metadata !DIExpression()), !dbg !18
  %4 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !19
  store i32* %i.addr, i32** %4, align 8, !dbg !19
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !19
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !19
  %6 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 48, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !19
  %7 = bitcast i8* %6 to %struct.kmp_task_t_with_privates*, !dbg !19
  %8 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %7, i32 0, i32 0, !dbg !19
  %9 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %8, i32 0, i32 0, !dbg !19
  %10 = load i8*, i8** %9, align 8, !dbg !19
  %11 = bitcast %struct.anon* %agg.captured to i8*, !dbg !19
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false), !dbg !19
  %12 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %7, i32 0, i32 1, !dbg !19
  %13 = bitcast i8* %10 to %struct.anon*, !dbg !19
  %14 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %12, i32 0, i32 0, !dbg !19
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0, !dbg !19
  %16 = load i32*, i32** %15, align 8, !dbg !19
  %17 = load i32, i32* %16, align 4, !dbg !20
  store i32 %17, i32* %14, align 8, !dbg !19
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !19
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1, i32 0, i32 0), i8** %18, align 8, !dbg !19
  %19 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %6), !dbg !19
  ret void, !dbg !22
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline uwtable
define internal void @.omp_task_privates_map.(%struct..kmp_privates.t* noalias %0, i32** noalias %1) #2 !dbg !23 {
entry:
  %.addr = alloca %struct..kmp_privates.t*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t* %0, %struct..kmp_privates.t** %.addr, align 8
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t** %.addr, metadata !25, metadata !DIExpression()), !dbg !30
  store i32** %1, i32*** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !31, metadata !DIExpression()), !dbg !30
  %2 = load %struct..kmp_privates.t*, %struct..kmp_privates.t** %.addr, align 8, !dbg !36
  %3 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %2, i32 0, i32 0, !dbg !36
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !36
  store i32* %3, i32** %4, align 8, !dbg !36
  ret void, !dbg !36
}

; Function Attrs: noinline norecurse uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !37 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !38, metadata !DIExpression()), !dbg !59
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !61, metadata !DIExpression()), !dbg !59
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !62, metadata !DIExpression()), !dbg !59
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !63, metadata !DIExpression()), !dbg !59
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !64, metadata !DIExpression()), !dbg !59
  %__context.addr.i = alloca %struct.anon*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr.i, metadata !65, metadata !DIExpression()), !dbg !59
  %.firstpriv.ptr.addr.i = alloca i32*, align 8
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !66, metadata !DIExpression()), !dbg !67
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !68, metadata !DIExpression()), !dbg !67
  %2 = load i32, i32* %.addr, align 4, !dbg !72
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !72
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !72
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !72
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !72
  %7 = load i8*, i8** %6, align 8, !dbg !72
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !72
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 1, !dbg !72
  %10 = bitcast %struct..kmp_privates.t* %9 to i8*, !dbg !72
  %11 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !72
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !73
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !73
  store i8* %10, i8** %.privates..addr.i, align 8, !noalias !73
  store void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**)* @.omp_task_privates_map. to void (i8*, ...)*), void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !73
  store i8* %11, i8** %.task_t..addr.i, align 8, !noalias !73
  store %struct.anon* %8, %struct.anon** %__context.addr.i, align 8, !noalias !73
  %12 = load %struct.anon*, %struct.anon** %__context.addr.i, align 8, !dbg !79, !noalias !73
  %13 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr.i, align 8, !dbg !79, !noalias !73
  %14 = load i8*, i8** %.privates..addr.i, align 8, !dbg !79, !noalias !73
  call void (i8*, ...) %13(i8* %14, i32** %.firstpriv.ptr.addr.i) #9, !dbg !80
  %15 = load i32*, i32** %.firstpriv.ptr.addr.i, align 8, !dbg !79, !noalias !73
  %16 = load i32, i32* %15, align 4, !dbg !81
  %add.i = add nsw i32 %16, 1, !dbg !83
  %17 = load i32, i32* %15, align 4, !dbg !84
  %idxprom.i = sext i32 %17 to i64, !dbg !85
  %arrayidx.i = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom.i, !dbg !85
  store i32 %add.i, i32* %arrayidx.i, align 4, !dbg !86
  ret i32 0, !dbg !72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main() #5 !dbg !87 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !90, metadata !DIExpression()), !dbg !91
  store i32 0, i32* %i, align 4, !dbg !91
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !92
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @3, i32 0, i32 0), i8** %2, align 8, !dbg !92
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i32* %i), !dbg !92
  store i32 0, i32* %i, align 4, !dbg !93
  br label %for.cond, !dbg !95

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !96
  %cmp = icmp slt i32 %3, 100, !dbg !98
  br i1 %cmp, label %for.body, label %for.end, !dbg !99

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !100
  %idxprom = sext i32 %4 to i64, !dbg !103
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom, !dbg !103
  %5 = load i32, i32* %arrayidx, align 4, !dbg !103
  %6 = load i32, i32* %i, align 4, !dbg !104
  %add = add nsw i32 %6, 1, !dbg !105
  %cmp1 = icmp ne i32 %5, %add, !dbg !106
  br i1 %cmp1, label %if.then, label %if.end, !dbg !107

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !108
  %8 = load i32, i32* %i, align 4, !dbg !110
  %idxprom2 = sext i32 %8 to i64, !dbg !111
  %arrayidx3 = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom2, !dbg !111
  %9 = load i32, i32* %arrayidx3, align 4, !dbg !111
  %10 = load i32, i32* %i, align 4, !dbg !112
  %add4 = add nsw i32 %10, 1, !dbg !113
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %7, i32 %9, i32 %add4), !dbg !114
  br label %if.end, !dbg !115

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !116

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4, !dbg !117
  %inc = add nsw i32 %11, 1, !dbg !117
  store i32 %inc, i32* %i, align 4, !dbg !117
  br label %for.cond, !dbg !118, !llvm.loop !119

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !121
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !122 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !126, metadata !DIExpression()), !dbg !127
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !128, metadata !DIExpression()), !dbg !127
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !129, metadata !DIExpression()), !dbg !130
  %2 = load i32*, i32** %i.addr, align 8, !dbg !131
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !132
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0), i8** %3, align 8, !dbg !132
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !132
  %5 = load i32, i32* %4, align 4, !dbg !132
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !132
  %7 = icmp ne i32 %6, 0, !dbg !132
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !132

omp_if.then:                                      ; preds = %entry
  store i32 0, i32* %2, align 4, !dbg !134
  br label %for.cond, !dbg !138

for.cond:                                         ; preds = %for.inc, %omp_if.then
  %8 = load i32, i32* %2, align 4, !dbg !139
  %cmp = icmp slt i32 %8, 100, !dbg !141
  br i1 %cmp, label %for.body, label %for.end, !dbg !142

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %2, align 4, !dbg !143
  invoke void @_Z8gen_taski(i32 %9)
          to label %invoke.cont unwind label %lpad, !dbg !145

invoke.cont:                                      ; preds = %for.body
  br label %for.inc, !dbg !146

for.inc:                                          ; preds = %invoke.cont
  %10 = load i32, i32* %2, align 4, !dbg !147
  %inc = add nsw i32 %10, 1, !dbg !147
  store i32 %inc, i32* %2, align 4, !dbg !147
  br label %for.cond, !dbg !148, !llvm.loop !149

lpad:                                             ; preds = %for.body
  %11 = landingpad { i8*, i32 }
          catch i8* null, !dbg !151
  %12 = extractvalue { i8*, i32 } %11, 0, !dbg !151
  store i8* %12, i8** %exn.slot, align 8, !dbg !151
  %13 = extractvalue { i8*, i32 } %11, 1, !dbg !151
  store i32 %13, i32* %ehselector.slot, align 4, !dbg !151
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !152
  br label %terminate.handler, !dbg !152

for.end:                                          ; preds = %for.cond
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !152
  br label %omp_if.end, !dbg !152

omp_if.end:                                       ; preds = %for.end, %entry
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !153
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0), i8** %14, align 8, !dbg !153
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !153
  ret void, !dbg !154

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !152
  call void @__clang_call_terminate(i8* %exn) #10, !dbg !152
  unreachable, !dbg !152
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

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #6 !dbg !155 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !156, metadata !DIExpression()), !dbg !157
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !158, metadata !DIExpression()), !dbg !157
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !159, metadata !DIExpression()), !dbg !157
  %0 = load i32*, i32** %i.addr, align 8, !dbg !160
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !160
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !160
  %3 = load i32*, i32** %i.addr, align 8, !dbg !160
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #9, !dbg !160
  ret void, !dbg !160
}

declare !callback !161 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #8

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline noreturn nounwind }
attributes #8 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 54, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB101-task-value-orig-no.cpp", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
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
!14 = distinct !DISubprogram(name: "gen_task", linkageName: "_Z8gen_taski", scope: !3, file: !3, line: 56, type: !15, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !7}
!17 = !DILocalVariable(name: "i", arg: 1, scope: !14, file: !3, line: 56, type: !7)
!18 = !DILocation(line: 56, column: 19, scope: !14)
!19 = !DILocation(line: 58, column: 1, scope: !14)
!20 = !DILocation(line: 60, column: 7, scope: !21)
!21 = distinct !DILexicalBlock(scope: !14, file: !3, line: 58, column: 1)
!22 = !DILocation(line: 62, column: 1, scope: !14)
!23 = distinct !DISubprogram(linkageName: ".omp_task_privates_map.", scope: !3, file: !3, line: 58, type: !24, scopeLine: 58, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!24 = !DISubroutineType(types: !4)
!25 = !DILocalVariable(arg: 1, scope: !23, type: !26, flags: DIFlagArtificial)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, flags: DIFlagFwdDecl, identifier: "_ZTS15.kmp_privates.t")
!30 = !DILocation(line: 0, scope: !23)
!31 = !DILocalVariable(arg: 2, scope: !23, type: !32, flags: DIFlagArtificial)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!36 = !DILocation(line: 58, column: 1, scope: !23)
!37 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 58, type: !24, scopeLine: 58, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!38 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !39, type: !42, flags: DIFlagArtificial)
!39 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 60, type: !40, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !43, !46, !49, !54, !55}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !46, null}
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DICompositeType(tag: DW_TAG_structure_type, scope: !14, file: !3, line: 58, flags: DIFlagFwdDecl)
!59 = !DILocation(line: 0, scope: !39, inlinedAt: !60)
!60 = distinct !DILocation(line: 58, column: 1, scope: !37)
!61 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !39, type: !43, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".privates.", arg: 3, scope: !39, type: !46, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !39, type: !49, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !39, type: !54, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: "__context", arg: 6, scope: !39, type: !55, flags: DIFlagArtificial)
!66 = !DILocalVariable(arg: 1, scope: !37, type: !7, flags: DIFlagArtificial)
!67 = !DILocation(line: 0, scope: !37)
!68 = !DILocalVariable(arg: 2, scope: !37, type: !69, flags: DIFlagArtificial)
!69 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, flags: DIFlagFwdDecl, identifier: "_ZTS24kmp_task_t_with_privates")
!72 = !DILocation(line: 58, column: 1, scope: !37)
!73 = !{!74, !76, !77, !78}
!74 = distinct !{!74, !75, !".omp_outlined.: %.part_id."}
!75 = distinct !{!75, !".omp_outlined."}
!76 = distinct !{!76, !75, !".omp_outlined.: %.privates."}
!77 = distinct !{!77, !75, !".omp_outlined.: %.copy_fn."}
!78 = distinct !{!78, !75, !".omp_outlined.: %__context"}
!79 = !DILocation(line: 59, column: 3, scope: !39, inlinedAt: !60)
!80 = !DILocation(line: 58, column: 1, scope: !39, inlinedAt: !60)
!81 = !DILocation(line: 60, column: 11, scope: !82, inlinedAt: !60)
!82 = distinct !DILexicalBlock(scope: !39, file: !3, line: 59, column: 3)
!83 = !DILocation(line: 60, column: 12, scope: !82, inlinedAt: !60)
!84 = !DILocation(line: 60, column: 7, scope: !82, inlinedAt: !60)
!85 = !DILocation(line: 60, column: 5, scope: !82, inlinedAt: !60)
!86 = !DILocation(line: 60, column: 9, scope: !82, inlinedAt: !60)
!87 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 64, type: !88, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!88 = !DISubroutineType(types: !89)
!89 = !{!7}
!90 = !DILocalVariable(name: "i", scope: !87, file: !3, line: 66, type: !7)
!91 = !DILocation(line: 66, column: 7, scope: !87)
!92 = !DILocation(line: 67, column: 1, scope: !87)
!93 = !DILocation(line: 79, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !87, file: !3, line: 79, column: 3)
!95 = !DILocation(line: 79, column: 8, scope: !94)
!96 = !DILocation(line: 79, column: 13, scope: !97)
!97 = distinct !DILexicalBlock(scope: !94, file: !3, line: 79, column: 3)
!98 = !DILocation(line: 79, column: 14, scope: !97)
!99 = !DILocation(line: 79, column: 3, scope: !94)
!100 = !DILocation(line: 82, column: 11, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !3, line: 82, column: 9)
!102 = distinct !DILexicalBlock(scope: !97, file: !3, line: 80, column: 3)
!103 = !DILocation(line: 82, column: 9, scope: !101)
!104 = !DILocation(line: 82, column: 16, scope: !101)
!105 = !DILocation(line: 82, column: 17, scope: !101)
!106 = !DILocation(line: 82, column: 13, scope: !101)
!107 = !DILocation(line: 82, column: 9, scope: !102)
!108 = !DILocation(line: 84, column: 56, scope: !109)
!109 = distinct !DILexicalBlock(scope: !101, file: !3, line: 83, column: 5)
!110 = !DILocation(line: 84, column: 61, scope: !109)
!111 = !DILocation(line: 84, column: 59, scope: !109)
!112 = !DILocation(line: 84, column: 65, scope: !109)
!113 = !DILocation(line: 84, column: 66, scope: !109)
!114 = !DILocation(line: 84, column: 7, scope: !109)
!115 = !DILocation(line: 85, column: 5, scope: !109)
!116 = !DILocation(line: 86, column: 3, scope: !102)
!117 = !DILocation(line: 79, column: 23, scope: !97)
!118 = !DILocation(line: 79, column: 3, scope: !97)
!119 = distinct !{!119, !99, !120}
!120 = !DILocation(line: 86, column: 3, scope: !94)
!121 = !DILocation(line: 87, column: 3, scope: !87)
!122 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 68, type: !123, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !43, !43, !125}
!125 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!126 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !122, type: !43, flags: DIFlagArtificial)
!127 = !DILocation(line: 0, scope: !122)
!128 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !122, type: !43, flags: DIFlagArtificial)
!129 = !DILocalVariable(name: "i", arg: 3, scope: !122, file: !3, line: 66, type: !125)
!130 = !DILocation(line: 66, column: 7, scope: !122)
!131 = !DILocation(line: 68, column: 3, scope: !122)
!132 = !DILocation(line: 69, column: 1, scope: !133)
!133 = distinct !DILexicalBlock(scope: !122, file: !3, line: 68, column: 3)
!134 = !DILocation(line: 71, column: 13, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !3, line: 71, column: 7)
!136 = distinct !DILexicalBlock(scope: !137, file: !3, line: 70, column: 5)
!137 = distinct !DILexicalBlock(scope: !133, file: !3, line: 69, column: 1)
!138 = !DILocation(line: 71, column: 12, scope: !135)
!139 = !DILocation(line: 71, column: 17, scope: !140)
!140 = distinct !DILexicalBlock(scope: !135, file: !3, line: 71, column: 7)
!141 = !DILocation(line: 71, column: 18, scope: !140)
!142 = !DILocation(line: 71, column: 7, scope: !135)
!143 = !DILocation(line: 73, column: 18, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !3, line: 72, column: 7)
!145 = !DILocation(line: 73, column: 9, scope: !144)
!146 = !DILocation(line: 74, column: 7, scope: !144)
!147 = !DILocation(line: 71, column: 27, scope: !140)
!148 = !DILocation(line: 71, column: 7, scope: !140)
!149 = distinct !{!149, !142, !150}
!150 = !DILocation(line: 74, column: 7, scope: !135)
!151 = !DILocation(line: 0, scope: !144)
!152 = !DILocation(line: 75, column: 5, scope: !136)
!153 = !DILocation(line: 69, column: 19, scope: !137)
!154 = !DILocation(line: 76, column: 3, scope: !122)
!155 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 68, type: !123, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!156 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !155, type: !43, flags: DIFlagArtificial)
!157 = !DILocation(line: 0, scope: !155)
!158 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !155, type: !43, flags: DIFlagArtificial)
!159 = !DILocalVariable(name: "i", arg: 3, scope: !155, type: !125, flags: DIFlagArtificial)
!160 = !DILocation(line: 68, column: 3, scope: !155)
!161 = !{!162}
!162 = !{i64 2, i64 -1, i64 -1, i1 true}
