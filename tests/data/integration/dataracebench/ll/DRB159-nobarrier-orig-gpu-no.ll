; ModuleID = 'DRB159-nobarrier-orig-gpu-no.c'
source_filename = "DRB159-nobarrier-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@b = common dso_local global [8 x i32] zeroinitializer, align 16, !dbg !0
@c = common dso_local global [8 x i32] zeroinitializer, align 16, !dbg !9
@temp = common dso_local global [8 x i32] zeroinitializer, align 16, !dbg !14
@a = common dso_local global i32 0, align 4, !dbg !6
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [44 x i8] c";DRB159-nobarrier-orig-gpu-no.c;main;39;7;;\00", align 1
@2 = private unnamed_addr constant [45 x i8] c";DRB159-nobarrier-orig-gpu-no.c;main;39;22;;\00", align 1
@3 = private unnamed_addr constant [44 x i8] c";DRB159-nobarrier-orig-gpu-no.c;main;44;7;;\00", align 1
@4 = private unnamed_addr constant [45 x i8] c";DRB159-nobarrier-orig-gpu-no.c;main;44;22;;\00", align 1
@5 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant [44 x i8] c";DRB159-nobarrier-orig-gpu-no.c;main;36;3;;\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"expected %d real %d \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !20 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  %i5 = alloca i32, align 4
  %i12 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !23, metadata !DIExpression()), !dbg !25
  store i32 0, i32* %i, align 4, !dbg !25
  br label %for.cond, !dbg !26

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !27
  %cmp = icmp slt i32 %0, 8, !dbg !29
  br i1 %cmp, label %for.body, label %for.end, !dbg !30

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !31
  %idxprom = sext i32 %1 to i64, !dbg !33
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @b, i64 0, i64 %idxprom, !dbg !33
  store i32 0, i32* %arrayidx, align 4, !dbg !34
  %2 = load i32, i32* %i, align 4, !dbg !35
  %idxprom1 = sext i32 %2 to i64, !dbg !36
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* @c, i64 0, i64 %idxprom1, !dbg !36
  store i32 2, i32* %arrayidx2, align 4, !dbg !37
  %3 = load i32, i32* %i, align 4, !dbg !38
  %idxprom3 = sext i32 %3 to i64, !dbg !39
  %arrayidx4 = getelementptr inbounds [8 x i32], [8 x i32]* @temp, i64 0, i64 %idxprom3, !dbg !39
  store i32 0, i32* %arrayidx4, align 4, !dbg !40
  br label %for.inc, !dbg !41

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !42
  %inc = add nsw i32 %4, 1, !dbg !42
  store i32 %inc, i32* %i, align 4, !dbg !42
  br label %for.cond, !dbg !43, !llvm.loop !44

for.end:                                          ; preds = %for.cond
  store i32 2, i32* @a, align 4, !dbg !46
  call void @__omp_offloading_10307_2ec41b8_main_l35([8 x i32]* @temp, [8 x i32]* @b, [8 x i32]* @c, i32* @a) #5, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %val, metadata !49, metadata !DIExpression()), !dbg !50
  store i32 0, i32* %val, align 4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !51, metadata !DIExpression()), !dbg !53
  store i32 0, i32* %i5, align 4, !dbg !53
  br label %for.cond6, !dbg !54

for.cond6:                                        ; preds = %for.inc9, %for.end
  %5 = load i32, i32* %i5, align 4, !dbg !55
  %cmp7 = icmp slt i32 %5, 100, !dbg !57
  br i1 %cmp7, label %for.body8, label %for.end11, !dbg !58

for.body8:                                        ; preds = %for.cond6
  %6 = load i32, i32* %val, align 4, !dbg !59
  %add = add nsw i32 %6, 2, !dbg !61
  store i32 %add, i32* %val, align 4, !dbg !62
  %7 = load i32, i32* %val, align 4, !dbg !63
  %mul = mul nsw i32 %7, 2, !dbg !64
  store i32 %mul, i32* %val, align 4, !dbg !65
  br label %for.inc9, !dbg !66

for.inc9:                                         ; preds = %for.body8
  %8 = load i32, i32* %i5, align 4, !dbg !67
  %inc10 = add nsw i32 %8, 1, !dbg !67
  store i32 %inc10, i32* %i5, align 4, !dbg !67
  br label %for.cond6, !dbg !68, !llvm.loop !69

for.end11:                                        ; preds = %for.cond6
  call void @llvm.dbg.declare(metadata i32* %i12, metadata !71, metadata !DIExpression()), !dbg !73
  store i32 0, i32* %i12, align 4, !dbg !73
  br label %for.cond13, !dbg !74

