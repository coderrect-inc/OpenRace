; ModuleID = 'DRB100-task-reference-orig-no.cpp'
source_filename = "DRB100-task-reference-orig-no.cpp"
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
@1 = private unnamed_addr constant [51 x i8] c";DRB100-task-reference-orig-no.cpp;gen_task;62;1;;\00", align 1
@2 = private unnamed_addr constant [47 x i8] c";DRB100-task-reference-orig-no.cpp;main;73;1;;\00", align 1
@3 = private unnamed_addr constant [47 x i8] c";DRB100-task-reference-orig-no.cpp;main;71;1;;\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"warning: a[%d] = %d, not expected %d\0A\00", align 1

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z8gen_taskRi(i32* dereferenceable(4) %i) #0 !dbg !14 {
entry:
  %i.addr = alloca i32*, align 8
  %agg.captured = alloca %struct.anon, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1, i32 0, i32 0), i8** %2, align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !18, metadata !DIExpression()), !dbg !19
  %4 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !20
  %5 = load i32*, i32** %i.addr, align 8, !dbg !21
  store i32* %5, i32** %4, align 8, !dbg !20
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !20
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !20
  %7 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 48, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !20
  %8 = bitcast i8* %7 to %struct.kmp_task_t_with_privates*, !dbg !20
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %8, i32 0, i32 0, !dbg !20
  %10 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %9, i32 0, i32 0, !dbg !20
  %11 = load i8*, i8** %10, align 8, !dbg !20
  %12 = bitcast %struct.anon* %agg.captured to i8*, !dbg !20
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false), !dbg !20
  %13 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %8, i32 0, i32 1, !dbg !20
  %14 = bitcast i8* %11 to %struct.anon*, !dbg !20
  %15 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %13, i32 0, i32 0, !dbg !20
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0, !dbg !20
  %17 = load i32*, i32** %16, align 8, !dbg !20
  %18 = load i32, i32* %17, align 8, !dbg !22
  store i32 %18, i32* %15, align 8, !dbg !20
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !20
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1, i32 0, i32 0), i8** %19, align 8, !dbg !20
  %20 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %7), !dbg !20
  ret void, !dbg !24
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline uwtable
define internal void @.omp_task_privates_map.(%struct..kmp_privates.t* noalias %0, i32** noalias %1) #2 !dbg !25 {
entry:
  %.addr = alloca %struct..kmp_privates.t*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t* %0, %struct..kmp_privates.t** %.addr, align 8
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t** %.addr, metadata !27, metadata !DIExpression()), !dbg !32
  store i32** %1, i32*** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !33, metadata !DIExpression()), !dbg !32
  %2 = load %struct..kmp_privates.t*, %struct..kmp_privates.t** %.addr, align 8, !dbg !38
  %3 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %2, i32 0, i32 0, !dbg !38
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !38
  store i32* %3, i32** %4, align 8, !dbg !38
  ret void, !dbg !38
}

