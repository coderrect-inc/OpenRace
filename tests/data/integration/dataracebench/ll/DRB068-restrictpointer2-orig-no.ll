; ModuleID = 'DRB068-restrictpointer2-orig-no.c'
source_filename = "DRB068-restrictpointer2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [46 x i8] c";DRB068-restrictpointer2-orig-no.c;foo;61;1;;\00", align 1
@2 = private unnamed_addr constant [47 x i8] c";DRB068-restrictpointer2-orig-no.c;foo;61;26;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"skip the execution due to malloc failures.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32 %n, i32* noalias %a, i32* noalias %b, i32* noalias %c) #0 !dbg !10 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %c.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store i32* %b, i32** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store i32* %c, i32** %c.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %c.addr, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !22, metadata !DIExpression()), !dbg !23
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !24
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32**, i32**, i32**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %n.addr, i32** %a.addr, i32** %b.addr, i32** %c.addr), !dbg !24
  ret void, !dbg !25
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n, i32** dereferenceable(8) %a, i32** dereferenceable(8) %b, i32** dereferenceable(8) %c) #2 !dbg !26 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %a.addr = alloca i32**, align 8
  %b.addr = alloca i32**, align 8
  %c.addr = alloca i32**, align 8
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !35, metadata !DIExpression()), !dbg !36
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !37, metadata !DIExpression()), !dbg !36
  store i32* %n, i32** %n.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !38, metadata !DIExpression()), !dbg !39
  store i32** %a, i32*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !40, metadata !DIExpression()), !dbg !41
  store i32** %b, i32*** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %b.addr, metadata !42, metadata !DIExpression()), !dbg !43
  store i32** %c, i32*** %c.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %c.addr, metadata !44, metadata !DIExpression()), !dbg !45
  %2 = load i32*, i32** %n.addr, align 8, !dbg !46
  %3 = load i32**, i32*** %a.addr, align 8, !dbg !46
  %4 = load i32**, i32*** %b.addr, align 8, !dbg !46
  %5 = load i32**, i32*** %c.addr, align 8, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !47, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !48, metadata !DIExpression()), !dbg !36
  %6 = load i32, i32* %2, align 4, !dbg !49
  store i32 %6, i32* %.capture_expr., align 4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !48, metadata !DIExpression()), !dbg !36
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !49
  %sub = sub nsw i32 %7, 0, !dbg !46
  %sub2 = sub nsw i32 %sub, 1, !dbg !46
  %add = add nsw i32 %sub2, 1, !dbg !46
  %div = sdiv i32 %add, 1, !dbg !46
  %sub3 = sub nsw i32 %div, 1, !dbg !46
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %i, metadata !50, metadata !DIExpression()), !dbg !36
  store i32 0, i32* %i, align 4, !dbg !51
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !49
  %cmp = icmp slt i32 0, %8, !dbg !46
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !46

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !52, metadata !DIExpression()), !dbg !36
  store i32 0, i32* %.omp.lb, align 4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !54, metadata !DIExpression()), !dbg !36
  %9 = load i32, i32* %.capture_expr.1, align 4, !dbg !46
  store i32 %9, i32* %.omp.ub, align 4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !55, metadata !DIExpression()), !dbg !36
  store i32 1, i32* %.omp.stride, align 4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !56, metadata !DIExpression()), !dbg !36
  store i32 0, i32* %.omp.is_last, align 4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !50, metadata !DIExpression()), !dbg !36
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !46
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !46
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !46
  %12 = load i32, i32* %11, align 4, !dbg !46
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !46
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !53
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !46
  %cmp5 = icmp sgt i32 %13, %14, !dbg !53
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !53

cond.true:                                        ; preds = %omp.precond.then
  %15 = load i32, i32* %.capture_expr.1, align 4, !dbg !46
  br label %cond.end, !dbg !53

