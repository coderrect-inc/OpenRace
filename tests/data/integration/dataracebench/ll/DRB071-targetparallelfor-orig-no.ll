; ModuleID = 'DRB071-targetparallelfor-orig-no.c'
source_filename = "DRB071-targetparallelfor-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [48 x i8] c";DRB071-targetparallelfor-orig-no.c;main;60;1;;\00", align 1
@2 = private unnamed_addr constant [49 x i8] c";DRB071-targetparallelfor-orig-no.c;main;60;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %len.casted = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %len, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 1000, i32* %len, align 4, !dbg !21
  %0 = load i32, i32* %len, align 4, !dbg !22
  %1 = zext i32 %0 to i64, !dbg !23
  %2 = call i8* @llvm.stacksave(), !dbg !23
  store i8* %2, i8** %saved_stack, align 8, !dbg !23
  %vla = alloca i32, i64 %1, align 16, !dbg !23
  store i64 %1, i64* %__vla_expr0, align 8, !dbg !23
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !24, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !27, metadata !DIExpression()), !dbg !31
  store i32 0, i32* %i, align 4, !dbg !32
  br label %for.cond, !dbg !34

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !35
  %4 = load i32, i32* %len, align 4, !dbg !37
  %cmp = icmp slt i32 %3, %4, !dbg !38
  br i1 %cmp, label %for.body, label %for.end, !dbg !39

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !40
  %6 = load i32, i32* %i, align 4, !dbg !41
  %idxprom = sext i32 %6 to i64, !dbg !42
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !42
  store i32 %5, i32* %arrayidx, align 4, !dbg !43
  br label %for.inc, !dbg !42

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !44
  %inc = add nsw i32 %7, 1, !dbg !44
  store i32 %inc, i32* %i, align 4, !dbg !44
  br label %for.cond, !dbg !45, !llvm.loop !46

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %len, align 4, !dbg !48
  %conv = bitcast i64* %len.casted to i32*, !dbg !48
  store i32 %8, i32* %conv, align 4, !dbg !48
  %9 = load i64, i64* %len.casted, align 8, !dbg !48
  call void @__omp_offloading_10307_2ec4160_main_l59(i64 %9, i64 %1, i32* %vla) #2, !dbg !49
  store i32 0, i32* %retval, align 4, !dbg !51
  %10 = load i8*, i8** %saved_stack, align 8, !dbg !52
  call void @llvm.stackrestore(i8* %10), !dbg !52
  %11 = load i32, i32* %retval, align 4, !dbg !52
  ret i32 %11, !dbg !52
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec4160_main_l59_debug__(i32 %len, i64 %vla, i32* dereferenceable(4) %a) #3 !dbg !53 {
entry:
  %len.addr = alloca i32, align 4
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !57, metadata !DIExpression()), !dbg !58
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !59, metadata !DIExpression()), !dbg !60
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !61, metadata !DIExpression()), !dbg !62
  %2 = load i64, i64* %vla.addr, align 8, !dbg !63
  %3 = load i32*, i32** %a.addr, align 8, !dbg !63
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !63
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !63
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len.addr, i64 %2, i32* %3), !dbg !63
  ret void, !dbg !64
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a) #3 !dbg !65 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !72, metadata !DIExpression()), !dbg !73
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !74, metadata !DIExpression()), !dbg !73
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !75, metadata !DIExpression()), !dbg !76
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !77, metadata !DIExpression()), !dbg !73
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !78, metadata !DIExpression()), !dbg !79
  %2 = load i32*, i32** %len.addr, align 8, !dbg !80
  %3 = load i64, i64* %vla.addr, align 8, !dbg !80
  %4 = load i32*, i32** %a.addr, align 8, !dbg !80
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !81, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !82, metadata !DIExpression()), !dbg !73
  %5 = load i32, i32* %2, align 4, !dbg !83
  store i32 %5, i32* %.capture_expr., align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !82, metadata !DIExpression()), !dbg !73
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !83
  %sub = sub nsw i32 %6, 0, !dbg !80
  %sub2 = sub nsw i32 %sub, 1, !dbg !80
  %add = add nsw i32 %sub2, 1, !dbg !80
  %div = sdiv i32 %add, 1, !dbg !80
  %sub3 = sub nsw i32 %div, 1, !dbg !80
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !80
  call void @llvm.dbg.declare(metadata i32* %i, metadata !84, metadata !DIExpression()), !dbg !73
  store i32 0, i32* %i, align 4, !dbg !85
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !83
  %cmp = icmp slt i32 0, %7, !dbg !80
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !80

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !86, metadata !DIExpression()), !dbg !73
  store i32 0, i32* %.omp.lb, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !88, metadata !DIExpression()), !dbg !73
  %8 = load i32, i32* %.capture_expr.1, align 4, !dbg !80
  store i32 %8, i32* %.omp.ub, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !89, metadata !DIExpression()), !dbg !73
  store i32 1, i32* %.omp.stride, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !90, metadata !DIExpression()), !dbg !73
  store i32 0, i32* %.omp.is_last, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !84, metadata !DIExpression()), !dbg !73
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !80
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !80
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !80
  %11 = load i32, i32* %10, align 4, !dbg !80
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !80
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !87
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !80
  %cmp5 = icmp sgt i32 %12, %13, !dbg !87
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !87

