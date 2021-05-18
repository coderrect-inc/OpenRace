; ModuleID = 'integration/dataracebench/DRB159-nobarrier-orig-gpu-no.c'
source_filename = "integration/dataracebench/DRB159-nobarrier-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@b = common dso_local global [8 x i32] zeroinitializer, align 16, !dbg !0
@c = common dso_local global [8 x i32] zeroinitializer, align 16, !dbg !9
@temp = common dso_local global [8 x i32] zeroinitializer, align 16, !dbg !14
@a = common dso_local global i32 0, align 4, !dbg !6
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [70 x i8] c";integration/dataracebench/DRB159-nobarrier-orig-gpu-no.c;main;39;7;;\00", align 1
@2 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB159-nobarrier-orig-gpu-no.c;main;39;22;;\00", align 1
@3 = private unnamed_addr constant [70 x i8] c";integration/dataracebench/DRB159-nobarrier-orig-gpu-no.c;main;44;7;;\00", align 1
@4 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB159-nobarrier-orig-gpu-no.c;main;44;22;;\00", align 1
@5 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant [70 x i8] c";integration/dataracebench/DRB159-nobarrier-orig-gpu-no.c;main;36;3;;\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"expected %d real %d \0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !20 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  %i5 = alloca i32, align 4
  %i13 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %i to i8*, !dbg !31
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !24, metadata !DIExpression()), !dbg !32
  store i32 0, i32* %i, align 4, !dbg !32, !tbaa !33
  br label %for.cond, !dbg !31

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !37, !tbaa !33
  %cmp = icmp slt i32 %1, 8, !dbg !39
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !40

for.cond.cleanup:                                 ; preds = %for.cond
  %2 = bitcast i32* %i to i8*, !dbg !41
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #5, !dbg !41
  br label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !42, !tbaa !33
  %idxprom = sext i32 %3 to i64, !dbg !44
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @b, i64 0, i64 %idxprom, !dbg !44
  store i32 0, i32* %arrayidx, align 4, !dbg !45, !tbaa !33
  %4 = load i32, i32* %i, align 4, !dbg !46, !tbaa !33
  %idxprom1 = sext i32 %4 to i64, !dbg !47
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* @c, i64 0, i64 %idxprom1, !dbg !47
  store i32 2, i32* %arrayidx2, align 4, !dbg !48, !tbaa !33
  %5 = load i32, i32* %i, align 4, !dbg !49, !tbaa !33
  %idxprom3 = sext i32 %5 to i64, !dbg !50
  %arrayidx4 = getelementptr inbounds [8 x i32], [8 x i32]* @temp, i64 0, i64 %idxprom3, !dbg !50
  store i32 0, i32* %arrayidx4, align 4, !dbg !51, !tbaa !33
  br label %for.inc, !dbg !52

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !53, !tbaa !33
  %inc = add nsw i32 %6, 1, !dbg !53
  store i32 %inc, i32* %i, align 4, !dbg !53, !tbaa !33
  br label %for.cond, !dbg !41, !llvm.loop !54

for.end:                                          ; preds = %for.cond.cleanup
  store i32 2, i32* @a, align 4, !dbg !56, !tbaa !33
  call void @__omp_offloading_1030a_2160961_main_l35([8 x i32]* @temp, [8 x i32]* @b, [8 x i32]* @c, i32* @a) #5, !dbg !57
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
  %cmp15 = icmp slt i32 %15, 8, !dbg !83
  br i1 %cmp15, label %for.body17, label %for.cond.cleanup16, !dbg !84

for.cond.cleanup16:                               ; preds = %for.cond14
  store i32 8, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !84

for.body17:                                       ; preds = %for.cond14
  %16 = load i32, i32* %i13, align 4, !dbg !85, !tbaa !33
  %idxprom18 = sext i32 %16 to i64, !dbg !88
  %arrayidx19 = getelementptr inbounds [8 x i32], [8 x i32]* @b, i64 0, i64 %idxprom18, !dbg !88
  %17 = load i32, i32* %arrayidx19, align 4, !dbg !88, !tbaa !33
  %18 = load i32, i32* %val, align 4, !dbg !89, !tbaa !33
  %cmp20 = icmp ne i32 %17, %18, !dbg !90
  br i1 %cmp20, label %if.then, label %if.end, !dbg !91

if.then:                                          ; preds = %for.body17
  %19 = load i32, i32* %val, align 4, !dbg !92, !tbaa !33
  %20 = load i32, i32* %i13, align 4, !dbg !94, !tbaa !33
  %idxprom21 = sext i32 %20 to i64, !dbg !95
  %arrayidx22 = getelementptr inbounds [8 x i32], [8 x i32]* @b, i64 0, i64 %idxprom21, !dbg !95
  %21 = load i32, i32* %arrayidx22, align 4, !dbg !95, !tbaa !33
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %21), !dbg !96
  store i32 0, i32* %retval, align 4, !dbg !97
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !97

if.end:                                           ; preds = %for.body17
  br label %for.inc23, !dbg !98

for.inc23:                                        ; preds = %if.end
  %22 = load i32, i32* %i13, align 4, !dbg !99, !tbaa !33
  %inc24 = add nsw i32 %22, 1, !dbg !99
  store i32 %inc24, i32* %i13, align 4, !dbg !99, !tbaa !33
  br label %for.cond14, !dbg !100, !llvm.loop !101

