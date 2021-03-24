; ModuleID = 'DRB002-antidep1-var-yes.c'
source_filename = "DRB002-antidep1-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [39 x i8] c";DRB002-antidep1-var-yes.c;main;65;1;;\00", align 1
@2 = private unnamed_addr constant [40 x i8] c";DRB002-antidep1-var-yes.c;main;65;25;;\00", align 1
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
  store i32 1000, i32* %len, align 4, !dbg !21
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
  %5 = load i32, i32* %len, align 4, !dbg !30
  %6 = zext i32 %5 to i64, !dbg !31
  %7 = call i8* @llvm.stacksave(), !dbg !31
  store i8* %7, i8** %saved_stack, align 8, !dbg !31
  %vla = alloca i32, i64 %6, align 16, !dbg !31
  store i64 %6, i64* %__vla_expr0, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !32, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !35, metadata !DIExpression()), !dbg !39
  store i32 0, i32* %i, align 4, !dbg !40
  br label %for.cond, !dbg !42

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !dbg !43
  %9 = load i32, i32* %len, align 4, !dbg !45
  %cmp1 = icmp slt i32 %8, %9, !dbg !46
  br i1 %cmp1, label %for.body, label %for.end, !dbg !47

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !dbg !48
  %11 = load i32, i32* %i, align 4, !dbg !49
  %idxprom = sext i32 %11 to i64, !dbg !50
  %arrayidx2 = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !50
  store i32 %10, i32* %arrayidx2, align 4, !dbg !51
  br label %for.inc, !dbg !50

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !52
  %inc = add nsw i32 %12, 1, !dbg !52
  store i32 %inc, i32* %i, align 4, !dbg !52
  br label %for.cond, !dbg !53, !llvm.loop !54

for.end:                                          ; preds = %for.cond
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !56
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1, i32 0, i32 0), i8** %13, align 8, !dbg !56
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %6, i32* %vla), !dbg !56
  store i32 0, i32* %retval, align 4, !dbg !57
  %14 = load i8*, i8** %saved_stack, align 8, !dbg !58
  call void @llvm.stackrestore(i8* %14), !dbg !58
  %15 = load i32, i32* %retval, align 4, !dbg !58
  ret i32 %15, !dbg !58
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a) #4 !dbg !59 {
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
  %i5 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !67, metadata !DIExpression()), !dbg !68
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !69, metadata !DIExpression()), !dbg !68
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !70, metadata !DIExpression()), !dbg !71
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !72, metadata !DIExpression()), !dbg !68
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !73, metadata !DIExpression()), !dbg !74
  %2 = load i32*, i32** %len.addr, align 8, !dbg !75
  %3 = load i64, i64* %vla.addr, align 8, !dbg !75
  %4 = load i32*, i32** %a.addr, align 8, !dbg !75
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !76, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !77, metadata !DIExpression()), !dbg !68
  %5 = load i32, i32* %2, align 4, !dbg !78
  %sub = sub nsw i32 %5, 1, !dbg !79
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !77, metadata !DIExpression()), !dbg !68
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !79
  %sub2 = sub nsw i32 %6, 0, !dbg !75
  %sub3 = sub nsw i32 %sub2, 1, !dbg !75
  %add = add nsw i32 %sub3, 1, !dbg !75
  %div = sdiv i32 %add, 1, !dbg !75
  %sub4 = sub nsw i32 %div, 1, !dbg !75
  store i32 %sub4, i32* %.capture_expr.1, align 4, !dbg !75
  call void @llvm.dbg.declare(metadata i32* %i, metadata !80, metadata !DIExpression()), !dbg !68
  store i32 0, i32* %i, align 4, !dbg !81
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !79
  %cmp = icmp slt i32 0, %7, !dbg !75
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !75

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !82, metadata !DIExpression()), !dbg !68
  store i32 0, i32* %.omp.lb, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !84, metadata !DIExpression()), !dbg !68
  %8 = load i32, i32* %.capture_expr.1, align 4, !dbg !75
  store i32 %8, i32* %.omp.ub, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !85, metadata !DIExpression()), !dbg !68
  store i32 1, i32* %.omp.stride, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !86, metadata !DIExpression()), !dbg !68
  store i32 0, i32* %.omp.is_last, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !80, metadata !DIExpression()), !dbg !68
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !75
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !75
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !75
  %11 = load i32, i32* %10, align 4, !dbg !75
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !75
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !83
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !75
  %cmp6 = icmp sgt i32 %12, %13, !dbg !83
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !83

