; ModuleID = 'integration/dataracebench/DRB149-missingdata1-orig-gpu-no.c'
source_filename = "integration/dataracebench/DRB149-missingdata1-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@a = common dso_local global i32* null, align 8, !dbg !0
@b = common dso_local global i32* null, align 8, !dbg !12
@c = common dso_local global i32* null, align 8, !dbg !16
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [73 x i8] c";integration/dataracebench/DRB149-missingdata1-orig-gpu-no.c;main;38;5;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [74 x i8] c";integration/dataracebench/DRB149-missingdata1-orig-gpu-no.c;main;38;46;;\00", align 1
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"Data Race\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !22 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %i14 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call noalias i8* @malloc(i64 400) #6, !dbg !34
  %0 = bitcast i8* %call to i32*, !dbg !34
  store i32* %0, i32** @a, align 8, !dbg !35, !tbaa !36
  %call1 = call noalias i8* @malloc(i64 40000) #6, !dbg !40
  %1 = bitcast i8* %call1 to i32*, !dbg !40
  store i32* %1, i32** @b, align 8, !dbg !41, !tbaa !36
  %call2 = call noalias i8* @malloc(i64 400) #6, !dbg !42
  %2 = bitcast i8* %call2 to i32*, !dbg !42
  store i32* %2, i32** @c, align 8, !dbg !43, !tbaa !36
  %3 = bitcast i32* %i to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #6, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %i, metadata !26, metadata !DIExpression()), !dbg !45
  store i32 0, i32* %i, align 4, !dbg !45, !tbaa !46
  br label %for.cond, !dbg !44

for.cond:                                         ; preds = %for.inc11, %entry
  %4 = load i32, i32* %i, align 4, !dbg !48, !tbaa !46
  %cmp = icmp slt i32 %4, 100, !dbg !49
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !50

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, i32* %cleanup.dest.slot, align 4
  %5 = bitcast i32* %i to i8*, !dbg !51
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #6, !dbg !51
  br label %for.end13

for.body:                                         ; preds = %for.cond
  %6 = bitcast i32* %j to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #6, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %j, metadata !28, metadata !DIExpression()), !dbg !53
  store i32 0, i32* %j, align 4, !dbg !53, !tbaa !46
  br label %for.cond3, !dbg !52

for.cond3:                                        ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4, !dbg !54, !tbaa !46
  %cmp4 = icmp slt i32 %7, 100, !dbg !56
  br i1 %cmp4, label %for.body6, label %for.cond.cleanup5, !dbg !57

for.cond.cleanup5:                                ; preds = %for.cond3
  store i32 5, i32* %cleanup.dest.slot, align 4
  %8 = bitcast i32* %j to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #6, !dbg !58
  br label %for.end

for.body6:                                        ; preds = %for.cond3
  %9 = load i32*, i32** @b, align 8, !dbg !59, !tbaa !36
  %10 = load i32, i32* %j, align 4, !dbg !61, !tbaa !46
  %11 = load i32, i32* %i, align 4, !dbg !62, !tbaa !46
  %mul = mul nsw i32 %11, 100, !dbg !63
  %add = add nsw i32 %10, %mul, !dbg !64
  %idxprom = sext i32 %add to i64, !dbg !59
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom, !dbg !59
  store i32 1, i32* %arrayidx, align 4, !dbg !65, !tbaa !46
  br label %for.inc, !dbg !66

for.inc:                                          ; preds = %for.body6
  %12 = load i32, i32* %j, align 4, !dbg !67, !tbaa !46
  %inc = add nsw i32 %12, 1, !dbg !67
  store i32 %inc, i32* %j, align 4, !dbg !67, !tbaa !46
  br label %for.cond3, !dbg !58, !llvm.loop !68

for.end:                                          ; preds = %for.cond.cleanup5
  %13 = load i32*, i32** @a, align 8, !dbg !70, !tbaa !36
  %14 = load i32, i32* %i, align 4, !dbg !71, !tbaa !46
  %idxprom7 = sext i32 %14 to i64, !dbg !70
  %arrayidx8 = getelementptr inbounds i32, i32* %13, i64 %idxprom7, !dbg !70
  store i32 1, i32* %arrayidx8, align 4, !dbg !72, !tbaa !46
  %15 = load i32*, i32** @c, align 8, !dbg !73, !tbaa !36
  %16 = load i32, i32* %i, align 4, !dbg !74, !tbaa !46
  %idxprom9 = sext i32 %16 to i64, !dbg !73
  %arrayidx10 = getelementptr inbounds i32, i32* %15, i64 %idxprom9, !dbg !73
  store i32 0, i32* %arrayidx10, align 4, !dbg !75, !tbaa !46
  br label %for.inc11, !dbg !76

for.inc11:                                        ; preds = %for.end
  %17 = load i32, i32* %i, align 4, !dbg !77, !tbaa !46
  %inc12 = add nsw i32 %17, 1, !dbg !77
  store i32 %inc12, i32* %i, align 4, !dbg !77, !tbaa !46
  br label %for.cond, !dbg !51, !llvm.loop !78