cleanup:                                          ; preds = %if.then, %for.cond.cleanup16
  %23 = bitcast i32* %i13 to i8*, !dbg !100
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #5, !dbg !100
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup26 [
    i32 8, label %for.end25
  ]

for.end25:                                        ; preds = %cleanup
  store i32 0, i32* %retval, align 4, !dbg !103
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup26, !dbg !103

cleanup26:                                        ; preds = %for.end25, %cleanup
  %24 = bitcast i32* %val to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !104
  %25 = load i32, i32* %retval, align 4, !dbg !104
  ret i32 %25, !dbg !104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160961_main_l35_debug__([8 x i32]* dereferenceable(32) %temp, [8 x i32]* dereferenceable(32) %b, [8 x i32]* dereferenceable(32) %c, i32* dereferenceable(4) %a) #3 !dbg !105 {
entry:
  %temp.addr = alloca [8 x i32]*, align 8
  %b.addr = alloca [8 x i32]*, align 8
  %c.addr = alloca [8 x i32]*, align 8
  %a.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store [8 x i32]* %temp, [8 x i32]** %temp.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [8 x i32]** %temp.addr, metadata !111, metadata !DIExpression()), !dbg !117
  store [8 x i32]* %b, [8 x i32]** %b.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [8 x i32]** %b.addr, metadata !112, metadata !DIExpression()), !dbg !118
  store [8 x i32]* %c, [8 x i32]** %c.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [8 x i32]** %c.addr, metadata !113, metadata !DIExpression()), !dbg !119
  store i32* %a, i32** %a.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !114, metadata !DIExpression()), !dbg !120
  %2 = load [8 x i32]*, [8 x i32]** %temp.addr, align 8, !dbg !121, !tbaa !115
  %3 = load [8 x i32]*, [8 x i32]** %b.addr, align 8, !dbg !121, !tbaa !115
  %4 = load [8 x i32]*, [8 x i32]** %c.addr, align 8, !dbg !121, !tbaa !115
  %5 = load i32*, i32** %a.addr, align 8, !dbg !121, !tbaa !115
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !121
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @6, i32 0, i32 0), i8** %6, align 8, !dbg !121, !tbaa !122
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [8 x i32]*, [8 x i32]*, [8 x i32]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), [8 x i32]* %2, [8 x i32]* %3, [8 x i32]* %4, i32* %5), !dbg !121
  ret void, !dbg !124
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [8 x i32]* dereferenceable(32) %temp, [8 x i32]* dereferenceable(32) %b, [8 x i32]* dereferenceable(32) %c, i32* dereferenceable(4) %a) #3 !dbg !125 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %temp.addr = alloca [8 x i32]*, align 8
  %b.addr = alloca [8 x i32]*, align 8
  %c.addr = alloca [8 x i32]*, align 8
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !133, metadata !DIExpression()), !dbg !158
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !134, metadata !DIExpression()), !dbg !158
  store [8 x i32]* %temp, [8 x i32]** %temp.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [8 x i32]** %temp.addr, metadata !135, metadata !DIExpression()), !dbg !159
  store [8 x i32]* %b, [8 x i32]** %b.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [8 x i32]** %b.addr, metadata !136, metadata !DIExpression()), !dbg !160
  store [8 x i32]* %c, [8 x i32]** %c.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [8 x i32]** %c.addr, metadata !137, metadata !DIExpression()), !dbg !161
  store i32* %a, i32** %a.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !138, metadata !DIExpression()), !dbg !162
  %2 = load [8 x i32]*, [8 x i32]** %temp.addr, align 8, !dbg !163, !tbaa !115
  %3 = load [8 x i32]*, [8 x i32]** %b.addr, align 8, !dbg !163, !tbaa !115
  %4 = load [8 x i32]*, [8 x i32]** %c.addr, align 8, !dbg !163, !tbaa !115
  %5 = load i32*, i32** %a.addr, align 8, !dbg !163, !tbaa !115
  %6 = bitcast i32* %i to i8*, !dbg !164
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !164
  call void @llvm.dbg.declare(metadata i32* %i, metadata !139, metadata !DIExpression()), !dbg !165
  store i32 0, i32* %i, align 4, !dbg !165, !tbaa !33
  br label %for.cond, !dbg !164

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !dbg !166, !tbaa !33
  %cmp = icmp slt i32 %7, 100, !dbg !167
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !168

for.cond.cleanup:                                 ; preds = %for.cond
  %8 = bitcast i32* %i to i8*, !dbg !169
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #5, !dbg !169
  br label %for.end

