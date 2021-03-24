; ModuleID = 'DRB114-if-orig-yes.c'
source_filename = "DRB114-if-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [34 x i8] c";DRB114-if-orig-yes.c;main;64;1;;\00", align 1
@2 = private unnamed_addr constant [35 x i8] c";DRB114-if-orig-yes.c;main;64;39;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"a[50]=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.threadid_temp. = alloca i32, align 4
  %.bound.zero.addr = alloca i32, align 4
  store i32 0, i32* %.bound.zero.addr, align 4
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @1, i32 0, i32 0), i8** %2, align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %len, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 100, i32* %len, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i32]* %a, metadata !22, metadata !DIExpression()), !dbg !26
  store i32 0, i32* %i, align 4, !dbg !27
  br label %for.cond, !dbg !29

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !30
  %5 = load i32, i32* %len, align 4, !dbg !32
  %cmp = icmp slt i32 %4, %5, !dbg !33
  br i1 %cmp, label %for.body, label %for.end, !dbg !34

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !35
  %7 = load i32, i32* %i, align 4, !dbg !36
  %idxprom = sext i32 %7 to i64, !dbg !37
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom, !dbg !37
  store i32 %6, i32* %arrayidx, align 4, !dbg !38
  br label %for.inc, !dbg !37

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !39
  %inc = add nsw i32 %8, 1, !dbg !39
  store i32 %inc, i32* %i, align 4, !dbg !39
  br label %for.cond, !dbg !40, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  %call = call i64 @time(i64* null) #6, !dbg !43
  %conv = trunc i64 %call to i32, !dbg !43
  call void @srand(i32 %conv) #6, !dbg !44
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !45
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !45
  %call1 = call i32 @rand() #6, !dbg !46
  %rem = srem i32 %call1, 2, !dbg !49
  %tobool = icmp ne i32 %rem, 0, !dbg !49
  br i1 %tobool, label %omp_if.then, label %omp_if.else, !dbg !50

omp_if.then:                                      ; preds = %for.end
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, [100 x i32]* %a), !dbg !50
  br label %omp_if.end, !dbg !50

omp_if.else:                                      ; preds = %for.end
  call void @__kmpc_serialized_parallel(%struct.ident_t* %.kmpc_loc.addr, i32 %3), !dbg !50
  store i32 %3, i32* %.threadid_temp., align 4, !dbg !50
  call void @.omp_outlined.(i32* %.threadid_temp., i32* %.bound.zero.addr, i32* %len, [100 x i32]* %a) #6, !dbg !51
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !50
  call void @__kmpc_end_serialized_parallel(%struct.ident_t* %.kmpc_loc.addr, i32 %3), !dbg !50
  br label %omp_if.end, !dbg !50

omp_if.end:                                       ; preds = %omp_if.else, %omp_if.then
  %arrayidx2 = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 50, !dbg !52
  %11 = load i32, i32* %arrayidx2, align 8, !dbg !52
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %11), !dbg !53
  ret i32 0, !dbg !54
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [100 x i32]* dereferenceable(400) %a) #3 !dbg !55 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !64, metadata !DIExpression()), !dbg !65
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !66, metadata !DIExpression()), !dbg !65
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !67, metadata !DIExpression()), !dbg !68
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !69, metadata !DIExpression()), !dbg !70
  %2 = load i32*, i32** %len.addr, align 8, !dbg !71
  %3 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !72, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !73, metadata !DIExpression()), !dbg !65
  %4 = load i32, i32* %2, align 4, !dbg !74
  %sub = sub nsw i32 %4, 1, !dbg !75
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !73, metadata !DIExpression()), !dbg !65
  %5 = load i32, i32* %.capture_expr., align 4, !dbg !75
  %sub2 = sub nsw i32 %5, 0, !dbg !71
  %sub3 = sub nsw i32 %sub2, 1, !dbg !71
  %add = add nsw i32 %sub3, 1, !dbg !71
  %div = sdiv i32 %add, 1, !dbg !71
  %sub4 = sub nsw i32 %div, 1, !dbg !71
  store i32 %sub4, i32* %.capture_expr.1, align 4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %i, metadata !76, metadata !DIExpression()), !dbg !65
  store i32 0, i32* %i, align 4, !dbg !77
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !75
  %cmp = icmp slt i32 0, %6, !dbg !71
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !71

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !78, metadata !DIExpression()), !dbg !65
  store i32 0, i32* %.omp.lb, align 4, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !80, metadata !DIExpression()), !dbg !65
  %7 = load i32, i32* %.capture_expr.1, align 4, !dbg !71
  store i32 %7, i32* %.omp.ub, align 4, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !81, metadata !DIExpression()), !dbg !65
  store i32 1, i32* %.omp.stride, align 4, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !82, metadata !DIExpression()), !dbg !65
  store i32 0, i32* %.omp.is_last, align 4, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !76, metadata !DIExpression()), !dbg !65
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !71
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !71
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !71
  %10 = load i32, i32* %9, align 4, !dbg !71
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !71
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !79
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !71
  %cmp6 = icmp sgt i32 %11, %12, !dbg !79
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !79