for.end13:                                        ; preds = %for.cond.cleanup
  %18 = load i32*, i32** @c, align 8, !dbg !80, !tbaa !36
  %19 = load i32*, i32** @b, align 8, !dbg !80, !tbaa !36
  %20 = load i32*, i32** @a, align 8, !dbg !80, !tbaa !36
  call void @__omp_offloading_1030a_2160957_main_l36(i32* %18, i32* %19, i32* %20) #6, !dbg !81
  %21 = bitcast i32* %i14 to i8*, !dbg !83
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #6, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %i14, metadata !32, metadata !DIExpression()), !dbg !84
  store i32 0, i32* %i14, align 4, !dbg !84, !tbaa !46
  br label %for.cond15, !dbg !83

for.cond15:                                       ; preds = %for.inc23, %for.end13
  %22 = load i32, i32* %i14, align 4, !dbg !85, !tbaa !46
  %cmp16 = icmp slt i32 %22, 100, !dbg !87
  br i1 %cmp16, label %for.body18, label %for.cond.cleanup17, !dbg !88

for.cond.cleanup17:                               ; preds = %for.cond15
  store i32 8, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !88

for.body18:                                       ; preds = %for.cond15
  %23 = load i32*, i32** @c, align 8, !dbg !89, !tbaa !36
  %24 = load i32, i32* %i14, align 4, !dbg !92, !tbaa !46
  %idxprom19 = sext i32 %24 to i64, !dbg !89
  %arrayidx20 = getelementptr inbounds i32, i32* %23, i64 %idxprom19, !dbg !89
  %25 = load i32, i32* %arrayidx20, align 4, !dbg !89, !tbaa !46
  %cmp21 = icmp ne i32 %25, 100, !dbg !93
  br i1 %cmp21, label %if.then, label %if.end, !dbg !94

if.then:                                          ; preds = %for.body18
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)), !dbg !95
  store i32 1, i32* %retval, align 4, !dbg !97
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !97

if.end:                                           ; preds = %for.body18
  br label %for.inc23, !dbg !98

for.inc23:                                        ; preds = %if.end
  %26 = load i32, i32* %i14, align 4, !dbg !99, !tbaa !46
  %inc24 = add nsw i32 %26, 1, !dbg !99
  store i32 %inc24, i32* %i14, align 4, !dbg !99, !tbaa !46
  br label %for.cond15, !dbg !100, !llvm.loop !101

cleanup:                                          ; preds = %if.then, %for.cond.cleanup17
  %27 = bitcast i32* %i14 to i8*, !dbg !100
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #6, !dbg !100
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 8, label %for.end25
    i32 1, label %return
  ]

for.end25:                                        ; preds = %cleanup
  %28 = load i32*, i32** @a, align 8, !dbg !103, !tbaa !36
  %29 = bitcast i32* %28 to i8*, !dbg !103
  call void @free(i8* %29) #6, !dbg !104
  %30 = load i32*, i32** @b, align 8, !dbg !105, !tbaa !36
  %31 = bitcast i32* %30 to i8*, !dbg !105
  call void @free(i8* %31) #6, !dbg !106
  %32 = load i32*, i32** @c, align 8, !dbg !107, !tbaa !36
  %33 = bitcast i32* %32 to i8*, !dbg !107
  call void @free(i8* %33) #6, !dbg !108
  store i32 0, i32* %retval, align 4, !dbg !109
  br label %return, !dbg !109

