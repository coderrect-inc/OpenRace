; ModuleID = 'DRB154-missinglock3-orig-gpu-no.c'
source_filename = "DRB154-missinglock3-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.omp_lock_t = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [47 x i8] c";DRB154-missinglock3-orig-gpu-no.c;main;24;3;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@2 = private unnamed_addr constant [48 x i8] c";DRB154-missinglock3-orig-gpu-no.c;main;24;48;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%d\0A \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %lck = alloca %struct.omp_lock_t, align 8
  %var = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t* %lck, metadata !11, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %var, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 0, i32* %var, align 4, !dbg !20
  call void @omp_init_lock(%struct.omp_lock_t* %lck), !dbg !21
  call void @__omp_offloading_10307_2ec41b3_main_l23(i32* %var, %struct.omp_lock_t* %lck) #6, !dbg !22
  call void @omp_destroy_lock(%struct.omp_lock_t* %lck), !dbg !24
  %0 = load i32, i32* %var, align 4, !dbg !25
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %0), !dbg !26
  ret i32 0, !dbg !27
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @omp_init_lock(%struct.omp_lock_t*) #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41b3_main_l23_debug__(i32* dereferenceable(4) %var, %struct.omp_lock_t* dereferenceable(8) %lck) #3 !dbg !28 {
entry:
  %var.addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !33, metadata !DIExpression()), !dbg !34
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !35, metadata !DIExpression()), !dbg !36
  %2 = load i32*, i32** %var.addr, align 8, !dbg !37
  %3 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !37
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !37
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !37
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, %struct.omp_lock_t*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), %struct.omp_lock_t* %3, i32* %2), !dbg !37
  ret void, !dbg !38
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #3 !dbg !39 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  %var1 = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !46, metadata !DIExpression()), !dbg !47
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !48, metadata !DIExpression()), !dbg !47
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !49, metadata !DIExpression()), !dbg !50
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !51, metadata !DIExpression()), !dbg !52
  %2 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !53
  %3 = load i32*, i32** %var.addr, align 8, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %var1, metadata !54, metadata !DIExpression()), !dbg !47
  store i32 0, i32* %var1, align 4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !56, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !57, metadata !DIExpression()), !dbg !47
  store i32 0, i32* %.omp.lb, align 4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !59, metadata !DIExpression()), !dbg !47
  store i32 99, i32* %.omp.ub, align 4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !60, metadata !DIExpression()), !dbg !47
  store i32 1, i32* %.omp.stride, align 4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !61, metadata !DIExpression()), !dbg !47
  store i32 0, i32* %.omp.is_last, align 4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %i, metadata !62, metadata !DIExpression()), !dbg !47
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !53
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !53
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !53
  %6 = load i32, i32* %5, align 4, !dbg !53
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 92, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !53
  %7 = load i32, i32* %.omp.ub, align 4, !dbg !58
  %cmp = icmp sgt i32 %7, 99, !dbg !58
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !58

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !58

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %.omp.ub, align 4, !dbg !58
  br label %cond.end, !dbg !58

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %8, %cond.false ], !dbg !58
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !58
  %9 = load i32, i32* %.omp.lb, align 4, !dbg !58
  store i32 %9, i32* %.omp.iv, align 4, !dbg !58
  br label %omp.inner.for.cond, !dbg !53

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %10 = load i32, i32* %.omp.iv, align 4, !dbg !58
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !58
  %cmp2 = icmp sle i32 %10, %11, !dbg !53
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !53

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !58
  %mul = mul nsw i32 %12, 1, !dbg !63
  %add = add nsw i32 0, %mul, !dbg !63
  store i32 %add, i32* %i, align 4, !dbg !63
  call void @omp_set_lock(%struct.omp_lock_t* %2), !dbg !64
  %13 = load i32, i32* %var1, align 4, !dbg !66
  %inc = add nsw i32 %13, 1, !dbg !66
  store i32 %inc, i32* %var1, align 4, !dbg !66
  call void @omp_unset_lock(%struct.omp_lock_t* %2), !dbg !67
  br label %omp.body.continue, !dbg !68

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !69

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !58
  %add3 = add nsw i32 %14, 1, !dbg !53
  store i32 %add3, i32* %.omp.iv, align 4, !dbg !53
  br label %omp.inner.for.cond, !dbg !69, !llvm.loop !70

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !69

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !69
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1, i32 0, i32 0), i8** %15, align 8, !dbg !69
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !69
  %16 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !69
  %17 = bitcast i32* %var1 to i8*, !dbg !69
  store i8* %17, i8** %16, align 8, !dbg !69
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !69
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @2, i32 0, i32 0), i8** %18, align 8, !dbg !69
  %19 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !69
  %20 = call i32 @__kmpc_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 1, i64 8, i8* %19, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !69
  switch i32 %20, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !69

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %21 = load i32, i32* %3, align 4, !dbg !55
  %22 = load i32, i32* %var1, align 4, !dbg !55
  %add4 = add nsw i32 %21, %22, !dbg !72
  store i32 %add4, i32* %3, align 4, !dbg !72
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %6, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !69
  br label %.omp.reduction.default, !dbg !69

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %23 = load i32, i32* %var1, align 4, !dbg !55
  %24 = atomicrmw add i32* %3, i32 %23 monotonic, !dbg !69
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %6, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !69
  br label %.omp.reduction.default, !dbg !69

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %omp.loop.exit
  ret void, !dbg !73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @omp_set_lock(%struct.omp_lock_t*) #2

