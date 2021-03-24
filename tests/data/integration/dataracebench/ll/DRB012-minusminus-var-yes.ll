; ModuleID = 'DRB012-minusminus-var-yes.c'
source_filename = "DRB012-minusminus-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [41 x i8] c";DRB012-minusminus-var-yes.c;main;71;1;;\00", align 1
@2 = private unnamed_addr constant [42 x i8] c";DRB012-minusminus-var-yes.c;main;71;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %numNodes = alloca i32, align 4
  %numNodes2 = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %len, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 100, i32* %len, align 4, !dbg !21
  %2 = load i32, i32* %argc.addr, align 4, !dbg !22
  %cmp = icmp sgt i32 %2, 1, !dbg !24
  br i1 %cmp, label %if.then, label %if.end, !dbg !25

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %argv.addr, align 8, !dbg !26
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !26
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !26
  %call = call i32 @atoi(i8* %4) #6, !dbg !27
  store i32 %call, i32* %len, align 4, !dbg !28
  br label %if.end, !dbg !29

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %numNodes, metadata !30, metadata !DIExpression()), !dbg !31
  %5 = load i32, i32* %len, align 4, !dbg !32
  store i32 %5, i32* %numNodes, align 4, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %numNodes2, metadata !33, metadata !DIExpression()), !dbg !34
  store i32 0, i32* %numNodes2, align 4, !dbg !34
  %6 = load i32, i32* %len, align 4, !dbg !35
  %7 = zext i32 %6 to i64, !dbg !36
  %8 = call i8* @llvm.stacksave(), !dbg !36
  store i8* %8, i8** %saved_stack, align 8, !dbg !36
  %vla = alloca i32, i64 %7, align 16, !dbg !36
  store i64 %7, i64* %__vla_expr0, align 8, !dbg !36
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !37, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !40, metadata !DIExpression()), !dbg !44
  store i32 0, i32* %i, align 4, !dbg !45
  br label %for.cond, !dbg !47

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4, !dbg !48
  %10 = load i32, i32* %len, align 4, !dbg !50
  %cmp1 = icmp slt i32 %9, %10, !dbg !51
  br i1 %cmp1, label %for.body, label %for.end, !dbg !52

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !dbg !53
  %rem = srem i32 %11, 2, !dbg !56
  %cmp2 = icmp eq i32 %rem, 0, !dbg !57
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !58

if.then3:                                         ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !59
  %idxprom = sext i32 %12 to i64, !dbg !60
  %arrayidx4 = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !60
  store i32 5, i32* %arrayidx4, align 4, !dbg !61
  br label %if.end7, !dbg !60

if.else:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !62
  %idxprom5 = sext i32 %13 to i64, !dbg !63
  %arrayidx6 = getelementptr inbounds i32, i32* %vla, i64 %idxprom5, !dbg !63
  store i32 -5, i32* %arrayidx6, align 4, !dbg !64
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  br label %for.inc, !dbg !65