return:                                           ; preds = %for.end25, %cleanup
  %34 = load i32, i32* %retval, align 4, !dbg !110
  ret i32 %34, !dbg !110

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160957_main_l36_debug__(i32* %c, i32* %b, i32* %a) #4 !dbg !111 {
entry:
  %c.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %c, i32** %c.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %c.addr, metadata !115, metadata !DIExpression()), !dbg !118
  store i32* %b, i32** %b.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !116, metadata !DIExpression()), !dbg !119
  store i32* %a, i32** %a.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !117, metadata !DIExpression()), !dbg !120
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !121
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !121, !tbaa !123
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32**, i32**, i32**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32** %c.addr, i32** %b.addr, i32** %a.addr), !dbg !121
  ret void, !dbg !125
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32** dereferenceable(8) %c, i32** dereferenceable(8) %b, i32** dereferenceable(8) %a) #4 !dbg !126 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %c.addr = alloca i32**, align 8
  %b.addr = alloca i32**, align 8
  %a.addr = alloca i32**, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.comb.lb = alloca i32, align 4
  %.omp.comb.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !135, metadata !DIExpression()), !dbg !146
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !136, metadata !DIExpression()), !dbg !146
  store i32** %c, i32*** %c.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32*** %c.addr, metadata !137, metadata !DIExpression()), !dbg !147
  store i32** %b, i32*** %b.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32*** %b.addr, metadata !138, metadata !DIExpression()), !dbg !148
  store i32** %a, i32*** %a.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !139, metadata !DIExpression()), !dbg !149
  %2 = load i32**, i32*** %c.addr, align 8, !dbg !150, !tbaa !36
  %3 = load i32**, i32*** %b.addr, align 8, !dbg !150, !tbaa !36
  %4 = load i32**, i32*** %a.addr, align 8, !dbg !150, !tbaa !36
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !150
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #6, !dbg !150
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !140, metadata !DIExpression()), !dbg !146
  %6 = bitcast i32* %.omp.comb.lb to i8*, !dbg !150
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #6, !dbg !150
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !141, metadata !DIExpression()), !dbg !146
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !151, !tbaa !46
  %7 = bitcast i32* %.omp.comb.ub to i8*, !dbg !150
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #6, !dbg !150
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !142, metadata !DIExpression()), !dbg !146
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !151, !tbaa !46
  %8 = bitcast i32* %.omp.stride to i8*, !dbg !150
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #6, !dbg !150
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !143, metadata !DIExpression()), !dbg !146
  store i32 1, i32* %.omp.stride, align 4, !dbg !151, !tbaa !46
  %9 = bitcast i32* %.omp.is_last to i8*, !dbg !150
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #6, !dbg !150
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !144, metadata !DIExpression()), !dbg !146
  store i32 0, i32* %.omp.is_last, align 4, !dbg !151, !tbaa !46
  %10 = bitcast i32* %i to i8*, !dbg !150
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #6, !dbg !150
  call void @llvm.dbg.declare(metadata i32* %i, metadata !145, metadata !DIExpression()), !dbg !146
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !150
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !150, !tbaa !123
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !150
  %13 = load i32, i32* %12, align 4, !dbg !150, !tbaa !46
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !150
  %14 = load i32, i32* %.omp.comb.ub, align 4, !dbg !151, !tbaa !46
  %cmp = icmp sgt i32 %14, 99, !dbg !151
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !151

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !151

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %.omp.comb.ub, align 4, !dbg !151, !tbaa !46
  br label %cond.end, !dbg !151

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %15, %cond.false ], !dbg !151
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !151, !tbaa !46
  %16 = load i32, i32* %.omp.comb.lb, align 4, !dbg !151, !tbaa !46
  store i32 %16, i32* %.omp.iv, align 4, !dbg !151, !tbaa !46
  br label %omp.inner.for.cond, !dbg !150

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !151, !tbaa !46
  %18 = load i32, i32* %.omp.comb.ub, align 4, !dbg !151, !tbaa !46
  %cmp1 = icmp sle i32 %17, %18, !dbg !150
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !150

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !150

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.comb.lb, align 4, !dbg !152
  %20 = zext i32 %19 to i64, !dbg !152
  %21 = load i32, i32* %.omp.comb.ub, align 4, !dbg !152
  %22 = zext i32 %21 to i64, !dbg !152
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !152
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @1, i32 0, i32 0), i8** %23, align 8, !dbg !152, !tbaa !123
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i32**, i32**, i32**)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %20, i64 %22, i32** %2, i32** %3, i32** %4), !dbg !152
  br label %omp.inner.for.inc, !dbg !153

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !151, !tbaa !46
  %25 = load i32, i32* %.omp.stride, align 4, !dbg !151, !tbaa !46
  %add = add nsw i32 %24, %25, !dbg !150
  store i32 %add, i32* %.omp.iv, align 4, !dbg !150, !tbaa !46
  br label %omp.inner.for.cond, !dbg !153, !llvm.loop !155

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !153

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !153
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @1, i32 0, i32 0), i8** %26, align 8, !dbg !153, !tbaa !123
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !153
  %27 = bitcast i32* %i to i8*, !dbg !153
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #6, !dbg !153
  %28 = bitcast i32* %.omp.is_last to i8*, !dbg !153
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #6, !dbg !153
  %29 = bitcast i32* %.omp.stride to i8*, !dbg !153
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #6, !dbg !153
  %30 = bitcast i32* %.omp.comb.ub to i8*, !dbg !153
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #6, !dbg !153
  %31 = bitcast i32* %.omp.comb.lb to i8*, !dbg !153
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #6, !dbg !153
  %32 = bitcast i32* %.omp.iv to i8*, !dbg !153
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #6, !dbg !153
  ret void, !dbg !157
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32** dereferenceable(8) %c, i32** dereferenceable(8) %b, i32** dereferenceable(8) %a) #4 !dbg !158 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %c.addr = alloca i32**, align 8
  %b.addr = alloca i32**, align 8
  %a.addr = alloca i32**, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %j = alloca i32, align 4
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !164, metadata !DIExpression()), !dbg !180
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !165, metadata !DIExpression()), !dbg !180
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !181
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !166, metadata !DIExpression()), !dbg !180
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !181
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !167, metadata !DIExpression()), !dbg !180
  store i32** %c, i32*** %c.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32*** %c.addr, metadata !168, metadata !DIExpression()), !dbg !183
  store i32** %b, i32*** %b.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32*** %b.addr, metadata !169, metadata !DIExpression()), !dbg !184
  store i32** %a, i32*** %a.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !170, metadata !DIExpression()), !dbg !185
  %2 = load i32**, i32*** %c.addr, align 8, !dbg !186, !tbaa !36
  %3 = load i32**, i32*** %b.addr, align 8, !dbg !186, !tbaa !36
  %4 = load i32**, i32*** %a.addr, align 8, !dbg !186, !tbaa !36
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !186
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #6, !dbg !186
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !171, metadata !DIExpression()), !dbg !180
  %6 = bitcast i32* %.omp.lb to i8*, !dbg !186
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #6, !dbg !186
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !172, metadata !DIExpression()), !dbg !180
  store i32 0, i32* %.omp.lb, align 4, !dbg !187, !tbaa !46
  %7 = bitcast i32* %.omp.ub to i8*, !dbg !186
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #6, !dbg !186
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !173, metadata !DIExpression()), !dbg !180
  store i32 99, i32* %.omp.ub, align 4, !dbg !187, !tbaa !46
  %8 = load i64, i64* %.previous.lb..addr, align 8, !dbg !186, !tbaa !181
  %conv = trunc i64 %8 to i32, !dbg !186
  %9 = load i64, i64* %.previous.ub..addr, align 8, !dbg !186, !tbaa !181
  %conv1 = trunc i64 %9 to i32, !dbg !186
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !186, !tbaa !46
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !186, !tbaa !46
  %10 = bitcast i32* %.omp.stride to i8*, !dbg !186
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #6, !dbg !186
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !174, metadata !DIExpression()), !dbg !180
  store i32 1, i32* %.omp.stride, align 4, !dbg !187, !tbaa !46
  %11 = bitcast i32* %.omp.is_last to i8*, !dbg !186
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #6, !dbg !186
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !175, metadata !DIExpression()), !dbg !180
  store i32 0, i32* %.omp.is_last, align 4, !dbg !187, !tbaa !46
  %12 = bitcast i32* %i to i8*, !dbg !186
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #6, !dbg !186
  call void @llvm.dbg.declare(metadata i32* %i, metadata !176, metadata !DIExpression()), !dbg !180
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !186
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @1, i32 0, i32 0), i8** %13, align 8, !dbg !186, !tbaa !123
  %14 = load i32*, i32** %.global_tid..addr, align 8, !dbg !186
  %15 = load i32, i32* %14, align 4, !dbg !186, !tbaa !46
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %15, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !186
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !187, !tbaa !46
  %cmp = icmp sgt i32 %16, 99, !dbg !187
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !187

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !187