for.body:                                         ; preds = %for.cond
  %9 = bitcast i32* %.omp.iv to i8*, !dbg !170
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !170
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !142, metadata !DIExpression()), !dbg !171
  %10 = bitcast i32* %.omp.lb to i8*, !dbg !170
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !170
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !146, metadata !DIExpression()), !dbg !171
  store i32 0, i32* %.omp.lb, align 4, !dbg !172, !tbaa !33
  %11 = bitcast i32* %.omp.ub to i8*, !dbg !170
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #5, !dbg !170
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !147, metadata !DIExpression()), !dbg !171
  store i32 7, i32* %.omp.ub, align 4, !dbg !172, !tbaa !33
  %12 = bitcast i32* %.omp.stride to i8*, !dbg !170
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #5, !dbg !170
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !148, metadata !DIExpression()), !dbg !171
  store i32 1, i32* %.omp.stride, align 4, !dbg !172, !tbaa !33
  %13 = bitcast i32* %.omp.is_last to i8*, !dbg !170
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #5, !dbg !170
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !149, metadata !DIExpression()), !dbg !171
  store i32 0, i32* %.omp.is_last, align 4, !dbg !172, !tbaa !33
  %14 = bitcast i32* %i1 to i8*, !dbg !170
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #5, !dbg !170
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !150, metadata !DIExpression()), !dbg !171
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !170
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @1, i32 0, i32 0), i8** %15, align 8, !dbg !170, !tbaa !122
  %16 = load i32*, i32** %.global_tid..addr, align 8, !dbg !170
  %17 = load i32, i32* %16, align 4, !dbg !170, !tbaa !33
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %17, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !170
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !172, !tbaa !33
  %cmp2 = icmp sgt i32 %18, 7, !dbg !172
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !172

cond.true:                                        ; preds = %for.body
  br label %cond.end, !dbg !172

cond.false:                                       ; preds = %for.body
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !172, !tbaa !33
  br label %cond.end, !dbg !172

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 7, %cond.true ], [ %19, %cond.false ], !dbg !172
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !172, !tbaa !33
  %20 = load i32, i32* %.omp.lb, align 4, !dbg !172, !tbaa !33
  store i32 %20, i32* %.omp.iv, align 4, !dbg !172, !tbaa !33
  br label %omp.inner.for.cond, !dbg !170

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !172, !tbaa !33
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !172, !tbaa !33
  %cmp3 = icmp sle i32 %21, %22, !dbg !173
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !170

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !170

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !172, !tbaa !33
  %mul = mul nsw i32 %23, 1, !dbg !174
  %add = add nsw i32 0, %mul, !dbg !174
  store i32 %add, i32* %i1, align 4, !dbg !174, !tbaa !33
  %24 = load i32, i32* %i1, align 4, !dbg !175, !tbaa !33
  %idxprom = sext i32 %24 to i64, !dbg !177
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %idxprom, !dbg !177
  %25 = load i32, i32* %arrayidx, align 4, !dbg !177, !tbaa !33
  %26 = load i32, i32* %i1, align 4, !dbg !178, !tbaa !33
  %idxprom4 = sext i32 %26 to i64, !dbg !179
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %idxprom4, !dbg !179
  %27 = load i32, i32* %arrayidx5, align 4, !dbg !179, !tbaa !33
  %add6 = add nsw i32 %25, %27, !dbg !180
  %28 = load i32, i32* %i1, align 4, !dbg !181, !tbaa !33
  %idxprom7 = sext i32 %28 to i64, !dbg !182
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %idxprom7, !dbg !182
  store i32 %add6, i32* %arrayidx8, align 4, !dbg !183, !tbaa !33
  br label %omp.body.continue, !dbg !184

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !185

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !172, !tbaa !33
  %add9 = add nsw i32 %29, 1, !dbg !173
  store i32 %add9, i32* %.omp.iv, align 4, !dbg !173, !tbaa !33
  br label %omp.inner.for.cond, !dbg !185, !llvm.loop !186

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !185

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %30 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !185
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @2, i32 0, i32 0), i8** %30, align 8, !dbg !185, !tbaa !122
  %31 = load i32*, i32** %.global_tid..addr, align 8, !dbg !185
  %32 = load i32, i32* %31, align 4, !dbg !185, !tbaa !33
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %32), !dbg !185
  %33 = bitcast i32* %i1 to i8*, !dbg !185
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #5, !dbg !185
  %34 = bitcast i32* %.omp.is_last to i8*, !dbg !185
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #5, !dbg !185
  %35 = bitcast i32* %.omp.stride to i8*, !dbg !185
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #5, !dbg !185
  %36 = bitcast i32* %.omp.ub to i8*, !dbg !185
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #5, !dbg !185
  %37 = bitcast i32* %.omp.lb to i8*, !dbg !185
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #5, !dbg !185
  %38 = bitcast i32* %.omp.iv to i8*, !dbg !185
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #5, !dbg !185
  %39 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !187
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @1, i32 0, i32 0), i8** %39, align 8, !dbg !187, !tbaa !122
  %40 = load i32*, i32** %.global_tid..addr, align 8, !dbg !187
  %41 = load i32, i32* %40, align 4, !dbg !187, !tbaa !33
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %41), !dbg !187
  %42 = bitcast i32* %.omp.iv10 to i8*, !dbg !188
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %42) #5, !dbg !188
  call void @llvm.dbg.declare(metadata i32* %.omp.iv10, metadata !151, metadata !DIExpression()), !dbg !189
  %43 = bitcast i32* %.omp.lb12 to i8*, !dbg !188
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %43) #5, !dbg !188
  call void @llvm.dbg.declare(metadata i32* %.omp.lb12, metadata !153, metadata !DIExpression()), !dbg !189
  store i32 0, i32* %.omp.lb12, align 4, !dbg !190, !tbaa !33
  %44 = bitcast i32* %.omp.ub13 to i8*, !dbg !188
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %44) #5, !dbg !188
  call void @llvm.dbg.declare(metadata i32* %.omp.ub13, metadata !154, metadata !DIExpression()), !dbg !189
  store i32 7, i32* %.omp.ub13, align 4, !dbg !190, !tbaa !33
  %45 = bitcast i32* %.omp.stride14 to i8*, !dbg !188
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %45) #5, !dbg !188
  call void @llvm.dbg.declare(metadata i32* %.omp.stride14, metadata !155, metadata !DIExpression()), !dbg !189
  store i32 1, i32* %.omp.stride14, align 4, !dbg !190, !tbaa !33
  %46 = bitcast i32* %.omp.is_last15 to i8*, !dbg !188
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %46) #5, !dbg !188
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last15, metadata !156, metadata !DIExpression()), !dbg !189
  store i32 0, i32* %.omp.is_last15, align 4, !dbg !190, !tbaa !33
  %47 = bitcast i32* %i16 to i8*, !dbg !188
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %47) #5, !dbg !188
  call void @llvm.dbg.declare(metadata i32* %i16, metadata !157, metadata !DIExpression()), !dbg !189
  %48 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !188
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @3, i32 0, i32 0), i8** %48, align 8, !dbg !188, !tbaa !122
  %49 = load i32*, i32** %.global_tid..addr, align 8, !dbg !188
  %50 = load i32, i32* %49, align 4, !dbg !188, !tbaa !33
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %50, i32 34, i32* %.omp.is_last15, i32* %.omp.lb12, i32* %.omp.ub13, i32* %.omp.stride14, i32 1, i32 1), !dbg !188
  %51 = load i32, i32* %.omp.ub13, align 4, !dbg !190, !tbaa !33
  %cmp17 = icmp sgt i32 %51, 7, !dbg !190
  br i1 %cmp17, label %cond.true18, label %cond.false19, !dbg !190

