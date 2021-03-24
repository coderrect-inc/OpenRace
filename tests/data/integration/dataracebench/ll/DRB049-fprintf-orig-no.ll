; ModuleID = 'DRB049-fprintf-orig-no.c'
source_filename = "DRB049-fprintf-orig-no.c"
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
@1 = private unnamed_addr constant [38 x i8] c";DRB049-fprintf-orig-no.c;main;69;1;;\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [39 x i8] c";DRB049-fprintf-orig-no.c;main;69;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0) }, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"Error: unable to delete mytempfile.txt\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
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
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pfile, metadata !24, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata i32* %len, metadata !85, metadata !DIExpression()), !dbg !86
  store i32 1000, i32* %len, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata [1000 x i32]* %A, metadata !87, metadata !DIExpression()), !dbg !91
  store i32 0, i32* %i, align 4, !dbg !92
  br label %for.cond, !dbg !94

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !95
  %3 = load i32, i32* %len, align 4, !dbg !97
  %cmp = icmp slt i32 %2, %3, !dbg !98
  br i1 %cmp, label %for.body, label %for.end, !dbg !99

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !100
  %5 = load i32, i32* %i, align 4, !dbg !101
  %idxprom = sext i32 %5 to i64, !dbg !102
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* %A, i64 0, i64 %idxprom, !dbg !102
  store i32 %4, i32* %arrayidx, align 4, !dbg !103
  br label %for.inc, !dbg !102

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !104
  %inc = add nsw i32 %6, 1, !dbg !104
  store i32 %inc, i32* %i, align 4, !dbg !104
  br label %for.cond, !dbg !105, !llvm.loop !106

for.end:                                          ; preds = %for.cond
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !108
  store %struct._IO_FILE* %call, %struct._IO_FILE** %pfile, align 8, !dbg !109
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pfile, align 8, !dbg !110
  %cmp1 = icmp eq %struct._IO_FILE* %7, null, !dbg !112
  br i1 %cmp1, label %if.then, label %if.end, !dbg !113

if.then:                                          ; preds = %for.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !114
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)), !dbg !116
  br label %if.end, !dbg !117

if.end:                                           ; preds = %if.then, %for.end
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !118
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !118
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, %struct._IO_FILE**, [1000 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, %struct._IO_FILE** %pfile, [1000 x i32]* %A), !dbg !118
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pfile, align 8, !dbg !119
  %call3 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !120
  %call4 = call i32 @remove(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #6, !dbg !121
  store i32 %call4, i32* %ret, align 4, !dbg !122
  %11 = load i32, i32* %ret, align 4, !dbg !123
  %cmp5 = icmp ne i32 %11, 0, !dbg !125
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !126

if.then6:                                         ; preds = %if.end
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !127
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0)), !dbg !129
  br label %if.end8, !dbg !130

if.end8:                                          ; preds = %if.then6, %if.end
  ret i32 0, !dbg !131
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, %struct._IO_FILE** dereferenceable(8) %pfile, [1000 x i32]* dereferenceable(4000) %A) #3 !dbg !132 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !142, metadata !DIExpression()), !dbg !143
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !144, metadata !DIExpression()), !dbg !143
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !145, metadata !DIExpression()), !dbg !146
  store %struct._IO_FILE** %pfile, %struct._IO_FILE*** %pfile.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE*** %pfile.addr, metadata !147, metadata !DIExpression()), !dbg !148
  store [1000 x i32]* %A, [1000 x i32]** %A.addr, align 8
  call void @llvm.dbg.declare(metadata [1000 x i32]** %A.addr, metadata !149, metadata !DIExpression()), !dbg !150
  %2 = load i32*, i32** %len.addr, align 8, !dbg !151
  %3 = load %struct._IO_FILE**, %struct._IO_FILE*** %pfile.addr, align 8, !dbg !151
  %4 = load [1000 x i32]*, [1000 x i32]** %A.addr, align 8, !dbg !151
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !152, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !153, metadata !DIExpression()), !dbg !143
  %5 = load i32, i32* %2, align 4, !dbg !154
  store i32 %5, i32* %.capture_expr., align 4, !dbg !154
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !153, metadata !DIExpression()), !dbg !143
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !154
  %sub = sub nsw i32 %6, 0, !dbg !151
  %sub2 = sub nsw i32 %sub, 1, !dbg !151
  %add = add nsw i32 %sub2, 1, !dbg !151
  %div = sdiv i32 %add, 1, !dbg !151
  %sub3 = sub nsw i32 %div, 1, !dbg !151
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !151
  call void @llvm.dbg.declare(metadata i32* %i, metadata !155, metadata !DIExpression()), !dbg !143
  store i32 0, i32* %i, align 4, !dbg !156
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !154
  %cmp = icmp slt i32 0, %7, !dbg !151
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !151

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !157, metadata !DIExpression()), !dbg !143
  store i32 0, i32* %.omp.lb, align 4, !dbg !158
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !159, metadata !DIExpression()), !dbg !143
  %8 = load i32, i32* %.capture_expr.1, align 4, !dbg !151
  store i32 %8, i32* %.omp.ub, align 4, !dbg !158
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !160, metadata !DIExpression()), !dbg !143
  store i32 1, i32* %.omp.stride, align 4, !dbg !158
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !161, metadata !DIExpression()), !dbg !143
  store i32 0, i32* %.omp.is_last, align 4, !dbg !158
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !155, metadata !DIExpression()), !dbg !143
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !151
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !151
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !151
  %11 = load i32, i32* %10, align 4, !dbg !151
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !151
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !158
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !151
  %cmp5 = icmp sgt i32 %12, %13, !dbg !158
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !158