cond.false:                                       ; preds = %entry
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !187, !tbaa !46
  br label %cond.end, !dbg !187

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %17, %cond.false ], !dbg !187
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !187, !tbaa !46
  %18 = load i32, i32* %.omp.lb, align 4, !dbg !187, !tbaa !46
  store i32 %18, i32* %.omp.iv, align 4, !dbg !187, !tbaa !46
  br label %omp.inner.for.cond, !dbg !186

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !187, !tbaa !46
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !187, !tbaa !46
  %cmp3 = icmp sle i32 %19, %20, !dbg !186
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !186

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !186

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !187, !tbaa !46
  %mul = mul nsw i32 %21, 1, !dbg !188
  %add = add nsw i32 0, %mul, !dbg !188
  store i32 %add, i32* %i, align 4, !dbg !188, !tbaa !46
  %22 = bitcast i32* %j to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #6, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %j, metadata !177, metadata !DIExpression()), !dbg !190
  store i32 0, i32* %j, align 4, !dbg !190, !tbaa !46
  br label %for.cond, !dbg !189

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %23 = load i32, i32* %j, align 4, !dbg !191, !tbaa !46
  %cmp5 = icmp slt i32 %23, 100, !dbg !193
  br i1 %cmp5, label %for.body, label %for.cond.cleanup, !dbg !194

for.cond.cleanup:                                 ; preds = %for.cond
  %24 = bitcast i32* %j to i8*, !dbg !195
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #6, !dbg !195
  br label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32*, i32** %3, align 8, !dbg !196, !tbaa !36
  %26 = load i32, i32* %j, align 4, !dbg !198, !tbaa !46
  %27 = load i32, i32* %i, align 4, !dbg !199, !tbaa !46
  %mul7 = mul nsw i32 %27, 100, !dbg !200
  %add8 = add nsw i32 %26, %mul7, !dbg !201
  %idxprom = sext i32 %add8 to i64, !dbg !196
  %arrayidx = getelementptr inbounds i32, i32* %25, i64 %idxprom, !dbg !196
  %28 = load i32, i32* %arrayidx, align 4, !dbg !196, !tbaa !46
  %29 = load i32*, i32** %4, align 8, !dbg !202, !tbaa !36
  %30 = load i32, i32* %j, align 4, !dbg !203, !tbaa !46
  %idxprom9 = sext i32 %30 to i64, !dbg !202
  %arrayidx10 = getelementptr inbounds i32, i32* %29, i64 %idxprom9, !dbg !202
  %31 = load i32, i32* %arrayidx10, align 4, !dbg !202, !tbaa !46
  %mul11 = mul nsw i32 %28, %31, !dbg !204
  %32 = load i32*, i32** %2, align 8, !dbg !205, !tbaa !36
  %33 = load i32, i32* %i, align 4, !dbg !206, !tbaa !46
  %idxprom12 = sext i32 %33 to i64, !dbg !205
  %arrayidx13 = getelementptr inbounds i32, i32* %32, i64 %idxprom12, !dbg !205
  %34 = load i32, i32* %arrayidx13, align 4, !dbg !207, !tbaa !46
  %add14 = add nsw i32 %34, %mul11, !dbg !207
  store i32 %add14, i32* %arrayidx13, align 4, !dbg !207, !tbaa !46
  br label %for.inc, !dbg !208

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %j, align 4, !dbg !209, !tbaa !46
  %inc = add nsw i32 %35, 1, !dbg !209
  store i32 %inc, i32* %j, align 4, !dbg !209, !tbaa !46
  br label %for.cond, !dbg !195, !llvm.loop !210

