; ModuleID = 'integration/dataracebench/DRB016-outputdep-orig-yes.c'
source_filename = "integration/dataracebench/DRB016-outputdep-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [67 x i8] c";integration/dataracebench/DRB016-outputdep-orig-yes.c;main;70;1;;\00", align 1
@a = common dso_local global [100 x i32] zeroinitializer, align 16, !dbg !0
@2 = private unnamed_addr constant [68 x i8] c";integration/dataracebench/DRB016-outputdep-orig-yes.c;main;70;26;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"x=%d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !14 {
entry:
  %retval = alloca i32, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %len to i8*, !dbg !21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %len, metadata !18, metadata !DIExpression()), !dbg !22
  store i32 100, i32* %len, align 4, !dbg !22, !tbaa !23
  %3 = bitcast i32* %i to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !28
  %4 = bitcast i32* %x to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %x, metadata !20, metadata !DIExpression()), !dbg !29
  store i32 10, i32* %x, align 4, !dbg !29, !tbaa !23
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !30
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !30, !tbaa !31
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i32* %x), !dbg !30
  %6 = load i32, i32* %x, align 4, !dbg !34, !tbaa !23
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %6), !dbg !35
  %7 = bitcast i32* %x to i8*, !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #5, !dbg !36
  %8 = bitcast i32* %i to i8*, !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #5, !dbg !36
  %9 = bitcast i32* %len to i8*, !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #5, !dbg !36
  ret i32 0, !dbg !37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %x) #3 !dbg !38 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !47, metadata !DIExpression()), !dbg !59
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !48, metadata !DIExpression()), !dbg !59
  store i32* %len, i32** %len.addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !49, metadata !DIExpression()), !dbg !60
  store i32* %x, i32** %x.addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !50, metadata !DIExpression()), !dbg !61
  %2 = load i32*, i32** %len.addr, align 8, !dbg !62, !tbaa !58
  %3 = load i32*, i32** %x.addr, align 8, !dbg !62, !tbaa !58
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !51, metadata !DIExpression()), !dbg !59
  %5 = bitcast i32* %.capture_expr. to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !52, metadata !DIExpression()), !dbg !59
  %6 = load i32, i32* %2, align 4, !dbg !63, !tbaa !23
  store i32 %6, i32* %.capture_expr., align 4, !dbg !63, !tbaa !23
  %7 = bitcast i32* %.capture_expr.1 to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !52, metadata !DIExpression()), !dbg !59
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !63, !tbaa !23
  %sub = sub nsw i32 %8, 0, !dbg !62
  %sub2 = sub nsw i32 %sub, 1, !dbg !62
  %add = add nsw i32 %sub2, 1, !dbg !62
  %div = sdiv i32 %add, 1, !dbg !62
  %sub3 = sub nsw i32 %div, 1, !dbg !62
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !62, !tbaa !23
  %9 = bitcast i32* %i to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %i, metadata !53, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %i, align 4, !dbg !64, !tbaa !23
  %10 = bitcast i32* %i to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #5, !dbg !62
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !63, !tbaa !23
  %cmp = icmp slt i32 0, %11, !dbg !62
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !62

omp.precond.then:                                 ; preds = %entry
  %12 = bitcast i32* %.omp.lb to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #5, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !54, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %.omp.lb, align 4, !dbg !65, !tbaa !23
  %13 = bitcast i32* %.omp.ub to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #5, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !55, metadata !DIExpression()), !dbg !59
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !62, !tbaa !23
  store i32 %14, i32* %.omp.ub, align 4, !dbg !65, !tbaa !23
  %15 = bitcast i32* %.omp.stride to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #5, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !56, metadata !DIExpression()), !dbg !59
  store i32 1, i32* %.omp.stride, align 4, !dbg !65, !tbaa !23
  %16 = bitcast i32* %.omp.is_last to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #5, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !57, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %.omp.is_last, align 4, !dbg !65, !tbaa !23
  %17 = bitcast i32* %i4 to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #5, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !53, metadata !DIExpression()), !dbg !59
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !62
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @1, i32 0, i32 0), i8** %18, align 8, !dbg !62, !tbaa !31
  %19 = load i32*, i32** %.global_tid..addr, align 8, !dbg !62
  %20 = load i32, i32* %19, align 4, !dbg !62, !tbaa !23
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %20, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !62
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !65, !tbaa !23
  %22 = load i32, i32* %.capture_expr.1, align 4, !dbg !62, !tbaa !23
  %cmp5 = icmp sgt i32 %21, %22, !dbg !65
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !65