cond.true18:                                      ; preds = %omp.loop.exit
  br label %cond.end20, !dbg !190

cond.false19:                                     ; preds = %omp.loop.exit
  %52 = load i32, i32* %.omp.ub13, align 4, !dbg !190, !tbaa !33
  br label %cond.end20, !dbg !190

cond.end20:                                       ; preds = %cond.false19, %cond.true18
  %cond21 = phi i32 [ 7, %cond.true18 ], [ %52, %cond.false19 ], !dbg !190
  store i32 %cond21, i32* %.omp.ub13, align 4, !dbg !190, !tbaa !33
  %53 = load i32, i32* %.omp.lb12, align 4, !dbg !190, !tbaa !33
  store i32 %53, i32* %.omp.iv10, align 4, !dbg !190, !tbaa !33
  br label %omp.inner.for.cond22, !dbg !188

omp.inner.for.cond22:                             ; preds = %omp.inner.for.inc33, %cond.end20
  %54 = load i32, i32* %.omp.iv10, align 4, !dbg !190, !tbaa !33
  %55 = load i32, i32* %.omp.ub13, align 4, !dbg !190, !tbaa !33
  %cmp23 = icmp sle i32 %54, %55, !dbg !191
  br i1 %cmp23, label %omp.inner.for.body25, label %omp.inner.for.cond.cleanup24, !dbg !188

omp.inner.for.cond.cleanup24:                     ; preds = %omp.inner.for.cond22
  br label %omp.inner.for.end35, !dbg !188

omp.inner.for.body25:                             ; preds = %omp.inner.for.cond22
  %56 = load i32, i32* %.omp.iv10, align 4, !dbg !190, !tbaa !33
  %mul26 = mul nsw i32 %56, 1, !dbg !192
  %sub = sub nsw i32 7, %mul26, !dbg !192
  store i32 %sub, i32* %i16, align 4, !dbg !192, !tbaa !33
  %57 = load i32, i32* %i16, align 4, !dbg !193, !tbaa !33
  %idxprom27 = sext i32 %57 to i64, !dbg !195
  %arrayidx28 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %idxprom27, !dbg !195
  %58 = load i32, i32* %arrayidx28, align 4, !dbg !195, !tbaa !33
  %59 = load i32, i32* %5, align 4, !dbg !196, !tbaa !33
  %mul29 = mul nsw i32 %58, %59, !dbg !197
  %60 = load i32, i32* %i16, align 4, !dbg !198, !tbaa !33
  %idxprom30 = sext i32 %60 to i64, !dbg !199
  %arrayidx31 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %idxprom30, !dbg !199
  store i32 %mul29, i32* %arrayidx31, align 4, !dbg !200, !tbaa !33
  br label %omp.body.continue32, !dbg !201

omp.body.continue32:                              ; preds = %omp.inner.for.body25
  br label %omp.inner.for.inc33, !dbg !202

omp.inner.for.inc33:                              ; preds = %omp.body.continue32
  %61 = load i32, i32* %.omp.iv10, align 4, !dbg !190, !tbaa !33
  %add34 = add nsw i32 %61, 1, !dbg !191
  store i32 %add34, i32* %.omp.iv10, align 4, !dbg !191, !tbaa !33
  br label %omp.inner.for.cond22, !dbg !202, !llvm.loop !203

omp.inner.for.end35:                              ; preds = %omp.inner.for.cond.cleanup24
  br label %omp.loop.exit36, !dbg !202