; Function Attrs: noinline norecurse uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !39 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !40, metadata !DIExpression()), !dbg !61
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !63, metadata !DIExpression()), !dbg !61
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !64, metadata !DIExpression()), !dbg !61
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !65, metadata !DIExpression()), !dbg !61
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !66, metadata !DIExpression()), !dbg !61
  %__context.addr.i = alloca %struct.anon*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr.i, metadata !67, metadata !DIExpression()), !dbg !61
  %.firstpriv.ptr.addr.i = alloca i32*, align 8
  %tmp.i = alloca i32*, align 8
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !68, metadata !DIExpression()), !dbg !69
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !70, metadata !DIExpression()), !dbg !69
  %2 = load i32, i32* %.addr, align 4, !dbg !74
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !74
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !74
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !74
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !74
  %7 = load i8*, i8** %6, align 8, !dbg !74
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !74
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 1, !dbg !74
  %10 = bitcast %struct..kmp_privates.t* %9 to i8*, !dbg !74
  %11 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !74
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !75
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !75
  store i8* %10, i8** %.privates..addr.i, align 8, !noalias !75
  store void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**)* @.omp_task_privates_map. to void (i8*, ...)*), void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !75
  store i8* %11, i8** %.task_t..addr.i, align 8, !noalias !75
  store %struct.anon* %8, %struct.anon** %__context.addr.i, align 8, !noalias !75
  %12 = load %struct.anon*, %struct.anon** %__context.addr.i, align 8, !dbg !81, !noalias !75
  %13 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr.i, align 8, !dbg !81, !noalias !75
  %14 = load i8*, i8** %.privates..addr.i, align 8, !dbg !81, !noalias !75
  call void (i8*, ...) %13(i8* %14, i32** %.firstpriv.ptr.addr.i) #9, !dbg !82
  %15 = load i32*, i32** %.firstpriv.ptr.addr.i, align 8, !dbg !81, !noalias !75
  store i32* %15, i32** %tmp.i, align 8, !dbg !81, !noalias !75
  %16 = load i32*, i32** %tmp.i, align 8, !dbg !83, !noalias !75
  %17 = load i32, i32* %16, align 4, !dbg !83
  %add.i = add nsw i32 %17, 1, !dbg !85
  %18 = load i32*, i32** %tmp.i, align 8, !dbg !86, !noalias !75
  %19 = load i32, i32* %18, align 4, !dbg !86
  %idxprom.i = sext i32 %19 to i64, !dbg !87
  %arrayidx.i = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom.i, !dbg !87
  store i32 %add.i, i32* %arrayidx.i, align 4, !dbg !88
  ret i32 0, !dbg !74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main() #5 !dbg !89 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !92, metadata !DIExpression()), !dbg !93
  store i32 0, i32* %i, align 4, !dbg !93
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !94
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @3, i32 0, i32 0), i8** %2, align 8, !dbg !94
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i32* %i), !dbg !94
  store i32 0, i32* %i, align 4, !dbg !95
  br label %for.cond, !dbg !97

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !98
  %cmp = icmp slt i32 %3, 100, !dbg !100
  br i1 %cmp, label %for.body, label %for.end, !dbg !101

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !102
  %idxprom = sext i32 %4 to i64, !dbg !105
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom, !dbg !105
  %5 = load i32, i32* %arrayidx, align 4, !dbg !105
  %6 = load i32, i32* %i, align 4, !dbg !106
  %add = add nsw i32 %6, 1, !dbg !107
  %cmp1 = icmp ne i32 %5, %add, !dbg !108
  br i1 %cmp1, label %if.then, label %if.end, !dbg !109

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !110
  %8 = load i32, i32* %i, align 4, !dbg !112
  %idxprom2 = sext i32 %8 to i64, !dbg !113
  %arrayidx3 = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom2, !dbg !113
  %9 = load i32, i32* %arrayidx3, align 4, !dbg !113
  %10 = load i32, i32* %i, align 4, !dbg !114
  %add4 = add nsw i32 %10, 1, !dbg !115
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %7, i32 %9, i32 %add4), !dbg !116
  br label %if.end, !dbg !117

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !118

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4, !dbg !119
  %inc = add nsw i32 %11, 1, !dbg !119
  store i32 %inc, i32* %i, align 4, !dbg !119
  br label %for.cond, !dbg !120, !llvm.loop !121

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !123
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !124 {
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !127, metadata !DIExpression()), !dbg !128
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !129, metadata !DIExpression()), !dbg !128
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !130, metadata !DIExpression()), !dbg !131
  %2 = load i32*, i32** %i.addr, align 8, !dbg !132
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !133
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @2, i32 0, i32 0), i8** %3, align 8, !dbg !133
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !133
  %5 = load i32, i32* %4, align 4, !dbg !133
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !133
  %7 = icmp ne i32 %6, 0, !dbg !133
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !133

omp_if.then:                                      ; preds = %entry
  store i32 0, i32* %2, align 4, !dbg !135
  br label %for.cond, !dbg !139

for.cond:                                         ; preds = %for.inc, %omp_if.then
  %8 = load i32, i32* %2, align 4, !dbg !140
  %cmp = icmp slt i32 %8, 100, !dbg !142
  br i1 %cmp, label %for.body, label %for.end, !dbg !143

for.body:                                         ; preds = %for.cond
  invoke void @_Z8gen_taskRi(i32* dereferenceable(4) %2)
          to label %invoke.cont unwind label %lpad, !dbg !144

invoke.cont:                                      ; preds = %for.body
  br label %for.inc, !dbg !146

for.inc:                                          ; preds = %invoke.cont
  %9 = load i32, i32* %2, align 4, !dbg !147
  %inc = add nsw i32 %9, 1, !dbg !147
  store i32 %inc, i32* %2, align 4, !dbg !147
  br label %for.cond, !dbg !148, !llvm.loop !149

lpad:                                             ; preds = %for.body
  %10 = landingpad { i8*, i32 }
          catch i8* null, !dbg !151
  %11 = extractvalue { i8*, i32 } %10, 0, !dbg !151
  store i8* %11, i8** %exn.slot, align 8, !dbg !151
  %12 = extractvalue { i8*, i32 } %10, 1, !dbg !151
  store i32 %12, i32* %ehselector.slot, align 4, !dbg !151
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !152
  br label %terminate.handler, !dbg !152