for.end:                                          ; preds = %for.cond.cleanup
  br label %omp.body.continue, !dbg !212

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !213

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %36 = load i32, i32* %.omp.iv, align 4, !dbg !187, !tbaa !46
  %add15 = add nsw i32 %36, 1, !dbg !186
  store i32 %add15, i32* %.omp.iv, align 4, !dbg !186, !tbaa !46
  br label %omp.inner.for.cond, !dbg !213, !llvm.loop !214

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !213

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %37 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !213
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @3, i32 0, i32 0), i8** %37, align 8, !dbg !213, !tbaa !123
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %15), !dbg !213
  %38 = bitcast i32* %i to i8*, !dbg !213
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #6, !dbg !213
  %39 = bitcast i32* %.omp.is_last to i8*, !dbg !213
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #6, !dbg !213
  %40 = bitcast i32* %.omp.stride to i8*, !dbg !213
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #6, !dbg !213
  %41 = bitcast i32* %.omp.ub to i8*, !dbg !213
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #6, !dbg !213
  %42 = bitcast i32* %.omp.lb to i8*, !dbg !213
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #6, !dbg !213
  %43 = bitcast i32* %.omp.iv to i8*, !dbg !213
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #6, !dbg !213
  ret void, !dbg !216
}

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32** dereferenceable(8) %c, i32** dereferenceable(8) %b, i32** dereferenceable(8) %a) #4 !dbg !217 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %c.addr = alloca i32**, align 8
  %b.addr = alloca i32**, align 8
  %a.addr = alloca i32**, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !219, metadata !DIExpression()), !dbg !226
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !220, metadata !DIExpression()), !dbg !226
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !181
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !221, metadata !DIExpression()), !dbg !226
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !181
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !222, metadata !DIExpression()), !dbg !226
  store i32** %c, i32*** %c.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32*** %c.addr, metadata !223, metadata !DIExpression()), !dbg !226
  store i32** %b, i32*** %b.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32*** %b.addr, metadata !224, metadata !DIExpression()), !dbg !226
  store i32** %a, i32*** %a.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !225, metadata !DIExpression()), !dbg !226
  %0 = load i32**, i32*** %c.addr, align 8, !dbg !227, !tbaa !36
  %1 = load i32**, i32*** %b.addr, align 8, !dbg !227, !tbaa !36
  %2 = load i32**, i32*** %a.addr, align 8, !dbg !227, !tbaa !36
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !227, !tbaa !36
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !227, !tbaa !36
  %5 = load i64, i64* %.previous.lb..addr, align 8, !dbg !227, !tbaa !181
  %6 = load i64, i64* %.previous.ub..addr, align 8, !dbg !227, !tbaa !181
  %7 = load i32**, i32*** %c.addr, align 8, !dbg !227, !tbaa !36
  %8 = load i32**, i32*** %b.addr, align 8, !dbg !227, !tbaa !36
  %9 = load i32**, i32*** %a.addr, align 8, !dbg !227, !tbaa !36
  call void @.omp_outlined._debug__.1(i32* %3, i32* %4, i64 %5, i64 %6, i32** %7, i32** %8, i32** %9) #6, !dbg !227
  ret void, !dbg !227
}

declare !callback !228 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32** dereferenceable(8) %c, i32** dereferenceable(8) %b, i32** dereferenceable(8) %a) #4 !dbg !230 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %c.addr = alloca i32**, align 8
  %b.addr = alloca i32**, align 8
  %a.addr = alloca i32**, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !232, metadata !DIExpression()), !dbg !237
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !233, metadata !DIExpression()), !dbg !237
  store i32** %c, i32*** %c.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32*** %c.addr, metadata !234, metadata !DIExpression()), !dbg !237
  store i32** %b, i32*** %b.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32*** %b.addr, metadata !235, metadata !DIExpression()), !dbg !237
  store i32** %a, i32*** %a.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !236, metadata !DIExpression()), !dbg !237
  %0 = load i32**, i32*** %c.addr, align 8, !dbg !238, !tbaa !36
  %1 = load i32**, i32*** %b.addr, align 8, !dbg !238, !tbaa !36
  %2 = load i32**, i32*** %a.addr, align 8, !dbg !238, !tbaa !36
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !238, !tbaa !36
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !238, !tbaa !36
  %5 = load i32**, i32*** %c.addr, align 8, !dbg !238, !tbaa !36
  %6 = load i32**, i32*** %b.addr, align 8, !dbg !238, !tbaa !36
  %7 = load i32**, i32*** %a.addr, align 8, !dbg !238, !tbaa !36
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32** %5, i32** %6, i32** %7) #6, !dbg !238
  ret void, !dbg !238
}

