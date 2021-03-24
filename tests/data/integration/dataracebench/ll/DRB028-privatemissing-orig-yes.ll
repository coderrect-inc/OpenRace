; ModuleID = 'DRB028-privatemissing-orig-yes.c'
source_filename = "DRB028-privatemissing-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [46 x i8] c";DRB028-privatemissing-orig-yes.c;main;62;1;;\00", align 1
@2 = private unnamed_addr constant [47 x i8] c";DRB028-privatemissing-orig-yes.c;main;62;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"a[50]=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %len = alloca i32, align 4
  %a = alloca [100 x i32], align 16
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
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %len, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 100, i32* %len, align 4, !dbg !23
  call void @llvm.dbg.declare(metadata [100 x i32]* %a, metadata !24, metadata !DIExpression()), !dbg !28
  store i32 0, i32* %i, align 4, !dbg !29
  br label %for.cond, !dbg !31

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !32
  %3 = load i32, i32* %len, align 4, !dbg !34
  %cmp = icmp slt i32 %2, %3, !dbg !35
  br i1 %cmp, label %for.body, label %for.end, !dbg !36

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !37
  %5 = load i32, i32* %i, align 4, !dbg !38
  %idxprom = sext i32 %5 to i64, !dbg !39
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom, !dbg !39
  store i32 %4, i32* %arrayidx, align 4, !dbg !40
  br label %for.inc, !dbg !39

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !41
  %inc = add nsw i32 %6, 1, !dbg !41
  store i32 %inc, i32* %i, align 4, !dbg !41
  br label %for.cond, !dbg !42, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !45
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1, i32 0, i32 0), i8** %7, align 8, !dbg !45
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i32* %tmp, [100 x i32]* %a), !dbg !45
  %arrayidx1 = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 50, !dbg !46
  %8 = load i32, i32* %arrayidx1, align 8, !dbg !46
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %8), !dbg !47
  ret i32 0, !dbg !48
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %tmp, [100 x i32]* dereferenceable(400) %a) #2 !dbg !49 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %tmp.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.2 = alloca i32, align 4
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !58, metadata !DIExpression()), !dbg !59
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !60, metadata !DIExpression()), !dbg !59
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !61, metadata !DIExpression()), !dbg !62
  store i32* %tmp, i32** %tmp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %tmp.addr, metadata !63, metadata !DIExpression()), !dbg !64
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !65, metadata !DIExpression()), !dbg !66
  %2 = load i32*, i32** %len.addr, align 8, !dbg !67
  %3 = load i32*, i32** %tmp.addr, align 8, !dbg !67
  %4 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !68, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !69, metadata !DIExpression()), !dbg !59
  %5 = load i32, i32* %2, align 4, !dbg !70
  store i32 %5, i32* %.capture_expr., align 4, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.2, metadata !69, metadata !DIExpression()), !dbg !59
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !70
  %sub = sub nsw i32 %6, 0, !dbg !67
  %sub3 = sub nsw i32 %sub, 1, !dbg !67
  %add = add nsw i32 %sub3, 1, !dbg !67
  %div = sdiv i32 %add, 1, !dbg !67
  %sub4 = sub nsw i32 %div, 1, !dbg !67
  store i32 %sub4, i32* %.capture_expr.2, align 4, !dbg !67
  call void @llvm.dbg.declare(metadata i32* %i, metadata !71, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %i, align 4, !dbg !72
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !70
  %cmp = icmp slt i32 0, %7, !dbg !67
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !67

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !73, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %.omp.lb, align 4, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !75, metadata !DIExpression()), !dbg !59
  %8 = load i32, i32* %.capture_expr.2, align 4, !dbg !67
  store i32 %8, i32* %.omp.ub, align 4, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !76, metadata !DIExpression()), !dbg !59
  store i32 1, i32* %.omp.stride, align 4, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !77, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %.omp.is_last, align 4, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !71, metadata !DIExpression()), !dbg !59
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !67
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !67
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !67
  %11 = load i32, i32* %10, align 4, !dbg !67
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !67
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !74
  %13 = load i32, i32* %.capture_expr.2, align 4, !dbg !67
  %cmp6 = icmp sgt i32 %12, %13, !dbg !74
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !74

