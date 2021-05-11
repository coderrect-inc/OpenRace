; ModuleID = 'integration/dataracebench/DRB160-nobarrier-orig-gpu-yes.c'
source_filename = "integration/dataracebench/DRB160-nobarrier-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@b = common dso_local global [16 x i32] zeroinitializer, align 16, !dbg !0
@c = common dso_local global [16 x i32] zeroinitializer, align 16, !dbg !9
@temp = common dso_local global [16 x i32] zeroinitializer, align 16, !dbg !14
@a = common dso_local global i32 0, align 4, !dbg !6
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB160-nobarrier-orig-gpu-yes.c;main;40;7;;\00", align 1
@2 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB160-nobarrier-orig-gpu-yes.c;main;45;7;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB160-nobarrier-orig-gpu-yes.c;main;38;5;;\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"index: %d val: %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !20 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  %i5 = alloca i32, align 4
  %i13 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !31
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !24, metadata !DIExpression()), !dbg !32
  store i32 0, i32* %i, align 4, !dbg !32, !tbaa !33
  br label %for.cond, !dbg !31

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !37, !tbaa !33
  %cmp = icmp slt i32 %1, 16, !dbg !39
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !40

for.cond.cleanup:                                 ; preds = %for.cond
  %2 = bitcast i32* %i to i8*, !dbg !41
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #5, !dbg !41
  br label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !42, !tbaa !33
  %idxprom = sext i32 %3 to i64, !dbg !44
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @b, i64 0, i64 %idxprom, !dbg !44
  store i32 0, i32* %arrayidx, align 4, !dbg !45, !tbaa !33
  %4 = load i32, i32* %i, align 4, !dbg !46, !tbaa !33
  %idxprom1 = sext i32 %4 to i64, !dbg !47
  %arrayidx2 = getelementptr inbounds [16 x i32], [16 x i32]* @c, i64 0, i64 %idxprom1, !dbg !47
  store i32 2, i32* %arrayidx2, align 4, !dbg !48, !tbaa !33
  %5 = load i32, i32* %i, align 4, !dbg !49, !tbaa !33
  %idxprom3 = sext i32 %5 to i64, !dbg !50
  %arrayidx4 = getelementptr inbounds [16 x i32], [16 x i32]* @temp, i64 0, i64 %idxprom3, !dbg !50
  store i32 0, i32* %arrayidx4, align 4, !dbg !51, !tbaa !33
  br label %for.inc, !dbg !52

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !53, !tbaa !33
  %inc = add nsw i32 %6, 1, !dbg !53
  store i32 %inc, i32* %i, align 4, !dbg !53, !tbaa !33
  br label %for.cond, !dbg !41, !llvm.loop !54

for.end:                                          ; preds = %for.cond.cleanup
  store i32 2, i32* @a, align 4, !dbg !56, !tbaa !33
  call void @__omp_offloading_1030a_2160962_main_l36([16 x i32]* @temp, [16 x i32]* @b, [16 x i32]* @c, i32* @a) #5, !dbg !57
  %7 = bitcast i32* %val to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %val, metadata !26, metadata !DIExpression()), !dbg !60
  store i32 0, i32* %val, align 4, !dbg !60, !tbaa !33
  %8 = bitcast i32* %i5 to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !27, metadata !DIExpression()), !dbg !62
  store i32 0, i32* %i5, align 4, !dbg !62, !tbaa !33
  br label %for.cond6, !dbg !61

for.cond6:                                        ; preds = %for.inc10, %for.end
  %9 = load i32, i32* %i5, align 4, !dbg !63, !tbaa !33
  %cmp7 = icmp slt i32 %9, 100, !dbg !65
  br i1 %cmp7, label %for.body9, label %for.cond.cleanup8, !dbg !66

for.cond.cleanup8:                                ; preds = %for.cond6
  %10 = bitcast i32* %i5 to i8*, !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #5, !dbg !67
  br label %for.end12

for.body9:                                        ; preds = %for.cond6
  %11 = load i32, i32* %val, align 4, !dbg !68, !tbaa !33
  %add = add nsw i32 %11, 2, !dbg !70
  store i32 %add, i32* %val, align 4, !dbg !71, !tbaa !33
  %12 = load i32, i32* %val, align 4, !dbg !72, !tbaa !33
  %mul = mul nsw i32 %12, 2, !dbg !73
  store i32 %mul, i32* %val, align 4, !dbg !74, !tbaa !33
  br label %for.inc10, !dbg !75

for.inc10:                                        ; preds = %for.body9
  %13 = load i32, i32* %i5, align 4, !dbg !76, !tbaa !33
  %inc11 = add nsw i32 %13, 1, !dbg !76
  store i32 %inc11, i32* %i5, align 4, !dbg !76, !tbaa !33
  br label %for.cond6, !dbg !67, !llvm.loop !77

for.end12:                                        ; preds = %for.cond.cleanup8
  %14 = bitcast i32* %i13 to i8*, !dbg !79
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #5, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %i13, metadata !29, metadata !DIExpression()), !dbg !80
  store i32 0, i32* %i13, align 4, !dbg !80, !tbaa !33
  br label %for.cond14, !dbg !79

for.cond14:                                       ; preds = %for.inc23, %for.end12
  %15 = load i32, i32* %i13, align 4, !dbg !81, !tbaa !33
  %cmp15 = icmp slt i32 %15, 16, !dbg !83
  br i1 %cmp15, label %for.body17, label %for.cond.cleanup16, !dbg !84

