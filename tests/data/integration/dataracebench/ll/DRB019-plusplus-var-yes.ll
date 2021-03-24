; ModuleID = 'DRB019-plusplus-var-yes.c'
source_filename = "DRB019-plusplus-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [39 x i8] c";DRB019-plusplus-var-yes.c;main;70;1;;\00", align 1
@2 = private unnamed_addr constant [40 x i8] c";DRB019-plusplus-var-yes.c;main;70;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"output[0]=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %inLen = alloca i32, align 4
  %outLen = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
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
  call void @llvm.dbg.declare(metadata i32* %inLen, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 1000, i32* %inLen, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %outLen, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 0, i32* %outLen, align 4, !dbg !23
  %2 = load i32, i32* %argc.addr, align 4, !dbg !24
  %cmp = icmp sgt i32 %2, 1, !dbg !26
  br i1 %cmp, label %if.then, label %if.end, !dbg !27

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %argv.addr, align 8, !dbg !28
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !28
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !28
  %call = call i32 @atoi(i8* %4) #7, !dbg !29
  store i32 %call, i32* %inLen, align 4, !dbg !30
  br label %if.end, !dbg !31

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %inLen, align 4, !dbg !32
  %6 = zext i32 %5 to i64, !dbg !33
  %7 = call i8* @llvm.stacksave(), !dbg !33
  store i8* %7, i8** %saved_stack, align 8, !dbg !33
  %vla = alloca i32, i64 %6, align 16, !dbg !33
  store i64 %6, i64* %__vla_expr0, align 8, !dbg !33
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !34, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !37, metadata !DIExpression()), !dbg !41
  %8 = load i32, i32* %inLen, align 4, !dbg !42
  %9 = zext i32 %8 to i64, !dbg !43
  %vla1 = alloca i32, i64 %9, align 16, !dbg !43
  store i64 %9, i64* %__vla_expr1, align 8, !dbg !43
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !44, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %vla1, metadata !45, metadata !DIExpression()), !dbg !49
  store i32 0, i32* %i, align 4, !dbg !50
  br label %for.cond, !dbg !52

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !dbg !53
  %11 = load i32, i32* %inLen, align 4, !dbg !55
  %cmp2 = icmp slt i32 %10, %11, !dbg !56
  br i1 %cmp2, label %for.body, label %for.end, !dbg !57

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !dbg !58
  %13 = load i32, i32* %i, align 4, !dbg !59
  %idxprom = sext i32 %13 to i64, !dbg !60
  %arrayidx3 = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !60
  store i32 %12, i32* %arrayidx3, align 4, !dbg !61
  br label %for.inc, !dbg !60

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !62
  %inc = add nsw i32 %14, 1, !dbg !62
  store i32 %inc, i32* %i, align 4, !dbg !62
  br label %for.cond, !dbg !63, !llvm.loop !64

