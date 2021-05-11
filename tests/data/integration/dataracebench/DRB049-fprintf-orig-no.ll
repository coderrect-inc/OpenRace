; ModuleID = 'integration/dataracebench/DRB049-fprintf-orig-no.c'
source_filename = "integration/dataracebench/DRB049-fprintf-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [15 x i8] c"mytempfile.txt\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Error in fopen()\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [64 x i8] c";integration/dataracebench/DRB049-fprintf-orig-no.c;main;69;1;;\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB049-fprintf-orig-no.c;main;69;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0) }, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"Error: unable to delete mytempfile.txt\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !77 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %pfile = alloca %struct._IO_FILE*, align 8
  %len = alloca i32, align 4
  %A = alloca [1000 x i32], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !95
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !82, metadata !DIExpression()), !dbg !99
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !100
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !83, metadata !DIExpression()), !dbg !102
  %2 = bitcast i32* %i to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %i, metadata !84, metadata !DIExpression()), !dbg !104
  %3 = bitcast i32* %ret to i8*, !dbg !105
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #6, !dbg !105
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !85, metadata !DIExpression()), !dbg !106
  %4 = bitcast %struct._IO_FILE** %pfile to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #6, !dbg !107
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pfile, metadata !86, metadata !DIExpression()), !dbg !108
  %5 = bitcast i32* %len to i8*, !dbg !109
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #6, !dbg !109
  call void @llvm.dbg.declare(metadata i32* %len, metadata !90, metadata !DIExpression()), !dbg !110
  store i32 1000, i32* %len, align 4, !dbg !110, !tbaa !95
  %6 = bitcast [1000 x i32]* %A to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4000, i8* %6) #6, !dbg !111
  call void @llvm.dbg.declare(metadata [1000 x i32]* %A, metadata !91, metadata !DIExpression()), !dbg !112
  store i32 0, i32* %i, align 4, !dbg !113, !tbaa !95
  br label %for.cond, !dbg !115

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !dbg !116, !tbaa !95
  %8 = load i32, i32* %len, align 4, !dbg !118, !tbaa !95
  %cmp = icmp slt i32 %7, %8, !dbg !119
  br i1 %cmp, label %for.body, label %for.end, !dbg !120

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !121, !tbaa !95
  %10 = load i32, i32* %i, align 4, !dbg !122, !tbaa !95
  %idxprom = sext i32 %10 to i64, !dbg !123
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* %A, i64 0, i64 %idxprom, !dbg !123
  store i32 %9, i32* %arrayidx, align 4, !dbg !124, !tbaa !95
  br label %for.inc, !dbg !123

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !125, !tbaa !95
  %inc = add nsw i32 %11, 1, !dbg !125
  store i32 %inc, i32* %i, align 4, !dbg !125, !tbaa !95
  br label %for.cond, !dbg !126, !llvm.loop !127

for.end:                                          ; preds = %for.cond
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !129
  store %struct._IO_FILE* %call, %struct._IO_FILE** %pfile, align 8, !dbg !130, !tbaa !100
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %pfile, align 8, !dbg !131, !tbaa !100
  %cmp1 = icmp eq %struct._IO_FILE* %12, null, !dbg !133
  br i1 %cmp1, label %if.then, label %if.end, !dbg !134

if.then:                                          ; preds = %for.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !135, !tbaa !100
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)), !dbg !137
  br label %if.end, !dbg !138

if.end:                                           ; preds = %if.then, %for.end
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !139
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1, i32 0, i32 0), i8** %14, align 8, !dbg !139, !tbaa !140
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, %struct._IO_FILE**, [1000 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, %struct._IO_FILE** %pfile, [1000 x i32]* %A), !dbg !139
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %pfile, align 8, !dbg !142, !tbaa !100
  %call3 = call i32 @fclose(%struct._IO_FILE* %15), !dbg !143
  %call4 = call i32 @remove(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #6, !dbg !144
  store i32 %call4, i32* %ret, align 4, !dbg !145, !tbaa !95
  %16 = load i32, i32* %ret, align 4, !dbg !146, !tbaa !95
  %cmp5 = icmp ne i32 %16, 0, !dbg !148
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !149

if.then6:                                         ; preds = %if.end
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !150, !tbaa !100
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0)), !dbg !152
  br label %if.end8, !dbg !153