for.cond.cleanup16:                               ; preds = %for.cond14
  %16 = bitcast i32* %i13 to i8*, !dbg !85
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #5, !dbg !85
  br label %for.end25

for.body17:                                       ; preds = %for.cond14
  %17 = load i32, i32* %i13, align 4, !dbg !86, !tbaa !33
  %idxprom18 = sext i32 %17 to i64, !dbg !89
  %arrayidx19 = getelementptr inbounds [16 x i32], [16 x i32]* @b, i64 0, i64 %idxprom18, !dbg !89
  %18 = load i32, i32* %arrayidx19, align 4, !dbg !89, !tbaa !33
  %19 = load i32, i32* %val, align 4, !dbg !90, !tbaa !33
  %cmp20 = icmp ne i32 %18, %19, !dbg !91
  br i1 %cmp20, label %if.then, label %if.end, !dbg !92

if.then:                                          ; preds = %for.body17
  %20 = load i32, i32* %i13, align 4, !dbg !93, !tbaa !33
  %21 = load i32, i32* %i13, align 4, !dbg !95, !tbaa !33
  %idxprom21 = sext i32 %21 to i64, !dbg !96
  %arrayidx22 = getelementptr inbounds [16 x i32], [16 x i32]* @b, i64 0, i64 %idxprom21, !dbg !96
  %22 = load i32, i32* %arrayidx22, align 4, !dbg !96, !tbaa !33
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %22), !dbg !97
  br label %if.end, !dbg !98

if.end:                                           ; preds = %if.then, %for.body17
  br label %for.inc23, !dbg !99

for.inc23:                                        ; preds = %if.end
  %23 = load i32, i32* %i13, align 4, !dbg !100, !tbaa !33
  %inc24 = add nsw i32 %23, 1, !dbg !100
  store i32 %inc24, i32* %i13, align 4, !dbg !100, !tbaa !33
  br label %for.cond14, !dbg !85, !llvm.loop !101

for.end25:                                        ; preds = %for.cond.cleanup16
  %24 = bitcast i32* %val to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !103
  ret i32 0, !dbg !104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160962_main_l36_debug__([16 x i32]* dereferenceable(64) %temp, [16 x i32]* dereferenceable(64) %b, [16 x i32]* dereferenceable(64) %c, i32* dereferenceable(4) %a) #3 !dbg !105 {
entry:
  %temp.addr = alloca [16 x i32]*, align 8
  %b.addr = alloca [16 x i32]*, align 8
  %c.addr = alloca [16 x i32]*, align 8
  %a.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store [16 x i32]* %temp, [16 x i32]** %temp.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [16 x i32]** %temp.addr, metadata !111, metadata !DIExpression()), !dbg !117
  store [16 x i32]* %b, [16 x i32]** %b.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [16 x i32]** %b.addr, metadata !112, metadata !DIExpression()), !dbg !118
  store [16 x i32]* %c, [16 x i32]** %c.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [16 x i32]** %c.addr, metadata !113, metadata !DIExpression()), !dbg !119
  store i32* %a, i32** %a.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !114, metadata !DIExpression()), !dbg !120
  %2 = load [16 x i32]*, [16 x i32]** %temp.addr, align 8, !dbg !121, !tbaa !115
  %3 = load [16 x i32]*, [16 x i32]** %b.addr, align 8, !dbg !121, !tbaa !115
  %4 = load [16 x i32]*, [16 x i32]** %c.addr, align 8, !dbg !121, !tbaa !115
  %5 = load i32*, i32** %a.addr, align 8, !dbg !121, !tbaa !115
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !122
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @4, i32 0, i32 0), i8** %6, align 8, !dbg !122, !tbaa !124
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [16 x i32]*, [16 x i32]*, [16 x i32]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), [16 x i32]* %2, [16 x i32]* %3, [16 x i32]* %4, i32* %5), !dbg !122
  ret void, !dbg !126
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [16 x i32]* dereferenceable(64) %temp, [16 x i32]* dereferenceable(64) %b, [16 x i32]* dereferenceable(64) %c, i32* dereferenceable(4) %a) #3 !dbg !127 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %temp.addr = alloca [16 x i32]*, align 8
  %b.addr = alloca [16 x i32]*, align 8
  %c.addr = alloca [16 x i32]*, align 8
  %a.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i1 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.iv10 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %.omp.lb12 = alloca i32, align 4
  %.omp.ub13 = alloca i32, align 4
  %.omp.stride14 = alloca i32, align 4
  %.omp.is_last15 = alloca i32, align 4
  %i16 = alloca i32, align 4
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !135, metadata !DIExpression()), !dbg !159
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !136, metadata !DIExpression()), !dbg !159
  store [16 x i32]* %temp, [16 x i32]** %temp.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [16 x i32]** %temp.addr, metadata !137, metadata !DIExpression()), !dbg !160
  store [16 x i32]* %b, [16 x i32]** %b.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [16 x i32]** %b.addr, metadata !138, metadata !DIExpression()), !dbg !161
  store [16 x i32]* %c, [16 x i32]** %c.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [16 x i32]** %c.addr, metadata !139, metadata !DIExpression()), !dbg !162
  store i32* %a, i32** %a.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !140, metadata !DIExpression()), !dbg !163
  %2 = load [16 x i32]*, [16 x i32]** %temp.addr, align 8, !dbg !164, !tbaa !115
  %3 = load [16 x i32]*, [16 x i32]** %b.addr, align 8, !dbg !164, !tbaa !115
  %4 = load [16 x i32]*, [16 x i32]** %c.addr, align 8, !dbg !164, !tbaa !115
  %5 = load i32*, i32** %a.addr, align 8, !dbg !164, !tbaa !115
  %6 = bitcast i32* %i to i8*, !dbg !165
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !165
  call void @llvm.dbg.declare(metadata i32* %i, metadata !141, metadata !DIExpression()), !dbg !166
  store i32 0, i32* %i, align 4, !dbg !166, !tbaa !33
  br label %for.cond, !dbg !165

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !dbg !167, !tbaa !33
  %cmp = icmp slt i32 %7, 100, !dbg !168
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !169