for.inc:                                          ; preds = %if.end7
  %14 = load i32, i32* %i, align 4, !dbg !66
  %inc = add nsw i32 %14, 1, !dbg !66
  store i32 %inc, i32* %i, align 4, !dbg !66
  br label %for.cond, !dbg !67, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !70
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1, i32 0, i32 0), i8** %15, align 8, !dbg !70
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %numNodes, i64 %7, i32* %vla, i32* %numNodes2), !dbg !70
  store i32 0, i32* %retval, align 4, !dbg !71
  %16 = load i8*, i8** %saved_stack, align 8, !dbg !72
  call void @llvm.stackrestore(i8* %16), !dbg !72
  %17 = load i32, i32* %retval, align 4, !dbg !72
  ret i32 %17, !dbg !72
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %numNodes, i64 %vla, i32* dereferenceable(4) %x, i32* dereferenceable(4) %numNodes2) #4 !dbg !73 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %numNodes.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %x.addr = alloca i32*, align 8
  %numNodes2.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i5 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !81, metadata !DIExpression()), !dbg !82
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !83, metadata !DIExpression()), !dbg !82
  store i32* %numNodes, i32** %numNodes.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %numNodes.addr, metadata !84, metadata !DIExpression()), !dbg !85
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !86, metadata !DIExpression()), !dbg !82
  store i32* %x, i32** %x.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !87, metadata !DIExpression()), !dbg !88
  store i32* %numNodes2, i32** %numNodes2.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %numNodes2.addr, metadata !89, metadata !DIExpression()), !dbg !90
  %2 = load i32*, i32** %numNodes.addr, align 8, !dbg !91
  %3 = load i64, i64* %vla.addr, align 8, !dbg !91
  %4 = load i32*, i32** %x.addr, align 8, !dbg !91
  %5 = load i32*, i32** %numNodes2.addr, align 8, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !92, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !93, metadata !DIExpression()), !dbg !82
  %6 = load i32, i32* %2, align 4, !dbg !94
  %sub = sub nsw i32 %6, 1, !dbg !95
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !94
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !93, metadata !DIExpression()), !dbg !82
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !95
  %sub2 = sub nsw i32 %7, -1, !dbg !91
  %sub3 = sub nsw i32 %sub2, 1, !dbg !91
  %add = add nsw i32 %sub3, 1, !dbg !91
  %div = sdiv i32 %add, 1, !dbg !91
  %sub4 = sub nsw i32 %div, 1, !dbg !91
  store i32 %sub4, i32* %.capture_expr.1, align 4, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %i, metadata !96, metadata !DIExpression()), !dbg !82
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !95
  store i32 %8, i32* %i, align 4, !dbg !97
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !95
  %cmp = icmp sgt i32 %9, -1, !dbg !91
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !91

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !98, metadata !DIExpression()), !dbg !82
  store i32 0, i32* %.omp.lb, align 4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !100, metadata !DIExpression()), !dbg !82
  %10 = load i32, i32* %.capture_expr.1, align 4, !dbg !91
  store i32 %10, i32* %.omp.ub, align 4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !101, metadata !DIExpression()), !dbg !82
  store i32 1, i32* %.omp.stride, align 4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !102, metadata !DIExpression()), !dbg !82
  store i32 0, i32* %.omp.is_last, align 4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !96, metadata !DIExpression()), !dbg !82
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !91
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !91
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !91
  %13 = load i32, i32* %12, align 4, !dbg !91
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !91
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !99
  %15 = load i32, i32* %.capture_expr.1, align 4, !dbg !91
  %cmp6 = icmp sgt i32 %14, %15, !dbg !99
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !99

cond.true:                                        ; preds = %omp.precond.then
  %16 = load i32, i32* %.capture_expr.1, align 4, !dbg !91
  br label %cond.end, !dbg !99

cond.false:                                       ; preds = %omp.precond.then
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !99
  br label %cond.end, !dbg !99

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !99
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !99
  %18 = load i32, i32* %.omp.lb, align 4, !dbg !99
  store i32 %18, i32* %.omp.iv, align 4, !dbg !99
  br label %omp.inner.for.cond, !dbg !91

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !99
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !99
  %cmp7 = icmp sle i32 %19, %20, !dbg !91
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !91

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %21 = load i32, i32* %.capture_expr., align 4, !dbg !95
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !99
  %mul = mul nsw i32 %22, 1, !dbg !97
  %sub8 = sub nsw i32 %21, %mul, !dbg !97
  store i32 %sub8, i32* %i5, align 4, !dbg !97
  %23 = load i32, i32* %i5, align 4, !dbg !103
  %idxprom = sext i32 %23 to i64, !dbg !106
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !106
  %24 = load i32, i32* %arrayidx, align 4, !dbg !106
  %cmp9 = icmp sle i32 %24, 0, !dbg !107
  br i1 %cmp9, label %if.then, label %if.end, !dbg !108

if.then:                                          ; preds = %omp.inner.for.body
  %25 = load i32, i32* %5, align 4, !dbg !109
  %dec = add nsw i32 %25, -1, !dbg !109
  store i32 %dec, i32* %5, align 4, !dbg !109
  br label %if.end, !dbg !111

if.end:                                           ; preds = %if.then, %omp.inner.for.body
  br label %omp.body.continue, !dbg !112

