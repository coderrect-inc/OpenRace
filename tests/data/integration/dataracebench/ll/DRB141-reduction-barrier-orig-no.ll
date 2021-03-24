; ModuleID = 'DRB141-reduction-barrier-orig-no.c'
source_filename = "DRB141-reduction-barrier-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [48 x i8] c";DRB141-reduction-barrier-orig-no.c;main;25;5;;\00", align 1
@2 = private unnamed_addr constant [48 x i8] c";DRB141-reduction-barrier-orig-no.c;main;28;5;;\00", align 1
@3 = private unnamed_addr constant [48 x i8] c";DRB141-reduction-barrier-orig-no.c;main;30;5;;\00", align 1
@4 = private unnamed_addr constant [49 x i8] c";DRB141-reduction-barrier-orig-no.c;main;30;35;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@5 = private unnamed_addr constant [48 x i8] c";DRB141-reduction-barrier-orig-no.c;main;35;5;;\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Sum is %d\0A\00", align 1
@6 = private unnamed_addr constant [48 x i8] c";DRB141-reduction-barrier-orig-no.c;main;23;3;;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %i, metadata !13, metadata !DIExpression()), !dbg !14
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !15
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @6, i32 0, i32 0), i8** %2, align 8, !dbg !15
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %a), !dbg !15
  ret i32 0, !dbg !16
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %a) #2 !dbg !17 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %a1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !25, metadata !DIExpression()), !dbg !26
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !27, metadata !DIExpression()), !dbg !26
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !28, metadata !DIExpression()), !dbg !29
  %2 = load i32*, i32** %a.addr, align 8, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %i, metadata !31, metadata !DIExpression()), !dbg !26
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !32
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !32
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !32
  %5 = load i32, i32* %4, align 4, !dbg !32
  %6 = call i32 @__kmpc_master(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !32
  %7 = icmp ne i32 %6, 0, !dbg !32
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !32

omp_if.then:                                      ; preds = %entry
  store i32 0, i32* %2, align 4, !dbg !34
  call void @__kmpc_end_master(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !36
  br label %omp_if.end, !dbg !36

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !37
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @2, i32 0, i32 0), i8** %8, align 8, !dbg !37
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !38, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !41, metadata !DIExpression()), !dbg !40
  store i32 0, i32* %.omp.lb, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !43, metadata !DIExpression()), !dbg !40
  store i32 9, i32* %.omp.ub, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !44, metadata !DIExpression()), !dbg !40
  store i32 1, i32* %.omp.stride, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !45, metadata !DIExpression()), !dbg !40
  store i32 0, i32* %.omp.is_last, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %a1, metadata !46, metadata !DIExpression()), !dbg !40
  store i32 0, i32* %a1, align 4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %i2, metadata !48, metadata !DIExpression()), !dbg !40
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !49
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @3, i32 0, i32 0), i8** %9, align 8, !dbg !49
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !49
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !42
  %cmp = icmp sgt i32 %10, 9, !dbg !42
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !42

cond.true:                                        ; preds = %omp_if.end
  br label %cond.end, !dbg !42