for.cond.cleanup:                                 ; preds = %for.cond
  %8 = bitcast i32* %i to i8*, !dbg !170
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #5, !dbg !170
  br label %for.end

for.body:                                         ; preds = %for.cond
  %9 = bitcast i32* %.omp.iv to i8*, !dbg !171
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !171
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !143, metadata !DIExpression()), !dbg !172
  %10 = bitcast i32* %.omp.lb to i8*, !dbg !171
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !171
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !147, metadata !DIExpression()), !dbg !172
  store i32 0, i32* %.omp.lb, align 4, !dbg !173, !tbaa !33
  %11 = bitcast i32* %.omp.ub to i8*, !dbg !171
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #5, !dbg !171
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !148, metadata !DIExpression()), !dbg !172
  store i32 15, i32* %.omp.ub, align 4, !dbg !173, !tbaa !33
  %12 = bitcast i32* %.omp.stride to i8*, !dbg !171
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #5, !dbg !171
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !149, metadata !DIExpression()), !dbg !172
  store i32 1, i32* %.omp.stride, align 4, !dbg !173, !tbaa !33
  %13 = bitcast i32* %.omp.is_last to i8*, !dbg !171
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #5, !dbg !171
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !150, metadata !DIExpression()), !dbg !172
  store i32 0, i32* %.omp.is_last, align 4, !dbg !173, !tbaa !33
  %14 = bitcast i32* %i1 to i8*, !dbg !171
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #5, !dbg !171
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !151, metadata !DIExpression()), !dbg !172
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !171
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %15, align 8, !dbg !171, !tbaa !124
  %16 = load i32*, i32** %.global_tid..addr, align 8, !dbg !171
  %17 = load i32, i32* %16, align 4, !dbg !171, !tbaa !33
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %17, i32 92, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !171
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !173, !tbaa !33
  %cmp2 = icmp sgt i32 %18, 15, !dbg !173
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !173

cond.true:                                        ; preds = %for.body
  br label %cond.end, !dbg !173

cond.false:                                       ; preds = %for.body
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !173, !tbaa !33
  br label %cond.end, !dbg !173

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 15, %cond.true ], [ %19, %cond.false ], !dbg !173
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !173, !tbaa !33
  %20 = load i32, i32* %.omp.lb, align 4, !dbg !173, !tbaa !33
  store i32 %20, i32* %.omp.iv, align 4, !dbg !173, !tbaa !33
  br label %omp.inner.for.cond, !dbg !171

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !173, !tbaa !33
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !173, !tbaa !33
  %cmp3 = icmp sle i32 %21, %22, !dbg !174
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !171

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !171

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !173, !tbaa !33
  %mul = mul nsw i32 %23, 1, !dbg !175
  %add = add nsw i32 0, %mul, !dbg !175
  store i32 %add, i32* %i1, align 4, !dbg !175, !tbaa !33
  %24 = load i32, i32* %i1, align 4, !dbg !176, !tbaa !33
  %idxprom = sext i32 %24 to i64, !dbg !178
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %idxprom, !dbg !178
  %25 = load i32, i32* %arrayidx, align 4, !dbg !178, !tbaa !33
  %26 = load i32, i32* %i1, align 4, !dbg !179, !tbaa !33
  %idxprom4 = sext i32 %26 to i64, !dbg !180
  %arrayidx5 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %idxprom4, !dbg !180
  %27 = load i32, i32* %arrayidx5, align 4, !dbg !180, !tbaa !33
  %add6 = add nsw i32 %25, %27, !dbg !181
  %28 = load i32, i32* %i1, align 4, !dbg !182, !tbaa !33
  %idxprom7 = sext i32 %28 to i64, !dbg !183
  %arrayidx8 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %idxprom7, !dbg !183
  store i32 %add6, i32* %arrayidx8, align 4, !dbg !184, !tbaa !33
  br label %omp.body.continue, !dbg !185

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !186

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !173, !tbaa !33
  %add9 = add nsw i32 %29, 1, !dbg !174
  store i32 %add9, i32* %.omp.iv, align 4, !dbg !174, !tbaa !33
  br label %omp.inner.for.cond, !dbg !186, !llvm.loop !187

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !186

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %30 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !186
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %30, align 8, !dbg !186, !tbaa !124
  %31 = load i32*, i32** %.global_tid..addr, align 8, !dbg !186
  %32 = load i32, i32* %31, align 4, !dbg !186, !tbaa !33
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %32), !dbg !186
  %33 = bitcast i32* %i1 to i8*, !dbg !186
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #5, !dbg !186
  %34 = bitcast i32* %.omp.is_last to i8*, !dbg !186
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #5, !dbg !186
  %35 = bitcast i32* %.omp.stride to i8*, !dbg !186
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #5, !dbg !186
  %36 = bitcast i32* %.omp.ub to i8*, !dbg !186
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #5, !dbg !186
  %37 = bitcast i32* %.omp.lb to i8*, !dbg !186
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #5, !dbg !186
  %38 = bitcast i32* %.omp.iv to i8*, !dbg !186
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #5, !dbg !186
  %39 = bitcast i32* %.omp.iv10 to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %39) #5, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %.omp.iv10, metadata !152, metadata !DIExpression()), !dbg !190
  %40 = bitcast i32* %.omp.lb12 to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %40) #5, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %.omp.lb12, metadata !154, metadata !DIExpression()), !dbg !190
  store i32 0, i32* %.omp.lb12, align 4, !dbg !191, !tbaa !33
  %41 = bitcast i32* %.omp.ub13 to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %41) #5, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %.omp.ub13, metadata !155, metadata !DIExpression()), !dbg !190
  store i32 15, i32* %.omp.ub13, align 4, !dbg !191, !tbaa !33
  %42 = bitcast i32* %.omp.stride14 to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %42) #5, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %.omp.stride14, metadata !156, metadata !DIExpression()), !dbg !190
  store i32 1, i32* %.omp.stride14, align 4, !dbg !191, !tbaa !33
  %43 = bitcast i32* %.omp.is_last15 to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %43) #5, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last15, metadata !157, metadata !DIExpression()), !dbg !190
  store i32 0, i32* %.omp.is_last15, align 4, !dbg !191, !tbaa !33
  %44 = bitcast i32* %i16 to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %44) #5, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %i16, metadata !158, metadata !DIExpression()), !dbg !190
  %45 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !189
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @2, i32 0, i32 0), i8** %45, align 8, !dbg !189, !tbaa !124
  %46 = load i32*, i32** %.global_tid..addr, align 8, !dbg !189
  %47 = load i32, i32* %46, align 4, !dbg !189, !tbaa !33
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %47, i32 92, i32* %.omp.is_last15, i32* %.omp.lb12, i32* %.omp.ub13, i32* %.omp.stride14, i32 1, i32 1), !dbg !189
  %48 = load i32, i32* %.omp.ub13, align 4, !dbg !191, !tbaa !33
  %cmp17 = icmp sgt i32 %48, 15, !dbg !191
  br i1 %cmp17, label %cond.true18, label %cond.false19, !dbg !191