cond.true:                                        ; preds = %omp.precond.then
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !71
  br label %cond.end, !dbg !79

cond.false:                                       ; preds = %omp.precond.then
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !79
  br label %cond.end, !dbg !79

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !79
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !79
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !79
  store i32 %15, i32* %.omp.iv, align 4, !dbg !79
  br label %omp.inner.for.cond, !dbg !71

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !79
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !79
  %cmp7 = icmp sle i32 %16, %17, !dbg !71
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !71

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !79
  %mul = mul nsw i32 %18, 1, !dbg !77
  %add8 = add nsw i32 0, %mul, !dbg !77
  store i32 %add8, i32* %i5, align 4, !dbg !77
  %19 = load i32, i32* %i5, align 4, !dbg !83
  %idxprom = sext i32 %19 to i64, !dbg !84
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %idxprom, !dbg !84
  %20 = load i32, i32* %arrayidx, align 4, !dbg !84
  %add9 = add nsw i32 %20, 1, !dbg !85
  %21 = load i32, i32* %i5, align 4, !dbg !86
  %add10 = add nsw i32 %21, 1, !dbg !87
  %idxprom11 = sext i32 %add10 to i64, !dbg !88
  %arrayidx12 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %idxprom11, !dbg !88
  store i32 %add9, i32* %arrayidx12, align 4, !dbg !89
  br label %omp.body.continue, !dbg !88

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !90

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !79
  %add13 = add nsw i32 %22, 1, !dbg !71
  store i32 %add13, i32* %.omp.iv, align 4, !dbg !71
  br label %omp.inner.for.cond, !dbg !90, !llvm.loop !91

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !90

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !90
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i32 0, i32 0), i8** %23, align 8, !dbg !90
  %24 = load i32*, i32** %.global_tid..addr, align 8, !dbg !90
  %25 = load i32, i32* %24, align 4, !dbg !90
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %25), !dbg !90
  br label %omp.precond.end, !dbg !90

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [100 x i32]* dereferenceable(400) %a) #3 !dbg !94 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !95, metadata !DIExpression()), !dbg !96
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !97, metadata !DIExpression()), !dbg !96
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !98, metadata !DIExpression()), !dbg !96
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !99, metadata !DIExpression()), !dbg !96
  %0 = load i32*, i32** %len.addr, align 8, !dbg !100
  %1 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !100
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !100
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !100
  %4 = load i32*, i32** %len.addr, align 8, !dbg !100
  %5 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !100
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, [100 x i32]* %5) #6, !dbg !100
  ret void, !dbg !100
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