for.cond13:                                       ; preds = %for.inc21, %for.end11
  %9 = load i32, i32* %i12, align 4, !dbg !75
  %cmp14 = icmp slt i32 %9, 8, !dbg !77
  br i1 %cmp14, label %for.body15, label %for.end23, !dbg !78

for.body15:                                       ; preds = %for.cond13
  %10 = load i32, i32* %i12, align 4, !dbg !79
  %idxprom16 = sext i32 %10 to i64, !dbg !82
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* @b, i64 0, i64 %idxprom16, !dbg !82
  %11 = load i32, i32* %arrayidx17, align 4, !dbg !82
  %12 = load i32, i32* %val, align 4, !dbg !83
  %cmp18 = icmp ne i32 %11, %12, !dbg !84
  br i1 %cmp18, label %if.then, label %if.end, !dbg !85

if.then:                                          ; preds = %for.body15
  %13 = load i32, i32* %val, align 4, !dbg !86
  %14 = load i32, i32* %i12, align 4, !dbg !88
  %idxprom19 = sext i32 %14 to i64, !dbg !89
  %arrayidx20 = getelementptr inbounds [8 x i32], [8 x i32]* @b, i64 0, i64 %idxprom19, !dbg !89
  %15 = load i32, i32* %arrayidx20, align 4, !dbg !89
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %15), !dbg !90
  store i32 0, i32* %retval, align 4, !dbg !91
  br label %return, !dbg !91

if.end:                                           ; preds = %for.body15
  br label %for.inc21, !dbg !92

for.inc21:                                        ; preds = %if.end
  %16 = load i32, i32* %i12, align 4, !dbg !93
  %inc22 = add nsw i32 %16, 1, !dbg !93
  store i32 %inc22, i32* %i12, align 4, !dbg !93
  br label %for.cond13, !dbg !94, !llvm.loop !95

for.end23:                                        ; preds = %for.cond13
  store i32 0, i32* %retval, align 4, !dbg !97
  br label %return, !dbg !97

return:                                           ; preds = %for.end23, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !98
  ret i32 %17, !dbg !98
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41b8_main_l35_debug__([8 x i32]* dereferenceable(32) %temp, [8 x i32]* dereferenceable(32) %b, [8 x i32]* dereferenceable(32) %c, i32* dereferenceable(4) %a) #2 !dbg !99 {
entry:
  %temp.addr = alloca [8 x i32]*, align 8
  %b.addr = alloca [8 x i32]*, align 8
  %c.addr = alloca [8 x i32]*, align 8
  %a.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store [8 x i32]* %temp, [8 x i32]** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata [8 x i32]** %temp.addr, metadata !104, metadata !DIExpression()), !dbg !105
  store [8 x i32]* %b, [8 x i32]** %b.addr, align 8
  call void @llvm.dbg.declare(metadata [8 x i32]** %b.addr, metadata !106, metadata !DIExpression()), !dbg !107
  store [8 x i32]* %c, [8 x i32]** %c.addr, align 8
  call void @llvm.dbg.declare(metadata [8 x i32]** %c.addr, metadata !108, metadata !DIExpression()), !dbg !109
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !110, metadata !DIExpression()), !dbg !111
  %2 = load [8 x i32]*, [8 x i32]** %temp.addr, align 8, !dbg !112
  %3 = load [8 x i32]*, [8 x i32]** %b.addr, align 8, !dbg !112
  %4 = load [8 x i32]*, [8 x i32]** %c.addr, align 8, !dbg !112
  %5 = load i32*, i32** %a.addr, align 8, !dbg !112
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !112
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @6, i32 0, i32 0), i8** %6, align 8, !dbg !112
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [8 x i32]*, [8 x i32]*, [8 x i32]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), [8 x i32]* %2, [8 x i32]* %3, [8 x i32]* %4, i32* %5), !dbg !112
  ret void, !dbg !113
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [8 x i32]* dereferenceable(32) %temp, [8 x i32]* dereferenceable(32) %b, [8 x i32]* dereferenceable(32) %c, i32* dereferenceable(4) %a) #2 !dbg !114 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !121, metadata !DIExpression()), !dbg !122
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !123, metadata !DIExpression()), !dbg !122
  store [8 x i32]* %temp, [8 x i32]** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata [8 x i32]** %temp.addr, metadata !124, metadata !DIExpression()), !dbg !125
  store [8 x i32]* %b, [8 x i32]** %b.addr, align 8
  call void @llvm.dbg.declare(metadata [8 x i32]** %b.addr, metadata !126, metadata !DIExpression()), !dbg !127
  store [8 x i32]* %c, [8 x i32]** %c.addr, align 8
  call void @llvm.dbg.declare(metadata [8 x i32]** %c.addr, metadata !128, metadata !DIExpression()), !dbg !129
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !130, metadata !DIExpression()), !dbg !131
  %2 = load [8 x i32]*, [8 x i32]** %temp.addr, align 8, !dbg !132
  %3 = load [8 x i32]*, [8 x i32]** %b.addr, align 8, !dbg !132
  %4 = load [8 x i32]*, [8 x i32]** %c.addr, align 8, !dbg !132
  %5 = load i32*, i32** %a.addr, align 8, !dbg !132
  call void @llvm.dbg.declare(metadata i32* %i, metadata !133, metadata !DIExpression()), !dbg !136
  store i32 0, i32* %i, align 4, !dbg !136
  br label %for.cond, !dbg !137

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !138
  %cmp = icmp slt i32 %6, 100, !dbg !140
  br i1 %cmp, label %for.body, label %for.end, !dbg !141

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !142, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !146, metadata !DIExpression()), !dbg !145
  store i32 0, i32* %.omp.lb, align 4, !dbg !147
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !148, metadata !DIExpression()), !dbg !145
  store i32 7, i32* %.omp.ub, align 4, !dbg !147
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !149, metadata !DIExpression()), !dbg !145
  store i32 1, i32* %.omp.stride, align 4, !dbg !147
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !150, metadata !DIExpression()), !dbg !145
  store i32 0, i32* %.omp.is_last, align 4, !dbg !147
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !151, metadata !DIExpression()), !dbg !145
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !152
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i32 0, i32 0), i8** %7, align 8, !dbg !152
  %8 = load i32*, i32** %.global_tid..addr, align 8, !dbg !152
  %9 = load i32, i32* %8, align 4, !dbg !152
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %9, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !152
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !147
  %cmp2 = icmp sgt i32 %10, 7, !dbg !147
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !147