cond.true18:                                      ; preds = %omp.loop.exit
  br label %cond.end20, !dbg !191

cond.false19:                                     ; preds = %omp.loop.exit
  %49 = load i32, i32* %.omp.ub13, align 4, !dbg !191, !tbaa !33
  br label %cond.end20, !dbg !191

cond.end20:                                       ; preds = %cond.false19, %cond.true18
  %cond21 = phi i32 [ 15, %cond.true18 ], [ %49, %cond.false19 ], !dbg !191
  store i32 %cond21, i32* %.omp.ub13, align 4, !dbg !191, !tbaa !33
  %50 = load i32, i32* %.omp.lb12, align 4, !dbg !191, !tbaa !33
  store i32 %50, i32* %.omp.iv10, align 4, !dbg !191, !tbaa !33
  br label %omp.inner.for.cond22, !dbg !189

omp.inner.for.cond22:                             ; preds = %omp.inner.for.inc33, %cond.end20
  %51 = load i32, i32* %.omp.iv10, align 4, !dbg !191, !tbaa !33
  %52 = load i32, i32* %.omp.ub13, align 4, !dbg !191, !tbaa !33
  %cmp23 = icmp sle i32 %51, %52, !dbg !192
  br i1 %cmp23, label %omp.inner.for.body25, label %omp.inner.for.cond.cleanup24, !dbg !189

omp.inner.for.cond.cleanup24:                     ; preds = %omp.inner.for.cond22
  br label %omp.inner.for.end35, !dbg !189

omp.inner.for.body25:                             ; preds = %omp.inner.for.cond22
  %53 = load i32, i32* %.omp.iv10, align 4, !dbg !191, !tbaa !33
  %mul26 = mul nsw i32 %53, 1, !dbg !193
  %sub = sub nsw i32 15, %mul26, !dbg !193
  store i32 %sub, i32* %i16, align 4, !dbg !193, !tbaa !33
  %54 = load i32, i32* %i16, align 4, !dbg !194, !tbaa !33
  %idxprom27 = sext i32 %54 to i64, !dbg !196
  %arrayidx28 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %idxprom27, !dbg !196
  %55 = load i32, i32* %arrayidx28, align 4, !dbg !196, !tbaa !33
  %56 = load i32, i32* %5, align 4, !dbg !197, !tbaa !33
  %mul29 = mul nsw i32 %55, %56, !dbg !198
  %57 = load i32, i32* %i16, align 4, !dbg !199, !tbaa !33
  %idxprom30 = sext i32 %57 to i64, !dbg !200
  %arrayidx31 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %idxprom30, !dbg !200
  store i32 %mul29, i32* %arrayidx31, align 4, !dbg !201, !tbaa !33
  br label %omp.body.continue32, !dbg !202

omp.body.continue32:                              ; preds = %omp.inner.for.body25
  br label %omp.inner.for.inc33, !dbg !203