cond.true:                                        ; preds = %omp.precond.then
  %14 = load i32, i32* %.capture_expr.2, align 4, !dbg !67
  br label %cond.end, !dbg !74

cond.false:                                       ; preds = %omp.precond.then
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !74
  br label %cond.end, !dbg !74

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ], !dbg !74
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !74
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !74
  store i32 %16, i32* %.omp.iv, align 4, !dbg !74
  br label %omp.inner.for.cond, !dbg !67

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !74
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !74
  %cmp7 = icmp sle i32 %17, %18, !dbg !67
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !67

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !74
  %mul = mul nsw i32 %19, 1, !dbg !72
  %add8 = add nsw i32 0, %mul, !dbg !72
  store i32 %add8, i32* %i5, align 4, !dbg !72
  %20 = load i32, i32* %i5, align 4, !dbg !78
  %idxprom = sext i32 %20 to i64, !dbg !80
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %idxprom, !dbg !80
  %21 = load i32, i32* %arrayidx, align 4, !dbg !80
  %22 = load i32, i32* %i5, align 4, !dbg !81
  %add9 = add nsw i32 %21, %22, !dbg !82
  store i32 %add9, i32* %3, align 4, !dbg !83
  %23 = load i32, i32* %3, align 4, !dbg !84
  %24 = load i32, i32* %i5, align 4, !dbg !85
  %idxprom10 = sext i32 %24 to i64, !dbg !86
  %arrayidx11 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %idxprom10, !dbg !86
  store i32 %23, i32* %arrayidx11, align 4, !dbg !87
  br label %omp.body.continue, !dbg !88

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !89

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !74
  %add12 = add nsw i32 %25, 1, !dbg !67
  store i32 %add12, i32* %.omp.iv, align 4, !dbg !67
  br label %omp.inner.for.cond, !dbg !89, !llvm.loop !90

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !89

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !89
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @2, i32 0, i32 0), i8** %26, align 8, !dbg !89
  %27 = load i32*, i32** %.global_tid..addr, align 8, !dbg !89
  %28 = load i32, i32* %27, align 4, !dbg !89
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %28), !dbg !89
  br label %omp.precond.end, !dbg !89

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %tmp, [100 x i32]* dereferenceable(400) %a) #2 !dbg !93 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %tmp.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !94, metadata !DIExpression()), !dbg !95
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !96, metadata !DIExpression()), !dbg !95
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !97, metadata !DIExpression()), !dbg !95
  store i32* %tmp, i32** %tmp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %tmp.addr, metadata !98, metadata !DIExpression()), !dbg !95
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !99, metadata !DIExpression()), !dbg !95
  %0 = load i32*, i32** %len.addr, align 8, !dbg !100
  %1 = load i32*, i32** %tmp.addr, align 8, !dbg !100
  %2 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !100
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !100
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !100
  %5 = load i32*, i32** %len.addr, align 8, !dbg !100
  %6 = load i32*, i32** %tmp.addr, align 8, !dbg !100
  %7 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !100
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i32* %6, [100 x i32]* %7) #5, !dbg !100
  ret void, !dbg !100
}