if.end8:                                          ; preds = %if.then6, %if.end
  %18 = bitcast [1000 x i32]* %A to i8*, !dbg !154
  call void @llvm.lifetime.end.p0i8(i64 4000, i8* %18) #6, !dbg !154
  %19 = bitcast i32* %len to i8*, !dbg !154
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #6, !dbg !154
  %20 = bitcast %struct._IO_FILE** %pfile to i8*, !dbg !154
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #6, !dbg !154
  %21 = bitcast i32* %ret to i8*, !dbg !154
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #6, !dbg !154
  %22 = bitcast i32* %i to i8*, !dbg !154
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #6, !dbg !154
  ret i32 0, !dbg !155
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, %struct._IO_FILE** dereferenceable(8) %pfile, [1000 x i32]* dereferenceable(4000) %A) #4 !dbg !156 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %pfile.addr = alloca %struct._IO_FILE**, align 8
  %A.addr = alloca [1000 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i4 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !100
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !167, metadata !DIExpression()), !dbg !179
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !100
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !168, metadata !DIExpression()), !dbg !179
  store i32* %len, i32** %len.addr, align 8, !tbaa !100
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !169, metadata !DIExpression()), !dbg !180
  store %struct._IO_FILE** %pfile, %struct._IO_FILE*** %pfile.addr, align 8, !tbaa !100
  call void @llvm.dbg.declare(metadata %struct._IO_FILE*** %pfile.addr, metadata !170, metadata !DIExpression()), !dbg !181
  store [1000 x i32]* %A, [1000 x i32]** %A.addr, align 8, !tbaa !100
  call void @llvm.dbg.declare(metadata [1000 x i32]** %A.addr, metadata !171, metadata !DIExpression()), !dbg !182
  %2 = load i32*, i32** %len.addr, align 8, !dbg !183, !tbaa !100
  %3 = load %struct._IO_FILE**, %struct._IO_FILE*** %pfile.addr, align 8, !dbg !183, !tbaa !100
  %4 = load [1000 x i32]*, [1000 x i32]** %A.addr, align 8, !dbg !183, !tbaa !100
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !183
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #6, !dbg !183
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !172, metadata !DIExpression()), !dbg !179
  %6 = bitcast i32* %.capture_expr. to i8*, !dbg !183
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #6, !dbg !183
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !173, metadata !DIExpression()), !dbg !179
  %7 = load i32, i32* %2, align 4, !dbg !184, !tbaa !95
  store i32 %7, i32* %.capture_expr., align 4, !dbg !184, !tbaa !95
  %8 = bitcast i32* %.capture_expr.1 to i8*, !dbg !183
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #6, !dbg !183
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !173, metadata !DIExpression()), !dbg !179
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !184, !tbaa !95
  %sub = sub nsw i32 %9, 0, !dbg !183
  %sub2 = sub nsw i32 %sub, 1, !dbg !183
  %add = add nsw i32 %sub2, 1, !dbg !183
  %div = sdiv i32 %add, 1, !dbg !183
  %sub3 = sub nsw i32 %div, 1, !dbg !183
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !183, !tbaa !95
  %10 = bitcast i32* %i to i8*, !dbg !183
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #6, !dbg !183
  call void @llvm.dbg.declare(metadata i32* %i, metadata !174, metadata !DIExpression()), !dbg !179
  store i32 0, i32* %i, align 4, !dbg !185, !tbaa !95
  %11 = bitcast i32* %i to i8*, !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #6, !dbg !183
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !184, !tbaa !95
  %cmp = icmp slt i32 0, %12, !dbg !183
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !183