omp.inner.for.inc33:                              ; preds = %omp.body.continue32
  %58 = load i32, i32* %.omp.iv10, align 4, !dbg !191, !tbaa !33
  %add34 = add nsw i32 %58, 1, !dbg !192
  store i32 %add34, i32* %.omp.iv10, align 4, !dbg !192, !tbaa !33
  br label %omp.inner.for.cond22, !dbg !203, !llvm.loop !204

omp.inner.for.end35:                              ; preds = %omp.inner.for.cond.cleanup24
  br label %omp.loop.exit36, !dbg !203

omp.loop.exit36:                                  ; preds = %omp.inner.for.end35
  %59 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !203
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @2, i32 0, i32 0), i8** %59, align 8, !dbg !203, !tbaa !124
  %60 = load i32*, i32** %.global_tid..addr, align 8, !dbg !203
  %61 = load i32, i32* %60, align 4, !dbg !203, !tbaa !33
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %61), !dbg !203
  %62 = bitcast i32* %i16 to i8*, !dbg !203
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #5, !dbg !203
  %63 = bitcast i32* %.omp.is_last15 to i8*, !dbg !203
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #5, !dbg !203
  %64 = bitcast i32* %.omp.stride14 to i8*, !dbg !203
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #5, !dbg !203
  %65 = bitcast i32* %.omp.ub13 to i8*, !dbg !203
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #5, !dbg !203
  %66 = bitcast i32* %.omp.lb12 to i8*, !dbg !203
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #5, !dbg !203
  %67 = bitcast i32* %.omp.iv10 to i8*, !dbg !203
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #5, !dbg !203
  br label %for.inc, !dbg !206

for.inc:                                          ; preds = %omp.loop.exit36
  %68 = load i32, i32* %i, align 4, !dbg !207, !tbaa !33
  %inc = add nsw i32 %68, 1, !dbg !207
  store i32 %inc, i32* %i, align 4, !dbg !207, !tbaa !33
  br label %for.cond, !dbg !170, !llvm.loop !208

for.end:                                          ; preds = %for.cond.cleanup
  ret void, !dbg !210
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [16 x i32]* dereferenceable(64) %temp, [16 x i32]* dereferenceable(64) %b, [16 x i32]* dereferenceable(64) %c, i32* dereferenceable(4) %a) #3 !dbg !211 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %temp.addr = alloca [16 x i32]*, align 8
  %b.addr = alloca [16 x i32]*, align 8
  %c.addr = alloca [16 x i32]*, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !213, metadata !DIExpression()), !dbg !219
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !214, metadata !DIExpression()), !dbg !219
  store [16 x i32]* %temp, [16 x i32]** %temp.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [16 x i32]** %temp.addr, metadata !215, metadata !DIExpression()), !dbg !219
  store [16 x i32]* %b, [16 x i32]** %b.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [16 x i32]** %b.addr, metadata !216, metadata !DIExpression()), !dbg !219
  store [16 x i32]* %c, [16 x i32]** %c.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [16 x i32]** %c.addr, metadata !217, metadata !DIExpression()), !dbg !219
  store i32* %a, i32** %a.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !218, metadata !DIExpression()), !dbg !219
  %0 = load [16 x i32]*, [16 x i32]** %temp.addr, align 8, !dbg !220, !tbaa !115
  %1 = load [16 x i32]*, [16 x i32]** %b.addr, align 8, !dbg !220, !tbaa !115
  %2 = load [16 x i32]*, [16 x i32]** %c.addr, align 8, !dbg !220, !tbaa !115
  %3 = load i32*, i32** %a.addr, align 8, !dbg !220, !tbaa !115
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !220, !tbaa !115
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !220, !tbaa !115
  %6 = load [16 x i32]*, [16 x i32]** %temp.addr, align 8, !dbg !220, !tbaa !115
  %7 = load [16 x i32]*, [16 x i32]** %b.addr, align 8, !dbg !220, !tbaa !115
  %8 = load [16 x i32]*, [16 x i32]** %c.addr, align 8, !dbg !220, !tbaa !115
  %9 = load i32*, i32** %a.addr, align 8, !dbg !220, !tbaa !115
  call void @.omp_outlined._debug__(i32* %4, i32* %5, [16 x i32]* %6, [16 x i32]* %7, [16 x i32]* %8, i32* %9) #5, !dbg !220
  ret void, !dbg !220
}