declare !callback !101 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB028-privatemissing-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !8, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 53, type: !10)
!15 = !DILocation(line: 53, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 53, type: !11)
!17 = !DILocation(line: 53, column: 26, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 55, type: !10)
!19 = !DILocation(line: 55, column: 7, scope: !7)
!20 = !DILocalVariable(name: "tmp", scope: !7, file: !1, line: 56, type: !10)
!21 = !DILocation(line: 56, column: 7, scope: !7)
!22 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 57, type: !10)
!23 = !DILocation(line: 57, column: 7, scope: !7)
!24 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 58, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 3200, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 100)
!28 = !DILocation(line: 58, column: 7, scope: !7)
!29 = !DILocation(line: 59, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 59, column: 3)
!31 = !DILocation(line: 59, column: 8, scope: !30)
!32 = !DILocation(line: 59, column: 12, scope: !33)
!33 = distinct !DILexicalBlock(scope: !30, file: !1, line: 59, column: 3)
!34 = !DILocation(line: 59, column: 14, scope: !33)
!35 = !DILocation(line: 59, column: 13, scope: !33)
!36 = !DILocation(line: 59, column: 3, scope: !30)
!37 = !DILocation(line: 60, column: 10, scope: !33)
!38 = !DILocation(line: 60, column: 7, scope: !33)
!39 = !DILocation(line: 60, column: 5, scope: !33)
!40 = !DILocation(line: 60, column: 9, scope: !33)
!41 = !DILocation(line: 59, column: 19, scope: !33)
!42 = !DILocation(line: 59, column: 3, scope: !33)
!43 = distinct !{!43, !36, !44}
!44 = !DILocation(line: 60, column: 10, scope: !30)
!45 = !DILocation(line: 62, column: 1, scope: !7)
!46 = !DILocation(line: 69, column: 24, scope: !7)
!47 = !DILocation(line: 69, column: 3, scope: !7)
!48 = !DILocation(line: 70, column: 3, scope: !7)
!49 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 63, type: !50, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52, !52, !56, !56, !57}
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!56 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !25, size: 64)
!58 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !49, type: !52, flags: DIFlagArtificial)
!59 = !DILocation(line: 0, scope: !49)
!60 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !49, type: !52, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: "len", arg: 3, scope: !49, file: !1, line: 57, type: !56)
!62 = !DILocation(line: 57, column: 7, scope: !49)
!63 = !DILocalVariable(name: "tmp", arg: 4, scope: !49, file: !1, line: 56, type: !56)
!64 = !DILocation(line: 56, column: 7, scope: !49)
!65 = !DILocalVariable(name: "a", arg: 5, scope: !49, file: !1, line: 58, type: !57)
!66 = !DILocation(line: 58, column: 7, scope: !49)
!67 = !DILocation(line: 63, column: 3, scope: !49)
!68 = !DILocalVariable(name: ".omp.iv", scope: !49, type: !10, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".capture_expr.", scope: !49, type: !10, flags: DIFlagArtificial)
!70 = !DILocation(line: 63, column: 14, scope: !49)
!71 = !DILocalVariable(name: "i", scope: !49, type: !10, flags: DIFlagArtificial)
!72 = !DILocation(line: 63, column: 18, scope: !49)
!73 = !DILocalVariable(name: ".omp.lb", scope: !49, type: !10, flags: DIFlagArtificial)
!74 = !DILocation(line: 63, column: 8, scope: !49)
!75 = !DILocalVariable(name: ".omp.ub", scope: !49, type: !10, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".omp.stride", scope: !49, type: !10, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: ".omp.is_last", scope: !49, type: !10, flags: DIFlagArtificial)
!78 = !DILocation(line: 65, column: 12, scope: !79)
!79 = distinct !DILexicalBlock(scope: !49, file: !1, line: 64, column: 3)
!80 = !DILocation(line: 65, column: 10, scope: !79)
!81 = !DILocation(line: 65, column: 15, scope: !79)
!82 = !DILocation(line: 65, column: 14, scope: !79)
!83 = !DILocation(line: 65, column: 9, scope: !79)
!84 = !DILocation(line: 66, column: 12, scope: !79)
!85 = !DILocation(line: 66, column: 7, scope: !79)
!86 = !DILocation(line: 66, column: 5, scope: !79)
!87 = !DILocation(line: 66, column: 10, scope: !79)
!88 = !DILocation(line: 67, column: 3, scope: !79)
!89 = !DILocation(line: 62, column: 1, scope: !49)
!90 = distinct !{!90, !89, !91}
!91 = !DILocation(line: 62, column: 25, scope: !49)
!92 = !DILocation(line: 67, column: 3, scope: !49)
!93 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 63, type: !50, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!94 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !93, type: !52, flags: DIFlagArtificial)
!95 = !DILocation(line: 0, scope: !93)
!96 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !93, type: !52, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: "len", arg: 3, scope: !93, type: !56, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: "tmp", arg: 4, scope: !93, type: !56, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: "a", arg: 5, scope: !93, type: !57, flags: DIFlagArtificial)
!100 = !DILocation(line: 63, column: 3, scope: !93)
!101 = !{!102}
!102 = !{i64 2, i64 -1, i64 -1, i1 true}