cond.true:                                        ; preds = %for.body
  br label %cond.end, !dbg !147

cond.false:                                       ; preds = %for.body
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !147
  br label %cond.end, !dbg !147

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 7, %cond.true ], [ %11, %cond.false ], !dbg !147
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !147
  %12 = load i32, i32* %.omp.lb, align 4, !dbg !147
  store i32 %12, i32* %.omp.iv, align 4, !dbg !147
  br label %omp.inner.for.cond, !dbg !152

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !147
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !147
  %cmp3 = icmp sle i32 %13, %14, !dbg !153
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !152

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !147
  %mul = mul nsw i32 %15, 1, !dbg !154
  %add = add nsw i32 0, %mul, !dbg !154
  store i32 %add, i32* %i1, align 4, !dbg !154
  %16 = load i32, i32* %i1, align 4, !dbg !155
  %idxprom = sext i32 %16 to i64, !dbg !157
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %idxprom, !dbg !157
  %17 = load i32, i32* %arrayidx, align 4, !dbg !157
  %18 = load i32, i32* %i1, align 4, !dbg !158
  %idxprom4 = sext i32 %18 to i64, !dbg !159
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %idxprom4, !dbg !159
  %19 = load i32, i32* %arrayidx5, align 4, !dbg !159
  %add6 = add nsw i32 %17, %19, !dbg !160
  %20 = load i32, i32* %i1, align 4, !dbg !161
  %idxprom7 = sext i32 %20 to i64, !dbg !162
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %idxprom7, !dbg !162
  store i32 %add6, i32* %arrayidx8, align 4, !dbg !163
  br label %omp.body.continue, !dbg !164

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !165

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !147
  %add9 = add nsw i32 %21, 1, !dbg !153
  store i32 %add9, i32* %.omp.iv, align 4, !dbg !153
  br label %omp.inner.for.cond, !dbg !165, !llvm.loop !166

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !165

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !165
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @2, i32 0, i32 0), i8** %22, align 8, !dbg !165
  %23 = load i32*, i32** %.global_tid..addr, align 8, !dbg !165
  %24 = load i32, i32* %23, align 4, !dbg !165
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %24), !dbg !165
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !167
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i32 0, i32 0), i8** %25, align 8, !dbg !167
  %26 = load i32*, i32** %.global_tid..addr, align 8, !dbg !167
  %27 = load i32, i32* %26, align 4, !dbg !167
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %27), !dbg !167
  call void @llvm.dbg.declare(metadata i32* %.omp.iv10, metadata !168, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata i32* %.omp.lb12, metadata !171, metadata !DIExpression()), !dbg !170
  store i32 0, i32* %.omp.lb12, align 4, !dbg !172
  call void @llvm.dbg.declare(metadata i32* %.omp.ub13, metadata !173, metadata !DIExpression()), !dbg !170
  store i32 7, i32* %.omp.ub13, align 4, !dbg !172
  call void @llvm.dbg.declare(metadata i32* %.omp.stride14, metadata !174, metadata !DIExpression()), !dbg !170
  store i32 1, i32* %.omp.stride14, align 4, !dbg !172
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last15, metadata !175, metadata !DIExpression()), !dbg !170
  store i32 0, i32* %.omp.is_last15, align 4, !dbg !172
  call void @llvm.dbg.declare(metadata i32* %i16, metadata !176, metadata !DIExpression()), !dbg !170
  %28 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !177
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @3, i32 0, i32 0), i8** %28, align 8, !dbg !177
  %29 = load i32*, i32** %.global_tid..addr, align 8, !dbg !177
  %30 = load i32, i32* %29, align 4, !dbg !177
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %30, i32 34, i32* %.omp.is_last15, i32* %.omp.lb12, i32* %.omp.ub13, i32* %.omp.stride14, i32 1, i32 1), !dbg !177
  %31 = load i32, i32* %.omp.ub13, align 4, !dbg !172
  %cmp17 = icmp sgt i32 %31, 7, !dbg !172
  br i1 %cmp17, label %cond.true18, label %cond.false19, !dbg !172