for.end:                                          ; preds = %for.cond
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !66
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1, i32 0, i32 0), i8** %15, align 8, !dbg !66
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*, i32*, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %inLen, i64 %9, i32* %vla1, i32* %outLen, i64 %6, i32* %vla), !dbg !66
  %arrayidx4 = getelementptr inbounds i32, i32* %vla1, i64 0, !dbg !67
  %16 = load i32, i32* %arrayidx4, align 16, !dbg !67
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %16), !dbg !68
  store i32 0, i32* %retval, align 4, !dbg !69
  %17 = load i8*, i8** %saved_stack, align 8, !dbg !70
  call void @llvm.stackrestore(i8* %17), !dbg !70
  %18 = load i32, i32* %retval, align 4, !dbg !70
  ret i32 %18, !dbg !70
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %inLen, i64 %vla, i32* dereferenceable(4) %output, i32* dereferenceable(4) %outLen, i64 %vla1, i32* dereferenceable(4) %input) #4 !dbg !71 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %inLen.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %output.addr = alloca i32*, align 8
  %outLen.addr = alloca i32*, align 8
  %vla.addr2 = alloca i64, align 8
  %input.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.3 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i6 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !79, metadata !DIExpression()), !dbg !80
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !81, metadata !DIExpression()), !dbg !80
  store i32* %inLen, i32** %inLen.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %inLen.addr, metadata !82, metadata !DIExpression()), !dbg !83
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !84, metadata !DIExpression()), !dbg !80
  store i32* %output, i32** %output.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %output.addr, metadata !85, metadata !DIExpression()), !dbg !86
  store i32* %outLen, i32** %outLen.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %outLen.addr, metadata !87, metadata !DIExpression()), !dbg !88
  store i64 %vla1, i64* %vla.addr2, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !89, metadata !DIExpression()), !dbg !80
  store i32* %input, i32** %input.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %input.addr, metadata !90, metadata !DIExpression()), !dbg !91
  %2 = load i32*, i32** %inLen.addr, align 8, !dbg !92
  %3 = load i64, i64* %vla.addr, align 8, !dbg !92
  %4 = load i32*, i32** %output.addr, align 8, !dbg !92
  %5 = load i32*, i32** %outLen.addr, align 8, !dbg !92
  %6 = load i64, i64* %vla.addr2, align 8, !dbg !92
  %7 = load i32*, i32** %input.addr, align 8, !dbg !92
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !93, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !94, metadata !DIExpression()), !dbg !80
  %8 = load i32, i32* %2, align 4, !dbg !95
  store i32 %8, i32* %.capture_expr., align 4, !dbg !95
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !94, metadata !DIExpression()), !dbg !80
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !95
  %sub = sub nsw i32 %9, 0, !dbg !92
  %sub4 = sub nsw i32 %sub, 1, !dbg !92
  %add = add nsw i32 %sub4, 1, !dbg !92
  %div = sdiv i32 %add, 1, !dbg !92
  %sub5 = sub nsw i32 %div, 1, !dbg !92
  store i32 %sub5, i32* %.capture_expr.3, align 4, !dbg !92
  call void @llvm.dbg.declare(metadata i32* %i, metadata !96, metadata !DIExpression()), !dbg !80
  store i32 0, i32* %i, align 4, !dbg !97
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !95
  %cmp = icmp slt i32 0, %10, !dbg !92
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !92

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !98, metadata !DIExpression()), !dbg !80
  store i32 0, i32* %.omp.lb, align 4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !100, metadata !DIExpression()), !dbg !80
  %11 = load i32, i32* %.capture_expr.3, align 4, !dbg !92
  store i32 %11, i32* %.omp.ub, align 4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !101, metadata !DIExpression()), !dbg !80
  store i32 1, i32* %.omp.stride, align 4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !102, metadata !DIExpression()), !dbg !80
  store i32 0, i32* %.omp.is_last, align 4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %i6, metadata !96, metadata !DIExpression()), !dbg !80
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !92
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1, i32 0, i32 0), i8** %12, align 8, !dbg !92
  %13 = load i32*, i32** %.global_tid..addr, align 8, !dbg !92
  %14 = load i32, i32* %13, align 4, !dbg !92
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %14, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !92
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !99
  %16 = load i32, i32* %.capture_expr.3, align 4, !dbg !92
  %cmp7 = icmp sgt i32 %15, %16, !dbg !99
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !99

cond.true:                                        ; preds = %omp.precond.then
  %17 = load i32, i32* %.capture_expr.3, align 4, !dbg !92
  br label %cond.end, !dbg !99

