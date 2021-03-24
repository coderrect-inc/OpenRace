; ModuleID = 'DRB017-outputdep-var-yes.c'
source_filename = "DRB017-outputdep-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [40 x i8] c";DRB017-outputdep-var-yes.c;main;68;1;;\00", align 1
@2 = private unnamed_addr constant [41 x i8] c";DRB017-outputdep-var-yes.c;main;68;26;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"x=%d, a[0]=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
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
  store i32 100, i32* %len, align 4, !dbg !19
  %2 = load i32, i32* %argc.addr, align 4, !dbg !20
  %cmp = icmp sgt i32 %2, 1, !dbg !22
  br i1 %cmp, label %if.then, label %if.end, !dbg !23

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %argv.addr, align 8, !dbg !24
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !24
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !24
  %call = call i32 @atoi(i8* %4) #7, !dbg !25
  store i32 %call, i32* %len, align 4, !dbg !26
  br label %if.end, !dbg !27

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %len, align 4, !dbg !28
  %6 = zext i32 %5 to i64, !dbg !29
  %7 = call i8* @llvm.stacksave(), !dbg !29
  store i8* %7, i8** %saved_stack, align 8, !dbg !29
  %vla = alloca i32, i64 %6, align 16, !dbg !29
  store i64 %6, i64* %__vla_expr0, align 8, !dbg !29
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !30, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !33, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %i, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %x, metadata !40, metadata !DIExpression()), !dbg !41
  store i32 10, i32* %x, align 4, !dbg !41
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !42
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !42
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %6, i32* %vla, i32* %x), !dbg !42
  %9 = load i32, i32* %x, align 4, !dbg !43
  %arrayidx1 = getelementptr inbounds i32, i32* %vla, i64 0, !dbg !44
  %10 = load i32, i32* %arrayidx1, align 16, !dbg !44
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 %10), !dbg !45
  store i32 0, i32* %retval, align 4, !dbg !46
  %11 = load i8*, i8** %saved_stack, align 8, !dbg !47
  call void @llvm.stackrestore(i8* %11), !dbg !47
  %12 = load i32, i32* %retval, align 4, !dbg !47
  ret i32 %12, !dbg !47
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a, i32* dereferenceable(4) %x) #4 !dbg !48 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !56, metadata !DIExpression()), !dbg !57
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !58, metadata !DIExpression()), !dbg !57
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !59, metadata !DIExpression()), !dbg !60
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !61, metadata !DIExpression()), !dbg !57
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !62, metadata !DIExpression()), !dbg !63
  store i32* %x, i32** %x.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !64, metadata !DIExpression()), !dbg !65
  %2 = load i32*, i32** %len.addr, align 8, !dbg !66
  %3 = load i64, i64* %vla.addr, align 8, !dbg !66
  %4 = load i32*, i32** %a.addr, align 8, !dbg !66
  %5 = load i32*, i32** %x.addr, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !67, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !68, metadata !DIExpression()), !dbg !57
  %6 = load i32, i32* %2, align 4, !dbg !69
  store i32 %6, i32* %.capture_expr., align 4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !68, metadata !DIExpression()), !dbg !57
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !69
  %sub = sub nsw i32 %7, 0, !dbg !66
  %sub2 = sub nsw i32 %sub, 1, !dbg !66
  %add = add nsw i32 %sub2, 1, !dbg !66
  %div = sdiv i32 %add, 1, !dbg !66
  %sub3 = sub nsw i32 %div, 1, !dbg !66
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %i, metadata !70, metadata !DIExpression()), !dbg !57
  store i32 0, i32* %i, align 4, !dbg !71
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !69
  %cmp = icmp slt i32 0, %8, !dbg !66
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !66

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !72, metadata !DIExpression()), !dbg !57
  store i32 0, i32* %.omp.lb, align 4, !dbg !73
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !74, metadata !DIExpression()), !dbg !57
  %9 = load i32, i32* %.capture_expr.1, align 4, !dbg !66
  store i32 %9, i32* %.omp.ub, align 4, !dbg !73
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !75, metadata !DIExpression()), !dbg !57
  store i32 1, i32* %.omp.stride, align 4, !dbg !73
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !76, metadata !DIExpression()), !dbg !57
  store i32 0, i32* %.omp.is_last, align 4, !dbg !73
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !70, metadata !DIExpression()), !dbg !57
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !66
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !66
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !66
  %12 = load i32, i32* %11, align 4, !dbg !66
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !66
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !73
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !66
  %cmp5 = icmp sgt i32 %13, %14, !dbg !73
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !73