declare !callback !101 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local void @__kmpc_serialized_parallel(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_serialized_parallel(%struct.ident_t*, i32)

declare dso_local i32 @printf(i8*, ...) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB114-if-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !8, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 54, type: !10)
!15 = !DILocation(line: 54, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 54, type: !11)
!17 = !DILocation(line: 54, column: 26, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 56, type: !10)
!19 = !DILocation(line: 56, column: 7, scope: !7)
!20 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 57, type: !10)
!21 = !DILocation(line: 57, column: 7, scope: !7)
!22 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 58, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 3200, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 58, column: 7, scope: !7)
!27 = !DILocation(line: 60, column: 9, scope: !28)
!28 = distinct !DILexicalBlock(scope: !7, file: !1, line: 60, column: 3)
!29 = !DILocation(line: 60, column: 8, scope: !28)
!30 = !DILocation(line: 60, column: 12, scope: !31)
!31 = distinct !DILexicalBlock(scope: !28, file: !1, line: 60, column: 3)
!32 = !DILocation(line: 60, column: 14, scope: !31)
!33 = !DILocation(line: 60, column: 13, scope: !31)
!34 = !DILocation(line: 60, column: 3, scope: !28)
!35 = !DILocation(line: 61, column: 10, scope: !31)
!36 = !DILocation(line: 61, column: 7, scope: !31)
!37 = !DILocation(line: 61, column: 5, scope: !31)
!38 = !DILocation(line: 61, column: 9, scope: !31)
!39 = !DILocation(line: 60, column: 19, scope: !31)
!40 = !DILocation(line: 60, column: 3, scope: !31)
!41 = distinct !{!41, !34, !42}
!42 = !DILocation(line: 61, column: 10, scope: !28)
!43 = !DILocation(line: 63, column: 9, scope: !7)
!44 = !DILocation(line: 63, column: 3, scope: !7)
!45 = !DILocation(line: 64, column: 1, scope: !7)
!46 = !DILocation(line: 64, column: 30, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 64, column: 30)
!48 = distinct !DILexicalBlock(scope: !7, file: !1, line: 64, column: 1)
!49 = !DILocation(line: 64, column: 36, scope: !47)
!50 = !DILocation(line: 64, column: 30, scope: !48)
!51 = !DILocation(line: 64, column: 1, scope: !47)
!52 = !DILocation(line: 68, column: 24, scope: !7)
!53 = !DILocation(line: 68, column: 3, scope: !7)
!54 = !DILocation(line: 69, column: 3, scope: !7)
!55 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 65, type: !56, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !58, !58, !62, !63}
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!62 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!64 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !55, type: !58, flags: DIFlagArtificial)
!65 = !DILocation(line: 0, scope: !55)
!66 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !55, type: !58, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: "len", arg: 3, scope: !55, file: !1, line: 57, type: !62)
!68 = !DILocation(line: 57, column: 7, scope: !55)
!69 = !DILocalVariable(name: "a", arg: 4, scope: !55, file: !1, line: 58, type: !63)
!70 = !DILocation(line: 58, column: 7, scope: !55)
!71 = !DILocation(line: 65, column: 3, scope: !55)
!72 = !DILocalVariable(name: ".omp.iv", scope: !55, type: !10, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".capture_expr.", scope: !55, type: !10, flags: DIFlagArtificial)
!74 = !DILocation(line: 65, column: 14, scope: !55)
!75 = !DILocation(line: 65, column: 17, scope: !55)
!76 = !DILocalVariable(name: "i", scope: !55, type: !10, flags: DIFlagArtificial)
!77 = !DILocation(line: 65, column: 20, scope: !55)
!78 = !DILocalVariable(name: ".omp.lb", scope: !55, type: !10, flags: DIFlagArtificial)
!79 = !DILocation(line: 65, column: 8, scope: !55)
!80 = !DILocalVariable(name: ".omp.ub", scope: !55, type: !10, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.stride", scope: !55, type: !10, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.is_last", scope: !55, type: !10, flags: DIFlagArtificial)
!83 = !DILocation(line: 66, column: 14, scope: !55)
!84 = !DILocation(line: 66, column: 12, scope: !55)
!85 = !DILocation(line: 66, column: 16, scope: !55)
!86 = !DILocation(line: 66, column: 7, scope: !55)
!87 = !DILocation(line: 66, column: 8, scope: !55)
!88 = !DILocation(line: 66, column: 5, scope: !55)
!89 = !DILocation(line: 66, column: 11, scope: !55)
!90 = !DILocation(line: 64, column: 1, scope: !55)
!91 = distinct !{!91, !90, !92}
!92 = !DILocation(line: 64, column: 39, scope: !55)
!93 = !DILocation(line: 66, column: 17, scope: !55)
!94 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 65, type: !56, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!95 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !94, type: !58, flags: DIFlagArtificial)
!96 = !DILocation(line: 0, scope: !94)
!97 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !94, type: !58, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: "len", arg: 3, scope: !94, type: !62, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: "a", arg: 4, scope: !94, type: !63, flags: DIFlagArtificial)
!100 = !DILocation(line: 65, column: 3, scope: !94)
!101 = !{!102}
!102 = !{i64 2, i64 -1, i64 -1, i1 true}