declare !callback !228 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160957_main_l36(i32* %c, i32* %b, i32* %a) #4 !dbg !239 {
entry:
  %c.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  store i32* %c, i32** %c.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %c.addr, metadata !241, metadata !DIExpression()), !dbg !244
  store i32* %b, i32** %b.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !242, metadata !DIExpression()), !dbg !244
  store i32* %a, i32** %a.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !243, metadata !DIExpression()), !dbg !244
  %0 = load i32*, i32** %c.addr, align 8, !dbg !245, !tbaa !36
  %1 = load i32*, i32** %b.addr, align 8, !dbg !245, !tbaa !36
  %2 = load i32*, i32** %a.addr, align 8, !dbg !245, !tbaa !36
  call void @__omp_offloading_1030a_2160957_main_l36_debug__(i32* %0, i32* %1, i32* %2) #6, !dbg !245
  ret void, !dbg !245
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare !dbg !6 dso_local void @free(i8*) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 19, type: !14, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB149-missingdata1-orig-gpu-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!6}
!6 = !DISubprogram(name: "free", scope: !7, file: !7, line: 565, type: !8, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!7 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !{!0, !12, !16}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 20, type: !14, isLocal: false, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 21, type: !14, isLocal: false, isDefinition: true)
!18 = !{i32 7, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{!"clang version 10.0.1 "}
!22 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 23, type: !23, scopeLine: 23, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !25)
!23 = !DISubroutineType(types: !24)
!24 = !{!15}
!25 = !{!26, !28, !32}
!26 = !DILocalVariable(name: "i", scope: !27, file: !3, line: 28, type: !15)
!27 = distinct !DILexicalBlock(scope: !22, file: !3, line: 28, column: 3)
!28 = !DILocalVariable(name: "j", scope: !29, file: !3, line: 29, type: !15)
!29 = distinct !DILexicalBlock(scope: !30, file: !3, line: 29, column: 5)
!30 = distinct !DILexicalBlock(scope: !31, file: !3, line: 28, column: 25)
!31 = distinct !DILexicalBlock(scope: !27, file: !3, line: 28, column: 3)
!32 = !DILocalVariable(name: "i", scope: !33, file: !3, line: 46, type: !15)
!33 = distinct !DILexicalBlock(scope: !22, file: !3, line: 46, column: 3)
!34 = !DILocation(line: 24, column: 7, scope: !22)
!35 = !DILocation(line: 24, column: 5, scope: !22)
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !DILocation(line: 25, column: 7, scope: !22)
!41 = !DILocation(line: 25, column: 5, scope: !22)
!42 = !DILocation(line: 26, column: 7, scope: !22)
!43 = !DILocation(line: 26, column: 5, scope: !22)
!44 = !DILocation(line: 28, column: 7, scope: !27)
!45 = !DILocation(line: 28, column: 11, scope: !27)
!46 = !{!47, !47, i64 0}
!47 = !{!"int", !38, i64 0}
!48 = !DILocation(line: 28, column: 16, scope: !31)
!49 = !DILocation(line: 28, column: 17, scope: !31)
!50 = !DILocation(line: 28, column: 3, scope: !27)
!51 = !DILocation(line: 28, column: 3, scope: !31)
!52 = !DILocation(line: 29, column: 9, scope: !29)
!53 = !DILocation(line: 29, column: 13, scope: !29)
!54 = !DILocation(line: 29, column: 18, scope: !55)
!55 = distinct !DILexicalBlock(scope: !29, file: !3, line: 29, column: 5)
!56 = !DILocation(line: 29, column: 19, scope: !55)
!57 = !DILocation(line: 29, column: 5, scope: !29)
!58 = !DILocation(line: 29, column: 5, scope: !55)
!59 = !DILocation(line: 30, column: 7, scope: !60)
!60 = distinct !DILexicalBlock(scope: !55, file: !3, line: 29, column: 27)
!61 = !DILocation(line: 30, column: 9, scope: !60)
!62 = !DILocation(line: 30, column: 11, scope: !60)
!63 = !DILocation(line: 30, column: 12, scope: !60)
!64 = !DILocation(line: 30, column: 10, scope: !60)
!65 = !DILocation(line: 30, column: 15, scope: !60)
!66 = !DILocation(line: 31, column: 5, scope: !60)
!67 = !DILocation(line: 29, column: 24, scope: !55)
!68 = distinct !{!68, !57, !69}
!69 = !DILocation(line: 31, column: 5, scope: !29)
!70 = !DILocation(line: 32, column: 5, scope: !30)
!71 = !DILocation(line: 32, column: 7, scope: !30)
!72 = !DILocation(line: 32, column: 9, scope: !30)
!73 = !DILocation(line: 33, column: 5, scope: !30)
!74 = !DILocation(line: 33, column: 7, scope: !30)
!75 = !DILocation(line: 33, column: 9, scope: !30)
!76 = !DILocation(line: 34, column: 3, scope: !30)
!77 = !DILocation(line: 28, column: 22, scope: !31)
!78 = distinct !{!78, !50, !79}
!79 = !DILocation(line: 34, column: 3, scope: !27)
!80 = !DILocation(line: 36, column: 3, scope: !22)
!81 = !DILocation(line: 36, column: 3, scope: !82)
!82 = distinct !DILexicalBlock(scope: !22, file: !3, line: 36, column: 3)
!83 = !DILocation(line: 46, column: 7, scope: !33)
!84 = !DILocation(line: 46, column: 11, scope: !33)
!85 = !DILocation(line: 46, column: 16, scope: !86)
!86 = distinct !DILexicalBlock(scope: !33, file: !3, line: 46, column: 3)
!87 = !DILocation(line: 46, column: 17, scope: !86)
!88 = !DILocation(line: 46, column: 3, scope: !33)
!89 = !DILocation(line: 47, column: 8, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !3, line: 47, column: 8)
!91 = distinct !DILexicalBlock(scope: !86, file: !3, line: 46, column: 25)
!92 = !DILocation(line: 47, column: 10, scope: !90)
!93 = !DILocation(line: 47, column: 12, scope: !90)
!94 = !DILocation(line: 47, column: 8, scope: !91)
!95 = !DILocation(line: 48, column: 7, scope: !96)
!96 = distinct !DILexicalBlock(scope: !90, file: !3, line: 47, column: 16)
!97 = !DILocation(line: 49, column: 7, scope: !96)
!98 = !DILocation(line: 51, column: 3, scope: !91)
!99 = !DILocation(line: 46, column: 22, scope: !86)
!100 = !DILocation(line: 46, column: 3, scope: !86)
!101 = distinct !{!101, !88, !102}
!102 = !DILocation(line: 51, column: 3, scope: !33)
!103 = !DILocation(line: 53, column: 8, scope: !22)
!104 = !DILocation(line: 53, column: 3, scope: !22)
!105 = !DILocation(line: 54, column: 8, scope: !22)
!106 = !DILocation(line: 54, column: 3, scope: !22)
!107 = !DILocation(line: 55, column: 8, scope: !22)
!108 = !DILocation(line: 55, column: 3, scope: !22)
!109 = !DILocation(line: 57, column: 3, scope: !22)
!110 = !DILocation(line: 58, column: 1, scope: !22)
!111 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160957_main_l36_debug__", scope: !3, file: !3, line: 37, type: !112, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !114)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !14, !14, !14}
!114 = !{!115, !116, !117}
!115 = !DILocalVariable(name: "c", arg: 1, scope: !111, file: !3, line: 21, type: !14)
!116 = !DILocalVariable(name: "b", arg: 2, scope: !111, file: !3, line: 20, type: !14)
!117 = !DILocalVariable(name: "a", arg: 3, scope: !111, file: !3, line: 19, type: !14)
!118 = !DILocation(line: 21, column: 6, scope: !111)
!119 = !DILocation(line: 20, column: 6, scope: !111)
!120 = !DILocation(line: 19, column: 6, scope: !111)
!121 = !DILocation(line: 38, column: 5, scope: !122)
!122 = distinct !DILexicalBlock(scope: !111, file: !3, line: 37, column: 3)
!123 = !{!124, !37, i64 16}
!124 = !{!"ident_t", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !37, i64 16}
!125 = !DILocation(line: 44, column: 3, scope: !111)
!126 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 39, type: !127, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !134)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !129, !129, !133, !133, !133}
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!133 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !14, size: 64)
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!135 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !126, type: !129, flags: DIFlagArtificial)
!136 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !126, type: !129, flags: DIFlagArtificial)
!137 = !DILocalVariable(name: "c", arg: 3, scope: !126, file: !3, line: 21, type: !133)
!138 = !DILocalVariable(name: "b", arg: 4, scope: !126, file: !3, line: 20, type: !133)
!139 = !DILocalVariable(name: "a", arg: 5, scope: !126, file: !3, line: 19, type: !133)
!140 = !DILocalVariable(name: ".omp.iv", scope: !126, type: !15, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: ".omp.comb.lb", scope: !126, type: !15, flags: DIFlagArtificial)
!142 = !DILocalVariable(name: ".omp.comb.ub", scope: !126, type: !15, flags: DIFlagArtificial)
!143 = !DILocalVariable(name: ".omp.stride", scope: !126, type: !15, flags: DIFlagArtificial)
!144 = !DILocalVariable(name: ".omp.is_last", scope: !126, type: !15, flags: DIFlagArtificial)
!145 = !DILocalVariable(name: "i", scope: !126, type: !15, flags: DIFlagArtificial)
!146 = !DILocation(line: 0, scope: !126)
!147 = !DILocation(line: 21, column: 6, scope: !126)
!148 = !DILocation(line: 20, column: 6, scope: !126)
!149 = !DILocation(line: 19, column: 6, scope: !126)
!150 = !DILocation(line: 39, column: 5, scope: !126)
!151 = !DILocation(line: 39, column: 9, scope: !126)
!152 = !DILocation(line: 38, column: 5, scope: !126)
!153 = !DILocation(line: 38, column: 46, scope: !154)
!154 = distinct !DILexicalBlock(scope: !126, file: !3, line: 38, column: 5)
!155 = distinct !{!155, !152, !156}
!156 = !DILocation(line: 38, column: 46, scope: !126)
!157 = !DILocation(line: 43, column: 5, scope: !126)
!158 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !3, file: !3, line: 39, type: !159, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !163)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !129, !129, !161, !161, !133, !133, !133}
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!162 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177}
!164 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !158, type: !129, flags: DIFlagArtificial)
!165 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !158, type: !129, flags: DIFlagArtificial)
!166 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !158, type: !161, flags: DIFlagArtificial)
!167 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !158, type: !161, flags: DIFlagArtificial)
!168 = !DILocalVariable(name: "c", arg: 5, scope: !158, file: !3, line: 21, type: !133)
!169 = !DILocalVariable(name: "b", arg: 6, scope: !158, file: !3, line: 20, type: !133)
!170 = !DILocalVariable(name: "a", arg: 7, scope: !158, file: !3, line: 19, type: !133)
!171 = !DILocalVariable(name: ".omp.iv", scope: !158, type: !15, flags: DIFlagArtificial)
!172 = !DILocalVariable(name: ".omp.lb", scope: !158, type: !15, flags: DIFlagArtificial)
!173 = !DILocalVariable(name: ".omp.ub", scope: !158, type: !15, flags: DIFlagArtificial)
!174 = !DILocalVariable(name: ".omp.stride", scope: !158, type: !15, flags: DIFlagArtificial)
!175 = !DILocalVariable(name: ".omp.is_last", scope: !158, type: !15, flags: DIFlagArtificial)
!176 = !DILocalVariable(name: "i", scope: !158, type: !15, flags: DIFlagArtificial)
!177 = !DILocalVariable(name: "j", scope: !178, file: !3, line: 40, type: !15)
!178 = distinct !DILexicalBlock(scope: !179, file: !3, line: 40, column: 7)
!179 = distinct !DILexicalBlock(scope: !158, file: !3, line: 39, column: 27)
!180 = !DILocation(line: 0, scope: !158)
!181 = !{!182, !182, i64 0}
!182 = !{!"long", !38, i64 0}
!183 = !DILocation(line: 21, column: 6, scope: !158)
!184 = !DILocation(line: 20, column: 6, scope: !158)
!185 = !DILocation(line: 19, column: 6, scope: !158)
!186 = !DILocation(line: 39, column: 5, scope: !158)
!187 = !DILocation(line: 39, column: 9, scope: !158)
!188 = !DILocation(line: 39, column: 23, scope: !158)
!189 = !DILocation(line: 40, column: 11, scope: !178)
!190 = !DILocation(line: 40, column: 15, scope: !178)
!191 = !DILocation(line: 40, column: 20, scope: !192)
!192 = distinct !DILexicalBlock(scope: !178, file: !3, line: 40, column: 7)
!193 = !DILocation(line: 40, column: 21, scope: !192)
!194 = !DILocation(line: 40, column: 7, scope: !178)
!195 = !DILocation(line: 40, column: 7, scope: !192)
!196 = !DILocation(line: 41, column: 15, scope: !197)
!197 = distinct !DILexicalBlock(scope: !192, file: !3, line: 40, column: 29)
!198 = !DILocation(line: 41, column: 17, scope: !197)
!199 = !DILocation(line: 41, column: 19, scope: !197)
!200 = !DILocation(line: 41, column: 20, scope: !197)
!201 = !DILocation(line: 41, column: 18, scope: !197)
!202 = !DILocation(line: 41, column: 24, scope: !197)
!203 = !DILocation(line: 41, column: 26, scope: !197)
!204 = !DILocation(line: 41, column: 23, scope: !197)
!205 = !DILocation(line: 41, column: 9, scope: !197)
!206 = !DILocation(line: 41, column: 11, scope: !197)
!207 = !DILocation(line: 41, column: 13, scope: !197)
!208 = !DILocation(line: 42, column: 7, scope: !197)
!209 = !DILocation(line: 40, column: 26, scope: !192)
!210 = distinct !{!210, !194, !211}
!211 = !DILocation(line: 42, column: 7, scope: !178)
!212 = !DILocation(line: 43, column: 5, scope: !179)
!213 = !DILocation(line: 38, column: 5, scope: !158)
!214 = distinct !{!214, !213, !215}
!215 = !DILocation(line: 38, column: 46, scope: !158)
!216 = !DILocation(line: 43, column: 5, scope: !158)
!217 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 39, type: !159, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225}
!219 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !217, type: !129, flags: DIFlagArtificial)
!220 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !217, type: !129, flags: DIFlagArtificial)
!221 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !217, type: !161, flags: DIFlagArtificial)
!222 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !217, type: !161, flags: DIFlagArtificial)
!223 = !DILocalVariable(name: "c", arg: 5, scope: !217, type: !133, flags: DIFlagArtificial)
!224 = !DILocalVariable(name: "b", arg: 6, scope: !217, type: !133, flags: DIFlagArtificial)
!225 = !DILocalVariable(name: "a", arg: 7, scope: !217, type: !133, flags: DIFlagArtificial)
!226 = !DILocation(line: 0, scope: !217)
!227 = !DILocation(line: 39, column: 5, scope: !217)
!228 = !{!229}
!229 = !{i64 2, i64 -1, i64 -1, i1 true}
!230 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !3, file: !3, line: 39, type: !127, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !231)
!231 = !{!232, !233, !234, !235, !236}
!232 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !230, type: !129, flags: DIFlagArtificial)
!233 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !230, type: !129, flags: DIFlagArtificial)
!234 = !DILocalVariable(name: "c", arg: 3, scope: !230, type: !133, flags: DIFlagArtificial)
!235 = !DILocalVariable(name: "b", arg: 4, scope: !230, type: !133, flags: DIFlagArtificial)
!236 = !DILocalVariable(name: "a", arg: 5, scope: !230, type: !133, flags: DIFlagArtificial)
!237 = !DILocation(line: 0, scope: !230)
!238 = !DILocation(line: 39, column: 5, scope: !230)
!239 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160957_main_l36", scope: !3, file: !3, line: 37, type: !112, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !240)
!240 = !{!241, !242, !243}
!241 = !DILocalVariable(name: "c", arg: 1, scope: !239, type: !14, flags: DIFlagArtificial)
!242 = !DILocalVariable(name: "b", arg: 2, scope: !239, type: !14, flags: DIFlagArtificial)
!243 = !DILocalVariable(name: "a", arg: 3, scope: !239, type: !14, flags: DIFlagArtificial)
!244 = !DILocation(line: 0, scope: !239)
!245 = !DILocation(line: 37, column: 3, scope: !239)