cond.true:                                        ; preds = %omp.precond.then
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !151
  br label %cond.end, !dbg !158

cond.false:                                       ; preds = %omp.precond.then
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !158
  br label %cond.end, !dbg !158

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ], !dbg !158
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !158
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !158
  store i32 %16, i32* %.omp.iv, align 4, !dbg !158
  br label %omp.inner.for.cond, !dbg !151

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !158
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !158
  %cmp6 = icmp sle i32 %17, %18, !dbg !151
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !151

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !158
  %mul = mul nsw i32 %19, 1, !dbg !156
  %add7 = add nsw i32 0, %mul, !dbg !156
  store i32 %add7, i32* %i4, align 4, !dbg !156
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !162
  %21 = load i32, i32* %i4, align 4, !dbg !164
  %idxprom = sext i32 %21 to i64, !dbg !165
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* %4, i64 0, i64 %idxprom, !dbg !165
  %22 = load i32, i32* %arrayidx, align 4, !dbg !165
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %22), !dbg !166
  br label %omp.body.continue, !dbg !167

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !168

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !158
  %add8 = add nsw i32 %23, 1, !dbg !151
  store i32 %add8, i32* %.omp.iv, align 4, !dbg !151
  br label %omp.inner.for.cond, !dbg !168, !llvm.loop !169

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !168

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !168
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @2, i32 0, i32 0), i8** %24, align 8, !dbg !168
  %25 = load i32*, i32** %.global_tid..addr, align 8, !dbg !168
  %26 = load i32, i32* %25, align 4, !dbg !168
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %26), !dbg !168
  br label %omp.precond.end, !dbg !168

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !171
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, %struct._IO_FILE** dereferenceable(8) %pfile, [1000 x i32]* dereferenceable(4000) %A) #3 !dbg !172 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %pfile.addr = alloca %struct._IO_FILE**, align 8
  %A.addr = alloca [1000 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !173, metadata !DIExpression()), !dbg !174
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !175, metadata !DIExpression()), !dbg !174
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !176, metadata !DIExpression()), !dbg !174
  store %struct._IO_FILE** %pfile, %struct._IO_FILE*** %pfile.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE*** %pfile.addr, metadata !177, metadata !DIExpression()), !dbg !174
  store [1000 x i32]* %A, [1000 x i32]** %A.addr, align 8
  call void @llvm.dbg.declare(metadata [1000 x i32]** %A.addr, metadata !178, metadata !DIExpression()), !dbg !174
  %0 = load i32*, i32** %len.addr, align 8, !dbg !179
  %1 = load %struct._IO_FILE**, %struct._IO_FILE*** %pfile.addr, align 8, !dbg !179
  %2 = load [1000 x i32]*, [1000 x i32]** %A.addr, align 8, !dbg !179
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !179
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !179
  %5 = load i32*, i32** %len.addr, align 8, !dbg !179
  %6 = load %struct._IO_FILE**, %struct._IO_FILE*** %pfile.addr, align 8, !dbg !179
  %7 = load [1000 x i32]*, [1000 x i32]** %A.addr, align 8, !dbg !179
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, %struct._IO_FILE** %6, [1000 x i32]* %7) #6, !dbg !179
  ret void, !dbg !179
}

