; ModuleID = 'DRB040-truedepsingleelement-var-yes.c'
source_filename = "DRB040-truedepsingleelement-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [51 x i8] c";DRB040-truedepsingleelement-var-yes.c;main;61;1;;\00", align 1
@2 = private unnamed_addr constant [52 x i8] c";DRB040-truedepsingleelement-var-yes.c;main;61;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
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
  call void @llvm.dbg.declare(metadata i32* %len, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 1000, i32* %len, align 4, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !21
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
  %arrayidx1 = getelementptr inbounds i32, i32* %vla, i64 0, !dbg !40
  store i32 2, i32* %arrayidx1, align 16, !dbg !41
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !42
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !42
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %6, i32* %vla), !dbg !42
  store i32 0, i32* %retval, align 4, !dbg !43
  %9 = load i8*, i8** %saved_stack, align 8, !dbg !44
  call void @llvm.stackrestore(i8* %9), !dbg !44
  %10 = load i32, i32* %retval, align 4, !dbg !44
  ret i32 %10, !dbg !44
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a) #4 !dbg !45 {
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !53, metadata !DIExpression()), !dbg !54
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !55, metadata !DIExpression()), !dbg !54
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !56, metadata !DIExpression()), !dbg !57
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !58, metadata !DIExpression()), !dbg !54
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !59, metadata !DIExpression()), !dbg !60
  %2 = load i32*, i32** %len.addr, align 8, !dbg !61
  %3 = load i64, i64* %vla.addr, align 8, !dbg !61
  %4 = load i32*, i32** %a.addr, align 8, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !62, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !63, metadata !DIExpression()), !dbg !54
  %5 = load i32, i32* %2, align 4, !dbg !64
  store i32 %5, i32* %.capture_expr., align 4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !63, metadata !DIExpression()), !dbg !54
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !64
  %sub = sub nsw i32 %6, 0, !dbg !61
  %sub2 = sub nsw i32 %sub, 1, !dbg !61
  %add = add nsw i32 %sub2, 1, !dbg !61
  %div = sdiv i32 %add, 1, !dbg !61
  %sub3 = sub nsw i32 %div, 1, !dbg !61
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %i, metadata !65, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %i, align 4, !dbg !66
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !64
  %cmp = icmp slt i32 0, %7, !dbg !61
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !61

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !67, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %.omp.lb, align 4, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !69, metadata !DIExpression()), !dbg !54
  %8 = load i32, i32* %.capture_expr.1, align 4, !dbg !61
  store i32 %8, i32* %.omp.ub, align 4, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !70, metadata !DIExpression()), !dbg !54
  store i32 1, i32* %.omp.stride, align 4, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !71, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %.omp.is_last, align 4, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !65, metadata !DIExpression()), !dbg !54
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !61
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !61
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !61
  %11 = load i32, i32* %10, align 4, !dbg !61
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !61
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !68
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !61
  %cmp5 = icmp sgt i32 %12, %13, !dbg !68
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !68

cond.true:                                        ; preds = %omp.precond.then
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !61
  br label %cond.end, !dbg !68

cond.false:                                       ; preds = %omp.precond.then
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !68
  br label %cond.end, !dbg !68

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ], !dbg !68
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !68
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !68
  store i32 %16, i32* %.omp.iv, align 4, !dbg !68
  br label %omp.inner.for.cond, !dbg !61

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !68
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !68
  %cmp6 = icmp sle i32 %17, %18, !dbg !61
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !61

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !68
  %mul = mul nsw i32 %19, 1, !dbg !66
  %add7 = add nsw i32 0, %mul, !dbg !66
  store i32 %add7, i32* %i4, align 4, !dbg !66
  %20 = load i32, i32* %i4, align 4, !dbg !72
  %idxprom = sext i32 %20 to i64, !dbg !73
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !73
  %21 = load i32, i32* %arrayidx, align 4, !dbg !73
  %arrayidx8 = getelementptr inbounds i32, i32* %4, i64 0, !dbg !74
  %22 = load i32, i32* %arrayidx8, align 16, !dbg !74
  %add9 = add nsw i32 %21, %22, !dbg !75
  %23 = load i32, i32* %i4, align 4, !dbg !76
  %idxprom10 = sext i32 %23 to i64, !dbg !77
  %arrayidx11 = getelementptr inbounds i32, i32* %4, i64 %idxprom10, !dbg !77
  store i32 %add9, i32* %arrayidx11, align 4, !dbg !78
  br label %omp.body.continue, !dbg !77

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !79

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !68
  %add12 = add nsw i32 %24, 1, !dbg !61
  store i32 %add12, i32* %.omp.iv, align 4, !dbg !61
  br label %omp.inner.for.cond, !dbg !79, !llvm.loop !80

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !79

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !79
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @2, i32 0, i32 0), i8** %25, align 8, !dbg !79
  %26 = load i32*, i32** %.global_tid..addr, align 8, !dbg !79
  %27 = load i32, i32* %26, align 4, !dbg !79
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %27), !dbg !79
  br label %omp.precond.end, !dbg !79

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a) #4 !dbg !83 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !84, metadata !DIExpression()), !dbg !85
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !86, metadata !DIExpression()), !dbg !85
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !87, metadata !DIExpression()), !dbg !85
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !88, metadata !DIExpression()), !dbg !85
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !89, metadata !DIExpression()), !dbg !85
  %0 = load i32*, i32** %len.addr, align 8, !dbg !90
  %1 = load i64, i64* %vla.addr, align 8, !dbg !90
  %2 = load i32*, i32** %a.addr, align 8, !dbg !90
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !90
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !90
  %5 = load i32*, i32** %len.addr, align 8, !dbg !90
  %6 = load i32*, i32** %a.addr, align 8, !dbg !90
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i64 %1, i32* %6) #3, !dbg !90
  ret void, !dbg !90
}