cond.true:                                        ; preds = %omp.precond.then
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !80
  br label %cond.end, !dbg !87

cond.false:                                       ; preds = %omp.precond.then
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !87
  br label %cond.end, !dbg !87

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ], !dbg !87
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !87
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !87
  store i32 %16, i32* %.omp.iv, align 4, !dbg !87
  br label %omp.inner.for.cond, !dbg !80

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !87
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !87
  %cmp6 = icmp sle i32 %17, %18, !dbg !80
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !80

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !87
  %mul = mul nsw i32 %19, 1, !dbg !85
  %add7 = add nsw i32 0, %mul, !dbg !85
  store i32 %add7, i32* %i4, align 4, !dbg !85
  %20 = load i32, i32* %i4, align 4, !dbg !91
  %idxprom = sext i32 %20 to i64, !dbg !92
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !92
  %21 = load i32, i32* %arrayidx, align 4, !dbg !92
  %add8 = add nsw i32 %21, 1, !dbg !93
  %22 = load i32, i32* %i4, align 4, !dbg !94
  %idxprom9 = sext i32 %22 to i64, !dbg !95
  %arrayidx10 = getelementptr inbounds i32, i32* %4, i64 %idxprom9, !dbg !95
  store i32 %add8, i32* %arrayidx10, align 4, !dbg !96
  br label %omp.body.continue, !dbg !95

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !97

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !87
  %add11 = add nsw i32 %23, 1, !dbg !80
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !80
  br label %omp.inner.for.cond, !dbg !97, !llvm.loop !98

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !97

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !97
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2, i32 0, i32 0), i8** %24, align 8, !dbg !97
  %25 = load i32*, i32** %.global_tid..addr, align 8, !dbg !97
  %26 = load i32, i32* %25, align 4, !dbg !97
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %26), !dbg !97
  br label %omp.precond.end, !dbg !97

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a) #3 !dbg !101 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !102, metadata !DIExpression()), !dbg !103
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !104, metadata !DIExpression()), !dbg !103
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !105, metadata !DIExpression()), !dbg !103
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !106, metadata !DIExpression()), !dbg !103
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !107, metadata !DIExpression()), !dbg !103
  %0 = load i32*, i32** %len.addr, align 8, !dbg !108
  %1 = load i64, i64* %vla.addr, align 8, !dbg !108
  %2 = load i32*, i32** %a.addr, align 8, !dbg !108
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !108
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !108
  %5 = load i32*, i32** %len.addr, align 8, !dbg !108
  %6 = load i32*, i32** %a.addr, align 8, !dbg !108
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i64 %1, i32* %6) #2, !dbg !108
  ret void, !dbg !108
}