declare !callback !221 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160962_main_l36([16 x i32]* dereferenceable(64) %temp, [16 x i32]* dereferenceable(64) %b, [16 x i32]* dereferenceable(64) %c, i32* dereferenceable(4) %a) #3 !dbg !223 {
entry:
  %temp.addr = alloca [16 x i32]*, align 8
  %b.addr = alloca [16 x i32]*, align 8
  %c.addr = alloca [16 x i32]*, align 8
  %a.addr = alloca i32*, align 8
  store [16 x i32]* %temp, [16 x i32]** %temp.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [16 x i32]** %temp.addr, metadata !225, metadata !DIExpression()), !dbg !229
  store [16 x i32]* %b, [16 x i32]** %b.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [16 x i32]** %b.addr, metadata !226, metadata !DIExpression()), !dbg !229
  store [16 x i32]* %c, [16 x i32]** %c.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [16 x i32]** %c.addr, metadata !227, metadata !DIExpression()), !dbg !229
  store i32* %a, i32** %a.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !228, metadata !DIExpression()), !dbg !229
  %0 = load [16 x i32]*, [16 x i32]** %temp.addr, align 8, !dbg !230, !tbaa !115
  %1 = load [16 x i32]*, [16 x i32]** %b.addr, align 8, !dbg !230, !tbaa !115
  %2 = load [16 x i32]*, [16 x i32]** %c.addr, align 8, !dbg !230, !tbaa !115
  %3 = load i32*, i32** %a.addr, align 8, !dbg !230, !tbaa !115
  %4 = load [16 x i32]*, [16 x i32]** %temp.addr, align 8, !dbg !230, !tbaa !115
  %5 = load [16 x i32]*, [16 x i32]** %b.addr, align 8, !dbg !230, !tbaa !115
  %6 = load [16 x i32]*, [16 x i32]** %c.addr, align 8, !dbg !230, !tbaa !115
  %7 = load i32*, i32** %a.addr, align 8, !dbg !230, !tbaa !115
  call void @__omp_offloading_1030a_2160962_main_l36_debug__([16 x i32]* %4, [16 x i32]* %5, [16 x i32]* %6, i32* %7) #5, !dbg !230
  ret void, !dbg !230
}

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 24, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB160-nobarrier-orig-gpu-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!6, !0, !9, !14}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 23, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 25, type: !11, isLocal: false, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 512, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 16)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "temp", scope: !2, file: !3, line: 26, type: !11, isLocal: false, isDefinition: true)
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 10.0.1 "}
!20 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 28, type: !21, scopeLine: 28, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !23)
!21 = !DISubroutineType(types: !22)
!22 = !{!8}
!23 = !{!24, !26, !27, !29}
!24 = !DILocalVariable(name: "i", scope: !25, file: !3, line: 29, type: !8)
!25 = distinct !DILexicalBlock(scope: !20, file: !3, line: 29, column: 3)
!26 = !DILocalVariable(name: "val", scope: !20, file: !3, line: 52, type: !8)
!27 = !DILocalVariable(name: "i", scope: !28, file: !3, line: 54, type: !8)
!28 = distinct !DILexicalBlock(scope: !20, file: !3, line: 54, column: 3)
!29 = !DILocalVariable(name: "i", scope: !30, file: !3, line: 59, type: !8)
!30 = distinct !DILexicalBlock(scope: !20, file: !3, line: 59, column: 3)
!31 = !DILocation(line: 29, column: 7, scope: !25)
!32 = !DILocation(line: 29, column: 11, scope: !25)
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 29, column: 16, scope: !38)
!38 = distinct !DILexicalBlock(scope: !25, file: !3, line: 29, column: 3)
!39 = !DILocation(line: 29, column: 17, scope: !38)
!40 = !DILocation(line: 29, column: 3, scope: !25)
!41 = !DILocation(line: 29, column: 3, scope: !38)
!42 = !DILocation(line: 30, column: 7, scope: !43)
!43 = distinct !DILexicalBlock(scope: !38, file: !3, line: 29, column: 25)
!44 = !DILocation(line: 30, column: 5, scope: !43)
!45 = !DILocation(line: 30, column: 9, scope: !43)
!46 = !DILocation(line: 31, column: 7, scope: !43)
!47 = !DILocation(line: 31, column: 5, scope: !43)
!48 = !DILocation(line: 31, column: 9, scope: !43)
!49 = !DILocation(line: 32, column: 10, scope: !43)
!50 = !DILocation(line: 32, column: 5, scope: !43)
!51 = !DILocation(line: 32, column: 12, scope: !43)
!52 = !DILocation(line: 33, column: 3, scope: !43)
!53 = !DILocation(line: 29, column: 22, scope: !38)
!54 = distinct !{!54, !40, !55}
!55 = !DILocation(line: 33, column: 3, scope: !25)
!56 = !DILocation(line: 34, column: 4, scope: !20)
!57 = !DILocation(line: 36, column: 3, scope: !58)
!58 = distinct !DILexicalBlock(scope: !20, file: !3, line: 36, column: 3)
!59 = !DILocation(line: 52, column: 3, scope: !20)
!60 = !DILocation(line: 52, column: 7, scope: !20)
!61 = !DILocation(line: 54, column: 7, scope: !28)
!62 = !DILocation(line: 54, column: 11, scope: !28)
!63 = !DILocation(line: 54, column: 16, scope: !64)
!64 = distinct !DILexicalBlock(scope: !28, file: !3, line: 54, column: 3)
!65 = !DILocation(line: 54, column: 17, scope: !64)
!66 = !DILocation(line: 54, column: 3, scope: !28)
!67 = !DILocation(line: 54, column: 3, scope: !64)
!68 = !DILocation(line: 55, column: 11, scope: !69)
!69 = distinct !DILexicalBlock(scope: !64, file: !3, line: 54, column: 25)
!70 = !DILocation(line: 55, column: 15, scope: !69)
!71 = !DILocation(line: 55, column: 9, scope: !69)
!72 = !DILocation(line: 56, column: 11, scope: !69)
!73 = !DILocation(line: 56, column: 15, scope: !69)
!74 = !DILocation(line: 56, column: 9, scope: !69)
!75 = !DILocation(line: 57, column: 3, scope: !69)
!76 = !DILocation(line: 54, column: 22, scope: !64)
!77 = distinct !{!77, !66, !78}
!78 = !DILocation(line: 57, column: 3, scope: !28)
!79 = !DILocation(line: 59, column: 7, scope: !30)
!80 = !DILocation(line: 59, column: 11, scope: !30)
!81 = !DILocation(line: 59, column: 16, scope: !82)
!82 = distinct !DILexicalBlock(scope: !30, file: !3, line: 59, column: 3)
!83 = !DILocation(line: 59, column: 17, scope: !82)
!84 = !DILocation(line: 59, column: 3, scope: !30)
!85 = !DILocation(line: 59, column: 3, scope: !82)
!86 = !DILocation(line: 60, column: 10, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !3, line: 60, column: 8)
!88 = distinct !DILexicalBlock(scope: !82, file: !3, line: 59, column: 25)
!89 = !DILocation(line: 60, column: 8, scope: !87)
!90 = !DILocation(line: 60, column: 14, scope: !87)
!91 = !DILocation(line: 60, column: 12, scope: !87)
!92 = !DILocation(line: 60, column: 8, scope: !88)
!93 = !DILocation(line: 61, column: 36, scope: !94)
!94 = distinct !DILexicalBlock(scope: !87, file: !3, line: 60, column: 18)
!95 = !DILocation(line: 61, column: 41, scope: !94)
!96 = !DILocation(line: 61, column: 39, scope: !94)
!97 = !DILocation(line: 61, column: 7, scope: !94)
!98 = !DILocation(line: 62, column: 5, scope: !94)
!99 = !DILocation(line: 63, column: 3, scope: !88)
!100 = !DILocation(line: 59, column: 22, scope: !82)
!101 = distinct !{!101, !84, !102}
!102 = !DILocation(line: 63, column: 3, scope: !30)
!103 = !DILocation(line: 66, column: 1, scope: !20)
!104 = !DILocation(line: 65, column: 3, scope: !20)
!105 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160962_main_l36_debug__", scope: !3, file: !3, line: 37, type: !106, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !110)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !108, !108, !108, !109}
!108 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !11, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!110 = !{!111, !112, !113, !114}
!111 = !DILocalVariable(name: "temp", arg: 1, scope: !105, file: !3, line: 26, type: !108)
!112 = !DILocalVariable(name: "b", arg: 2, scope: !105, file: !3, line: 24, type: !108)
!113 = !DILocalVariable(name: "c", arg: 3, scope: !105, file: !3, line: 25, type: !108)
!114 = !DILocalVariable(name: "a", arg: 4, scope: !105, file: !3, line: 23, type: !109)
!115 = !{!116, !116, i64 0}
!116 = !{!"any pointer", !35, i64 0}
!117 = !DILocation(line: 26, column: 5, scope: !105)
!118 = !DILocation(line: 24, column: 5, scope: !105)
!119 = !DILocation(line: 25, column: 5, scope: !105)
!120 = !DILocation(line: 23, column: 5, scope: !105)
!121 = !DILocation(line: 37, column: 3, scope: !105)
!122 = !DILocation(line: 38, column: 5, scope: !123)
!123 = distinct !DILexicalBlock(scope: !105, file: !3, line: 37, column: 3)
!124 = !{!125, !116, i64 16}
!125 = !{!"ident_t", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !116, i64 16}
!126 = !DILocation(line: 50, column: 3, scope: !105)
!127 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 39, type: !128, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !134)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !130, !130, !108, !108, !108, !109}
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!134 = !{!135, !136, !137, !138, !139, !140, !141, !143, !147, !148, !149, !150, !151, !152, !154, !155, !156, !157, !158}
!135 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !127, type: !130, flags: DIFlagArtificial)
!136 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !127, type: !130, flags: DIFlagArtificial)
!137 = !DILocalVariable(name: "temp", arg: 3, scope: !127, file: !3, line: 26, type: !108)
!138 = !DILocalVariable(name: "b", arg: 4, scope: !127, file: !3, line: 24, type: !108)
!139 = !DILocalVariable(name: "c", arg: 5, scope: !127, file: !3, line: 25, type: !108)
!140 = !DILocalVariable(name: "a", arg: 6, scope: !127, file: !3, line: 23, type: !109)
!141 = !DILocalVariable(name: "i", scope: !142, file: !3, line: 39, type: !8)
!142 = distinct !DILexicalBlock(scope: !127, file: !3, line: 39, column: 5)
!143 = !DILocalVariable(name: ".omp.iv", scope: !144, type: !8, flags: DIFlagArtificial)
!144 = distinct !DILexicalBlock(scope: !145, file: !3, line: 40, column: 7)
!145 = distinct !DILexicalBlock(scope: !146, file: !3, line: 39, column: 27)
!146 = distinct !DILexicalBlock(scope: !142, file: !3, line: 39, column: 5)
!147 = !DILocalVariable(name: ".omp.lb", scope: !144, type: !8, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: ".omp.ub", scope: !144, type: !8, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: ".omp.stride", scope: !144, type: !8, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: ".omp.is_last", scope: !144, type: !8, flags: DIFlagArtificial)
!151 = !DILocalVariable(name: "i", scope: !144, type: !8, flags: DIFlagArtificial)
!152 = !DILocalVariable(name: ".omp.iv", scope: !153, type: !8, flags: DIFlagArtificial)
!153 = distinct !DILexicalBlock(scope: !145, file: !3, line: 45, column: 7)
!154 = !DILocalVariable(name: ".omp.lb", scope: !153, type: !8, flags: DIFlagArtificial)
!155 = !DILocalVariable(name: ".omp.ub", scope: !153, type: !8, flags: DIFlagArtificial)
!156 = !DILocalVariable(name: ".omp.stride", scope: !153, type: !8, flags: DIFlagArtificial)
!157 = !DILocalVariable(name: ".omp.is_last", scope: !153, type: !8, flags: DIFlagArtificial)
!158 = !DILocalVariable(name: "i", scope: !153, type: !8, flags: DIFlagArtificial)
!159 = !DILocation(line: 0, scope: !127)
!160 = !DILocation(line: 26, column: 5, scope: !127)
!161 = !DILocation(line: 24, column: 5, scope: !127)
!162 = !DILocation(line: 25, column: 5, scope: !127)
!163 = !DILocation(line: 23, column: 5, scope: !127)
!164 = !DILocation(line: 39, column: 5, scope: !127)
!165 = !DILocation(line: 39, column: 9, scope: !142)
!166 = !DILocation(line: 39, column: 13, scope: !142)
!167 = !DILocation(line: 39, column: 18, scope: !146)
!168 = !DILocation(line: 39, column: 19, scope: !146)
!169 = !DILocation(line: 39, column: 5, scope: !142)
!170 = !DILocation(line: 39, column: 5, scope: !146)
!171 = !DILocation(line: 40, column: 7, scope: !145)
!172 = !DILocation(line: 0, scope: !144)
!173 = !DILocation(line: 41, column: 11, scope: !144)
!174 = !DILocation(line: 41, column: 7, scope: !144)
!175 = !DILocation(line: 41, column: 25, scope: !144)
!176 = !DILocation(line: 42, column: 21, scope: !177)
!177 = distinct !DILexicalBlock(scope: !144, file: !3, line: 41, column: 29)
!178 = !DILocation(line: 42, column: 19, scope: !177)
!179 = !DILocation(line: 42, column: 28, scope: !177)
!180 = !DILocation(line: 42, column: 26, scope: !177)
!181 = !DILocation(line: 42, column: 24, scope: !177)
!182 = !DILocation(line: 42, column: 14, scope: !177)
!183 = !DILocation(line: 42, column: 9, scope: !177)
!184 = !DILocation(line: 42, column: 17, scope: !177)
!185 = !DILocation(line: 43, column: 7, scope: !177)
!186 = !DILocation(line: 40, column: 7, scope: !144)
!187 = distinct !{!187, !186, !188}
!188 = !DILocation(line: 40, column: 29, scope: !144)
!189 = !DILocation(line: 45, column: 7, scope: !145)
!190 = !DILocation(line: 0, scope: !153)
!191 = !DILocation(line: 46, column: 11, scope: !153)
!192 = !DILocation(line: 46, column: 7, scope: !153)
!193 = !DILocation(line: 46, column: 28, scope: !153)
!194 = !DILocation(line: 47, column: 21, scope: !195)
!195 = distinct !DILexicalBlock(scope: !153, file: !3, line: 46, column: 32)
!196 = !DILocation(line: 47, column: 16, scope: !195)
!197 = !DILocation(line: 47, column: 26, scope: !195)
!198 = !DILocation(line: 47, column: 24, scope: !195)
!199 = !DILocation(line: 47, column: 11, scope: !195)
!200 = !DILocation(line: 47, column: 9, scope: !195)
!201 = !DILocation(line: 47, column: 14, scope: !195)
!202 = !DILocation(line: 48, column: 7, scope: !195)
!203 = !DILocation(line: 45, column: 7, scope: !153)
!204 = distinct !{!204, !203, !205}
!205 = !DILocation(line: 45, column: 29, scope: !153)
!206 = !DILocation(line: 49, column: 5, scope: !145)
!207 = !DILocation(line: 39, column: 24, scope: !146)
!208 = distinct !{!208, !169, !209}
!209 = !DILocation(line: 49, column: 5, scope: !142)
!210 = !DILocation(line: 49, column: 5, scope: !127)
!211 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 39, type: !128, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !212)
!212 = !{!213, !214, !215, !216, !217, !218}
!213 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !211, type: !130, flags: DIFlagArtificial)
!214 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !211, type: !130, flags: DIFlagArtificial)
!215 = !DILocalVariable(name: "temp", arg: 3, scope: !211, type: !108, flags: DIFlagArtificial)
!216 = !DILocalVariable(name: "b", arg: 4, scope: !211, type: !108, flags: DIFlagArtificial)
!217 = !DILocalVariable(name: "c", arg: 5, scope: !211, type: !108, flags: DIFlagArtificial)
!218 = !DILocalVariable(name: "a", arg: 6, scope: !211, type: !109, flags: DIFlagArtificial)
!219 = !DILocation(line: 0, scope: !211)
!220 = !DILocation(line: 39, column: 5, scope: !211)
!221 = !{!222}
!222 = !{i64 2, i64 -1, i64 -1, i1 true}
!223 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160962_main_l36", scope: !3, file: !3, line: 37, type: !106, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !224)
!224 = !{!225, !226, !227, !228}
!225 = !DILocalVariable(name: "temp", arg: 1, scope: !223, type: !108, flags: DIFlagArtificial)
!226 = !DILocalVariable(name: "b", arg: 2, scope: !223, type: !108, flags: DIFlagArtificial)
!227 = !DILocalVariable(name: "c", arg: 3, scope: !223, type: !108, flags: DIFlagArtificial)
!228 = !DILocalVariable(name: "a", arg: 4, scope: !223, type: !109, flags: DIFlagArtificial)
!229 = !DILocation(line: 0, scope: !223)
!230 = !DILocation(line: 37, column: 3, scope: !223)