cond.true:                                        ; preds = %omp.precond.then
  %15 = load i32, i32* %.capture_expr.1, align 4, !dbg !66
  br label %cond.end, !dbg !73

cond.false:                                       ; preds = %omp.precond.then
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !73
  br label %cond.end, !dbg !73

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ %16, %cond.false ], !dbg !73
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !73
  %17 = load i32, i32* %.omp.lb, align 4, !dbg !73
  store i32 %17, i32* %.omp.iv, align 4, !dbg !73
  br label %omp.inner.for.cond, !dbg !66

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !73
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !73
  %cmp6 = icmp sle i32 %18, %19, !dbg !66
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !66

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !73
  %mul = mul nsw i32 %20, 1, !dbg !71
  %add7 = add nsw i32 0, %mul, !dbg !71
  store i32 %add7, i32* %i4, align 4, !dbg !71
  %21 = load i32, i32* %5, align 4, !dbg !77
  %22 = load i32, i32* %i4, align 4, !dbg !79
  %idxprom = sext i32 %22 to i64, !dbg !80
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !80
  store i32 %21, i32* %arrayidx, align 4, !dbg !81
  %23 = load i32, i32* %i4, align 4, !dbg !82
  store i32 %23, i32* %5, align 4, !dbg !83
  br label %omp.body.continue, !dbg !84

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !85

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !73
  %add8 = add nsw i32 %24, 1, !dbg !66
  store i32 %add8, i32* %.omp.iv, align 4, !dbg !66
  br label %omp.inner.for.cond, !dbg !85, !llvm.loop !86

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !85

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !85
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2, i32 0, i32 0), i8** %25, align 8, !dbg !85
  %26 = load i32*, i32** %.global_tid..addr, align 8, !dbg !85
  %27 = load i32, i32* %26, align 4, !dbg !85
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %27), !dbg !85
  br label %omp.precond.end, !dbg !85

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a, i32* dereferenceable(4) %x) #4 !dbg !89 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !90, metadata !DIExpression()), !dbg !91
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !92, metadata !DIExpression()), !dbg !91
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !93, metadata !DIExpression()), !dbg !91
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !94, metadata !DIExpression()), !dbg !91
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !95, metadata !DIExpression()), !dbg !91
  store i32* %x, i32** %x.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !96, metadata !DIExpression()), !dbg !91
  %0 = load i32*, i32** %len.addr, align 8, !dbg !97
  %1 = load i64, i64* %vla.addr, align 8, !dbg !97
  %2 = load i32*, i32** %a.addr, align 8, !dbg !97
  %3 = load i32*, i32** %x.addr, align 8, !dbg !97
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !97
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !97
  %6 = load i32*, i32** %len.addr, align 8, !dbg !97
  %7 = load i32*, i32** %a.addr, align 8, !dbg !97
  %8 = load i32*, i32** %x.addr, align 8, !dbg !97
  call void @.omp_outlined._debug__(i32* %4, i32* %5, i32* %6, i64 %1, i32* %7, i32* %8) #3, !dbg !97
  ret void, !dbg !97
}

