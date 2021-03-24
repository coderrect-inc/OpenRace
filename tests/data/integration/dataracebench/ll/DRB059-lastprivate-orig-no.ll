; ModuleID = 'DRB059-lastprivate-orig-no.c'
source_filename = "DRB059-lastprivate-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [41 x i8] c";DRB059-lastprivate-orig-no.c;foo;59;1;;\00", align 1
@2 = private unnamed_addr constant [42 x i8] c";DRB059-lastprivate-orig-no.c;foo;59;53;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"x=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo() #0 !dbg !7 {
entry:
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  call void @llvm.dbg.declare(metadata i32* %i, metadata !10, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %x, metadata !13, metadata !DIExpression()), !dbg !14
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !15
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !15
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %x), !dbg !15
  %3 = load i32, i32* %x, align 4, !dbg !16
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %3), !dbg !17
  ret void, !dbg !18
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %x) #2 !dbg !19 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %x1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !27, metadata !DIExpression()), !dbg !28
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !29, metadata !DIExpression()), !dbg !28
  store i32* %x, i32** %x.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !30, metadata !DIExpression()), !dbg !31
  %2 = load i32*, i32** %x.addr, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !33, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !34, metadata !DIExpression()), !dbg !28
  store i32 0, i32* %.omp.lb, align 4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !36, metadata !DIExpression()), !dbg !28
  store i32 99, i32* %.omp.ub, align 4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !37, metadata !DIExpression()), !dbg !28
  store i32 1, i32* %.omp.stride, align 4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !38, metadata !DIExpression()), !dbg !28
  store i32 0, i32* %.omp.is_last, align 4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %i, metadata !39, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %x1, metadata !40, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %i2, metadata !39, metadata !DIExpression()), !dbg !28
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !32
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !32
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !32
  %5 = load i32, i32* %4, align 4, !dbg !32
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !32
  %6 = load i32, i32* %.omp.ub, align 4, !dbg !35
  %cmp = icmp sgt i32 %6, 99, !dbg !35
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !35

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !35

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %.omp.ub, align 4, !dbg !35
  br label %cond.end, !dbg !35

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %7, %cond.false ], !dbg !35
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !35
  %8 = load i32, i32* %.omp.lb, align 4, !dbg !35
  store i32 %8, i32* %.omp.iv, align 4, !dbg !35
  br label %omp.inner.for.cond, !dbg !32

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %9 = load i32, i32* %.omp.iv, align 4, !dbg !35
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !35
  %cmp3 = icmp sle i32 %9, %10, !dbg !32
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !32

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !35
  %mul = mul nsw i32 %11, 1, !dbg !41
  %add = add nsw i32 0, %mul, !dbg !41
  store i32 %add, i32* %i, align 4, !dbg !41
  %12 = load i32, i32* %i, align 4, !dbg !42
  store i32 %12, i32* %x1, align 4, !dbg !43
  br label %omp.body.continue, !dbg !44

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !45

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !35
  %add4 = add nsw i32 %13, 1, !dbg !32
  store i32 %add4, i32* %.omp.iv, align 4, !dbg !32
  br label %omp.inner.for.cond, !dbg !45, !llvm.loop !46

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !45

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !45
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2, i32 0, i32 0), i8** %14, align 8, !dbg !45
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !45
  %15 = load i32, i32* %.omp.is_last, align 4, !dbg !45
  %16 = icmp ne i32 %15, 0, !dbg !45
  br i1 %16, label %.omp.lastprivate.then, label %.omp.lastprivate.done, !dbg !45

.omp.lastprivate.then:                            ; preds = %omp.loop.exit
  %17 = load i32, i32* %x1, align 4, !dbg !48
  store i32 %17, i32* %2, align 4, !dbg !48
  br label %.omp.lastprivate.done, !dbg !45

.omp.lastprivate.done:                            ; preds = %.omp.lastprivate.then, %omp.loop.exit
  ret void, !dbg !42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %x) #2 !dbg !49 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !50, metadata !DIExpression()), !dbg !51
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !52, metadata !DIExpression()), !dbg !51
  store i32* %x, i32** %x.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !53, metadata !DIExpression()), !dbg !51
  %0 = load i32*, i32** %x.addr, align 8, !dbg !54
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !54
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !54
  %3 = load i32*, i32** %x.addr, align 8, !dbg !54
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !54
  ret void, !dbg !54
}

declare !callback !55 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !57 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @foo(), !dbg !60
  ret i32 0, !dbg !61
}

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
!1 = !DIFile(filename: "DRB059-lastprivate-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 56, type: !8, scopeLine: 57, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 58, type: !11)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocation(line: 58, column: 7, scope: !7)
!13 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 58, type: !11)
!14 = !DILocation(line: 58, column: 9, scope: !7)
!15 = !DILocation(line: 59, column: 1, scope: !7)
!16 = !DILocation(line: 62, column: 17, scope: !7)
!17 = !DILocation(line: 62, column: 3, scope: !7)
!18 = !DILocation(line: 63, column: 1, scope: !7)
!19 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 60, type: !20, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22, !22, !26}
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!26 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !11, size: 64)
!27 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !19, type: !22, flags: DIFlagArtificial)
!28 = !DILocation(line: 0, scope: !19)
!29 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !19, type: !22, flags: DIFlagArtificial)
!30 = !DILocalVariable(name: "x", arg: 3, scope: !19, file: !1, line: 58, type: !26)
!31 = !DILocation(line: 58, column: 9, scope: !19)
!32 = !DILocation(line: 60, column: 3, scope: !19)
!33 = !DILocalVariable(name: ".omp.iv", scope: !19, type: !11, flags: DIFlagArtificial)
!34 = !DILocalVariable(name: ".omp.lb", scope: !19, type: !11, flags: DIFlagArtificial)
!35 = !DILocation(line: 60, column: 8, scope: !19)
!36 = !DILocalVariable(name: ".omp.ub", scope: !19, type: !11, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: ".omp.stride", scope: !19, type: !11, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: ".omp.is_last", scope: !19, type: !11, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: "i", scope: !19, type: !11, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: "x", scope: !19, type: !11, flags: DIFlagArtificial)
!41 = !DILocation(line: 60, column: 18, scope: !19)
!42 = !DILocation(line: 61, column: 7, scope: !19)
!43 = !DILocation(line: 61, column: 6, scope: !19)
!44 = !DILocation(line: 61, column: 5, scope: !19)
!45 = !DILocation(line: 59, column: 1, scope: !19)
!46 = distinct !{!46, !45, !47}
!47 = !DILocation(line: 59, column: 53, scope: !19)
!48 = !DILocation(line: 59, column: 51, scope: !19)
!49 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 60, type: !20, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!50 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !49, type: !22, flags: DIFlagArtificial)
!51 = !DILocation(line: 0, scope: !49)
!52 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !49, type: !22, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: "x", arg: 3, scope: !49, type: !26, flags: DIFlagArtificial)
!54 = !DILocation(line: 60, column: 3, scope: !49)
!55 = !{!56}
!56 = !{i64 2, i64 -1, i64 -1, i1 true}
!57 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 65, type: !58, scopeLine: 66, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!58 = !DISubroutineType(types: !59)
!59 = !{!11}
!60 = !DILocation(line: 67, column: 3, scope: !57)
!61 = !DILocation(line: 68, column: 3, scope: !57)