declare !callback !109 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec4160_main_l59(i64 %len, i64 %vla, i32* dereferenceable(4) %a) #3 !dbg !111 {
entry:
  %len.addr = alloca i64, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !114, metadata !DIExpression()), !dbg !115
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !116, metadata !DIExpression()), !dbg !115
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !117, metadata !DIExpression()), !dbg !115
  %conv = bitcast i64* %len.addr to i32*, !dbg !118
  %0 = load i64, i64* %vla.addr, align 8, !dbg !118
  %1 = load i32*, i32** %a.addr, align 8, !dbg !118
  %2 = load i32, i32* %conv, align 8, !dbg !118
  %3 = load i32*, i32** %a.addr, align 8, !dbg !118
  call void @__omp_offloading_10307_2ec4160_main_l59_debug__(i32 %2, i64 %0, i32* %3) #2, !dbg !118
  ret void, !dbg !118
}

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB071-targetparallelfor-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 50, type: !8, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 50, type: !10)
!15 = !DILocation(line: 50, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 50, type: !11)
!17 = !DILocation(line: 50, column: 26, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 52, type: !10)
!19 = !DILocation(line: 52, column: 7, scope: !7)
!20 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 53, type: !10)
!21 = !DILocation(line: 53, column: 7, scope: !7)
!22 = !DILocation(line: 54, column: 9, scope: !7)
!23 = !DILocation(line: 54, column: 3, scope: !7)
!24 = !DILocalVariable(name: "__vla_expr0", scope: !7, type: !25, flags: DIFlagArtificial)
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DILocation(line: 0, scope: !7)
!27 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 54, type: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: !24)
!31 = !DILocation(line: 54, column: 7, scope: !7)
!32 = !DILocation(line: 56, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !7, file: !1, line: 56, column: 3)
!34 = !DILocation(line: 56, column: 8, scope: !33)
!35 = !DILocation(line: 56, column: 13, scope: !36)
!36 = distinct !DILexicalBlock(scope: !33, file: !1, line: 56, column: 3)
!37 = !DILocation(line: 56, column: 15, scope: !36)
!38 = !DILocation(line: 56, column: 14, scope: !36)
!39 = !DILocation(line: 56, column: 3, scope: !33)
!40 = !DILocation(line: 57, column: 11, scope: !36)
!41 = !DILocation(line: 57, column: 7, scope: !36)
!42 = !DILocation(line: 57, column: 5, scope: !36)
!43 = !DILocation(line: 57, column: 9, scope: !36)
!44 = !DILocation(line: 56, column: 21, scope: !36)
!45 = !DILocation(line: 56, column: 3, scope: !36)
!46 = distinct !{!46, !39, !47}
!47 = !DILocation(line: 57, column: 11, scope: !33)
!48 = !DILocation(line: 59, column: 1, scope: !7)
!49 = !DILocation(line: 59, column: 1, scope: !50)
!50 = distinct !DILexicalBlock(scope: !7, file: !1, line: 59, column: 1)
!51 = !DILocation(line: 64, column: 3, scope: !7)
!52 = !DILocation(line: 65, column: 1, scope: !7)
!53 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec4160_main_l59_debug__", scope: !1, file: !1, line: 60, type: !54, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !10, !25, !56}
!56 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!57 = !DILocalVariable(name: "len", arg: 1, scope: !53, file: !1, line: 53, type: !10)
!58 = !DILocation(line: 53, column: 7, scope: !53)
!59 = !DILocalVariable(name: "vla", arg: 2, scope: !53, type: !25, flags: DIFlagArtificial)
!60 = !DILocation(line: 0, scope: !53)
!61 = !DILocalVariable(name: "a", arg: 3, scope: !53, file: !1, line: 54, type: !56)
!62 = !DILocation(line: 54, column: 7, scope: !53)
!63 = !DILocation(line: 60, column: 1, scope: !53)
!64 = !DILocation(line: 60, column: 25, scope: !53)
!65 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 61, type: !66, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68, !68, !56, !25, !56}
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!72 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !65, type: !68, flags: DIFlagArtificial)
!73 = !DILocation(line: 0, scope: !65)
!74 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !65, type: !68, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "len", arg: 3, scope: !65, file: !1, line: 53, type: !56)
!76 = !DILocation(line: 53, column: 7, scope: !65)
!77 = !DILocalVariable(name: "vla", arg: 4, scope: !65, type: !25, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: "a", arg: 5, scope: !65, file: !1, line: 54, type: !56)
!79 = !DILocation(line: 54, column: 7, scope: !65)
!80 = !DILocation(line: 61, column: 3, scope: !65)
!81 = !DILocalVariable(name: ".omp.iv", scope: !65, type: !10, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".capture_expr.", scope: !65, type: !10, flags: DIFlagArtificial)
!83 = !DILocation(line: 61, column: 15, scope: !65)
!84 = !DILocalVariable(name: "i", scope: !65, type: !10, flags: DIFlagArtificial)
!85 = !DILocation(line: 61, column: 19, scope: !65)
!86 = !DILocalVariable(name: ".omp.lb", scope: !65, type: !10, flags: DIFlagArtificial)
!87 = !DILocation(line: 61, column: 8, scope: !65)
!88 = !DILocalVariable(name: ".omp.ub", scope: !65, type: !10, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".omp.stride", scope: !65, type: !10, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".omp.is_last", scope: !65, type: !10, flags: DIFlagArtificial)
!91 = !DILocation(line: 62, column: 12, scope: !65)
!92 = !DILocation(line: 62, column: 10, scope: !65)
!93 = !DILocation(line: 62, column: 14, scope: !65)
!94 = !DILocation(line: 62, column: 7, scope: !65)
!95 = !DILocation(line: 62, column: 5, scope: !65)
!96 = !DILocation(line: 62, column: 9, scope: !65)
!97 = !DILocation(line: 60, column: 1, scope: !65)
!98 = distinct !{!98, !97, !99}
!99 = !DILocation(line: 60, column: 25, scope: !65)
!100 = !DILocation(line: 62, column: 15, scope: !65)
!101 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 61, type: !66, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!102 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !101, type: !68, flags: DIFlagArtificial)
!103 = !DILocation(line: 0, scope: !101)
!104 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !101, type: !68, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: "len", arg: 3, scope: !101, type: !56, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: "vla", arg: 4, scope: !101, type: !25, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: "a", arg: 5, scope: !101, type: !56, flags: DIFlagArtificial)
!108 = !DILocation(line: 61, column: 3, scope: !101)
!109 = !{!110}
!110 = !{i64 2, i64 -1, i64 -1, i1 true}
!111 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec4160_main_l59", scope: !1, file: !1, line: 60, type: !112, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !25, !25, !56}
!114 = !DILocalVariable(name: "len", arg: 1, scope: !111, type: !25, flags: DIFlagArtificial)
!115 = !DILocation(line: 0, scope: !111)
!116 = !DILocalVariable(name: "vla", arg: 2, scope: !111, type: !25, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: "a", arg: 3, scope: !111, type: !56, flags: DIFlagArtificial)
!118 = !DILocation(line: 60, column: 1, scope: !111)