omp.body.continue:                                ; preds = %if.end
  br label %omp.inner.for.inc, !dbg !113

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !99
  %add10 = add nsw i32 %26, 1, !dbg !91
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !91
  br label %omp.inner.for.cond, !dbg !113, !llvm.loop !114

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !113

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !113
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2, i32 0, i32 0), i8** %27, align 8, !dbg !113
  %28 = load i32*, i32** %.global_tid..addr, align 8, !dbg !113
  %29 = load i32, i32* %28, align 4, !dbg !113
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %29), !dbg !113
  br label %omp.precond.end, !dbg !113

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %numNodes, i64 %vla, i32* dereferenceable(4) %x, i32* dereferenceable(4) %numNodes2) #4 !dbg !117 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %numNodes.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %x.addr = alloca i32*, align 8
  %numNodes2.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !118, metadata !DIExpression()), !dbg !119
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !120, metadata !DIExpression()), !dbg !119
  store i32* %numNodes, i32** %numNodes.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %numNodes.addr, metadata !121, metadata !DIExpression()), !dbg !119
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !122, metadata !DIExpression()), !dbg !119
  store i32* %x, i32** %x.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !123, metadata !DIExpression()), !dbg !119
  store i32* %numNodes2, i32** %numNodes2.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %numNodes2.addr, metadata !124, metadata !DIExpression()), !dbg !119
  %0 = load i32*, i32** %numNodes.addr, align 8, !dbg !125
  %1 = load i64, i64* %vla.addr, align 8, !dbg !125
  %2 = load i32*, i32** %x.addr, align 8, !dbg !125
  %3 = load i32*, i32** %numNodes2.addr, align 8, !dbg !125
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !125
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !125
  %6 = load i32*, i32** %numNodes.addr, align 8, !dbg !125
  %7 = load i32*, i32** %x.addr, align 8, !dbg !125
  %8 = load i32*, i32** %numNodes2.addr, align 8, !dbg !125
  call void @.omp_outlined._debug__(i32* %4, i32* %5, i32* %6, i64 %1, i32* %7, i32* %8) #3, !dbg !125
  ret void, !dbg !125
}