omp.loop.exit36:                                  ; preds = %omp.inner.for.end35
  %62 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !202
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @4, i32 0, i32 0), i8** %62, align 8, !dbg !202, !tbaa !122
  %63 = load i32*, i32** %.global_tid..addr, align 8, !dbg !202
  %64 = load i32, i32* %63, align 4, !dbg !202, !tbaa !33
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %64), !dbg !202
  %65 = bitcast i32* %i16 to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #5, !dbg !202
  %66 = bitcast i32* %.omp.is_last15 to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #5, !dbg !202
  %67 = bitcast i32* %.omp.stride14 to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #5, !dbg !202
  %68 = bitcast i32* %.omp.ub13 to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %68) #5, !dbg !202
  %69 = bitcast i32* %.omp.lb12 to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #5, !dbg !202
  %70 = bitcast i32* %.omp.iv10 to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %70) #5, !dbg !202
  %71 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !204
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @3, i32 0, i32 0), i8** %71, align 8, !dbg !204, !tbaa !122
  %72 = load i32*, i32** %.global_tid..addr, align 8, !dbg !204
  %73 = load i32, i32* %72, align 4, !dbg !204, !tbaa !33
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %73), !dbg !204
  br label %for.inc, !dbg !205

for.inc:                                          ; preds = %omp.loop.exit36
  %74 = load i32, i32* %i, align 4, !dbg !206, !tbaa !33
  %inc = add nsw i32 %74, 1, !dbg !206
  store i32 %inc, i32* %i, align 4, !dbg !206, !tbaa !33
  br label %for.cond, !dbg !169, !llvm.loop !207

for.end:                                          ; preds = %for.cond.cleanup
  ret void, !dbg !209
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [8 x i32]* dereferenceable(32) %temp, [8 x i32]* dereferenceable(32) %b, [8 x i32]* dereferenceable(32) %c, i32* dereferenceable(4) %a) #3 !dbg !210 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %temp.addr = alloca [8 x i32]*, align 8
  %b.addr = alloca [8 x i32]*, align 8
  %c.addr = alloca [8 x i32]*, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !212, metadata !DIExpression()), !dbg !218
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !213, metadata !DIExpression()), !dbg !218
  store [8 x i32]* %temp, [8 x i32]** %temp.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [8 x i32]** %temp.addr, metadata !214, metadata !DIExpression()), !dbg !218
  store [8 x i32]* %b, [8 x i32]** %b.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [8 x i32]** %b.addr, metadata !215, metadata !DIExpression()), !dbg !218
  store [8 x i32]* %c, [8 x i32]** %c.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [8 x i32]** %c.addr, metadata !216, metadata !DIExpression()), !dbg !218
  store i32* %a, i32** %a.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !217, metadata !DIExpression()), !dbg !218
  %0 = load [8 x i32]*, [8 x i32]** %temp.addr, align 8, !dbg !219, !tbaa !115
  %1 = load [8 x i32]*, [8 x i32]** %b.addr, align 8, !dbg !219, !tbaa !115
  %2 = load [8 x i32]*, [8 x i32]** %c.addr, align 8, !dbg !219, !tbaa !115
  %3 = load i32*, i32** %a.addr, align 8, !dbg !219, !tbaa !115
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !219, !tbaa !115
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !219, !tbaa !115
  %6 = load [8 x i32]*, [8 x i32]** %temp.addr, align 8, !dbg !219, !tbaa !115
  %7 = load [8 x i32]*, [8 x i32]** %b.addr, align 8, !dbg !219, !tbaa !115
  %8 = load [8 x i32]*, [8 x i32]** %c.addr, align 8, !dbg !219, !tbaa !115
  %9 = load i32*, i32** %a.addr, align 8, !dbg !219, !tbaa !115
  call void @.omp_outlined._debug__(i32* %4, i32* %5, [8 x i32]* %6, [8 x i32]* %7, [8 x i32]* %8, i32* %9) #5, !dbg !219
  ret void, !dbg !219
}

