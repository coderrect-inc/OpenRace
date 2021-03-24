; ModuleID = 'DRB010-lastprivatemissing-var-yes.c'
source_filename = "DRB010-lastprivatemissing-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [49 x i8] c";DRB010-lastprivatemissing-var-yes.c;main;61;1;;\00", align 1
@2 = private unnamed_addr constant [50 x i8] c";DRB010-lastprivatemissing-var-yes.c;main;61;38;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"x=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %len = alloca i32, align 4
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
  call void @llvm.dbg.declare(metadata i32* %x, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %len, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 10000, i32* %len, align 4, !dbg !23
  %2 = load i32, i32* %argc.addr, align 4, !dbg !24
  %cmp = icmp sgt i32 %2, 1, !dbg !26
  br i1 %cmp, label %if.then, label %if.end, !dbg !27

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %argv.addr, align 8, !dbg !28
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !28
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !28
  %call = call i32 @atoi(i8* %4) #6, !dbg !29
  store i32 %call, i32* %len, align 4, !dbg !30
  br label %if.end, !dbg !31

if.end:                                           ; preds = %if.then, %entry
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !32
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !32
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i32* %x), !dbg !32
  %6 = load i32, i32* %x, align 4, !dbg !33
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %6), !dbg !34
  ret i32 0, !dbg !35
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %x) #3 !dbg !36 {
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
  %i5 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !44, metadata !DIExpression()), !dbg !45
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !46, metadata !DIExpression()), !dbg !45
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !47, metadata !DIExpression()), !dbg !48
  store i32* %x, i32** %x.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !49, metadata !DIExpression()), !dbg !50
  %2 = load i32*, i32** %len.addr, align 8, !dbg !51
  %3 = load i32*, i32** %x.addr, align 8, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !52, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !53, metadata !DIExpression()), !dbg !45
  %4 = load i32, i32* %2, align 4, !dbg !54
  store i32 %4, i32* %.capture_expr., align 4, !dbg !54
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !53, metadata !DIExpression()), !dbg !45
  %5 = load i32, i32* %.capture_expr., align 4, !dbg !54
  %sub = sub nsw i32 %5, 0, !dbg !51
  %sub2 = sub nsw i32 %sub, 1, !dbg !51
  %add = add nsw i32 %sub2, 1, !dbg !51
  %div = sdiv i32 %add, 1, !dbg !51
  %sub3 = sub nsw i32 %div, 1, !dbg !51
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %i, metadata !55, metadata !DIExpression()), !dbg !45
  store i32 0, i32* %i, align 4, !dbg !56
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !54
  %cmp = icmp slt i32 0, %6, !dbg !51
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !51

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !57, metadata !DIExpression()), !dbg !45
  store i32 0, i32* %.omp.lb, align 4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !59, metadata !DIExpression()), !dbg !45
  %7 = load i32, i32* %.capture_expr.1, align 4, !dbg !51
  store i32 %7, i32* %.omp.ub, align 4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !60, metadata !DIExpression()), !dbg !45
  store i32 1, i32* %.omp.stride, align 4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !61, metadata !DIExpression()), !dbg !45
  store i32 0, i32* %.omp.is_last, align 4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !55, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !55, metadata !DIExpression()), !dbg !45
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !51
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !51
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !51
  %10 = load i32, i32* %9, align 4, !dbg !51
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !51
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !58
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !51
  %cmp6 = icmp sgt i32 %11, %12, !dbg !58
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !58

cond.true:                                        ; preds = %omp.precond.then
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !51
  br label %cond.end, !dbg !58