declare dso_local void @omp_unset_lock(%struct.omp_lock_t*) #2

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #5 !dbg !74 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !76, metadata !DIExpression()), !dbg !77
  store i8* %1, i8** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !78, metadata !DIExpression()), !dbg !77
  %2 = load i8*, i8** %.addr, align 8, !dbg !79
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !79
  %4 = load i8*, i8** %.addr1, align 8, !dbg !79
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !79
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !79
  %7 = load i8*, i8** %6, align 8, !dbg !79
  %8 = bitcast i8* %7 to i32*, !dbg !79
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !79
  %10 = load i8*, i8** %9, align 8, !dbg !79
  %11 = bitcast i8* %10 to i32*, !dbg !79
  %12 = load i32, i32* %11, align 4, !dbg !80
  %13 = load i32, i32* %8, align 4, !dbg !80
  %add = add nsw i32 %12, %13, !dbg !81
  store i32 %add, i32* %11, align 4, !dbg !81
  ret void, !dbg !80
}

declare dso_local i32 @__kmpc_reduce(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #3 !dbg !82 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !83, metadata !DIExpression()), !dbg !84
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !85, metadata !DIExpression()), !dbg !84
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !86, metadata !DIExpression()), !dbg !84
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !87, metadata !DIExpression()), !dbg !84
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !88
  %1 = load i32*, i32** %var.addr, align 8, !dbg !88
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !88
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !88
  %4 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !88
  %5 = load i32*, i32** %var.addr, align 8, !dbg !88
  call void @.omp_outlined._debug__(i32* %2, i32* %3, %struct.omp_lock_t* %4, i32* %5) #6, !dbg !88
  ret void, !dbg !88
}

declare !callback !89 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41b3_main_l23(i32* dereferenceable(4) %var, %struct.omp_lock_t* dereferenceable(8) %lck) #3 !dbg !91 {
entry:
  %var.addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !92, metadata !DIExpression()), !dbg !93
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !94, metadata !DIExpression()), !dbg !93
  %0 = load i32*, i32** %var.addr, align 8, !dbg !95
  %1 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !95
  %2 = load i32*, i32** %var.addr, align 8, !dbg !95
  %3 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !95
  call void @__omp_offloading_10307_2ec41b3_main_l23_debug__(i32* %2, %struct.omp_lock_t* %3) #6, !dbg !95
  ret void, !dbg !95
}