cond.true:                                        ; preds = %omp.precond.then
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !75
  br label %cond.end, !dbg !83

cond.false:                                       ; preds = %omp.precond.then
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !83
  br label %cond.end, !dbg !83

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ], !dbg !83
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !83
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !83
  store i32 %16, i32* %.omp.iv, align 4, !dbg !83
  br label %omp.inner.for.cond, !dbg !75

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !83
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !83
  %cmp7 = icmp sle i32 %17, %18, !dbg !75
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !75

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !83
  %mul = mul nsw i32 %19, 1, !dbg !81
  %add8 = add nsw i32 0, %mul, !dbg !81
  store i32 %add8, i32* %i5, align 4, !dbg !81
  %20 = load i32, i32* %i5, align 4, !dbg !87
  %add9 = add nsw i32 %20, 1, !dbg !88
  %idxprom = sext i32 %add9 to i64, !dbg !89
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !89
  %21 = load i32, i32* %arrayidx, align 4, !dbg !89
  %add10 = add nsw i32 %21, 1, !dbg !90
  %22 = load i32, i32* %i5, align 4, !dbg !91
  %idxprom11 = sext i32 %22 to i64, !dbg !92
  %arrayidx12 = getelementptr inbounds i32, i32* %4, i64 %idxprom11, !dbg !92
  store i32 %add10, i32* %arrayidx12, align 4, !dbg !93
  br label %omp.body.continue, !dbg !92

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !94

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !83
  %add13 = add nsw i32 %23, 1, !dbg !75
  store i32 %add13, i32* %.omp.iv, align 4, !dbg !75
  br label %omp.inner.for.cond, !dbg !94, !llvm.loop !95

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !94

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !94
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2, i32 0, i32 0), i8** %24, align 8, !dbg !94
  %25 = load i32*, i32** %.global_tid..addr, align 8, !dbg !94
  %26 = load i32, i32* %25, align 4, !dbg !94
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %26), !dbg !94
  br label %omp.precond.end, !dbg !94

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a) #4 !dbg !98 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !99, metadata !DIExpression()), !dbg !100
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !101, metadata !DIExpression()), !dbg !100
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !102, metadata !DIExpression()), !dbg !100
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !103, metadata !DIExpression()), !dbg !100
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !104, metadata !DIExpression()), !dbg !100
  %0 = load i32*, i32** %len.addr, align 8, !dbg !105
  %1 = load i64, i64* %vla.addr, align 8, !dbg !105
  %2 = load i32*, i32** %a.addr, align 8, !dbg !105
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !105
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !105
  %5 = load i32*, i32** %len.addr, align 8, !dbg !105
  %6 = load i32*, i32** %a.addr, align 8, !dbg !105
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i64 %1, i32* %6) #3, !dbg !105
  ret void, !dbg !105
}