cond.false:                                       ; preds = %omp.precond.then
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !58
  br label %cond.end, !dbg !58

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !58
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !58
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !58
  store i32 %15, i32* %.omp.iv, align 4, !dbg !58
  br label %omp.inner.for.cond, !dbg !51

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !58
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !58
  %cmp7 = icmp sle i32 %16, %17, !dbg !51
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !51

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !58
  %mul = mul nsw i32 %18, 1, !dbg !56
  %add8 = add nsw i32 0, %mul, !dbg !56
  store i32 %add8, i32* %i4, align 4, !dbg !56
  %19 = load i32, i32* %i4, align 4, !dbg !62
  store i32 %19, i32* %3, align 4, !dbg !63
  br label %omp.body.continue, !dbg !64

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !65

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !58
  %add9 = add nsw i32 %20, 1, !dbg !51
  store i32 %add9, i32* %.omp.iv, align 4, !dbg !51
  br label %omp.inner.for.cond, !dbg !65, !llvm.loop !66

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !65

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !65
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @2, i32 0, i32 0), i8** %21, align 8, !dbg !65
  %22 = load i32*, i32** %.global_tid..addr, align 8, !dbg !65
  %23 = load i32, i32* %22, align 4, !dbg !65
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %23), !dbg !65
  br label %omp.precond.end, !dbg !65

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %x) #3 !dbg !68 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !69, metadata !DIExpression()), !dbg !70
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !71, metadata !DIExpression()), !dbg !70
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !72, metadata !DIExpression()), !dbg !70
  store i32* %x, i32** %x.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !73, metadata !DIExpression()), !dbg !70
  %0 = load i32*, i32** %len.addr, align 8, !dbg !74
  %1 = load i32*, i32** %x.addr, align 8, !dbg !74
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !74
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !74
  %4 = load i32*, i32** %len.addr, align 8, !dbg !74
  %5 = load i32*, i32** %x.addr, align 8, !dbg !74
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #7, !dbg !74
  ret void, !dbg !74
}

declare !callback !75 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB010-lastprivatemissing-var-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
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
!20 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 56, type: !10)
!21 = !DILocation(line: 56, column: 9, scope: !7)
!22 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 57, type: !10)
!23 = !DILocation(line: 57, column: 7, scope: !7)
!24 = !DILocation(line: 58, column: 7, scope: !25)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 58, column: 7)
!26 = !DILocation(line: 58, column: 11, scope: !25)
!27 = !DILocation(line: 58, column: 7, scope: !7)
!28 = !DILocation(line: 59, column: 16, scope: !25)
!29 = !DILocation(line: 59, column: 11, scope: !25)
!30 = !DILocation(line: 59, column: 9, scope: !25)
!31 = !DILocation(line: 59, column: 5, scope: !25)
!32 = !DILocation(line: 61, column: 1, scope: !7)
!33 = !DILocation(line: 64, column: 17, scope: !7)
!34 = !DILocation(line: 64, column: 3, scope: !7)
!35 = !DILocation(line: 65, column: 3, scope: !7)
!36 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 62, type: !37, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !39, !39, !43, !43}
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!43 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!44 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !36, type: !39, flags: DIFlagArtificial)
!45 = !DILocation(line: 0, scope: !36)
!46 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !36, type: !39, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: "len", arg: 3, scope: !36, file: !1, line: 57, type: !43)
!48 = !DILocation(line: 57, column: 7, scope: !36)
!49 = !DILocalVariable(name: "x", arg: 4, scope: !36, file: !1, line: 56, type: !43)
!50 = !DILocation(line: 56, column: 9, scope: !36)
!51 = !DILocation(line: 62, column: 3, scope: !36)
!52 = !DILocalVariable(name: ".omp.iv", scope: !36, type: !10, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: ".capture_expr.", scope: !36, type: !10, flags: DIFlagArtificial)
!54 = !DILocation(line: 62, column: 14, scope: !36)
!55 = !DILocalVariable(name: "i", scope: !36, type: !10, flags: DIFlagArtificial)
!56 = !DILocation(line: 62, column: 18, scope: !36)
!57 = !DILocalVariable(name: ".omp.lb", scope: !36, type: !10, flags: DIFlagArtificial)
!58 = !DILocation(line: 62, column: 8, scope: !36)
!59 = !DILocalVariable(name: ".omp.ub", scope: !36, type: !10, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".omp.stride", scope: !36, type: !10, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".omp.is_last", scope: !36, type: !10, flags: DIFlagArtificial)
!62 = !DILocation(line: 63, column: 7, scope: !36)
!63 = !DILocation(line: 63, column: 6, scope: !36)
!64 = !DILocation(line: 63, column: 5, scope: !36)
!65 = !DILocation(line: 61, column: 1, scope: !36)
!66 = distinct !{!66, !65, !67}
!67 = !DILocation(line: 61, column: 38, scope: !36)
!68 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 62, type: !37, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!69 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !68, type: !39, flags: DIFlagArtificial)
!70 = !DILocation(line: 0, scope: !68)
!71 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !68, type: !39, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: "len", arg: 3, scope: !68, type: !43, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "x", arg: 4, scope: !68, type: !43, flags: DIFlagArtificial)
!74 = !DILocation(line: 62, column: 3, scope: !68)
!75 = !{!76}
!76 = !{i64 2, i64 -1, i64 -1, i1 true}