declare dso_local void @omp_destroy_lock(%struct.omp_lock_t*) #2

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB154-missinglock3-orig-gpu-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !8, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "lck", scope: !7, file: !1, line: 19, type: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "omp_lock_t", file: !13, line: 84, baseType: !14)
!13 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "omp_lock_t", file: !13, line: 82, size: 64, elements: !15)
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_lk", scope: !14, file: !13, line: 83, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DILocation(line: 19, column: 14, scope: !7)
!19 = !DILocalVariable(name: "var", scope: !7, file: !1, line: 20, type: !10)
!20 = !DILocation(line: 20, column: 7, scope: !7)
!21 = !DILocation(line: 21, column: 3, scope: !7)
!22 = !DILocation(line: 23, column: 3, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 23, column: 3)
!24 = !DILocation(line: 31, column: 3, scope: !7)
!25 = !DILocation(line: 32, column: 18, scope: !7)
!26 = !DILocation(line: 32, column: 3, scope: !7)
!27 = !DILocation(line: 33, column: 3, scope: !7)
!28 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41b3_main_l23_debug__", scope: !1, file: !1, line: 24, type: !29, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !32}
!31 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!33 = !DILocalVariable(name: "var", arg: 1, scope: !28, file: !1, line: 20, type: !31)
!34 = !DILocation(line: 20, column: 7, scope: !28)
!35 = !DILocalVariable(name: "lck", arg: 2, scope: !28, file: !1, line: 19, type: !32)
!36 = !DILocation(line: 19, column: 14, scope: !28)
!37 = !DILocation(line: 24, column: 3, scope: !28)
!38 = !DILocation(line: 24, column: 48, scope: !28)
!39 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 25, type: !40, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !42, !32, !31}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!46 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !39, type: !42, flags: DIFlagArtificial)
!47 = !DILocation(line: 0, scope: !39)
!48 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !39, type: !42, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: "lck", arg: 3, scope: !39, file: !1, line: 19, type: !32)
!50 = !DILocation(line: 19, column: 14, scope: !39)
!51 = !DILocalVariable(name: "var", arg: 4, scope: !39, file: !1, line: 20, type: !31)
!52 = !DILocation(line: 20, column: 7, scope: !39)
!53 = !DILocation(line: 25, column: 3, scope: !39)
!54 = !DILocalVariable(name: "var", scope: !39, type: !10, flags: DIFlagArtificial)
!55 = !DILocation(line: 24, column: 44, scope: !39)
!56 = !DILocalVariable(name: ".omp.iv", scope: !39, type: !10, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: ".omp.lb", scope: !39, type: !10, flags: DIFlagArtificial)
!58 = !DILocation(line: 25, column: 8, scope: !39)
!59 = !DILocalVariable(name: ".omp.ub", scope: !39, type: !10, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".omp.stride", scope: !39, type: !10, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".omp.is_last", scope: !39, type: !10, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "i", scope: !39, type: !10, flags: DIFlagArtificial)
!63 = !DILocation(line: 25, column: 24, scope: !39)
!64 = !DILocation(line: 26, column: 5, scope: !65)
!65 = distinct !DILexicalBlock(scope: !39, file: !1, line: 25, column: 28)
!66 = !DILocation(line: 27, column: 8, scope: !65)
!67 = !DILocation(line: 28, column: 5, scope: !65)
!68 = !DILocation(line: 29, column: 3, scope: !65)
!69 = !DILocation(line: 24, column: 3, scope: !39)
!70 = distinct !{!70, !69, !71}
!71 = !DILocation(line: 24, column: 48, scope: !39)
!72 = !DILocation(line: 24, column: 42, scope: !39)
!73 = !DILocation(line: 29, column: 3, scope: !39)
!74 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 24, type: !75, scopeLine: 24, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!75 = !DISubroutineType(types: !2)
!76 = !DILocalVariable(arg: 1, scope: !74, type: !17, flags: DIFlagArtificial)
!77 = !DILocation(line: 0, scope: !74)
!78 = !DILocalVariable(arg: 2, scope: !74, type: !17, flags: DIFlagArtificial)
!79 = !DILocation(line: 24, column: 48, scope: !74)
!80 = !DILocation(line: 24, column: 44, scope: !74)
!81 = !DILocation(line: 24, column: 42, scope: !74)
!82 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 25, type: !40, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!83 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !82, type: !42, flags: DIFlagArtificial)
!84 = !DILocation(line: 0, scope: !82)
!85 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !82, type: !42, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: "lck", arg: 3, scope: !82, type: !32, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: "var", arg: 4, scope: !82, type: !31, flags: DIFlagArtificial)
!88 = !DILocation(line: 25, column: 3, scope: !82)
!89 = !{!90}
!90 = !{i64 2, i64 -1, i64 -1, i1 true}
!91 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41b3_main_l23", scope: !1, file: !1, line: 24, type: !29, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!92 = !DILocalVariable(name: "var", arg: 1, scope: !91, type: !31, flags: DIFlagArtificial)
!93 = !DILocation(line: 0, scope: !91)
!94 = !DILocalVariable(name: "lck", arg: 2, scope: !91, type: !32, flags: DIFlagArtificial)
!95 = !DILocation(line: 24, column: 3, scope: !91)