declare !callback !126 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB012-minusminus-var-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !8, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 52, type: !10)
!15 = !DILocation(line: 52, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 52, type: !11)
!17 = !DILocation(line: 52, column: 26, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 54, type: !10)
!19 = !DILocation(line: 54, column: 7, scope: !7)
!20 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 55, type: !10)
!21 = !DILocation(line: 55, column: 7, scope: !7)
!22 = !DILocation(line: 57, column: 7, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 57, column: 7)
!24 = !DILocation(line: 57, column: 11, scope: !23)
!25 = !DILocation(line: 57, column: 7, scope: !7)
!26 = !DILocation(line: 58, column: 16, scope: !23)
!27 = !DILocation(line: 58, column: 11, scope: !23)
!28 = !DILocation(line: 58, column: 9, scope: !23)
!29 = !DILocation(line: 58, column: 5, scope: !23)
!30 = !DILocalVariable(name: "numNodes", scope: !7, file: !1, line: 60, type: !10)
!31 = !DILocation(line: 60, column: 7, scope: !7)
!32 = !DILocation(line: 60, column: 16, scope: !7)
!33 = !DILocalVariable(name: "numNodes2", scope: !7, file: !1, line: 60, type: !10)
!34 = !DILocation(line: 60, column: 21, scope: !7)
!35 = !DILocation(line: 61, column: 9, scope: !7)
!36 = !DILocation(line: 61, column: 3, scope: !7)
!37 = !DILocalVariable(name: "__vla_expr0", scope: !7, type: !38, flags: DIFlagArtificial)
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 0, scope: !7)
!40 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 61, type: !41)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: !37)
!44 = !DILocation(line: 61, column: 7, scope: !7)
!45 = !DILocation(line: 63, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !7, file: !1, line: 63, column: 3)
!47 = !DILocation(line: 63, column: 8, scope: !46)
!48 = !DILocation(line: 63, column: 13, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !1, line: 63, column: 3)
!50 = !DILocation(line: 63, column: 16, scope: !49)
!51 = !DILocation(line: 63, column: 14, scope: !49)
!52 = !DILocation(line: 63, column: 3, scope: !46)
!53 = !DILocation(line: 65, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 65, column: 9)
!55 = distinct !DILexicalBlock(scope: !49, file: !1, line: 64, column: 3)
!56 = !DILocation(line: 65, column: 10, scope: !54)
!57 = !DILocation(line: 65, column: 12, scope: !54)
!58 = !DILocation(line: 65, column: 9, scope: !55)
!59 = !DILocation(line: 66, column: 9, scope: !54)
!60 = !DILocation(line: 66, column: 7, scope: !54)
!61 = !DILocation(line: 66, column: 11, scope: !54)
!62 = !DILocation(line: 68, column: 9, scope: !54)
!63 = !DILocation(line: 68, column: 7, scope: !54)
!64 = !DILocation(line: 68, column: 11, scope: !54)
!65 = !DILocation(line: 69, column: 3, scope: !55)
!66 = !DILocation(line: 63, column: 22, scope: !49)
!67 = !DILocation(line: 63, column: 3, scope: !49)
!68 = distinct !{!68, !52, !69}
!69 = !DILocation(line: 69, column: 3, scope: !46)
!70 = !DILocation(line: 71, column: 1, scope: !7)
!71 = !DILocation(line: 77, column: 3, scope: !7)
!72 = !DILocation(line: 78, column: 1, scope: !7)
!73 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 72, type: !74, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !76, !76, !80, !38, !80, !80}
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!80 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!81 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !73, type: !76, flags: DIFlagArtificial)
!82 = !DILocation(line: 0, scope: !73)
!83 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !73, type: !76, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: "numNodes", arg: 3, scope: !73, file: !1, line: 60, type: !80)
!85 = !DILocation(line: 60, column: 7, scope: !73)
!86 = !DILocalVariable(name: "vla", arg: 4, scope: !73, type: !38, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: "x", arg: 5, scope: !73, file: !1, line: 61, type: !80)
!88 = !DILocation(line: 61, column: 7, scope: !73)
!89 = !DILocalVariable(name: "numNodes2", arg: 6, scope: !73, file: !1, line: 60, type: !80)
!90 = !DILocation(line: 60, column: 21, scope: !73)
!91 = !DILocation(line: 72, column: 3, scope: !73)
!92 = !DILocalVariable(name: ".omp.iv", scope: !73, type: !10, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".capture_expr.", scope: !73, type: !10, flags: DIFlagArtificial)
!94 = !DILocation(line: 72, column: 10, scope: !73)
!95 = !DILocation(line: 72, column: 18, scope: !73)
!96 = !DILocalVariable(name: "i", scope: !73, type: !10, flags: DIFlagArtificial)
!97 = !DILocation(line: 72, column: 30, scope: !73)
!98 = !DILocalVariable(name: ".omp.lb", scope: !73, type: !10, flags: DIFlagArtificial)
!99 = !DILocation(line: 72, column: 8, scope: !73)
!100 = !DILocalVariable(name: ".omp.ub", scope: !73, type: !10, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".omp.stride", scope: !73, type: !10, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".omp.is_last", scope: !73, type: !10, flags: DIFlagArtificial)
!103 = !DILocation(line: 73, column: 11, scope: !104)
!104 = distinct !DILexicalBlock(scope: !105, file: !1, line: 73, column: 9)
!105 = distinct !DILexicalBlock(scope: !73, file: !1, line: 72, column: 35)
!106 = !DILocation(line: 73, column: 9, scope: !104)
!107 = !DILocation(line: 73, column: 13, scope: !104)
!108 = !DILocation(line: 73, column: 9, scope: !105)
!109 = !DILocation(line: 74, column: 16, scope: !110)
!110 = distinct !DILexicalBlock(scope: !104, file: !1, line: 73, column: 18)
!111 = !DILocation(line: 75, column: 5, scope: !110)
!112 = !DILocation(line: 76, column: 3, scope: !105)
!113 = !DILocation(line: 71, column: 1, scope: !73)
!114 = distinct !{!114, !113, !115}
!115 = !DILocation(line: 71, column: 25, scope: !73)
!116 = !DILocation(line: 76, column: 3, scope: !73)
!117 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 72, type: !74, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!118 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !117, type: !76, flags: DIFlagArtificial)
!119 = !DILocation(line: 0, scope: !117)
!120 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !117, type: !76, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: "numNodes", arg: 3, scope: !117, type: !80, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: "vla", arg: 4, scope: !117, type: !38, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "x", arg: 5, scope: !117, type: !80, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "numNodes2", arg: 6, scope: !117, type: !80, flags: DIFlagArtificial)
!125 = !DILocation(line: 72, column: 3, scope: !117)
!126 = !{!127}
!127 = !{i64 2, i64 -1, i64 -1, i1 true}