declare !callback !220 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160961_main_l35([8 x i32]* dereferenceable(32) %temp, [8 x i32]* dereferenceable(32) %b, [8 x i32]* dereferenceable(32) %c, i32* dereferenceable(4) %a) #3 !dbg !222 {
entry:
  %temp.addr = alloca [8 x i32]*, align 8
  %b.addr = alloca [8 x i32]*, align 8
  %c.addr = alloca [8 x i32]*, align 8
  %a.addr = alloca i32*, align 8
  store [8 x i32]* %temp, [8 x i32]** %temp.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [8 x i32]** %temp.addr, metadata !224, metadata !DIExpression()), !dbg !228
  store [8 x i32]* %b, [8 x i32]** %b.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [8 x i32]** %b.addr, metadata !225, metadata !DIExpression()), !dbg !228
  store [8 x i32]* %c, [8 x i32]** %c.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata [8 x i32]** %c.addr, metadata !226, metadata !DIExpression()), !dbg !228
  store i32* %a, i32** %a.addr, align 8, !tbaa !115
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !227, metadata !DIExpression()), !dbg !228
  %0 = load [8 x i32]*, [8 x i32]** %temp.addr, align 8, !dbg !229, !tbaa !115
  %1 = load [8 x i32]*, [8 x i32]** %b.addr, align 8, !dbg !229, !tbaa !115
  %2 = load [8 x i32]*, [8 x i32]** %c.addr, align 8, !dbg !229, !tbaa !115
  %3 = load i32*, i32** %a.addr, align 8, !dbg !229, !tbaa !115
  %4 = load [8 x i32]*, [8 x i32]** %temp.addr, align 8, !dbg !229, !tbaa !115
  %5 = load [8 x i32]*, [8 x i32]** %b.addr, align 8, !dbg !229, !tbaa !115
  %6 = load [8 x i32]*, [8 x i32]** %c.addr, align 8, !dbg !229, !tbaa !115
  %7 = load i32*, i32** %a.addr, align 8, !dbg !229, !tbaa !115
  call void @__omp_offloading_1030a_2160961_main_l35_debug__([8 x i32]* %4, [8 x i32]* %5, [8 x i32]* %6, i32* %7) #5, !dbg !229
  ret void, !dbg !229
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
!1 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 23, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB159-nobarrier-orig-gpu-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!6, !0, !9, !14}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 22, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 24, type: !11, isLocal: false, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 8)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "temp", scope: !2, file: !3, line: 25, type: !11, isLocal: false, isDefinition: true)
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 10.0.1 "}
!20 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 27, type: !21, scopeLine: 27, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !23)
!21 = !DISubroutineType(types: !22)
!22 = !{!8}
!23 = !{!24, !26, !27, !29}
!24 = !DILocalVariable(name: "i", scope: !25, file: !3, line: 28, type: !8)
!25 = distinct !DILexicalBlock(scope: !20, file: !3, line: 28, column: 3)
!26 = !DILocalVariable(name: "val", scope: !20, file: !3, line: 51, type: !8)
!27 = !DILocalVariable(name: "i", scope: !28, file: !3, line: 53, type: !8)
!28 = distinct !DILexicalBlock(scope: !20, file: !3, line: 53, column: 3)
!29 = !DILocalVariable(name: "i", scope: !30, file: !3, line: 58, type: !8)
!30 = distinct !DILexicalBlock(scope: !20, file: !3, line: 58, column: 3)
!31 = !DILocation(line: 28, column: 7, scope: !25)
!32 = !DILocation(line: 28, column: 11, scope: !25)
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 28, column: 16, scope: !38)
!38 = distinct !DILexicalBlock(scope: !25, file: !3, line: 28, column: 3)
!39 = !DILocation(line: 28, column: 17, scope: !38)
!40 = !DILocation(line: 28, column: 3, scope: !25)
!41 = !DILocation(line: 28, column: 3, scope: !38)
!42 = !DILocation(line: 29, column: 7, scope: !43)
!43 = distinct !DILexicalBlock(scope: !38, file: !3, line: 28, column: 25)
!44 = !DILocation(line: 29, column: 5, scope: !43)
!45 = !DILocation(line: 29, column: 9, scope: !43)
!46 = !DILocation(line: 30, column: 7, scope: !43)
!47 = !DILocation(line: 30, column: 5, scope: !43)
!48 = !DILocation(line: 30, column: 9, scope: !43)
!49 = !DILocation(line: 31, column: 10, scope: !43)
!50 = !DILocation(line: 31, column: 5, scope: !43)
!51 = !DILocation(line: 31, column: 12, scope: !43)
!52 = !DILocation(line: 32, column: 3, scope: !43)
!53 = !DILocation(line: 28, column: 22, scope: !38)
!54 = distinct !{!54, !40, !55}
!55 = !DILocation(line: 32, column: 3, scope: !25)
!56 = !DILocation(line: 33, column: 4, scope: !20)
!57 = !DILocation(line: 35, column: 3, scope: !58)
!58 = distinct !DILexicalBlock(scope: !20, file: !3, line: 35, column: 3)
!59 = !DILocation(line: 51, column: 3, scope: !20)
!60 = !DILocation(line: 51, column: 7, scope: !20)
!61 = !DILocation(line: 53, column: 7, scope: !28)
!62 = !DILocation(line: 53, column: 11, scope: !28)
!63 = !DILocation(line: 53, column: 16, scope: !64)
!64 = distinct !DILexicalBlock(scope: !28, file: !3, line: 53, column: 3)
!65 = !DILocation(line: 53, column: 17, scope: !64)
!66 = !DILocation(line: 53, column: 3, scope: !28)
!67 = !DILocation(line: 53, column: 3, scope: !64)
!68 = !DILocation(line: 54, column: 11, scope: !69)
!69 = distinct !DILexicalBlock(scope: !64, file: !3, line: 53, column: 25)
!70 = !DILocation(line: 54, column: 15, scope: !69)
!71 = !DILocation(line: 54, column: 9, scope: !69)
!72 = !DILocation(line: 55, column: 11, scope: !69)
!73 = !DILocation(line: 55, column: 15, scope: !69)
!74 = !DILocation(line: 55, column: 9, scope: !69)
!75 = !DILocation(line: 56, column: 3, scope: !69)
!76 = !DILocation(line: 53, column: 22, scope: !64)
!77 = distinct !{!77, !66, !78}
!78 = !DILocation(line: 56, column: 3, scope: !28)
!79 = !DILocation(line: 58, column: 7, scope: !30)
!80 = !DILocation(line: 58, column: 11, scope: !30)
!81 = !DILocation(line: 58, column: 16, scope: !82)
!82 = distinct !DILexicalBlock(scope: !30, file: !3, line: 58, column: 3)
!83 = !DILocation(line: 58, column: 17, scope: !82)
!84 = !DILocation(line: 58, column: 3, scope: !30)
!85 = !DILocation(line: 59, column: 10, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !3, line: 59, column: 8)
!87 = distinct !DILexicalBlock(scope: !82, file: !3, line: 58, column: 25)
!88 = !DILocation(line: 59, column: 8, scope: !86)
!89 = !DILocation(line: 59, column: 14, scope: !86)
!90 = !DILocation(line: 59, column: 12, scope: !86)
!91 = !DILocation(line: 59, column: 8, scope: !87)
!92 = !DILocation(line: 60, column: 39, scope: !93)
!93 = distinct !DILexicalBlock(scope: !86, file: !3, line: 59, column: 18)
!94 = !DILocation(line: 60, column: 46, scope: !93)
!95 = !DILocation(line: 60, column: 44, scope: !93)
!96 = !DILocation(line: 60, column: 7, scope: !93)
!97 = !DILocation(line: 61, column: 7, scope: !93)
!98 = !DILocation(line: 63, column: 3, scope: !87)
!99 = !DILocation(line: 58, column: 22, scope: !82)
!100 = !DILocation(line: 58, column: 3, scope: !82)
!101 = distinct !{!101, !84, !102}
!102 = !DILocation(line: 63, column: 3, scope: !30)
!103 = !DILocation(line: 65, column: 3, scope: !20)
!104 = !DILocation(line: 66, column: 1, scope: !20)
!105 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160961_main_l35_debug__", scope: !3, file: !3, line: 36, type: !106, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !110)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !108, !108, !108, !109}
!108 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !11, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!110 = !{!111, !112, !113, !114}
!111 = !DILocalVariable(name: "temp", arg: 1, scope: !105, file: !3, line: 25, type: !108)
!112 = !DILocalVariable(name: "b", arg: 2, scope: !105, file: !3, line: 23, type: !108)
!113 = !DILocalVariable(name: "c", arg: 3, scope: !105, file: !3, line: 24, type: !108)
!114 = !DILocalVariable(name: "a", arg: 4, scope: !105, file: !3, line: 22, type: !109)
!115 = !{!116, !116, i64 0}
!116 = !{!"any pointer", !35, i64 0}
!117 = !DILocation(line: 25, column: 5, scope: !105)
!118 = !DILocation(line: 23, column: 5, scope: !105)
!119 = !DILocation(line: 24, column: 5, scope: !105)
!120 = !DILocation(line: 22, column: 5, scope: !105)
!121 = !DILocation(line: 36, column: 3, scope: !105)
!122 = !{!123, !116, i64 16}
!123 = !{!"ident_t", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !116, i64 16}
!124 = !DILocation(line: 36, column: 23, scope: !105)
!125 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 37, type: !126, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !132)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !128, !128, !108, !108, !108, !109}
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!132 = !{!133, !134, !135, !136, !137, !138, !139, !142, !146, !147, !148, !149, !150, !151, !153, !154, !155, !156, !157}
!133 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !125, type: !128, flags: DIFlagArtificial)
!134 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !125, type: !128, flags: DIFlagArtificial)
!135 = !DILocalVariable(name: "temp", arg: 3, scope: !125, file: !3, line: 25, type: !108)
!136 = !DILocalVariable(name: "b", arg: 4, scope: !125, file: !3, line: 23, type: !108)
!137 = !DILocalVariable(name: "c", arg: 5, scope: !125, file: !3, line: 24, type: !108)
!138 = !DILocalVariable(name: "a", arg: 6, scope: !125, file: !3, line: 22, type: !109)
!139 = !DILocalVariable(name: "i", scope: !140, file: !3, line: 38, type: !8)
!140 = distinct !DILexicalBlock(scope: !141, file: !3, line: 38, column: 5)
!141 = distinct !DILexicalBlock(scope: !125, file: !3, line: 37, column: 3)
!142 = !DILocalVariable(name: ".omp.iv", scope: !143, type: !8, flags: DIFlagArtificial)
!143 = distinct !DILexicalBlock(scope: !144, file: !3, line: 39, column: 7)
!144 = distinct !DILexicalBlock(scope: !145, file: !3, line: 38, column: 27)
!145 = distinct !DILexicalBlock(scope: !140, file: !3, line: 38, column: 5)
!146 = !DILocalVariable(name: ".omp.lb", scope: !143, type: !8, flags: DIFlagArtificial)
!147 = !DILocalVariable(name: ".omp.ub", scope: !143, type: !8, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: ".omp.stride", scope: !143, type: !8, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: ".omp.is_last", scope: !143, type: !8, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: "i", scope: !143, type: !8, flags: DIFlagArtificial)
!151 = !DILocalVariable(name: ".omp.iv", scope: !152, type: !8, flags: DIFlagArtificial)
!152 = distinct !DILexicalBlock(scope: !144, file: !3, line: 44, column: 7)
!153 = !DILocalVariable(name: ".omp.lb", scope: !152, type: !8, flags: DIFlagArtificial)
!154 = !DILocalVariable(name: ".omp.ub", scope: !152, type: !8, flags: DIFlagArtificial)
!155 = !DILocalVariable(name: ".omp.stride", scope: !152, type: !8, flags: DIFlagArtificial)
!156 = !DILocalVariable(name: ".omp.is_last", scope: !152, type: !8, flags: DIFlagArtificial)
!157 = !DILocalVariable(name: "i", scope: !152, type: !8, flags: DIFlagArtificial)
!158 = !DILocation(line: 0, scope: !125)
!159 = !DILocation(line: 25, column: 5, scope: !125)
!160 = !DILocation(line: 23, column: 5, scope: !125)
!161 = !DILocation(line: 24, column: 5, scope: !125)
!162 = !DILocation(line: 22, column: 5, scope: !125)
!163 = !DILocation(line: 37, column: 3, scope: !125)
!164 = !DILocation(line: 38, column: 9, scope: !140)
!165 = !DILocation(line: 38, column: 13, scope: !140)
!166 = !DILocation(line: 38, column: 18, scope: !145)
!167 = !DILocation(line: 38, column: 19, scope: !145)
!168 = !DILocation(line: 38, column: 5, scope: !140)
!169 = !DILocation(line: 38, column: 5, scope: !145)
!170 = !DILocation(line: 39, column: 7, scope: !144)
!171 = !DILocation(line: 0, scope: !143)
!172 = !DILocation(line: 40, column: 11, scope: !143)
!173 = !DILocation(line: 40, column: 7, scope: !143)
!174 = !DILocation(line: 40, column: 25, scope: !143)
!175 = !DILocation(line: 41, column: 21, scope: !176)
!176 = distinct !DILexicalBlock(scope: !143, file: !3, line: 40, column: 29)
!177 = !DILocation(line: 41, column: 19, scope: !176)
!178 = !DILocation(line: 41, column: 28, scope: !176)
!179 = !DILocation(line: 41, column: 26, scope: !176)
!180 = !DILocation(line: 41, column: 24, scope: !176)
!181 = !DILocation(line: 41, column: 14, scope: !176)
!182 = !DILocation(line: 41, column: 9, scope: !176)
!183 = !DILocation(line: 41, column: 17, scope: !176)
!184 = !DILocation(line: 42, column: 7, scope: !176)
!185 = !DILocation(line: 39, column: 7, scope: !143)
!186 = distinct !{!186, !185, !187}
!187 = !DILocation(line: 39, column: 22, scope: !143)
!188 = !DILocation(line: 44, column: 7, scope: !144)
!189 = !DILocation(line: 0, scope: !152)
!190 = !DILocation(line: 45, column: 11, scope: !152)
!191 = !DILocation(line: 45, column: 7, scope: !152)
!192 = !DILocation(line: 45, column: 28, scope: !152)
!193 = !DILocation(line: 46, column: 21, scope: !194)
!194 = distinct !DILexicalBlock(scope: !152, file: !3, line: 45, column: 32)
!195 = !DILocation(line: 46, column: 16, scope: !194)
!196 = !DILocation(line: 46, column: 26, scope: !194)
!197 = !DILocation(line: 46, column: 24, scope: !194)
!198 = !DILocation(line: 46, column: 11, scope: !194)
!199 = !DILocation(line: 46, column: 9, scope: !194)
!200 = !DILocation(line: 46, column: 14, scope: !194)
!201 = !DILocation(line: 47, column: 7, scope: !194)
!202 = !DILocation(line: 44, column: 7, scope: !152)
!203 = distinct !{!203, !202, !204}
!204 = !DILocation(line: 44, column: 22, scope: !152)
!205 = !DILocation(line: 48, column: 5, scope: !144)
!206 = !DILocation(line: 38, column: 24, scope: !145)
!207 = distinct !{!207, !168, !208}
!208 = !DILocation(line: 48, column: 5, scope: !140)
!209 = !DILocation(line: 49, column: 3, scope: !125)
!210 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 37, type: !126, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !211)
!211 = !{!212, !213, !214, !215, !216, !217}
!212 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !210, type: !128, flags: DIFlagArtificial)
!213 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !210, type: !128, flags: DIFlagArtificial)
!214 = !DILocalVariable(name: "temp", arg: 3, scope: !210, type: !108, flags: DIFlagArtificial)
!215 = !DILocalVariable(name: "b", arg: 4, scope: !210, type: !108, flags: DIFlagArtificial)
!216 = !DILocalVariable(name: "c", arg: 5, scope: !210, type: !108, flags: DIFlagArtificial)
!217 = !DILocalVariable(name: "a", arg: 6, scope: !210, type: !109, flags: DIFlagArtificial)
!218 = !DILocation(line: 0, scope: !210)
!219 = !DILocation(line: 37, column: 3, scope: !210)
!220 = !{!221}
!221 = !{i64 2, i64 -1, i64 -1, i1 true}
!222 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160961_main_l35", scope: !3, file: !3, line: 36, type: !106, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !223)
!223 = !{!224, !225, !226, !227}
!224 = !DILocalVariable(name: "temp", arg: 1, scope: !222, type: !108, flags: DIFlagArtificial)
!225 = !DILocalVariable(name: "b", arg: 2, scope: !222, type: !108, flags: DIFlagArtificial)
!226 = !DILocalVariable(name: "c", arg: 3, scope: !222, type: !108, flags: DIFlagArtificial)
!227 = !DILocalVariable(name: "a", arg: 4, scope: !222, type: !109, flags: DIFlagArtificial)
!228 = !DILocation(line: 0, scope: !222)
!229 = !DILocation(line: 36, column: 3, scope: !222)