declare !callback !91 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "DRB040-truedepsingleelement-var-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !8, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 51, type: !10)
!15 = !DILocation(line: 51, column: 15, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 51, type: !11)
!17 = !DILocation(line: 51, column: 27, scope: !7)
!18 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 53, type: !10)
!19 = !DILocation(line: 53, column: 7, scope: !7)
!20 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 54, type: !10)
!21 = !DILocation(line: 54, column: 7, scope: !7)
!22 = !DILocation(line: 56, column: 7, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 56, column: 7)
!24 = !DILocation(line: 56, column: 11, scope: !23)
!25 = !DILocation(line: 56, column: 7, scope: !7)
!26 = !DILocation(line: 57, column: 16, scope: !23)
!27 = !DILocation(line: 57, column: 11, scope: !23)
!28 = !DILocation(line: 57, column: 9, scope: !23)
!29 = !DILocation(line: 57, column: 5, scope: !23)
!30 = !DILocation(line: 58, column: 9, scope: !7)
!31 = !DILocation(line: 58, column: 3, scope: !7)
!32 = !DILocalVariable(name: "__vla_expr0", scope: !7, type: !33, flags: DIFlagArtificial)
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocation(line: 0, scope: !7)
!35 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 58, type: !36)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: !32)
!39 = !DILocation(line: 58, column: 7, scope: !7)
!40 = !DILocation(line: 59, column: 3, scope: !7)
!41 = !DILocation(line: 59, column: 8, scope: !7)
!42 = !DILocation(line: 61, column: 1, scope: !7)
!43 = !DILocation(line: 65, column: 3, scope: !7)
!44 = !DILocation(line: 66, column: 1, scope: !7)
!45 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 62, type: !46, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !48, !52, !33, !52}
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!52 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!53 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !45, type: !48, flags: DIFlagArtificial)
!54 = !DILocation(line: 0, scope: !45)
!55 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !45, type: !48, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: "len", arg: 3, scope: !45, file: !1, line: 53, type: !52)
!57 = !DILocation(line: 53, column: 7, scope: !45)
!58 = !DILocalVariable(name: "vla", arg: 4, scope: !45, type: !33, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: "a", arg: 5, scope: !45, file: !1, line: 58, type: !52)
!60 = !DILocation(line: 58, column: 7, scope: !45)
!61 = !DILocation(line: 62, column: 3, scope: !45)
!62 = !DILocalVariable(name: ".omp.iv", scope: !45, type: !10, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: ".capture_expr.", scope: !45, type: !10, flags: DIFlagArtificial)
!64 = !DILocation(line: 62, column: 14, scope: !45)
!65 = !DILocalVariable(name: "i", scope: !45, type: !10, flags: DIFlagArtificial)
!66 = !DILocation(line: 62, column: 18, scope: !45)
!67 = !DILocalVariable(name: ".omp.lb", scope: !45, type: !10, flags: DIFlagArtificial)
!68 = !DILocation(line: 62, column: 8, scope: !45)
!69 = !DILocalVariable(name: ".omp.ub", scope: !45, type: !10, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".omp.stride", scope: !45, type: !10, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".omp.is_last", scope: !45, type: !10, flags: DIFlagArtificial)
!72 = !DILocation(line: 63, column: 12, scope: !45)
!73 = !DILocation(line: 63, column: 10, scope: !45)
!74 = !DILocation(line: 63, column: 15, scope: !45)
!75 = !DILocation(line: 63, column: 14, scope: !45)
!76 = !DILocation(line: 63, column: 7, scope: !45)
!77 = !DILocation(line: 63, column: 5, scope: !45)
!78 = !DILocation(line: 63, column: 9, scope: !45)
!79 = !DILocation(line: 61, column: 1, scope: !45)
!80 = distinct !{!80, !79, !81}
!81 = !DILocation(line: 61, column: 25, scope: !45)
!82 = !DILocation(line: 63, column: 18, scope: !45)
!83 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 62, type: !46, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!84 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !83, type: !48, flags: DIFlagArtificial)
!85 = !DILocation(line: 0, scope: !83)
!86 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !83, type: !48, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: "len", arg: 3, scope: !83, type: !52, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: "vla", arg: 4, scope: !83, type: !33, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: "a", arg: 5, scope: !83, type: !52, flags: DIFlagArtificial)
!90 = !DILocation(line: 62, column: 3, scope: !83)
!91 = !{!92}
!92 = !{i64 2, i64 -1, i64 -1, i1 true}