cond.true18:                                      ; preds = %omp.loop.exit
  br label %cond.end20, !dbg !172

cond.false19:                                     ; preds = %omp.loop.exit
  %32 = load i32, i32* %.omp.ub13, align 4, !dbg !172
  br label %cond.end20, !dbg !172

cond.end20:                                       ; preds = %cond.false19, %cond.true18
  %cond21 = phi i32 [ 7, %cond.true18 ], [ %32, %cond.false19 ], !dbg !172
  store i32 %cond21, i32* %.omp.ub13, align 4, !dbg !172
  %33 = load i32, i32* %.omp.lb12, align 4, !dbg !172
  store i32 %33, i32* %.omp.iv10, align 4, !dbg !172
  br label %omp.inner.for.cond22, !dbg !177

omp.inner.for.cond22:                             ; preds = %omp.inner.for.inc32, %cond.end20
  %34 = load i32, i32* %.omp.iv10, align 4, !dbg !172
  %35 = load i32, i32* %.omp.ub13, align 4, !dbg !172
  %cmp23 = icmp sle i32 %34, %35, !dbg !178
  br i1 %cmp23, label %omp.inner.for.body24, label %omp.inner.for.end34, !dbg !177

omp.inner.for.body24:                             ; preds = %omp.inner.for.cond22
  %36 = load i32, i32* %.omp.iv10, align 4, !dbg !172
  %mul25 = mul nsw i32 %36, 1, !dbg !179
  %sub = sub nsw i32 7, %mul25, !dbg !179
  store i32 %sub, i32* %i16, align 4, !dbg !179
  %37 = load i32, i32* %i16, align 4, !dbg !180
  %idxprom26 = sext i32 %37 to i64, !dbg !182
  %arrayidx27 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %idxprom26, !dbg !182
  %38 = load i32, i32* %arrayidx27, align 4, !dbg !182
  %39 = load i32, i32* %5, align 4, !dbg !183
  %mul28 = mul nsw i32 %38, %39, !dbg !184
  %40 = load i32, i32* %i16, align 4, !dbg !185
  %idxprom29 = sext i32 %40 to i64, !dbg !186
  %arrayidx30 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %idxprom29, !dbg !186
  store i32 %mul28, i32* %arrayidx30, align 4, !dbg !187
  br label %omp.body.continue31, !dbg !188

omp.body.continue31:                              ; preds = %omp.inner.for.body24
  br label %omp.inner.for.inc32, !dbg !189

omp.inner.for.inc32:                              ; preds = %omp.body.continue31
  %41 = load i32, i32* %.omp.iv10, align 4, !dbg !172
  %add33 = add nsw i32 %41, 1, !dbg !178
  store i32 %add33, i32* %.omp.iv10, align 4, !dbg !178
  br label %omp.inner.for.cond22, !dbg !189, !llvm.loop !190

omp.inner.for.end34:                              ; preds = %omp.inner.for.cond22
  br label %omp.loop.exit35, !dbg !189

omp.loop.exit35:                                  ; preds = %omp.inner.for.end34
  %42 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !189
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @4, i32 0, i32 0), i8** %42, align 8, !dbg !189
  %43 = load i32*, i32** %.global_tid..addr, align 8, !dbg !189
  %44 = load i32, i32* %43, align 4, !dbg !189
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %44), !dbg !189
  %45 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !191
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @3, i32 0, i32 0), i8** %45, align 8, !dbg !191
  %46 = load i32*, i32** %.global_tid..addr, align 8, !dbg !191
  %47 = load i32, i32* %46, align 4, !dbg !191
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %47), !dbg !191
  br label %for.inc, !dbg !192