cond.false:                                       ; preds = %omp.precond.then
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !99
  br label %cond.end, !dbg !99

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %18, %cond.false ], !dbg !99
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !99
  %19 = load i32, i32* %.omp.lb, align 4, !dbg !99
  store i32 %19, i32* %.omp.iv, align 4, !dbg !99
  br label %omp.inner.for.cond, !dbg !92

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !99
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !99
  %cmp8 = icmp sle i32 %20, %21, !dbg !92
  br i1 %cmp8, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !92

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !99
  %mul = mul nsw i32 %22, 1, !dbg !97
  %add9 = add nsw i32 0, %mul, !dbg !97
  store i32 %add9, i32* %i6, align 4, !dbg !97
  %23 = load i32, i32* %i6, align 4, !dbg !103
  %idxprom = sext i32 %23 to i64, !dbg !105
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom, !dbg !105
  %24 = load i32, i32* %arrayidx, align 4, !dbg !105
  %25 = load i32, i32* %5, align 4, !dbg !106
  %inc = add nsw i32 %25, 1, !dbg !106
  store i32 %inc, i32* %5, align 4, !dbg !106
  %idxprom10 = sext i32 %25 to i64, !dbg !107
  %arrayidx11 = getelementptr inbounds i32, i32* %4, i64 %idxprom10, !dbg !107
  store i32 %24, i32* %arrayidx11, align 4, !dbg !108
  br label %omp.body.continue, !dbg !109

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !110

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !99
  %add12 = add nsw i32 %26, 1, !dbg !92
  store i32 %add12, i32* %.omp.iv, align 4, !dbg !92
  br label %omp.inner.for.cond, !dbg !110, !llvm.loop !111

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !110

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !110
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2, i32 0, i32 0), i8** %27, align 8, !dbg !110
  %28 = load i32*, i32** %.global_tid..addr, align 8, !dbg !110
  %29 = load i32, i32* %28, align 4, !dbg !110
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %29), !dbg !110
  br label %omp.precond.end, !dbg !110

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %inLen, i64 %vla, i32* dereferenceable(4) %output, i32* dereferenceable(4) %outLen, i64 %vla1, i32* dereferenceable(4) %input) #4 !dbg !114 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %inLen.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %output.addr = alloca i32*, align 8
  %outLen.addr = alloca i32*, align 8
  %vla.addr2 = alloca i64, align 8
  %input.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !115, metadata !DIExpression()), !dbg !116
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !117, metadata !DIExpression()), !dbg !116
  store i32* %inLen, i32** %inLen.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %inLen.addr, metadata !118, metadata !DIExpression()), !dbg !116
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !119, metadata !DIExpression()), !dbg !116
  store i32* %output, i32** %output.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %output.addr, metadata !120, metadata !DIExpression()), !dbg !116
  store i32* %outLen, i32** %outLen.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %outLen.addr, metadata !121, metadata !DIExpression()), !dbg !116
  store i64 %vla1, i64* %vla.addr2, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !122, metadata !DIExpression()), !dbg !116
  store i32* %input, i32** %input.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %input.addr, metadata !123, metadata !DIExpression()), !dbg !116
  %0 = load i32*, i32** %inLen.addr, align 8, !dbg !124
  %1 = load i64, i64* %vla.addr, align 8, !dbg !124
  %2 = load i32*, i32** %output.addr, align 8, !dbg !124
  %3 = load i32*, i32** %outLen.addr, align 8, !dbg !124
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !124
  %5 = load i32*, i32** %input.addr, align 8, !dbg !124
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !124
  %7 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !124
  %8 = load i32*, i32** %inLen.addr, align 8, !dbg !124
  %9 = load i32*, i32** %output.addr, align 8, !dbg !124
  %10 = load i32*, i32** %outLen.addr, align 8, !dbg !124
  %11 = load i32*, i32** %input.addr, align 8, !dbg !124
  call void @.omp_outlined._debug__(i32* %6, i32* %7, i32* %8, i64 %1, i32* %9, i32* %10, i64 %4, i32* %11) #3, !dbg !124
  ret void, !dbg !124
}