declare !callback !98 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "DRB017-outputdep-var-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 58, type: !8, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 58, type: !10)
!15 = !DILocation(line: 58, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 58, type: !11)
!17 = !DILocation(line: 58, column: 26, scope: !7)
!18 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 60, type: !10)
!19 = !DILocation(line: 60, column: 7, scope: !7)
!20 = !DILocation(line: 62, column: 7, scope: !21)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 62, column: 7)
!22 = !DILocation(line: 62, column: 11, scope: !21)
!23 = !DILocation(line: 62, column: 7, scope: !7)
!24 = !DILocation(line: 63, column: 16, scope: !21)
!25 = !DILocation(line: 63, column: 11, scope: !21)
!26 = !DILocation(line: 63, column: 9, scope: !21)
!27 = !DILocation(line: 63, column: 5, scope: !21)
!28 = !DILocation(line: 65, column: 9, scope: !7)
!29 = !DILocation(line: 65, column: 3, scope: !7)
!30 = !DILocalVariable(name: "__vla_expr0", scope: !7, type: !31, flags: DIFlagArtificial)
!31 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !DILocation(line: 0, scope: !7)
!33 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 65, type: !34)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: !30)
!37 = !DILocation(line: 65, column: 7, scope: !7)
!38 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 66, type: !10)
!39 = !DILocation(line: 66, column: 7, scope: !7)
!40 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 66, type: !10)
!41 = !DILocation(line: 66, column: 9, scope: !7)
!42 = !DILocation(line: 68, column: 1, scope: !7)
!43 = !DILocation(line: 74, column: 28, scope: !7)
!44 = !DILocation(line: 74, column: 30, scope: !7)
!45 = !DILocation(line: 74, column: 3, scope: !7)
!46 = !DILocation(line: 75, column: 3, scope: !7)
!47 = !DILocation(line: 76, column: 1, scope: !7)
!48 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 69, type: !49, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51, !51, !55, !31, !55, !55}
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!55 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!56 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !48, type: !51, flags: DIFlagArtificial)
!57 = !DILocation(line: 0, scope: !48)
!58 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !48, type: !51, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: "len", arg: 3, scope: !48, file: !1, line: 60, type: !55)
!60 = !DILocation(line: 60, column: 7, scope: !48)
!61 = !DILocalVariable(name: "vla", arg: 4, scope: !48, type: !31, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "a", arg: 5, scope: !48, file: !1, line: 65, type: !55)
!63 = !DILocation(line: 65, column: 7, scope: !48)
!64 = !DILocalVariable(name: "x", arg: 6, scope: !48, file: !1, line: 66, type: !55)
!65 = !DILocation(line: 66, column: 9, scope: !48)
!66 = !DILocation(line: 69, column: 3, scope: !48)
!67 = !DILocalVariable(name: ".omp.iv", scope: !48, type: !10, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: ".capture_expr.", scope: !48, type: !10, flags: DIFlagArtificial)
!69 = !DILocation(line: 69, column: 14, scope: !48)
!70 = !DILocalVariable(name: "i", scope: !48, type: !10, flags: DIFlagArtificial)
!71 = !DILocation(line: 69, column: 18, scope: !48)
!72 = !DILocalVariable(name: ".omp.lb", scope: !48, type: !10, flags: DIFlagArtificial)
!73 = !DILocation(line: 69, column: 8, scope: !48)
!74 = !DILocalVariable(name: ".omp.ub", scope: !48, type: !10, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".omp.stride", scope: !48, type: !10, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".omp.is_last", scope: !48, type: !10, flags: DIFlagArtificial)
!77 = !DILocation(line: 71, column: 12, scope: !78)
!78 = distinct !DILexicalBlock(scope: !48, file: !1, line: 70, column: 3)
!79 = !DILocation(line: 71, column: 7, scope: !78)
!80 = !DILocation(line: 71, column: 5, scope: !78)
!81 = !DILocation(line: 71, column: 10, scope: !78)
!82 = !DILocation(line: 72, column: 7, scope: !78)
!83 = !DILocation(line: 72, column: 6, scope: !78)
!84 = !DILocation(line: 73, column: 3, scope: !78)
!85 = !DILocation(line: 68, column: 1, scope: !48)
!86 = distinct !{!86, !85, !87}
!87 = !DILocation(line: 68, column: 26, scope: !48)
!88 = !DILocation(line: 73, column: 3, scope: !48)
!89 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 69, type: !49, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!90 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !89, type: !51, flags: DIFlagArtificial)
!91 = !DILocation(line: 0, scope: !89)
!92 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !89, type: !51, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: "len", arg: 3, scope: !89, type: !55, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: "vla", arg: 4, scope: !89, type: !31, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "a", arg: 5, scope: !89, type: !55, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: "x", arg: 6, scope: !89, type: !55, flags: DIFlagArtificial)
!97 = !DILocation(line: 69, column: 3, scope: !89)
!98 = !{!99}
!99 = !{i64 2, i64 -1, i64 -1, i1 true}