cond.false:                                       ; preds = %omp.precond.then
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !53
  br label %cond.end, !dbg !53

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ %16, %cond.false ], !dbg !53
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !53
  %17 = load i32, i32* %.omp.lb, align 4, !dbg !53
  store i32 %17, i32* %.omp.iv, align 4, !dbg !53
  br label %omp.inner.for.cond, !dbg !46

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !53
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !53
  %cmp6 = icmp sle i32 %18, %19, !dbg !46
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !46

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !53
  %mul = mul nsw i32 %20, 1, !dbg !51
  %add7 = add nsw i32 0, %mul, !dbg !51
  store i32 %add7, i32* %i4, align 4, !dbg !51
  %21 = load i32*, i32** %4, align 8, !dbg !57
  %22 = load i32, i32* %i4, align 4, !dbg !58
  %idxprom = sext i32 %22 to i64, !dbg !57
  %arrayidx = getelementptr inbounds i32, i32* %21, i64 %idxprom, !dbg !57
  %23 = load i32, i32* %arrayidx, align 4, !dbg !57
  %24 = load i32*, i32** %5, align 8, !dbg !59
  %25 = load i32, i32* %i4, align 4, !dbg !60
  %idxprom8 = sext i32 %25 to i64, !dbg !59
  %arrayidx9 = getelementptr inbounds i32, i32* %24, i64 %idxprom8, !dbg !59
  %26 = load i32, i32* %arrayidx9, align 4, !dbg !59
  %add10 = add nsw i32 %23, %26, !dbg !61
  %27 = load i32*, i32** %3, align 8, !dbg !62
  %28 = load i32, i32* %i4, align 4, !dbg !63
  %idxprom11 = sext i32 %28 to i64, !dbg !62
  %arrayidx12 = getelementptr inbounds i32, i32* %27, i64 %idxprom11, !dbg !62
  store i32 %add10, i32* %arrayidx12, align 4, !dbg !64
  br label %omp.body.continue, !dbg !62

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !65

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !53
  %add13 = add nsw i32 %29, 1, !dbg !46
  store i32 %add13, i32* %.omp.iv, align 4, !dbg !46
  br label %omp.inner.for.cond, !dbg !65, !llvm.loop !66

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !65

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %30 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !65
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @2, i32 0, i32 0), i8** %30, align 8, !dbg !65
  %31 = load i32*, i32** %.global_tid..addr, align 8, !dbg !65
  %32 = load i32, i32* %31, align 4, !dbg !65
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %32), !dbg !65
  br label %omp.precond.end, !dbg !65

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n, i32** dereferenceable(8) %a, i32** dereferenceable(8) %b, i32** dereferenceable(8) %c) #2 !dbg !69 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %a.addr = alloca i32**, align 8
  %b.addr = alloca i32**, align 8
  %c.addr = alloca i32**, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !70, metadata !DIExpression()), !dbg !71
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !72, metadata !DIExpression()), !dbg !71
  store i32* %n, i32** %n.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !73, metadata !DIExpression()), !dbg !71
  store i32** %a, i32*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !74, metadata !DIExpression()), !dbg !71
  store i32** %b, i32*** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %b.addr, metadata !75, metadata !DIExpression()), !dbg !71
  store i32** %c, i32*** %c.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %c.addr, metadata !76, metadata !DIExpression()), !dbg !71
  %0 = load i32*, i32** %n.addr, align 8, !dbg !77
  %1 = load i32**, i32*** %a.addr, align 8, !dbg !77
  %2 = load i32**, i32*** %b.addr, align 8, !dbg !77
  %3 = load i32**, i32*** %c.addr, align 8, !dbg !77
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !77
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !77
  %6 = load i32*, i32** %n.addr, align 8, !dbg !77
  %7 = load i32**, i32*** %a.addr, align 8, !dbg !77
  %8 = load i32**, i32*** %b.addr, align 8, !dbg !77
  %9 = load i32**, i32*** %c.addr, align 8, !dbg !77
  call void @.omp_outlined._debug__(i32* %4, i32* %5, i32* %6, i32** %7, i32** %8, i32** %9) #6, !dbg !77
  ret void, !dbg !77
}