cond.true:                                        ; preds = %omp.precond.then
  %23 = load i32, i32* %.capture_expr.1, align 4, !dbg !62, !tbaa !23
  br label %cond.end, !dbg !65

cond.false:                                       ; preds = %omp.precond.then
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !65, !tbaa !23
  br label %cond.end, !dbg !65

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %24, %cond.false ], !dbg !65
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !65, !tbaa !23
  %25 = load i32, i32* %.omp.lb, align 4, !dbg !65, !tbaa !23
  store i32 %25, i32* %.omp.iv, align 4, !dbg !65, !tbaa !23
  br label %omp.inner.for.cond, !dbg !62

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !65, !tbaa !23
  %27 = load i32, i32* %.omp.ub, align 4, !dbg !65, !tbaa !23
  %cmp6 = icmp sle i32 %26, %27, !dbg !62
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !62

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !62

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !65, !tbaa !23
  %mul = mul nsw i32 %28, 1, !dbg !64
  %add7 = add nsw i32 0, %mul, !dbg !64
  store i32 %add7, i32* %i4, align 4, !dbg !64, !tbaa !23
  %29 = load i32, i32* %3, align 4, !dbg !66, !tbaa !23
  %30 = load i32, i32* %i4, align 4, !dbg !68, !tbaa !23
  %idxprom = sext i32 %30 to i64, !dbg !69
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom, !dbg !69
  store i32 %29, i32* %arrayidx, align 4, !dbg !70, !tbaa !23
  %31 = load i32, i32* %i4, align 4, !dbg !71, !tbaa !23
  store i32 %31, i32* %3, align 4, !dbg !72, !tbaa !23
  br label %omp.body.continue, !dbg !73

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !74

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %32 = load i32, i32* %.omp.iv, align 4, !dbg !65, !tbaa !23
  %add8 = add nsw i32 %32, 1, !dbg !62
  store i32 %add8, i32* %.omp.iv, align 4, !dbg !62, !tbaa !23
  br label %omp.inner.for.cond, !dbg !74, !llvm.loop !75

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !74

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %33 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !74
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @2, i32 0, i32 0), i8** %33, align 8, !dbg !74, !tbaa !31
  %34 = load i32*, i32** %.global_tid..addr, align 8, !dbg !74
  %35 = load i32, i32* %34, align 4, !dbg !74, !tbaa !23
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %35), !dbg !74
  %36 = bitcast i32* %i4 to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #5, !dbg !74
  %37 = bitcast i32* %.omp.is_last to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #5, !dbg !74
  %38 = bitcast i32* %.omp.stride to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #5, !dbg !74
  %39 = bitcast i32* %.omp.ub to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #5, !dbg !74
  %40 = bitcast i32* %.omp.lb to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #5, !dbg !74
  br label %omp.precond.end, !dbg !74

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %41 = bitcast i32* %.capture_expr.1 to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #5, !dbg !74
  %42 = bitcast i32* %.capture_expr. to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #5, !dbg !74
  %43 = bitcast i32* %.omp.iv to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #5, !dbg !74
  ret void, !dbg !77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %x) #3 !dbg !78 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !80, metadata !DIExpression()), !dbg !84
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !81, metadata !DIExpression()), !dbg !84
  store i32* %len, i32** %len.addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !82, metadata !DIExpression()), !dbg !84
  store i32* %x, i32** %x.addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !83, metadata !DIExpression()), !dbg !84
  %0 = load i32*, i32** %len.addr, align 8, !dbg !85, !tbaa !58
  %1 = load i32*, i32** %x.addr, align 8, !dbg !85, !tbaa !58
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !85, !tbaa !58
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !85, !tbaa !58
  %4 = load i32*, i32** %len.addr, align 8, !dbg !85, !tbaa !58
  %5 = load i32*, i32** %x.addr, align 8, !dbg !85, !tbaa !58
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #5, !dbg !85
  ret void, !dbg !85
}