for.inc:                                          ; preds = %omp.loop.exit35
  %48 = load i32, i32* %i, align 4, !dbg !193
  %inc = add nsw i32 %48, 1, !dbg !193
  store i32 %inc, i32* %i, align 4, !dbg !193
  br label %for.cond, !dbg !194, !llvm.loop !195

for.end:                                          ; preds = %for.cond
  ret void, !dbg !197
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [8 x i32]* dereferenceable(32) %temp, [8 x i32]* dereferenceable(32) %b, [8 x i32]* dereferenceable(32) %c, i32* dereferenceable(4) %a) #2 !dbg !198 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %temp.addr = alloca [8 x i32]*, align 8
  %b.addr = alloca [8 x i32]*, align 8
  %c.addr = alloca [8 x i32]*, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !199, metadata !DIExpression()), !dbg !200
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !201, metadata !DIExpression()), !dbg !200
  store [8 x i32]* %temp, [8 x i32]** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata [8 x i32]** %temp.addr, metadata !202, metadata !DIExpression()), !dbg !200
  store [8 x i32]* %b, [8 x i32]** %b.addr, align 8
  call void @llvm.dbg.declare(metadata [8 x i32]** %b.addr, metadata !203, metadata !DIExpression()), !dbg !200
  store [8 x i32]* %c, [8 x i32]** %c.addr, align 8
  call void @llvm.dbg.declare(metadata [8 x i32]** %c.addr, metadata !204, metadata !DIExpression()), !dbg !200
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !205, metadata !DIExpression()), !dbg !200
  %0 = load [8 x i32]*, [8 x i32]** %temp.addr, align 8, !dbg !206
  %1 = load [8 x i32]*, [8 x i32]** %b.addr, align 8, !dbg !206
  %2 = load [8 x i32]*, [8 x i32]** %c.addr, align 8, !dbg !206
  %3 = load i32*, i32** %a.addr, align 8, !dbg !206
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !206
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !206
  %6 = load [8 x i32]*, [8 x i32]** %temp.addr, align 8, !dbg !206
  %7 = load [8 x i32]*, [8 x i32]** %b.addr, align 8, !dbg !206
  %8 = load [8 x i32]*, [8 x i32]** %c.addr, align 8, !dbg !206
  %9 = load i32*, i32** %a.addr, align 8, !dbg !206
  call void @.omp_outlined._debug__(i32* %4, i32* %5, [8 x i32]* %6, [8 x i32]* %7, [8 x i32]* %8, i32* %9) #5, !dbg !206
  ret void, !dbg !206
}