for.end:                                          ; preds = %for.cond
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !152
  br label %omp_if.end, !dbg !152

omp_if.end:                                       ; preds = %for.end, %entry
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !153
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @2, i32 0, i32 0), i8** %13, align 8, !dbg !153
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
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 58, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB100-task-reference-orig-no.cpp", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
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
!14 = distinct !DISubprogram(name: "gen_task", linkageName: "_Z8gen_taskRi", scope: !3, file: !3, line: 60, type: !15, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!18 = !DILocalVariable(name: "i", arg: 1, scope: !14, file: !3, line: 60, type: !17)
!19 = !DILocation(line: 60, column: 20, scope: !14)
!20 = !DILocation(line: 62, column: 1, scope: !14)
!21 = !DILocation(line: 64, column: 7, scope: !14)
!22 = !DILocation(line: 64, column: 7, scope: !23)
!23 = distinct !DILexicalBlock(scope: !14, file: !3, line: 62, column: 1)
!24 = !DILocation(line: 66, column: 1, scope: !14)
!25 = distinct !DISubprogram(linkageName: ".omp_task_privates_map.", scope: !3, file: !3, line: 62, type: !26, scopeLine: 62, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!26 = !DISubroutineType(types: !4)
!27 = !DILocalVariable(arg: 1, scope: !25, type: !28, flags: DIFlagArtificial)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, flags: DIFlagFwdDecl, identifier: "_ZTS15.kmp_privates.t")
!32 = !DILocation(line: 0, scope: !25)
!33 = !DILocalVariable(arg: 2, scope: !25, type: !34, flags: DIFlagArtificial)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!38 = !DILocation(line: 62, column: 1, scope: !25)
!39 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 62, type: !26, scopeLine: 62, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!40 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !41, type: !44, flags: DIFlagArtificial)
!41 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 64, type: !42, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44, !45, !48, !51, !56, !57}
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !48, null}
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DICompositeType(tag: DW_TAG_structure_type, scope: !14, file: !3, line: 62, flags: DIFlagFwdDecl)
!61 = !DILocation(line: 0, scope: !41, inlinedAt: !62)
!62 = distinct !DILocation(line: 62, column: 1, scope: !39)
!63 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !41, type: !45, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".privates.", arg: 3, scope: !41, type: !48, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !41, type: !51, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !41, type: !56, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: "__context", arg: 6, scope: !41, type: !57, flags: DIFlagArtificial)
!68 = !DILocalVariable(arg: 1, scope: !39, type: !7, flags: DIFlagArtificial)
!69 = !DILocation(line: 0, scope: !39)
!70 = !DILocalVariable(arg: 2, scope: !39, type: !71, flags: DIFlagArtificial)
!71 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, flags: DIFlagFwdDecl, identifier: "_ZTS24kmp_task_t_with_privates")
!74 = !DILocation(line: 62, column: 1, scope: !39)
!75 = !{!76, !78, !79, !80}
!76 = distinct !{!76, !77, !".omp_outlined.: %.part_id."}
!77 = distinct !{!77, !".omp_outlined."}
!78 = distinct !{!78, !77, !".omp_outlined.: %.privates."}
!79 = distinct !{!79, !77, !".omp_outlined.: %.copy_fn."}
!80 = distinct !{!80, !77, !".omp_outlined.: %__context"}
!81 = !DILocation(line: 63, column: 3, scope: !41, inlinedAt: !62)
!82 = !DILocation(line: 62, column: 1, scope: !41, inlinedAt: !62)
!83 = !DILocation(line: 64, column: 11, scope: !84, inlinedAt: !62)
!84 = distinct !DILexicalBlock(scope: !41, file: !3, line: 63, column: 3)
!85 = !DILocation(line: 64, column: 12, scope: !84, inlinedAt: !62)
!86 = !DILocation(line: 64, column: 7, scope: !84, inlinedAt: !62)
!87 = !DILocation(line: 64, column: 5, scope: !84, inlinedAt: !62)
!88 = !DILocation(line: 64, column: 9, scope: !84, inlinedAt: !62)
!89 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 68, type: !90, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!90 = !DISubroutineType(types: !91)
!91 = !{!7}
!92 = !DILocalVariable(name: "i", scope: !89, file: !3, line: 70, type: !7)
!93 = !DILocation(line: 70, column: 7, scope: !89)
!94 = !DILocation(line: 71, column: 1, scope: !89)
!95 = !DILocation(line: 83, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !89, file: !3, line: 83, column: 3)
!97 = !DILocation(line: 83, column: 8, scope: !96)
!98 = !DILocation(line: 83, column: 13, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !3, line: 83, column: 3)
!100 = !DILocation(line: 83, column: 14, scope: !99)
!101 = !DILocation(line: 83, column: 3, scope: !96)
!102 = !DILocation(line: 86, column: 11, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !3, line: 86, column: 9)
!104 = distinct !DILexicalBlock(scope: !99, file: !3, line: 84, column: 3)
!105 = !DILocation(line: 86, column: 9, scope: !103)
!106 = !DILocation(line: 86, column: 16, scope: !103)
!107 = !DILocation(line: 86, column: 17, scope: !103)
!108 = !DILocation(line: 86, column: 13, scope: !103)
!109 = !DILocation(line: 86, column: 9, scope: !104)
!110 = !DILocation(line: 88, column: 56, scope: !111)
!111 = distinct !DILexicalBlock(scope: !103, file: !3, line: 87, column: 5)
!112 = !DILocation(line: 88, column: 61, scope: !111)
!113 = !DILocation(line: 88, column: 59, scope: !111)
!114 = !DILocation(line: 88, column: 65, scope: !111)
!115 = !DILocation(line: 88, column: 66, scope: !111)
!116 = !DILocation(line: 88, column: 7, scope: !111)
!117 = !DILocation(line: 89, column: 5, scope: !111)
!118 = !DILocation(line: 90, column: 3, scope: !104)
!119 = !DILocation(line: 83, column: 23, scope: !99)
!120 = !DILocation(line: 83, column: 3, scope: !99)
!121 = distinct !{!121, !101, !122}
!122 = !DILocation(line: 90, column: 3, scope: !96)
!123 = !DILocation(line: 91, column: 3, scope: !89)
!124 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 72, type: !125, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !45, !45, !17}
!127 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !124, type: !45, flags: DIFlagArtificial)
!128 = !DILocation(line: 0, scope: !124)
!129 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !124, type: !45, flags: DIFlagArtificial)
!130 = !DILocalVariable(name: "i", arg: 3, scope: !124, file: !3, line: 70, type: !17)
!131 = !DILocation(line: 70, column: 7, scope: !124)
!132 = !DILocation(line: 72, column: 3, scope: !124)
!133 = !DILocation(line: 73, column: 1, scope: !134)
!134 = distinct !DILexicalBlock(scope: !124, file: !3, line: 72, column: 3)
!135 = !DILocation(line: 75, column: 13, scope: !136)
!136 = distinct !DILexicalBlock(scope: !137, file: !3, line: 75, column: 7)
!137 = distinct !DILexicalBlock(scope: !138, file: !3, line: 74, column: 5)
!138 = distinct !DILexicalBlock(scope: !134, file: !3, line: 73, column: 1)
!139 = !DILocation(line: 75, column: 12, scope: !136)
!140 = !DILocation(line: 75, column: 17, scope: !141)
!141 = distinct !DILexicalBlock(scope: !136, file: !3, line: 75, column: 7)
!142 = !DILocation(line: 75, column: 18, scope: !141)
!143 = !DILocation(line: 75, column: 7, scope: !136)
!144 = !DILocation(line: 77, column: 9, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !3, line: 76, column: 7)
!146 = !DILocation(line: 78, column: 7, scope: !145)
!147 = !DILocation(line: 75, column: 27, scope: !141)
!148 = !DILocation(line: 75, column: 7, scope: !141)
!149 = distinct !{!149, !143, !150}
!150 = !DILocation(line: 78, column: 7, scope: !136)
!151 = !DILocation(line: 0, scope: !145)
!152 = !DILocation(line: 79, column: 5, scope: !137)
!153 = !DILocation(line: 73, column: 19, scope: !138)
!154 = !DILocation(line: 80, column: 3, scope: !124)
!155 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 72, type: !125, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!156 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !155, type: !45, flags: DIFlagArtificial)
!157 = !DILocation(line: 0, scope: !155)
!158 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !155, type: !45, flags: DIFlagArtificial)
!159 = !DILocalVariable(name: "i", arg: 3, scope: !155, type: !17, flags: DIFlagArtificial)
!160 = !DILocation(line: 72, column: 3, scope: !155)
!161 = !{!162}
!162 = !{i64 2, i64 -1, i64 -1, i1 true}