cond.false:                                       ; preds = %omp_if.end
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !42
  br label %cond.end, !dbg !42

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 9, %cond.true ], [ %11, %cond.false ], !dbg !42
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !42
  %12 = load i32, i32* %.omp.lb, align 4, !dbg !42
  store i32 %12, i32* %.omp.iv, align 4, !dbg !42
  br label %omp.inner.for.cond, !dbg !49

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !42
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !42
  %cmp3 = icmp sle i32 %13, %14, !dbg !50
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !49

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !42
  %mul = mul nsw i32 %15, 1, !dbg !51
  %add = add nsw i32 0, %mul, !dbg !51
  store i32 %add, i32* %i2, align 4, !dbg !51
  %16 = load i32, i32* %i2, align 4, !dbg !52
  %17 = load i32, i32* %a1, align 4, !dbg !54
  %add4 = add nsw i32 %17, %16, !dbg !54
  store i32 %add4, i32* %a1, align 4, !dbg !54
  br label %omp.body.continue, !dbg !55

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !56

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !42
  %add5 = add nsw i32 %18, 1, !dbg !50
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !50
  br label %omp.inner.for.cond, !dbg !56, !llvm.loop !57

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !56

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !56
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @4, i32 0, i32 0), i8** %19, align 8, !dbg !56
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !56
  %20 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !56
  %21 = bitcast i32* %a1 to i8*, !dbg !56
  store i8* %21, i8** %20, align 8, !dbg !56
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !56
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @4, i32 0, i32 0), i8** %22, align 8, !dbg !56
  %23 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !56
  %24 = call i32 @__kmpc_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 1, i64 8, i8* %23, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !56
  switch i32 %24, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !56

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %25 = load i32, i32* %2, align 4, !dbg !47
  %26 = load i32, i32* %a1, align 4, !dbg !47
  %add6 = add nsw i32 %25, %26, !dbg !59
  store i32 %add6, i32* %2, align 4, !dbg !59
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %5, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !56
  br label %.omp.reduction.default, !dbg !56

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %27 = load i32, i32* %a1, align 4, !dbg !47
  %28 = atomicrmw add i32* %2, i32 %27 monotonic, !dbg !56
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %5, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !56
  br label %.omp.reduction.default, !dbg !56

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %omp.loop.exit
  %29 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !58
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @3, i32 0, i32 0), i8** %29, align 8, !dbg !58
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !58
  %30 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !60
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @5, i32 0, i32 0), i8** %30, align 8, !dbg !60
  %31 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !60
  %32 = icmp ne i32 %31, 0, !dbg !60
  br i1 %32, label %omp_if.then7, label %omp_if.end8, !dbg !60

omp_if.then7:                                     ; preds = %.omp.reduction.default
  %33 = load i32, i32* %2, align 4, !dbg !61
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %33), !dbg !63
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !63
  br label %omp_if.end8, !dbg !63

omp_if.end8:                                      ; preds = %omp_if.then7, %.omp.reduction.default
  %34 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !64
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @5, i32 0, i32 0), i8** %34, align 8, !dbg !64
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !64
  ret void, !dbg !65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_end_master(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_master(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #4 !dbg !66 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !68, metadata !DIExpression()), !dbg !70
  store i8* %1, i8** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !71, metadata !DIExpression()), !dbg !70
  %2 = load i8*, i8** %.addr, align 8, !dbg !72
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !72
  %4 = load i8*, i8** %.addr1, align 8, !dbg !72
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !72
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !72
  %7 = load i8*, i8** %6, align 8, !dbg !72
  %8 = bitcast i8* %7 to i32*, !dbg !72
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !72
  %10 = load i8*, i8** %9, align 8, !dbg !72
  %11 = bitcast i8* %10 to i32*, !dbg !72
  %12 = load i32, i32* %11, align 4, !dbg !73
  %13 = load i32, i32* %8, align 4, !dbg !73
  %add = add nsw i32 %12, %13, !dbg !74
  store i32 %add, i32* %11, align 4, !dbg !74
  ret void, !dbg !73
}

declare dso_local i32 @__kmpc_reduce(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %a) #2 !dbg !75 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !76, metadata !DIExpression()), !dbg !77
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !78, metadata !DIExpression()), !dbg !77
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !79, metadata !DIExpression()), !dbg !77
  %0 = load i32*, i32** %a.addr, align 8, !dbg !80
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !80
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !80
  %3 = load i32*, i32** %a.addr, align 8, !dbg !80
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #6, !dbg !80
  ret void, !dbg !80
}