declare !callback !106 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "DRB002-antidep1-var-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
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
!30 = !DILocation(line: 60, column: 9, scope: !7)
!31 = !DILocation(line: 60, column: 3, scope: !7)
!32 = !DILocalVariable(name: "__vla_expr0", scope: !7, type: !33, flags: DIFlagArtificial)
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocation(line: 0, scope: !7)
!35 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 60, type: !36)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: !32)
!39 = !DILocation(line: 60, column: 7, scope: !7)
!40 = !DILocation(line: 62, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !7, file: !1, line: 62, column: 3)
!42 = !DILocation(line: 62, column: 8, scope: !41)
!43 = !DILocation(line: 62, column: 13, scope: !44)
!44 = distinct !DILexicalBlock(scope: !41, file: !1, line: 62, column: 3)
!45 = !DILocation(line: 62, column: 15, scope: !44)
!46 = !DILocation(line: 62, column: 14, scope: !44)
!47 = !DILocation(line: 62, column: 3, scope: !41)
!48 = !DILocation(line: 63, column: 11, scope: !44)
!49 = !DILocation(line: 63, column: 7, scope: !44)
!50 = !DILocation(line: 63, column: 5, scope: !44)
!51 = !DILocation(line: 63, column: 9, scope: !44)
!52 = !DILocation(line: 62, column: 21, scope: !44)
!53 = !DILocation(line: 62, column: 3, scope: !44)
!54 = distinct !{!54, !47, !55}
!55 = !DILocation(line: 63, column: 11, scope: !41)
!56 = !DILocation(line: 65, column: 1, scope: !7)
!57 = !DILocation(line: 69, column: 3, scope: !7)
!58 = !DILocation(line: 70, column: 1, scope: !7)
!59 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 66, type: !60, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62, !62, !66, !33, !66}
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!66 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!67 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !59, type: !62, flags: DIFlagArtificial)
!68 = !DILocation(line: 0, scope: !59)
!69 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !59, type: !62, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: "len", arg: 3, scope: !59, file: !1, line: 55, type: !66)
!71 = !DILocation(line: 55, column: 7, scope: !59)
!72 = !DILocalVariable(name: "vla", arg: 4, scope: !59, type: !33, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "a", arg: 5, scope: !59, file: !1, line: 60, type: !66)
!74 = !DILocation(line: 60, column: 7, scope: !59)
!75 = !DILocation(line: 66, column: 3, scope: !59)
!76 = !DILocalVariable(name: ".omp.iv", scope: !59, type: !10, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: ".capture_expr.", scope: !59, type: !10, flags: DIFlagArtificial)
!78 = !DILocation(line: 66, column: 15, scope: !59)
!79 = !DILocation(line: 66, column: 19, scope: !59)
!80 = !DILocalVariable(name: "i", scope: !59, type: !10, flags: DIFlagArtificial)
!81 = !DILocation(line: 66, column: 23, scope: !59)
!82 = !DILocalVariable(name: ".omp.lb", scope: !59, type: !10, flags: DIFlagArtificial)
!83 = !DILocation(line: 66, column: 8, scope: !59)
!84 = !DILocalVariable(name: ".omp.ub", scope: !59, type: !10, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: ".omp.stride", scope: !59, type: !10, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".omp.is_last", scope: !59, type: !10, flags: DIFlagArtificial)
!87 = !DILocation(line: 67, column: 12, scope: !59)
!88 = !DILocation(line: 67, column: 13, scope: !59)
!89 = !DILocation(line: 67, column: 10, scope: !59)
!90 = !DILocation(line: 67, column: 16, scope: !59)
!91 = !DILocation(line: 67, column: 7, scope: !59)
!92 = !DILocation(line: 67, column: 5, scope: !59)
!93 = !DILocation(line: 67, column: 9, scope: !59)
!94 = !DILocation(line: 65, column: 1, scope: !59)
!95 = distinct !{!95, !94, !96}
!96 = !DILocation(line: 65, column: 25, scope: !59)
!97 = !DILocation(line: 67, column: 17, scope: !59)
!98 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 66, type: !60, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!99 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !98, type: !62, flags: DIFlagArtificial)
!100 = !DILocation(line: 0, scope: !98)
!101 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !98, type: !62, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: "len", arg: 3, scope: !98, type: !66, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: "vla", arg: 4, scope: !98, type: !33, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: "a", arg: 5, scope: !98, type: !66, flags: DIFlagArtificial)
!105 = !DILocation(line: 66, column: 3, scope: !98)
!106 = !{!107}
!107 = !{i64 2, i64 -1, i64 -1, i1 true}