omp.precond.then:                                 ; preds = %entry
  %13 = bitcast i32* %.omp.lb to i8*, !dbg !183
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #6, !dbg !183
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !175, metadata !DIExpression()), !dbg !179
  store i32 0, i32* %.omp.lb, align 4, !dbg !186, !tbaa !95
  %14 = bitcast i32* %.omp.ub to i8*, !dbg !183
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #6, !dbg !183
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !176, metadata !DIExpression()), !dbg !179
  %15 = load i32, i32* %.capture_expr.1, align 4, !dbg !183, !tbaa !95
  store i32 %15, i32* %.omp.ub, align 4, !dbg !186, !tbaa !95
  %16 = bitcast i32* %.omp.stride to i8*, !dbg !183
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #6, !dbg !183
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !177, metadata !DIExpression()), !dbg !179
  store i32 1, i32* %.omp.stride, align 4, !dbg !186, !tbaa !95
  %17 = bitcast i32* %.omp.is_last to i8*, !dbg !183
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #6, !dbg !183
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !178, metadata !DIExpression()), !dbg !179
  store i32 0, i32* %.omp.is_last, align 4, !dbg !186, !tbaa !95
  %18 = bitcast i32* %i4 to i8*, !dbg !183
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #6, !dbg !183
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !174, metadata !DIExpression()), !dbg !179
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !183
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1, i32 0, i32 0), i8** %19, align 8, !dbg !183, !tbaa !140
  %20 = load i32*, i32** %.global_tid..addr, align 8, !dbg !183
  %21 = load i32, i32* %20, align 4, !dbg !183, !tbaa !95
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %21, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !183
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !186, !tbaa !95
  %23 = load i32, i32* %.capture_expr.1, align 4, !dbg !183, !tbaa !95
  %cmp5 = icmp sgt i32 %22, %23, !dbg !186
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !186

cond.true:                                        ; preds = %omp.precond.then
  %24 = load i32, i32* %.capture_expr.1, align 4, !dbg !183, !tbaa !95
  br label %cond.end, !dbg !186