declare !callback !78 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !80 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca i32*, align 8
  %b = alloca i32*, align 8
  %c = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %n, metadata !83, metadata !DIExpression()), !dbg !84
  store i32 1000, i32* %n, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata i32** %a, metadata !85, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata i32** %b, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata i32** %c, metadata !89, metadata !DIExpression()), !dbg !90
  %0 = load i32, i32* %n, align 4, !dbg !91
  %conv = sext i32 %0 to i64, !dbg !91
  %mul = mul i64 %conv, 4, !dbg !92
  %call = call noalias i8* @malloc(i64 %mul) #6, !dbg !93
  %1 = bitcast i8* %call to i32*, !dbg !94
  store i32* %1, i32** %a, align 8, !dbg !95
  %2 = load i32*, i32** %a, align 8, !dbg !96
  %cmp = icmp eq i32* %2, null, !dbg !98
  br i1 %cmp, label %if.then, label %if.end, !dbg !99

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !100
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0)), !dbg !102
  store i32 1, i32* %retval, align 4, !dbg !103
  br label %return, !dbg !103

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %n, align 4, !dbg !104
  %conv3 = sext i32 %4 to i64, !dbg !104
  %mul4 = mul i64 %conv3, 4, !dbg !105
  %call5 = call noalias i8* @malloc(i64 %mul4) #6, !dbg !106
  %5 = bitcast i8* %call5 to i32*, !dbg !107
  store i32* %5, i32** %b, align 8, !dbg !108
  %6 = load i32*, i32** %b, align 8, !dbg !109
  %cmp6 = icmp eq i32* %6, null, !dbg !111
  br i1 %cmp6, label %if.then8, label %if.end10, !dbg !112

if.then8:                                         ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !113
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0)), !dbg !115
  store i32 1, i32* %retval, align 4, !dbg !116
  br label %return, !dbg !116

if.end10:                                         ; preds = %if.end
  %8 = load i32, i32* %n, align 4, !dbg !117
  %conv11 = sext i32 %8 to i64, !dbg !117
  %mul12 = mul i64 %conv11, 4, !dbg !118
  %call13 = call noalias i8* @malloc(i64 %mul12) #6, !dbg !119
  %9 = bitcast i8* %call13 to i32*, !dbg !120
  store i32* %9, i32** %c, align 8, !dbg !121
  %10 = load i32*, i32** %c, align 8, !dbg !122
  %cmp14 = icmp eq i32* %10, null, !dbg !124
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !125

if.then16:                                        ; preds = %if.end10
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !126
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0)), !dbg !128
  store i32 1, i32* %retval, align 4, !dbg !129
  br label %return, !dbg !129

if.end18:                                         ; preds = %if.end10
  %12 = load i32, i32* %n, align 4, !dbg !130
  %13 = load i32*, i32** %a, align 8, !dbg !131
  %14 = load i32*, i32** %b, align 8, !dbg !132
  %15 = load i32*, i32** %c, align 8, !dbg !133
  call void @foo(i32 %12, i32* %13, i32* %14, i32* %15), !dbg !134
  %16 = load i32*, i32** %a, align 8, !dbg !135
  %17 = bitcast i32* %16 to i8*, !dbg !135
  call void @free(i8* %17) #6, !dbg !136
  %18 = load i32*, i32** %b, align 8, !dbg !137
  %19 = bitcast i32* %18 to i8*, !dbg !137
  call void @free(i8* %19) #6, !dbg !138
  %20 = load i32*, i32** %c, align 8, !dbg !139
  %21 = bitcast i32* %20 to i8*, !dbg !139
  call void @free(i8* %21) #6, !dbg !140
  store i32 0, i32* %retval, align 4, !dbg !141
  br label %return, !dbg !141