declare !callback !207 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41b8_main_l35([8 x i32]* dereferenceable(32) %temp, [8 x i32]* dereferenceable(32) %b, [8 x i32]* dereferenceable(32) %c, i32* dereferenceable(4) %a) #2 !dbg !209 {
entry:
  %temp.addr = alloca [8 x i32]*, align 8
  %b.addr = alloca [8 x i32]*, align 8
  %c.addr = alloca [8 x i32]*, align 8
  %a.addr = alloca i32*, align 8
  store [8 x i32]* %temp, [8 x i32]** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata [8 x i32]** %temp.addr, metadata !210, metadata !DIExpression()), !dbg !211
  store [8 x i32]* %b, [8 x i32]** %b.addr, align 8
  call void @llvm.dbg.declare(metadata [8 x i32]** %b.addr, metadata !212, metadata !DIExpression()), !dbg !211
  store [8 x i32]* %c, [8 x i32]** %c.addr, align 8
  call void @llvm.dbg.declare(metadata [8 x i32]** %c.addr, metadata !213, metadata !DIExpression()), !dbg !211
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !214, metadata !DIExpression()), !dbg !211
  %0 = load [8 x i32]*, [8 x i32]** %temp.addr, align 8, !dbg !215
  %1 = load [8 x i32]*, [8 x i32]** %b.addr, align 8, !dbg !215
  %2 = load [8 x i32]*, [8 x i32]** %c.addr, align 8, !dbg !215
  %3 = load i32*, i32** %a.addr, align 8, !dbg !215
  %4 = load [8 x i32]*, [8 x i32]** %temp.addr, align 8, !dbg !215
  %5 = load [8 x i32]*, [8 x i32]** %b.addr, align 8, !dbg !215
  %6 = load [8 x i32]*, [8 x i32]** %c.addr, align 8, !dbg !215
  %7 = load i32*, i32** %a.addr, align 8, !dbg !215
  call void @__omp_offloading_10307_2ec41b8_main_l35_debug__([8 x i32]* %4, [8 x i32]* %5, [8 x i32]* %6, i32* %7) #5, !dbg !215
  ret void, !dbg !215
}

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 23, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB159-nobarrier-orig-gpu-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
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
!20 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 27, type: !21, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!21 = !DISubroutineType(types: !22)
!22 = !{!8}
!23 = !DILocalVariable(name: "i", scope: !24, file: !3, line: 28, type: !8)
!24 = distinct !DILexicalBlock(scope: !20, file: !3, line: 28, column: 3)
!25 = !DILocation(line: 28, column: 11, scope: !24)
!26 = !DILocation(line: 28, column: 7, scope: !24)
!27 = !DILocation(line: 28, column: 16, scope: !28)
!28 = distinct !DILexicalBlock(scope: !24, file: !3, line: 28, column: 3)
!29 = !DILocation(line: 28, column: 17, scope: !28)
!30 = !DILocation(line: 28, column: 3, scope: !24)
!31 = !DILocation(line: 29, column: 7, scope: !32)
!32 = distinct !DILexicalBlock(scope: !28, file: !3, line: 28, column: 25)
!33 = !DILocation(line: 29, column: 5, scope: !32)
!34 = !DILocation(line: 29, column: 9, scope: !32)
!35 = !DILocation(line: 30, column: 7, scope: !32)
!36 = !DILocation(line: 30, column: 5, scope: !32)
!37 = !DILocation(line: 30, column: 9, scope: !32)
!38 = !DILocation(line: 31, column: 10, scope: !32)
!39 = !DILocation(line: 31, column: 5, scope: !32)
!40 = !DILocation(line: 31, column: 12, scope: !32)
!41 = !DILocation(line: 32, column: 3, scope: !32)
!42 = !DILocation(line: 28, column: 22, scope: !28)
!43 = !DILocation(line: 28, column: 3, scope: !28)
!44 = distinct !{!44, !30, !45}
!45 = !DILocation(line: 32, column: 3, scope: !24)
!46 = !DILocation(line: 33, column: 4, scope: !20)
!47 = !DILocation(line: 35, column: 3, scope: !48)
!48 = distinct !DILexicalBlock(scope: !20, file: !3, line: 35, column: 3)
!49 = !DILocalVariable(name: "val", scope: !20, file: !3, line: 51, type: !8)
!50 = !DILocation(line: 51, column: 7, scope: !20)
!51 = !DILocalVariable(name: "i", scope: !52, file: !3, line: 53, type: !8)
!52 = distinct !DILexicalBlock(scope: !20, file: !3, line: 53, column: 3)
!53 = !DILocation(line: 53, column: 11, scope: !52)
!54 = !DILocation(line: 53, column: 7, scope: !52)
!55 = !DILocation(line: 53, column: 16, scope: !56)
!56 = distinct !DILexicalBlock(scope: !52, file: !3, line: 53, column: 3)
!57 = !DILocation(line: 53, column: 17, scope: !56)
!58 = !DILocation(line: 53, column: 3, scope: !52)
!59 = !DILocation(line: 54, column: 11, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !3, line: 53, column: 25)
!61 = !DILocation(line: 54, column: 15, scope: !60)
!62 = !DILocation(line: 54, column: 9, scope: !60)
!63 = !DILocation(line: 55, column: 11, scope: !60)
!64 = !DILocation(line: 55, column: 15, scope: !60)
!65 = !DILocation(line: 55, column: 9, scope: !60)
!66 = !DILocation(line: 56, column: 3, scope: !60)
!67 = !DILocation(line: 53, column: 22, scope: !56)
!68 = !DILocation(line: 53, column: 3, scope: !56)
!69 = distinct !{!69, !58, !70}
!70 = !DILocation(line: 56, column: 3, scope: !52)
!71 = !DILocalVariable(name: "i", scope: !72, file: !3, line: 58, type: !8)
!72 = distinct !DILexicalBlock(scope: !20, file: !3, line: 58, column: 3)
!73 = !DILocation(line: 58, column: 11, scope: !72)
!74 = !DILocation(line: 58, column: 7, scope: !72)
!75 = !DILocation(line: 58, column: 16, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !3, line: 58, column: 3)
!77 = !DILocation(line: 58, column: 17, scope: !76)
!78 = !DILocation(line: 58, column: 3, scope: !72)
!79 = !DILocation(line: 59, column: 10, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !3, line: 59, column: 8)
!81 = distinct !DILexicalBlock(scope: !76, file: !3, line: 58, column: 25)
!82 = !DILocation(line: 59, column: 8, scope: !80)
!83 = !DILocation(line: 59, column: 14, scope: !80)
!84 = !DILocation(line: 59, column: 12, scope: !80)
!85 = !DILocation(line: 59, column: 8, scope: !81)
!86 = !DILocation(line: 60, column: 39, scope: !87)
!87 = distinct !DILexicalBlock(scope: !80, file: !3, line: 59, column: 18)
!88 = !DILocation(line: 60, column: 46, scope: !87)
!89 = !DILocation(line: 60, column: 44, scope: !87)
!90 = !DILocation(line: 60, column: 7, scope: !87)
!91 = !DILocation(line: 61, column: 7, scope: !87)
!92 = !DILocation(line: 63, column: 3, scope: !81)
!93 = !DILocation(line: 58, column: 22, scope: !76)
!94 = !DILocation(line: 58, column: 3, scope: !76)
!95 = distinct !{!95, !78, !96}
!96 = !DILocation(line: 63, column: 3, scope: !72)
!97 = !DILocation(line: 65, column: 3, scope: !20)
!98 = !DILocation(line: 66, column: 1, scope: !20)
!99 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41b8_main_l35_debug__", scope: !3, file: !3, line: 36, type: !100, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !102, !102, !102, !103}
!102 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !11, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!104 = !DILocalVariable(name: "temp", arg: 1, scope: !99, file: !3, line: 25, type: !102)
!105 = !DILocation(line: 25, column: 5, scope: !99)
!106 = !DILocalVariable(name: "b", arg: 2, scope: !99, file: !3, line: 23, type: !102)
!107 = !DILocation(line: 23, column: 5, scope: !99)
!108 = !DILocalVariable(name: "c", arg: 3, scope: !99, file: !3, line: 24, type: !102)
!109 = !DILocation(line: 24, column: 5, scope: !99)
!110 = !DILocalVariable(name: "a", arg: 4, scope: !99, file: !3, line: 22, type: !103)
!111 = !DILocation(line: 22, column: 5, scope: !99)
!112 = !DILocation(line: 36, column: 3, scope: !99)
!113 = !DILocation(line: 36, column: 23, scope: !99)
!114 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 37, type: !115, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !117, !117, !102, !102, !102, !103}
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!121 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !114, type: !117, flags: DIFlagArtificial)
!122 = !DILocation(line: 0, scope: !114)
!123 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !114, type: !117, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "temp", arg: 3, scope: !114, file: !3, line: 25, type: !102)
!125 = !DILocation(line: 25, column: 5, scope: !114)
!126 = !DILocalVariable(name: "b", arg: 4, scope: !114, file: !3, line: 23, type: !102)
!127 = !DILocation(line: 23, column: 5, scope: !114)
!128 = !DILocalVariable(name: "c", arg: 5, scope: !114, file: !3, line: 24, type: !102)
!129 = !DILocation(line: 24, column: 5, scope: !114)
!130 = !DILocalVariable(name: "a", arg: 6, scope: !114, file: !3, line: 22, type: !103)
!131 = !DILocation(line: 22, column: 5, scope: !114)
!132 = !DILocation(line: 37, column: 3, scope: !114)
!133 = !DILocalVariable(name: "i", scope: !134, file: !3, line: 38, type: !8)
!134 = distinct !DILexicalBlock(scope: !135, file: !3, line: 38, column: 5)
!135 = distinct !DILexicalBlock(scope: !114, file: !3, line: 37, column: 3)
!136 = !DILocation(line: 38, column: 13, scope: !134)
!137 = !DILocation(line: 38, column: 9, scope: !134)
!138 = !DILocation(line: 38, column: 18, scope: !139)
!139 = distinct !DILexicalBlock(scope: !134, file: !3, line: 38, column: 5)
!140 = !DILocation(line: 38, column: 19, scope: !139)
!141 = !DILocation(line: 38, column: 5, scope: !134)
!142 = !DILocalVariable(name: ".omp.iv", scope: !143, type: !8, flags: DIFlagArtificial)
!143 = distinct !DILexicalBlock(scope: !144, file: !3, line: 39, column: 7)
!144 = distinct !DILexicalBlock(scope: !139, file: !3, line: 38, column: 27)
!145 = !DILocation(line: 0, scope: !143)
!146 = !DILocalVariable(name: ".omp.lb", scope: !143, type: !8, flags: DIFlagArtificial)
!147 = !DILocation(line: 40, column: 11, scope: !143)
!148 = !DILocalVariable(name: ".omp.ub", scope: !143, type: !8, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: ".omp.stride", scope: !143, type: !8, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: ".omp.is_last", scope: !143, type: !8, flags: DIFlagArtificial)
!151 = !DILocalVariable(name: "i", scope: !143, type: !8, flags: DIFlagArtificial)
!152 = !DILocation(line: 39, column: 7, scope: !144)
!153 = !DILocation(line: 40, column: 7, scope: !143)
!154 = !DILocation(line: 40, column: 25, scope: !143)
!155 = !DILocation(line: 41, column: 21, scope: !156)
!156 = distinct !DILexicalBlock(scope: !143, file: !3, line: 40, column: 29)
!157 = !DILocation(line: 41, column: 19, scope: !156)
!158 = !DILocation(line: 41, column: 28, scope: !156)
!159 = !DILocation(line: 41, column: 26, scope: !156)
!160 = !DILocation(line: 41, column: 24, scope: !156)
!161 = !DILocation(line: 41, column: 14, scope: !156)
!162 = !DILocation(line: 41, column: 9, scope: !156)
!163 = !DILocation(line: 41, column: 17, scope: !156)
!164 = !DILocation(line: 42, column: 7, scope: !156)
!165 = !DILocation(line: 39, column: 7, scope: !143)
!166 = distinct !{!166, !165, !167}
!167 = !DILocation(line: 39, column: 22, scope: !143)
!168 = !DILocalVariable(name: ".omp.iv", scope: !169, type: !8, flags: DIFlagArtificial)
!169 = distinct !DILexicalBlock(scope: !144, file: !3, line: 44, column: 7)
!170 = !DILocation(line: 0, scope: !169)
!171 = !DILocalVariable(name: ".omp.lb", scope: !169, type: !8, flags: DIFlagArtificial)
!172 = !DILocation(line: 45, column: 11, scope: !169)
!173 = !DILocalVariable(name: ".omp.ub", scope: !169, type: !8, flags: DIFlagArtificial)
!174 = !DILocalVariable(name: ".omp.stride", scope: !169, type: !8, flags: DIFlagArtificial)
!175 = !DILocalVariable(name: ".omp.is_last", scope: !169, type: !8, flags: DIFlagArtificial)
!176 = !DILocalVariable(name: "i", scope: !169, type: !8, flags: DIFlagArtificial)
!177 = !DILocation(line: 44, column: 7, scope: !144)
!178 = !DILocation(line: 45, column: 7, scope: !169)
!179 = !DILocation(line: 45, column: 28, scope: !169)
!180 = !DILocation(line: 46, column: 21, scope: !181)
!181 = distinct !DILexicalBlock(scope: !169, file: !3, line: 45, column: 32)
!182 = !DILocation(line: 46, column: 16, scope: !181)
!183 = !DILocation(line: 46, column: 26, scope: !181)
!184 = !DILocation(line: 46, column: 24, scope: !181)
!185 = !DILocation(line: 46, column: 11, scope: !181)
!186 = !DILocation(line: 46, column: 9, scope: !181)
!187 = !DILocation(line: 46, column: 14, scope: !181)
!188 = !DILocation(line: 47, column: 7, scope: !181)
!189 = !DILocation(line: 44, column: 7, scope: !169)
!190 = distinct !{!190, !189, !191}
!191 = !DILocation(line: 44, column: 22, scope: !169)
!192 = !DILocation(line: 48, column: 5, scope: !144)
!193 = !DILocation(line: 38, column: 24, scope: !139)
!194 = !DILocation(line: 38, column: 5, scope: !139)
!195 = distinct !{!195, !141, !196}
!196 = !DILocation(line: 48, column: 5, scope: !134)
!197 = !DILocation(line: 49, column: 3, scope: !114)
!198 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 37, type: !115, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!199 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !198, type: !117, flags: DIFlagArtificial)
!200 = !DILocation(line: 0, scope: !198)
!201 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !198, type: !117, flags: DIFlagArtificial)
!202 = !DILocalVariable(name: "temp", arg: 3, scope: !198, type: !102, flags: DIFlagArtificial)
!203 = !DILocalVariable(name: "b", arg: 4, scope: !198, type: !102, flags: DIFlagArtificial)
!204 = !DILocalVariable(name: "c", arg: 5, scope: !198, type: !102, flags: DIFlagArtificial)
!205 = !DILocalVariable(name: "a", arg: 6, scope: !198, type: !103, flags: DIFlagArtificial)
!206 = !DILocation(line: 37, column: 3, scope: !198)
!207 = !{!208}
!208 = !{i64 2, i64 -1, i64 -1, i1 true}
!209 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41b8_main_l35", scope: !3, file: !3, line: 36, type: !100, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!210 = !DILocalVariable(name: "temp", arg: 1, scope: !209, type: !102, flags: DIFlagArtificial)
!211 = !DILocation(line: 0, scope: !209)
!212 = !DILocalVariable(name: "b", arg: 2, scope: !209, type: !102, flags: DIFlagArtificial)
!213 = !DILocalVariable(name: "c", arg: 3, scope: !209, type: !102, flags: DIFlagArtificial)
!214 = !DILocalVariable(name: "a", arg: 4, scope: !209, type: !103, flags: DIFlagArtificial)
!215 = !DILocation(line: 36, column: 3, scope: !209)