cond.false:                                       ; preds = %omp.precond.then
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !186, !tbaa !95
  br label %cond.end, !dbg !186

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ], !dbg !186
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !186, !tbaa !95
  %26 = load i32, i32* %.omp.lb, align 4, !dbg !186, !tbaa !95
  store i32 %26, i32* %.omp.iv, align 4, !dbg !186, !tbaa !95
  br label %omp.inner.for.cond, !dbg !183

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !186, !tbaa !95
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !186, !tbaa !95
  %cmp6 = icmp sle i32 %27, %28, !dbg !183
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !183

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !183

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !186, !tbaa !95
  %mul = mul nsw i32 %29, 1, !dbg !185
  %add7 = add nsw i32 0, %mul, !dbg !185
  store i32 %add7, i32* %i4, align 4, !dbg !185, !tbaa !95
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !187, !tbaa !100
  %31 = load i32, i32* %i4, align 4, !dbg !189, !tbaa !95
  %idxprom = sext i32 %31 to i64, !dbg !190
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* %4, i64 0, i64 %idxprom, !dbg !190
  %32 = load i32, i32* %arrayidx, align 4, !dbg !190, !tbaa !95
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %32), !dbg !191
  br label %omp.body.continue, !dbg !192

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !193

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %33 = load i32, i32* %.omp.iv, align 4, !dbg !186, !tbaa !95
  %add8 = add nsw i32 %33, 1, !dbg !183
  store i32 %add8, i32* %.omp.iv, align 4, !dbg !183, !tbaa !95
  br label %omp.inner.for.cond, !dbg !193, !llvm.loop !194

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !193

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %34 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !193
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @2, i32 0, i32 0), i8** %34, align 8, !dbg !193, !tbaa !140
  %35 = load i32*, i32** %.global_tid..addr, align 8, !dbg !193
  %36 = load i32, i32* %35, align 4, !dbg !193, !tbaa !95
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %36), !dbg !193
  %37 = bitcast i32* %i4 to i8*, !dbg !193
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #6, !dbg !193
  %38 = bitcast i32* %.omp.is_last to i8*, !dbg !193
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #6, !dbg !193
  %39 = bitcast i32* %.omp.stride to i8*, !dbg !193
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #6, !dbg !193
  %40 = bitcast i32* %.omp.ub to i8*, !dbg !193
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #6, !dbg !193
  %41 = bitcast i32* %.omp.lb to i8*, !dbg !193
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #6, !dbg !193
  br label %omp.precond.end, !dbg !193

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %42 = bitcast i32* %.capture_expr.1 to i8*, !dbg !193
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #6, !dbg !193
  %43 = bitcast i32* %.capture_expr. to i8*, !dbg !193
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #6, !dbg !193
  %44 = bitcast i32* %.omp.iv to i8*, !dbg !193
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #6, !dbg !193
  ret void, !dbg !196
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, %struct._IO_FILE** dereferenceable(8) %pfile, [1000 x i32]* dereferenceable(4000) %A) #4 !dbg !197 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %pfile.addr = alloca %struct._IO_FILE**, align 8
  %A.addr = alloca [1000 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !100
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !199, metadata !DIExpression()), !dbg !204
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !100
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !200, metadata !DIExpression()), !dbg !204
  store i32* %len, i32** %len.addr, align 8, !tbaa !100
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !201, metadata !DIExpression()), !dbg !204
  store %struct._IO_FILE** %pfile, %struct._IO_FILE*** %pfile.addr, align 8, !tbaa !100
  call void @llvm.dbg.declare(metadata %struct._IO_FILE*** %pfile.addr, metadata !202, metadata !DIExpression()), !dbg !204
  store [1000 x i32]* %A, [1000 x i32]** %A.addr, align 8, !tbaa !100
  call void @llvm.dbg.declare(metadata [1000 x i32]** %A.addr, metadata !203, metadata !DIExpression()), !dbg !204
  %0 = load i32*, i32** %len.addr, align 8, !dbg !205, !tbaa !100
  %1 = load %struct._IO_FILE**, %struct._IO_FILE*** %pfile.addr, align 8, !dbg !205, !tbaa !100
  %2 = load [1000 x i32]*, [1000 x i32]** %A.addr, align 8, !dbg !205, !tbaa !100
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !205, !tbaa !100
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !205, !tbaa !100
  %5 = load i32*, i32** %len.addr, align 8, !dbg !205, !tbaa !100
  %6 = load %struct._IO_FILE**, %struct._IO_FILE*** %pfile.addr, align 8, !dbg !205, !tbaa !100
  %7 = load [1000 x i32]*, [1000 x i32]** %A.addr, align 8, !dbg !205, !tbaa !100
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, %struct._IO_FILE** %6, [1000 x i32]* %7) #6, !dbg !205
  ret void, !dbg !205
}