return:                                           ; preds = %if.end18, %if.then16, %if.then8, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !142
  ret i32 %22, !dbg !142
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #4

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: nounwind
declare dso_local void @free(i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB068-restrictpointer2-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 10.0.1 "}
!10 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 58, type: !11, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !5, !13, !13, !13}
!13 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !4)
!14 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 58, type: !5)
!15 = !DILocation(line: 58, column: 14, scope: !10)
!16 = !DILocalVariable(name: "a", arg: 2, scope: !10, file: !1, line: 58, type: !13)
!17 = !DILocation(line: 58, column: 33, scope: !10)
!18 = !DILocalVariable(name: "b", arg: 3, scope: !10, file: !1, line: 58, type: !13)
!19 = !DILocation(line: 58, column: 51, scope: !10)
!20 = !DILocalVariable(name: "c", arg: 4, scope: !10, file: !1, line: 58, type: !13)
!21 = !DILocation(line: 58, column: 70, scope: !10)
!22 = !DILocalVariable(name: "i", scope: !10, file: !1, line: 60, type: !5)
!23 = !DILocation(line: 60, column: 7, scope: !10)
!24 = !DILocation(line: 61, column: 1, scope: !10)
!25 = !DILocation(line: 64, column: 1, scope: !10)
!26 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 62, type: !27, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29, !29, !33, !34, !34, !34}
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!33 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!35 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !26, type: !29, flags: DIFlagArtificial)
!36 = !DILocation(line: 0, scope: !26)
!37 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !26, type: !29, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: "n", arg: 3, scope: !26, file: !1, line: 58, type: !33)
!39 = !DILocation(line: 58, column: 14, scope: !26)
!40 = !DILocalVariable(name: "a", arg: 4, scope: !26, file: !1, line: 58, type: !34)
!41 = !DILocation(line: 58, column: 33, scope: !26)
!42 = !DILocalVariable(name: "b", arg: 5, scope: !26, file: !1, line: 58, type: !34)
!43 = !DILocation(line: 58, column: 51, scope: !26)
!44 = !DILocalVariable(name: "c", arg: 6, scope: !26, file: !1, line: 58, type: !34)
!45 = !DILocation(line: 58, column: 70, scope: !26)
!46 = !DILocation(line: 62, column: 3, scope: !26)
!47 = !DILocalVariable(name: ".omp.iv", scope: !26, type: !5, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".capture_expr.", scope: !26, type: !5, flags: DIFlagArtificial)
!49 = !DILocation(line: 62, column: 19, scope: !26)
!50 = !DILocalVariable(name: "i", scope: !26, type: !5, flags: DIFlagArtificial)
!51 = !DILocation(line: 62, column: 22, scope: !26)
!52 = !DILocalVariable(name: ".omp.lb", scope: !26, type: !5, flags: DIFlagArtificial)
!53 = !DILocation(line: 62, column: 8, scope: !26)
!54 = !DILocalVariable(name: ".omp.ub", scope: !26, type: !5, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: ".omp.stride", scope: !26, type: !5, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: ".omp.is_last", scope: !26, type: !5, flags: DIFlagArtificial)
!57 = !DILocation(line: 63, column: 12, scope: !26)
!58 = !DILocation(line: 63, column: 14, scope: !26)
!59 = !DILocation(line: 63, column: 19, scope: !26)
!60 = !DILocation(line: 63, column: 21, scope: !26)
!61 = !DILocation(line: 63, column: 17, scope: !26)
!62 = !DILocation(line: 63, column: 5, scope: !26)
!63 = !DILocation(line: 63, column: 7, scope: !26)
!64 = !DILocation(line: 63, column: 10, scope: !26)
!65 = !DILocation(line: 61, column: 1, scope: !26)
!66 = distinct !{!66, !65, !67}
!67 = !DILocation(line: 61, column: 26, scope: !26)
!68 = !DILocation(line: 63, column: 22, scope: !26)
!69 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 62, type: !27, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!70 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !69, type: !29, flags: DIFlagArtificial)
!71 = !DILocation(line: 0, scope: !69)
!72 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !69, type: !29, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "n", arg: 3, scope: !69, type: !33, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "a", arg: 4, scope: !69, type: !34, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "b", arg: 5, scope: !69, type: !34, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "c", arg: 6, scope: !69, type: !34, flags: DIFlagArtificial)
!77 = !DILocation(line: 62, column: 3, scope: !69)
!78 = !{!79}
!79 = !{i64 2, i64 -1, i64 -1, i1 true}
!80 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 66, type: !81, scopeLine: 67, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!81 = !DISubroutineType(types: !82)
!82 = !{!5}
!83 = !DILocalVariable(name: "n", scope: !80, file: !1, line: 68, type: !5)
!84 = !DILocation(line: 68, column: 7, scope: !80)
!85 = !DILocalVariable(name: "a", scope: !80, file: !1, line: 69, type: !4)
!86 = !DILocation(line: 69, column: 9, scope: !80)
!87 = !DILocalVariable(name: "b", scope: !80, file: !1, line: 69, type: !4)
!88 = !DILocation(line: 69, column: 14, scope: !80)
!89 = !DILocalVariable(name: "c", scope: !80, file: !1, line: 69, type: !4)
!90 = !DILocation(line: 69, column: 18, scope: !80)
!91 = !DILocation(line: 71, column: 22, scope: !80)
!92 = !DILocation(line: 71, column: 23, scope: !80)
!93 = !DILocation(line: 71, column: 14, scope: !80)
!94 = !DILocation(line: 71, column: 7, scope: !80)
!95 = !DILocation(line: 71, column: 5, scope: !80)
!96 = !DILocation(line: 72, column: 7, scope: !97)
!97 = distinct !DILexicalBlock(scope: !80, file: !1, line: 72, column: 7)
!98 = !DILocation(line: 72, column: 9, scope: !97)
!99 = !DILocation(line: 72, column: 7, scope: !80)
!100 = !DILocation(line: 74, column: 14, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !1, line: 73, column: 3)
!102 = !DILocation(line: 74, column: 5, scope: !101)
!103 = !DILocation(line: 75, column: 5, scope: !101)
!104 = !DILocation(line: 78, column: 22, scope: !80)
!105 = !DILocation(line: 78, column: 23, scope: !80)
!106 = !DILocation(line: 78, column: 14, scope: !80)
!107 = !DILocation(line: 78, column: 7, scope: !80)
!108 = !DILocation(line: 78, column: 5, scope: !80)
!109 = !DILocation(line: 79, column: 7, scope: !110)
!110 = distinct !DILexicalBlock(scope: !80, file: !1, line: 79, column: 7)
!111 = !DILocation(line: 79, column: 9, scope: !110)
!112 = !DILocation(line: 79, column: 7, scope: !80)
!113 = !DILocation(line: 81, column: 14, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !1, line: 80, column: 3)
!115 = !DILocation(line: 81, column: 5, scope: !114)
!116 = !DILocation(line: 82, column: 5, scope: !114)
!117 = !DILocation(line: 85, column: 22, scope: !80)
!118 = !DILocation(line: 85, column: 23, scope: !80)
!119 = !DILocation(line: 85, column: 14, scope: !80)
!120 = !DILocation(line: 85, column: 7, scope: !80)
!121 = !DILocation(line: 85, column: 5, scope: !80)
!122 = !DILocation(line: 86, column: 7, scope: !123)
!123 = distinct !DILexicalBlock(scope: !80, file: !1, line: 86, column: 7)
!124 = !DILocation(line: 86, column: 9, scope: !123)
!125 = !DILocation(line: 86, column: 7, scope: !80)
!126 = !DILocation(line: 88, column: 14, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !1, line: 87, column: 3)
!128 = !DILocation(line: 88, column: 5, scope: !127)
!129 = !DILocation(line: 89, column: 5, scope: !127)
!130 = !DILocation(line: 92, column: 8, scope: !80)
!131 = !DILocation(line: 92, column: 11, scope: !80)
!132 = !DILocation(line: 92, column: 14, scope: !80)
!133 = !DILocation(line: 92, column: 16, scope: !80)
!134 = !DILocation(line: 92, column: 3, scope: !80)
!135 = !DILocation(line: 94, column: 9, scope: !80)
!136 = !DILocation(line: 94, column: 3, scope: !80)
!137 = !DILocation(line: 95, column: 9, scope: !80)
!138 = !DILocation(line: 95, column: 3, scope: !80)
!139 = !DILocation(line: 96, column: 9, scope: !80)
!140 = !DILocation(line: 96, column: 3, scope: !80)
!141 = !DILocation(line: 97, column: 3, scope: !80)
!142 = !DILocation(line: 98, column: 1, scope: !80)