declare !callback !81 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB141-reduction-barrier-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !8, scopeLine: 20, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 21, type: !10)
!12 = !DILocation(line: 21, column: 7, scope: !7)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 21, type: !10)
!14 = !DILocation(line: 21, column: 10, scope: !7)
!15 = !DILocation(line: 23, column: 3, scope: !7)
!16 = !DILocation(line: 39, column: 3, scope: !7)
!17 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 24, type: !18, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !20, !24}
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!24 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!25 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !17, type: !20, flags: DIFlagArtificial)
!26 = !DILocation(line: 0, scope: !17)
!27 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !17, type: !20, flags: DIFlagArtificial)
!28 = !DILocalVariable(name: "a", arg: 3, scope: !17, file: !1, line: 21, type: !24)
!29 = !DILocation(line: 21, column: 7, scope: !17)
!30 = !DILocation(line: 24, column: 3, scope: !17)
!31 = !DILocalVariable(name: "i", scope: !17, type: !10, flags: DIFlagArtificial)
!32 = !DILocation(line: 25, column: 5, scope: !33)
!33 = distinct !DILexicalBlock(scope: !17, file: !1, line: 24, column: 3)
!34 = !DILocation(line: 26, column: 7, scope: !35)
!35 = distinct !DILexicalBlock(scope: !33, file: !1, line: 25, column: 5)
!36 = !DILocation(line: 26, column: 5, scope: !35)
!37 = !DILocation(line: 28, column: 5, scope: !33)
!38 = !DILocalVariable(name: ".omp.iv", scope: !39, type: !10, flags: DIFlagArtificial)
!39 = distinct !DILexicalBlock(scope: !33, file: !1, line: 30, column: 5)
!40 = !DILocation(line: 0, scope: !39)
!41 = !DILocalVariable(name: ".omp.lb", scope: !39, type: !10, flags: DIFlagArtificial)
!42 = !DILocation(line: 31, column: 10, scope: !39)
!43 = !DILocalVariable(name: ".omp.ub", scope: !39, type: !10, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".omp.stride", scope: !39, type: !10, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".omp.is_last", scope: !39, type: !10, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "a", scope: !39, type: !10, flags: DIFlagArtificial)
!47 = !DILocation(line: 30, column: 33, scope: !39)
!48 = !DILocalVariable(name: "i", scope: !39, type: !10, flags: DIFlagArtificial)
!49 = !DILocation(line: 30, column: 5, scope: !33)
!50 = !DILocation(line: 31, column: 5, scope: !39)
!51 = !DILocation(line: 31, column: 21, scope: !39)
!52 = !DILocation(line: 32, column: 12, scope: !53)
!53 = distinct !DILexicalBlock(scope: !39, file: !1, line: 31, column: 25)
!54 = !DILocation(line: 32, column: 9, scope: !53)
!55 = !DILocation(line: 33, column: 5, scope: !53)
!56 = !DILocation(line: 30, column: 5, scope: !39)
!57 = distinct !{!57, !56, !58}
!58 = !DILocation(line: 30, column: 35, scope: !39)
!59 = !DILocation(line: 30, column: 31, scope: !39)
!60 = !DILocation(line: 35, column: 5, scope: !33)
!61 = !DILocation(line: 36, column: 27, scope: !62)
!62 = distinct !DILexicalBlock(scope: !33, file: !1, line: 35, column: 5)
!63 = !DILocation(line: 36, column: 5, scope: !62)
!64 = !DILocation(line: 35, column: 23, scope: !62)
!65 = !DILocation(line: 37, column: 3, scope: !17)
!66 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 30, type: !67, scopeLine: 30, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!67 = !DISubroutineType(types: !2)
!68 = !DILocalVariable(arg: 1, scope: !66, type: !69, flags: DIFlagArtificial)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!70 = !DILocation(line: 0, scope: !66)
!71 = !DILocalVariable(arg: 2, scope: !66, type: !69, flags: DIFlagArtificial)
!72 = !DILocation(line: 30, column: 35, scope: !66)
!73 = !DILocation(line: 30, column: 33, scope: !66)
!74 = !DILocation(line: 30, column: 31, scope: !66)
!75 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 24, type: !18, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!76 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !75, type: !20, flags: DIFlagArtificial)
!77 = !DILocation(line: 0, scope: !75)
!78 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !75, type: !20, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: "a", arg: 3, scope: !75, type: !24, flags: DIFlagArtificial)
!80 = !DILocation(line: 24, column: 3, scope: !75)
!81 = !{!82}
!82 = !{i64 2, i64 -1, i64 -1, i1 true}