declare !callback !86 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 63, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB016-outputdep-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3200, elements: !8)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9}
!9 = !DISubrange(count: 100)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 10.0.1 "}
!14 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 65, type: !15, scopeLine: 66, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{!7}
!17 = !{!18, !19, !20}
!18 = !DILocalVariable(name: "len", scope: !14, file: !3, line: 67, type: !7)
!19 = !DILocalVariable(name: "i", scope: !14, file: !3, line: 68, type: !7)
!20 = !DILocalVariable(name: "x", scope: !14, file: !3, line: 68, type: !7)
!21 = !DILocation(line: 67, column: 3, scope: !14)
!22 = !DILocation(line: 67, column: 7, scope: !14)
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = !DILocation(line: 68, column: 3, scope: !14)
!28 = !DILocation(line: 68, column: 7, scope: !14)
!29 = !DILocation(line: 68, column: 9, scope: !14)
!30 = !DILocation(line: 70, column: 1, scope: !14)
!31 = !{!32, !33, i64 16}
!32 = !{!"ident_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !33, i64 16}
!33 = !{!"any pointer", !25, i64 0}
!34 = !DILocation(line: 76, column: 17, scope: !14)
!35 = !DILocation(line: 76, column: 3, scope: !14)
!36 = !DILocation(line: 78, column: 1, scope: !14)
!37 = !DILocation(line: 77, column: 3, scope: !14)
!38 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 71, type: !39, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !46)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !41, !45, !45}
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!45 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!46 = !{!47, !48, !49, !50, !51, !52, !52, !53, !54, !55, !56, !57, !53}
!47 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !38, type: !41, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !38, type: !41, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: "len", arg: 3, scope: !38, file: !3, line: 67, type: !45)
!50 = !DILocalVariable(name: "x", arg: 4, scope: !38, file: !3, line: 68, type: !45)
!51 = !DILocalVariable(name: ".omp.iv", scope: !38, type: !7, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: ".capture_expr.", scope: !38, type: !7, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: "i", scope: !38, type: !7, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: ".omp.lb", scope: !38, type: !7, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: ".omp.ub", scope: !38, type: !7, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: ".omp.stride", scope: !38, type: !7, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: ".omp.is_last", scope: !38, type: !7, flags: DIFlagArtificial)
!58 = !{!33, !33, i64 0}
!59 = !DILocation(line: 0, scope: !38)
!60 = !DILocation(line: 67, column: 7, scope: !38)
!61 = !DILocation(line: 68, column: 9, scope: !38)
!62 = !DILocation(line: 71, column: 3, scope: !38)
!63 = !DILocation(line: 71, column: 14, scope: !38)
!64 = !DILocation(line: 71, column: 18, scope: !38)
!65 = !DILocation(line: 71, column: 8, scope: !38)
!66 = !DILocation(line: 73, column: 12, scope: !67)
!67 = distinct !DILexicalBlock(scope: !38, file: !3, line: 72, column: 3)
!68 = !DILocation(line: 73, column: 7, scope: !67)
!69 = !DILocation(line: 73, column: 5, scope: !67)
!70 = !DILocation(line: 73, column: 10, scope: !67)
!71 = !DILocation(line: 74, column: 7, scope: !67)
!72 = !DILocation(line: 74, column: 6, scope: !67)
!73 = !DILocation(line: 75, column: 3, scope: !67)
!74 = !DILocation(line: 70, column: 1, scope: !38)
!75 = distinct !{!75, !74, !76}
!76 = !DILocation(line: 70, column: 26, scope: !38)
!77 = !DILocation(line: 75, column: 3, scope: !38)
!78 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 71, type: !39, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !79)
!79 = !{!80, !81, !82, !83}
!80 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !78, type: !41, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !78, type: !41, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "len", arg: 3, scope: !78, type: !45, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: "x", arg: 4, scope: !78, type: !45, flags: DIFlagArtificial)
!84 = !DILocation(line: 0, scope: !78)
!85 = !DILocation(line: 71, column: 3, scope: !78)
!86 = !{!87}
!87 = !{i64 2, i64 -1, i64 -1, i1 true}