declare !callback !206 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare !dbg !5 dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare !dbg !68 dso_local i32 @remove(i8*) #5

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!73, !74, !75}
!llvm.ident = !{!76}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB049-fprintf-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4, !5, !68}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DISubprogram(name: "fclose", scope: !6, file: !6, line: 213, type: !7, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!6 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10}
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !12, line: 49, size: 1728, elements: !13)
!12 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!13 = !{!14, !15, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !31, !32, !33, !34, !38, !40, !42, !46, !49, !51, !54, !57, !58, !59, !63, !64}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !11, file: !12, line: 51, baseType: !9, size: 32)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !11, file: !12, line: 54, baseType: !16, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !11, file: !12, line: 55, baseType: !16, size: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !11, file: !12, line: 56, baseType: !16, size: 64, offset: 192)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !11, file: !12, line: 57, baseType: !16, size: 64, offset: 256)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !11, file: !12, line: 58, baseType: !16, size: 64, offset: 320)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !11, file: !12, line: 59, baseType: !16, size: 64, offset: 384)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !11, file: !12, line: 60, baseType: !16, size: 64, offset: 448)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !11, file: !12, line: 61, baseType: !16, size: 64, offset: 512)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !11, file: !12, line: 64, baseType: !16, size: 64, offset: 576)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !11, file: !12, line: 65, baseType: !16, size: 64, offset: 640)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !11, file: !12, line: 66, baseType: !16, size: 64, offset: 704)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !11, file: !12, line: 68, baseType: !29, size: 64, offset: 768)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !12, line: 36, flags: DIFlagFwdDecl)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !11, file: !12, line: 70, baseType: !10, size: 64, offset: 832)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !11, file: !12, line: 72, baseType: !9, size: 32, offset: 896)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !11, file: !12, line: 73, baseType: !9, size: 32, offset: 928)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !11, file: !12, line: 74, baseType: !35, size: 64, offset: 960)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !36, line: 152, baseType: !37)
!36 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!37 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !11, file: !12, line: 77, baseType: !39, size: 16, offset: 1024)
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !11, file: !12, line: 78, baseType: !41, size: 8, offset: 1040)
!41 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !11, file: !12, line: 79, baseType: !43, size: 8, offset: 1048)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 1)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !11, file: !12, line: 81, baseType: !47, size: 64, offset: 1088)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !12, line: 43, baseType: null)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !11, file: !12, line: 89, baseType: !50, size: 64, offset: 1152)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !36, line: 153, baseType: !37)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !11, file: !12, line: 91, baseType: !52, size: 64, offset: 1216)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !12, line: 37, flags: DIFlagFwdDecl)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !11, file: !12, line: 92, baseType: !55, size: 64, offset: 1280)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !12, line: 38, flags: DIFlagFwdDecl)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !11, file: !12, line: 93, baseType: !10, size: 64, offset: 1344)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !11, file: !12, line: 94, baseType: !4, size: 64, offset: 1408)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !11, file: !12, line: 95, baseType: !60, size: 64, offset: 1472)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !61, line: 46, baseType: !62)
!61 = !DIFile(filename: "OpenRace-env/install/lib/clang/10.0.1/include/stddef.h", directory: "/home/brad/Code")
!62 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !11, file: !12, line: 96, baseType: !9, size: 32, offset: 1536)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !11, file: !12, line: 98, baseType: !65, size: 160, offset: 1568)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 160, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 20)
!68 = !DISubprogram(name: "remove", scope: !6, file: !6, line: 146, type: !69, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!69 = !DISubroutineType(types: !70)
!70 = !{!9, !71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!73 = !{i32 7, !"Dwarf Version", i32 4}
!74 = !{i32 2, !"Debug Info Version", i32 3}
!75 = !{i32 1, !"wchar_size", i32 4}
!76 = !{!"clang version 10.0.1 "}
!77 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !78, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!78 = !DISubroutineType(types: !79)
!79 = !{!9, !9, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!81 = !{!82, !83, !84, !85, !86, !90, !91}
!82 = !DILocalVariable(name: "argc", arg: 1, scope: !77, file: !1, line: 51, type: !9)
!83 = !DILocalVariable(name: "argv", arg: 2, scope: !77, file: !1, line: 51, type: !80)
!84 = !DILocalVariable(name: "i", scope: !77, file: !1, line: 53, type: !9)
!85 = !DILocalVariable(name: "ret", scope: !77, file: !1, line: 54, type: !9)
!86 = !DILocalVariable(name: "pfile", scope: !77, file: !1, line: 55, type: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !89, line: 7, baseType: !11)
!89 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!90 = !DILocalVariable(name: "len", scope: !77, file: !1, line: 56, type: !9)
!91 = !DILocalVariable(name: "A", scope: !77, file: !1, line: 58, type: !92)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32000, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 1000)
!95 = !{!96, !96, i64 0}
!96 = !{!"int", !97, i64 0}
!97 = !{!"omnipotent char", !98, i64 0}
!98 = !{!"Simple C/C++ TBAA"}
!99 = !DILocation(line: 51, column: 14, scope: !77)
!100 = !{!101, !101, i64 0}
!101 = !{!"any pointer", !97, i64 0}
!102 = !DILocation(line: 51, column: 26, scope: !77)
!103 = !DILocation(line: 53, column: 3, scope: !77)
!104 = !DILocation(line: 53, column: 7, scope: !77)
!105 = !DILocation(line: 54, column: 3, scope: !77)
!106 = !DILocation(line: 54, column: 7, scope: !77)
!107 = !DILocation(line: 55, column: 3, scope: !77)
!108 = !DILocation(line: 55, column: 9, scope: !77)
!109 = !DILocation(line: 56, column: 3, scope: !77)
!110 = !DILocation(line: 56, column: 7, scope: !77)
!111 = !DILocation(line: 58, column: 3, scope: !77)
!112 = !DILocation(line: 58, column: 7, scope: !77)
!113 = !DILocation(line: 60, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !77, file: !1, line: 60, column: 3)
!115 = !DILocation(line: 60, column: 8, scope: !114)
!116 = !DILocation(line: 60, column: 13, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !1, line: 60, column: 3)
!118 = !DILocation(line: 60, column: 15, scope: !117)
!119 = !DILocation(line: 60, column: 14, scope: !117)
!120 = !DILocation(line: 60, column: 3, scope: !114)
!121 = !DILocation(line: 61, column: 10, scope: !117)
!122 = !DILocation(line: 61, column: 7, scope: !117)
!123 = !DILocation(line: 61, column: 5, scope: !117)
!124 = !DILocation(line: 61, column: 9, scope: !117)
!125 = !DILocation(line: 60, column: 21, scope: !117)
!126 = !DILocation(line: 60, column: 3, scope: !117)
!127 = distinct !{!127, !120, !128}
!128 = !DILocation(line: 61, column: 10, scope: !114)
!129 = !DILocation(line: 63, column: 11, scope: !77)
!130 = !DILocation(line: 63, column: 9, scope: !77)
!131 = !DILocation(line: 64, column: 7, scope: !132)
!132 = distinct !DILexicalBlock(scope: !77, file: !1, line: 64, column: 7)
!133 = !DILocation(line: 64, column: 13, scope: !132)
!134 = !DILocation(line: 64, column: 7, scope: !77)
!135 = !DILocation(line: 66, column: 13, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !1, line: 65, column: 3)
!137 = !DILocation(line: 66, column: 5, scope: !136)
!138 = !DILocation(line: 67, column: 3, scope: !136)
!139 = !DILocation(line: 69, column: 1, scope: !77)
!140 = !{!141, !101, i64 16}
!141 = !{!"ident_t", !96, i64 0, !96, i64 4, !96, i64 8, !96, i64 12, !101, i64 16}
!142 = !DILocation(line: 75, column: 10, scope: !77)
!143 = !DILocation(line: 75, column: 3, scope: !77)
!144 = !DILocation(line: 76, column: 9, scope: !77)
!145 = !DILocation(line: 76, column: 7, scope: !77)
!146 = !DILocation(line: 77, column: 7, scope: !147)
!147 = distinct !DILexicalBlock(scope: !77, file: !1, line: 77, column: 7)
!148 = !DILocation(line: 77, column: 11, scope: !147)
!149 = !DILocation(line: 77, column: 7, scope: !77)
!150 = !DILocation(line: 79, column: 13, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !1, line: 78, column: 3)
!152 = !DILocation(line: 79, column: 5, scope: !151)
!153 = !DILocation(line: 80, column: 3, scope: !151)
!154 = !DILocation(line: 82, column: 1, scope: !77)
!155 = !DILocation(line: 81, column: 3, scope: !77)
!156 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 70, type: !157, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !166)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !159, !159, !163, !164, !165}
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!163 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !87, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !92, size: 64)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !173, !174, !175, !176, !177, !178, !174}
!167 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !156, type: !159, flags: DIFlagArtificial)
!168 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !156, type: !159, flags: DIFlagArtificial)
!169 = !DILocalVariable(name: "len", arg: 3, scope: !156, file: !1, line: 56, type: !163)
!170 = !DILocalVariable(name: "pfile", arg: 4, scope: !156, file: !1, line: 55, type: !164)
!171 = !DILocalVariable(name: "A", arg: 5, scope: !156, file: !1, line: 58, type: !165)
!172 = !DILocalVariable(name: ".omp.iv", scope: !156, type: !9, flags: DIFlagArtificial)
!173 = !DILocalVariable(name: ".capture_expr.", scope: !156, type: !9, flags: DIFlagArtificial)
!174 = !DILocalVariable(name: "i", scope: !156, type: !9, flags: DIFlagArtificial)
!175 = !DILocalVariable(name: ".omp.lb", scope: !156, type: !9, flags: DIFlagArtificial)
!176 = !DILocalVariable(name: ".omp.ub", scope: !156, type: !9, flags: DIFlagArtificial)
!177 = !DILocalVariable(name: ".omp.stride", scope: !156, type: !9, flags: DIFlagArtificial)
!178 = !DILocalVariable(name: ".omp.is_last", scope: !156, type: !9, flags: DIFlagArtificial)
!179 = !DILocation(line: 0, scope: !156)
!180 = !DILocation(line: 56, column: 7, scope: !156)
!181 = !DILocation(line: 55, column: 9, scope: !156)
!182 = !DILocation(line: 58, column: 7, scope: !156)
!183 = !DILocation(line: 70, column: 3, scope: !156)
!184 = !DILocation(line: 70, column: 15, scope: !156)
!185 = !DILocation(line: 70, column: 20, scope: !156)
!186 = !DILocation(line: 70, column: 8, scope: !156)
!187 = !DILocation(line: 72, column: 13, scope: !188)
!188 = distinct !DILexicalBlock(scope: !156, file: !1, line: 71, column: 3)
!189 = !DILocation(line: 72, column: 30, scope: !188)
!190 = !DILocation(line: 72, column: 28, scope: !188)
!191 = !DILocation(line: 72, column: 5, scope: !188)
!192 = !DILocation(line: 73, column: 3, scope: !188)
!193 = !DILocation(line: 69, column: 1, scope: !156)
!194 = distinct !{!194, !193, !195}
!195 = !DILocation(line: 69, column: 25, scope: !156)
!196 = !DILocation(line: 73, column: 3, scope: !156)
!197 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 70, type: !157, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !198)
!198 = !{!199, !200, !201, !202, !203}
!199 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !197, type: !159, flags: DIFlagArtificial)
!200 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !197, type: !159, flags: DIFlagArtificial)
!201 = !DILocalVariable(name: "len", arg: 3, scope: !197, type: !163, flags: DIFlagArtificial)
!202 = !DILocalVariable(name: "pfile", arg: 4, scope: !197, type: !164, flags: DIFlagArtificial)
!203 = !DILocalVariable(name: "A", arg: 5, scope: !197, type: !165, flags: DIFlagArtificial)
!204 = !DILocation(line: 0, scope: !197)
!205 = !DILocation(line: 70, column: 3, scope: !197)
!206 = !{!207}
!207 = !{i64 2, i64 -1, i64 -1, i1 true}