declare !callback !125 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB019-plusplus-var-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 56, type: !8, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 56, type: !10)
!15 = !DILocation(line: 56, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 56, type: !11)
!17 = !DILocation(line: 56, column: 26, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 58, type: !10)
!19 = !DILocation(line: 58, column: 7, scope: !7)
!20 = !DILocalVariable(name: "inLen", scope: !7, file: !1, line: 59, type: !10)
!21 = !DILocation(line: 59, column: 7, scope: !7)
!22 = !DILocalVariable(name: "outLen", scope: !7, file: !1, line: 60, type: !10)
!23 = !DILocation(line: 60, column: 7, scope: !7)
!24 = !DILocation(line: 62, column: 7, scope: !25)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 62, column: 7)
!26 = !DILocation(line: 62, column: 11, scope: !25)
!27 = !DILocation(line: 62, column: 7, scope: !7)
!28 = !DILocation(line: 63, column: 17, scope: !25)
!29 = !DILocation(line: 63, column: 12, scope: !25)
!30 = !DILocation(line: 63, column: 10, scope: !25)
!31 = !DILocation(line: 63, column: 5, scope: !25)
!32 = !DILocation(line: 65, column: 13, scope: !7)
!33 = !DILocation(line: 65, column: 3, scope: !7)
!34 = !DILocalVariable(name: "__vla_expr0", scope: !7, type: !35, flags: DIFlagArtificial)
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DILocation(line: 0, scope: !7)
!37 = !DILocalVariable(name: "input", scope: !7, file: !1, line: 65, type: !38)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: !34)
!41 = !DILocation(line: 65, column: 7, scope: !7)
!42 = !DILocation(line: 66, column: 14, scope: !7)
!43 = !DILocation(line: 66, column: 3, scope: !7)
!44 = !DILocalVariable(name: "__vla_expr1", scope: !7, type: !35, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: "output", scope: !7, file: !1, line: 66, type: !46)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: !44)
!49 = !DILocation(line: 66, column: 7, scope: !7)
!50 = !DILocation(line: 67, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !7, file: !1, line: 67, column: 3)
!52 = !DILocation(line: 67, column: 8, scope: !51)
!53 = !DILocation(line: 67, column: 13, scope: !54)
!54 = distinct !DILexicalBlock(scope: !51, file: !1, line: 67, column: 3)
!55 = !DILocation(line: 67, column: 15, scope: !54)
!56 = !DILocation(line: 67, column: 14, scope: !54)
!57 = !DILocation(line: 67, column: 3, scope: !51)
!58 = !DILocation(line: 68, column: 14, scope: !54)
!59 = !DILocation(line: 68, column: 11, scope: !54)
!60 = !DILocation(line: 68, column: 5, scope: !54)
!61 = !DILocation(line: 68, column: 13, scope: !54)
!62 = !DILocation(line: 67, column: 22, scope: !54)
!63 = !DILocation(line: 67, column: 3, scope: !54)
!64 = distinct !{!64, !57, !65}
!65 = !DILocation(line: 68, column: 14, scope: !51)
!66 = !DILocation(line: 70, column: 1, scope: !7)
!67 = !DILocation(line: 75, column: 28, scope: !7)
!68 = !DILocation(line: 75, column: 3, scope: !7)
!69 = !DILocation(line: 76, column: 3, scope: !7)
!70 = !DILocation(line: 77, column: 1, scope: !7)
!71 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 71, type: !72, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !74, !74, !78, !35, !78, !78, !35, !78}
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!78 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!79 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !71, type: !74, flags: DIFlagArtificial)
!80 = !DILocation(line: 0, scope: !71)
!81 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !71, type: !74, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "inLen", arg: 3, scope: !71, file: !1, line: 59, type: !78)
!83 = !DILocation(line: 59, column: 7, scope: !71)
!84 = !DILocalVariable(name: "vla", arg: 4, scope: !71, type: !35, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: "output", arg: 5, scope: !71, file: !1, line: 66, type: !78)
!86 = !DILocation(line: 66, column: 7, scope: !71)
!87 = !DILocalVariable(name: "outLen", arg: 6, scope: !71, file: !1, line: 60, type: !78)
!88 = !DILocation(line: 60, column: 7, scope: !71)
!89 = !DILocalVariable(name: "vla", arg: 7, scope: !71, type: !35, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: "input", arg: 8, scope: !71, file: !1, line: 65, type: !78)
!91 = !DILocation(line: 65, column: 7, scope: !71)
!92 = !DILocation(line: 71, column: 3, scope: !71)
!93 = !DILocalVariable(name: ".omp.iv", scope: !71, type: !10, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".capture_expr.", scope: !71, type: !10, flags: DIFlagArtificial)
!95 = !DILocation(line: 71, column: 15, scope: !71)
!96 = !DILocalVariable(name: "i", scope: !71, type: !10, flags: DIFlagArtificial)
!97 = !DILocation(line: 71, column: 22, scope: !71)
!98 = !DILocalVariable(name: ".omp.lb", scope: !71, type: !10, flags: DIFlagArtificial)
!99 = !DILocation(line: 71, column: 8, scope: !71)
!100 = !DILocalVariable(name: ".omp.ub", scope: !71, type: !10, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".omp.stride", scope: !71, type: !10, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".omp.is_last", scope: !71, type: !10, flags: DIFlagArtificial)
!103 = !DILocation(line: 72, column: 30, scope: !104)
!104 = distinct !DILexicalBlock(scope: !71, file: !1, line: 71, column: 27)
!105 = !DILocation(line: 72, column: 24, scope: !104)
!106 = !DILocation(line: 72, column: 18, scope: !104)
!107 = !DILocation(line: 72, column: 5, scope: !104)
!108 = !DILocation(line: 72, column: 22, scope: !104)
!109 = !DILocation(line: 73, column: 3, scope: !104)
!110 = !DILocation(line: 70, column: 1, scope: !71)
!111 = distinct !{!111, !110, !112}
!112 = !DILocation(line: 70, column: 25, scope: !71)
!113 = !DILocation(line: 73, column: 3, scope: !71)
!114 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 71, type: !72, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!115 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !114, type: !74, flags: DIFlagArtificial)
!116 = !DILocation(line: 0, scope: !114)
!117 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !114, type: !74, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: "inLen", arg: 3, scope: !114, type: !78, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: "vla", arg: 4, scope: !114, type: !35, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: "output", arg: 5, scope: !114, type: !78, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: "outLen", arg: 6, scope: !114, type: !78, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: "vla", arg: 7, scope: !114, type: !35, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "input", arg: 8, scope: !114, type: !78, flags: DIFlagArtificial)
!124 = !DILocation(line: 71, column: 3, scope: !114)
!125 = !{!126}
!126 = !{i64 2, i64 -1, i64 -1, i1 true}
