; ModuleID = 'DRB009-lastprivatemissing-orig-yes.c'
source_filename = "DRB009-lastprivatemissing-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [50 x i8] c";DRB009-lastprivatemissing-orig-yes.c;main;57;1;;\00", align 1
@2 = private unnamed_addr constant [51 x i8] c";DRB009-lastprivatemissing-orig-yes.c;main;57;38;;\00", align 1
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
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !24
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i32* %x), !dbg !24
  %3 = load i32, i32* %x, align 4, !dbg !25
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %3), !dbg !26
  ret i32 0, !dbg !27
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %x) #2 !dbg !28 {
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !36, metadata !DIExpression()), !dbg !37
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !38, metadata !DIExpression()), !dbg !37
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !39, metadata !DIExpression()), !dbg !40
  store i32* %x, i32** %x.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !41, metadata !DIExpression()), !dbg !42
  %2 = load i32*, i32** %len.addr, align 8, !dbg !43
  %3 = load i32*, i32** %x.addr, align 8, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !44, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !45, metadata !DIExpression()), !dbg !37
  %4 = load i32, i32* %2, align 4, !dbg !46
  store i32 %4, i32* %.capture_expr., align 4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !45, metadata !DIExpression()), !dbg !37
  %5 = load i32, i32* %.capture_expr., align 4, !dbg !46
  %sub = sub nsw i32 %5, 0, !dbg !43
  %sub2 = sub nsw i32 %sub, 1, !dbg !43
  %add = add nsw i32 %sub2, 1, !dbg !43
  %div = sdiv i32 %add, 1, !dbg !43
  %sub3 = sub nsw i32 %div, 1, !dbg !43
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %i, metadata !47, metadata !DIExpression()), !dbg !37
  store i32 0, i32* %i, align 4, !dbg !48
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !46
  %cmp = icmp slt i32 0, %6, !dbg !43
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !43

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !49, metadata !DIExpression()), !dbg !37
  store i32 0, i32* %.omp.lb, align 4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !51, metadata !DIExpression()), !dbg !37
  %7 = load i32, i32* %.capture_expr.1, align 4, !dbg !43
  store i32 %7, i32* %.omp.ub, align 4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !52, metadata !DIExpression()), !dbg !37
  store i32 1, i32* %.omp.stride, align 4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !53, metadata !DIExpression()), !dbg !37
  store i32 0, i32* %.omp.is_last, align 4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !47, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !47, metadata !DIExpression()), !dbg !37
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !43
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !43
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !43
  %10 = load i32, i32* %9, align 4, !dbg !43
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !43
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !50
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !43
  %cmp6 = icmp sgt i32 %11, %12, !dbg !50
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !50

cond.true:                                        ; preds = %omp.precond.then
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !43
  br label %cond.end, !dbg !50

cond.false:                                       ; preds = %omp.precond.then
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !50
  br label %cond.end, !dbg !50

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !50
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !50
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !50
  store i32 %15, i32* %.omp.iv, align 4, !dbg !50
  br label %omp.inner.for.cond, !dbg !43

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !50
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !50
  %cmp7 = icmp sle i32 %16, %17, !dbg !43
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !43

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !50
  %mul = mul nsw i32 %18, 1, !dbg !48
  %add8 = add nsw i32 0, %mul, !dbg !48
  store i32 %add8, i32* %i4, align 4, !dbg !48
  %19 = load i32, i32* %i4, align 4, !dbg !54
  store i32 %19, i32* %3, align 4, !dbg !55
  br label %omp.body.continue, !dbg !56

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !57

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !50
  %add9 = add nsw i32 %20, 1, !dbg !43
  store i32 %add9, i32* %.omp.iv, align 4, !dbg !43
  br label %omp.inner.for.cond, !dbg !57, !llvm.loop !58

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !57

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !57
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @2, i32 0, i32 0), i8** %21, align 8, !dbg !57
  %22 = load i32*, i32** %.global_tid..addr, align 8, !dbg !57
  %23 = load i32, i32* %22, align 4, !dbg !57
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %23), !dbg !57
  br label %omp.precond.end, !dbg !57

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %x) #2 !dbg !60 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !61, metadata !DIExpression()), !dbg !62
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !63, metadata !DIExpression()), !dbg !62
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !64, metadata !DIExpression()), !dbg !62
  store i32* %x, i32** %x.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !65, metadata !DIExpression()), !dbg !62
  %0 = load i32*, i32** %len.addr, align 8, !dbg !66
  %1 = load i32*, i32** %x.addr, align 8, !dbg !66
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !66
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !66
  %4 = load i32*, i32** %len.addr, align 8, !dbg !66
  %5 = load i32*, i32** %x.addr, align 8, !dbg !66
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #5, !dbg !66
  ret void, !dbg !66
}

declare !callback !67 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "DRB009-lastprivatemissing-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
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
!20 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 54, type: !10)
!21 = !DILocation(line: 54, column: 9, scope: !7)
!22 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 55, type: !10)
!23 = !DILocation(line: 55, column: 7, scope: !7)
!24 = !DILocation(line: 57, column: 1, scope: !7)
!25 = !DILocation(line: 61, column: 17, scope: !7)
!26 = !DILocation(line: 61, column: 3, scope: !7)
!27 = !DILocation(line: 62, column: 3, scope: !7)
!28 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 58, type: !29, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !31, !35, !35}
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!35 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!36 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !28, type: !31, flags: DIFlagArtificial)
!37 = !DILocation(line: 0, scope: !28)
!38 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !28, type: !31, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: "len", arg: 3, scope: !28, file: !1, line: 55, type: !35)
!40 = !DILocation(line: 55, column: 7, scope: !28)
!41 = !DILocalVariable(name: "x", arg: 4, scope: !28, file: !1, line: 54, type: !35)
!42 = !DILocation(line: 54, column: 9, scope: !28)
!43 = !DILocation(line: 58, column: 3, scope: !28)
!44 = !DILocalVariable(name: ".omp.iv", scope: !28, type: !10, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".capture_expr.", scope: !28, type: !10, flags: DIFlagArtificial)
!46 = !DILocation(line: 58, column: 14, scope: !28)
!47 = !DILocalVariable(name: "i", scope: !28, type: !10, flags: DIFlagArtificial)
!48 = !DILocation(line: 58, column: 18, scope: !28)
!49 = !DILocalVariable(name: ".omp.lb", scope: !28, type: !10, flags: DIFlagArtificial)
!50 = !DILocation(line: 58, column: 8, scope: !28)
!51 = !DILocalVariable(name: ".omp.ub", scope: !28, type: !10, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: ".omp.stride", scope: !28, type: !10, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: ".omp.is_last", scope: !28, type: !10, flags: DIFlagArtificial)
!54 = !DILocation(line: 59, column: 7, scope: !28)
!55 = !DILocation(line: 59, column: 6, scope: !28)
!56 = !DILocation(line: 59, column: 5, scope: !28)
!57 = !DILocation(line: 57, column: 1, scope: !28)
!58 = distinct !{!58, !57, !59}
!59 = !DILocation(line: 57, column: 38, scope: !28)
!60 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 58, type: !29, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!61 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !60, type: !31, flags: DIFlagArtificial)
!62 = !DILocation(line: 0, scope: !60)
!63 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !60, type: !31, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: "len", arg: 3, scope: !60, type: !35, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: "x", arg: 4, scope: !60, type: !35, flags: DIFlagArtificial)
!66 = !DILocation(line: 58, column: 3, scope: !60)
!67 = !{!68}
!68 = !{i64 2, i64 -1, i64 -1, i1 true}