declare !callback !180 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i32 @remove(i8*) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB049-fprintf-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 10.0.1 "}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !10, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 51, type: !12)
!17 = !DILocation(line: 51, column: 14, scope: !9)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 51, type: !13)
!19 = !DILocation(line: 51, column: 26, scope: !9)
!20 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 53, type: !12)
!21 = !DILocation(line: 53, column: 7, scope: !9)
!22 = !DILocalVariable(name: "ret", scope: !9, file: !1, line: 54, type: !12)
!23 = !DILocation(line: 54, column: 7, scope: !9)
!24 = !DILocalVariable(name: "pfile", scope: !9, file: !1, line: 55, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !27, line: 7, baseType: !28)
!27 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !29, line: 49, size: 1728, elements: !30)
!29 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !46, !48, !49, !50, !54, !56, !58, !62, !65, !67, !70, !73, !74, !75, !79, !80}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !28, file: !29, line: 51, baseType: !12, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !28, file: !29, line: 54, baseType: !14, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !28, file: !29, line: 55, baseType: !14, size: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !28, file: !29, line: 56, baseType: !14, size: 64, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !28, file: !29, line: 57, baseType: !14, size: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !28, file: !29, line: 58, baseType: !14, size: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !28, file: !29, line: 59, baseType: !14, size: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !28, file: !29, line: 60, baseType: !14, size: 64, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !28, file: !29, line: 61, baseType: !14, size: 64, offset: 512)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !28, file: !29, line: 64, baseType: !14, size: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !28, file: !29, line: 65, baseType: !14, size: 64, offset: 640)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !28, file: !29, line: 66, baseType: !14, size: 64, offset: 704)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !28, file: !29, line: 68, baseType: !44, size: 64, offset: 768)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !29, line: 36, flags: DIFlagFwdDecl)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !28, file: !29, line: 70, baseType: !47, size: 64, offset: 832)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !28, file: !29, line: 72, baseType: !12, size: 32, offset: 896)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !28, file: !29, line: 73, baseType: !12, size: 32, offset: 928)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !28, file: !29, line: 74, baseType: !51, size: 64, offset: 960)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !52, line: 152, baseType: !53)
!52 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!53 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !28, file: !29, line: 77, baseType: !55, size: 16, offset: 1024)
!55 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !28, file: !29, line: 78, baseType: !57, size: 8, offset: 1040)
!57 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !28, file: !29, line: 79, baseType: !59, size: 8, offset: 1048)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 1)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !28, file: !29, line: 81, baseType: !63, size: 64, offset: 1088)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !29, line: 43, baseType: null)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !28, file: !29, line: 89, baseType: !66, size: 64, offset: 1152)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !52, line: 153, baseType: !53)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !28, file: !29, line: 91, baseType: !68, size: 64, offset: 1216)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !29, line: 37, flags: DIFlagFwdDecl)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !28, file: !29, line: 92, baseType: !71, size: 64, offset: 1280)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !29, line: 38, flags: DIFlagFwdDecl)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !28, file: !29, line: 93, baseType: !47, size: 64, offset: 1344)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !28, file: !29, line: 94, baseType: !4, size: 64, offset: 1408)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !28, file: !29, line: 95, baseType: !76, size: 64, offset: 1472)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 46, baseType: !78)
!77 = !DIFile(filename: "llvm-project/build/lib/clang/10.0.1/include/stddef.h", directory: "/home/yanze/code")
!78 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !28, file: !29, line: 96, baseType: !12, size: 32, offset: 1536)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !28, file: !29, line: 98, baseType: !81, size: 160, offset: 1568)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 20)
!84 = !DILocation(line: 55, column: 9, scope: !9)
!85 = !DILocalVariable(name: "len", scope: !9, file: !1, line: 56, type: !12)
!86 = !DILocation(line: 56, column: 7, scope: !9)
!87 = !DILocalVariable(name: "A", scope: !9, file: !1, line: 58, type: !88)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32000, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 1000)
!91 = !DILocation(line: 58, column: 7, scope: !9)
!92 = !DILocation(line: 60, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !9, file: !1, line: 60, column: 3)
!94 = !DILocation(line: 60, column: 8, scope: !93)
!95 = !DILocation(line: 60, column: 13, scope: !96)
!96 = distinct !DILexicalBlock(scope: !93, file: !1, line: 60, column: 3)
!97 = !DILocation(line: 60, column: 15, scope: !96)
!98 = !DILocation(line: 60, column: 14, scope: !96)
!99 = !DILocation(line: 60, column: 3, scope: !93)
!100 = !DILocation(line: 61, column: 10, scope: !96)
!101 = !DILocation(line: 61, column: 7, scope: !96)
!102 = !DILocation(line: 61, column: 5, scope: !96)
!103 = !DILocation(line: 61, column: 9, scope: !96)
!104 = !DILocation(line: 60, column: 21, scope: !96)
!105 = !DILocation(line: 60, column: 3, scope: !96)
!106 = distinct !{!106, !99, !107}
!107 = !DILocation(line: 61, column: 10, scope: !93)
!108 = !DILocation(line: 63, column: 11, scope: !9)
!109 = !DILocation(line: 63, column: 9, scope: !9)
!110 = !DILocation(line: 64, column: 7, scope: !111)
!111 = distinct !DILexicalBlock(scope: !9, file: !1, line: 64, column: 7)
!112 = !DILocation(line: 64, column: 13, scope: !111)
!113 = !DILocation(line: 64, column: 7, scope: !9)
!114 = !DILocation(line: 66, column: 13, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 65, column: 3)
!116 = !DILocation(line: 66, column: 5, scope: !115)
!117 = !DILocation(line: 67, column: 3, scope: !115)
!118 = !DILocation(line: 69, column: 1, scope: !9)
!119 = !DILocation(line: 75, column: 10, scope: !9)
!120 = !DILocation(line: 75, column: 3, scope: !9)
!121 = !DILocation(line: 76, column: 9, scope: !9)
!122 = !DILocation(line: 76, column: 7, scope: !9)
!123 = !DILocation(line: 77, column: 7, scope: !124)
!124 = distinct !DILexicalBlock(scope: !9, file: !1, line: 77, column: 7)
!125 = !DILocation(line: 77, column: 11, scope: !124)
!126 = !DILocation(line: 77, column: 7, scope: !9)
!127 = !DILocation(line: 79, column: 13, scope: !128)
!128 = distinct !DILexicalBlock(scope: !124, file: !1, line: 78, column: 3)
!129 = !DILocation(line: 79, column: 5, scope: !128)
!130 = !DILocation(line: 80, column: 3, scope: !128)
!131 = !DILocation(line: 81, column: 3, scope: !9)
!132 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 70, type: !133, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !135, !135, !139, !140, !141}
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!139 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !25, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !88, size: 64)
!142 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !132, type: !135, flags: DIFlagArtificial)
!143 = !DILocation(line: 0, scope: !132)
!144 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !132, type: !135, flags: DIFlagArtificial)
!145 = !DILocalVariable(name: "len", arg: 3, scope: !132, file: !1, line: 56, type: !139)
!146 = !DILocation(line: 56, column: 7, scope: !132)
!147 = !DILocalVariable(name: "pfile", arg: 4, scope: !132, file: !1, line: 55, type: !140)
!148 = !DILocation(line: 55, column: 9, scope: !132)
!149 = !DILocalVariable(name: "A", arg: 5, scope: !132, file: !1, line: 58, type: !141)
!150 = !DILocation(line: 58, column: 7, scope: !132)
!151 = !DILocation(line: 70, column: 3, scope: !132)
!152 = !DILocalVariable(name: ".omp.iv", scope: !132, type: !12, flags: DIFlagArtificial)
!153 = !DILocalVariable(name: ".capture_expr.", scope: !132, type: !12, flags: DIFlagArtificial)
!154 = !DILocation(line: 70, column: 15, scope: !132)
!155 = !DILocalVariable(name: "i", scope: !132, type: !12, flags: DIFlagArtificial)
!156 = !DILocation(line: 70, column: 20, scope: !132)
!157 = !DILocalVariable(name: ".omp.lb", scope: !132, type: !12, flags: DIFlagArtificial)
!158 = !DILocation(line: 70, column: 8, scope: !132)
!159 = !DILocalVariable(name: ".omp.ub", scope: !132, type: !12, flags: DIFlagArtificial)
!160 = !DILocalVariable(name: ".omp.stride", scope: !132, type: !12, flags: DIFlagArtificial)
!161 = !DILocalVariable(name: ".omp.is_last", scope: !132, type: !12, flags: DIFlagArtificial)
!162 = !DILocation(line: 72, column: 13, scope: !163)
!163 = distinct !DILexicalBlock(scope: !132, file: !1, line: 71, column: 3)
!164 = !DILocation(line: 72, column: 30, scope: !163)
!165 = !DILocation(line: 72, column: 28, scope: !163)
!166 = !DILocation(line: 72, column: 5, scope: !163)
!167 = !DILocation(line: 73, column: 3, scope: !163)
!168 = !DILocation(line: 69, column: 1, scope: !132)
!169 = distinct !{!169, !168, !170}
!170 = !DILocation(line: 69, column: 25, scope: !132)
!171 = !DILocation(line: 73, column: 3, scope: !132)
!172 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 70, type: !133, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!173 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !172, type: !135, flags: DIFlagArtificial)
!174 = !DILocation(line: 0, scope: !172)
!175 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !172, type: !135, flags: DIFlagArtificial)
!176 = !DILocalVariable(name: "len", arg: 3, scope: !172, type: !139, flags: DIFlagArtificial)
!177 = !DILocalVariable(name: "pfile", arg: 4, scope: !172, type: !140, flags: DIFlagArtificial)
!178 = !DILocalVariable(name: "A", arg: 5, scope: !172, type: !141, flags: DIFlagArtificial)
!179 = !DILocation(line: 70, column: 3, scope: !172)
!180 = !{!181}
!181 = !{i64 2, i64 -1, i64 -1, i1 true}
