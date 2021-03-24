; ModuleID = 'DRB109-orderedmissing-orig-yes.c'
source_filename = "DRB109-orderedmissing-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [46 x i8] c";DRB109-orderedmissing-orig-yes.c;main;54;1;;\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"x=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %x, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 0, i32* %x, align 4, !dbg !12
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !13
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !13
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %x), !dbg !13
  %3 = load i32, i32* %x, align 4, !dbg !14
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %3), !dbg !15
  ret i32 0, !dbg !16
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %x) #2 !dbg !17 {
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
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !25, metadata !DIExpression()), !dbg !26
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !27, metadata !DIExpression()), !dbg !26
  store i32* %x, i32** %x.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !28, metadata !DIExpression()), !dbg !29
  %2 = load i32*, i32** %x.addr, align 8, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !31, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !32, metadata !DIExpression()), !dbg !26
  store i32 0, i32* %.omp.lb, align 4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !34, metadata !DIExpression()), !dbg !26
  store i32 99, i32* %.omp.ub, align 4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !35, metadata !DIExpression()), !dbg !26
  store i32 1, i32* %.omp.stride, align 4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !36, metadata !DIExpression()), !dbg !26
  store i32 0, i32* %.omp.is_last, align 4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %i, metadata !37, metadata !DIExpression()), !dbg !26
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !30
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !30
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !30
  %5 = load i32, i32* %4, align 4, !dbg !30
  call void @__kmpc_dispatch_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 66, i32 0, i32 99, i32 1, i32 1), !dbg !30
  br label %omp.dispatch.cond, !dbg !30

omp.dispatch.cond:                                ; preds = %omp.dispatch.inc, %entry
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !30
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !30
  %7 = call i32 @__kmpc_dispatch_next_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride), !dbg !30
  %tobool = icmp ne i32 %7, 0, !dbg !30
  br i1 %tobool, label %omp.dispatch.body, label %omp.dispatch.end, !dbg !30

omp.dispatch.body:                                ; preds = %omp.dispatch.cond
  %8 = load i32, i32* %.omp.lb, align 4, !dbg !33
  store i32 %8, i32* %.omp.iv, align 4, !dbg !33
  br label %omp.inner.for.cond, !dbg !30

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.dispatch.body
  %9 = load i32, i32* %.omp.iv, align 4, !dbg !33
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !33
  %cmp = icmp sle i32 %9, %10, !dbg !30
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !30

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !33
  %mul = mul nsw i32 %11, 1, !dbg !38
  %add = add nsw i32 0, %mul, !dbg !38
  store i32 %add, i32* %i, align 4, !dbg !38
  %12 = load i32, i32* %2, align 4, !dbg !39
  %inc = add nsw i32 %12, 1, !dbg !39
  store i32 %inc, i32* %2, align 4, !dbg !39
  br label %omp.body.continue, !dbg !41

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !42

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !33
  %add1 = add nsw i32 %13, 1, !dbg !30
  store i32 %add1, i32* %.omp.iv, align 4, !dbg !30
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !42
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1, i32 0, i32 0), i8** %14, align 8, !dbg !42
  call void @__kmpc_dispatch_fini_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !42
  br label %omp.inner.for.cond, !dbg !42, !llvm.loop !43

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.dispatch.inc, !dbg !42

omp.dispatch.inc:                                 ; preds = %omp.inner.for.end
  br label %omp.dispatch.cond, !dbg !42, !llvm.loop !45

omp.dispatch.end:                                 ; preds = %omp.dispatch.cond
  ret void, !dbg !46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_dispatch_init_4(%struct.ident_t*, i32, i32, i32, i32, i32, i32)

declare dso_local i32 @__kmpc_dispatch_next_4(%struct.ident_t*, i32, i32*, i32*, i32*, i32*)

declare dso_local void @__kmpc_dispatch_fini_4(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %x) #2 !dbg !47 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !48, metadata !DIExpression()), !dbg !49
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !50, metadata !DIExpression()), !dbg !49
  store i32* %x, i32** %x.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !51, metadata !DIExpression()), !dbg !49
  %0 = load i32*, i32** %x.addr, align 8, !dbg !52
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !52
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !52
  %3 = load i32*, i32** %x.addr, align 8, !dbg !52
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !52
  ret void, !dbg !52
}

declare !callback !53 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "DRB109-orderedmissing-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !8, scopeLine: 52, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 53, type: !10)
!12 = !DILocation(line: 53, column: 7, scope: !7)
!13 = !DILocation(line: 54, column: 1, scope: !7)
!14 = !DILocation(line: 58, column: 20, scope: !7)
!15 = !DILocation(line: 58, column: 3, scope: !7)
!16 = !DILocation(line: 59, column: 3, scope: !7)
!17 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 55, type: !18, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !20, !24}
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!24 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!25 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !17, type: !20, flags: DIFlagArtificial)
!26 = !DILocation(line: 0, scope: !17)
!27 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !17, type: !20, flags: DIFlagArtificial)
!28 = !DILocalVariable(name: "x", arg: 3, scope: !17, file: !1, line: 53, type: !24)
!29 = !DILocation(line: 53, column: 7, scope: !17)
!30 = !DILocation(line: 55, column: 3, scope: !17)
!31 = !DILocalVariable(name: ".omp.iv", scope: !17, type: !10, flags: DIFlagArtificial)
!32 = !DILocalVariable(name: ".omp.lb", scope: !17, type: !10, flags: DIFlagArtificial)
!33 = !DILocation(line: 55, column: 8, scope: !17)
!34 = !DILocalVariable(name: ".omp.ub", scope: !17, type: !10, flags: DIFlagArtificial)
!35 = !DILocalVariable(name: ".omp.stride", scope: !17, type: !10, flags: DIFlagArtificial)
!36 = !DILocalVariable(name: ".omp.is_last", scope: !17, type: !10, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: "i", scope: !17, type: !10, flags: DIFlagArtificial)
!38 = !DILocation(line: 55, column: 28, scope: !17)
!39 = !DILocation(line: 56, column: 6, scope: !40)
!40 = distinct !DILexicalBlock(scope: !17, file: !1, line: 55, column: 33)
!41 = !DILocation(line: 57, column: 3, scope: !40)
!42 = !DILocation(line: 54, column: 1, scope: !17)
!43 = distinct !{!43, !42, !44}
!44 = !DILocation(line: 54, column: 34, scope: !17)
!45 = distinct !{!45, !42, !44}
!46 = !DILocation(line: 57, column: 3, scope: !17)
!47 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 55, type: !18, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!48 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !47, type: !20, flags: DIFlagArtificial)
!49 = !DILocation(line: 0, scope: !47)
!50 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !47, type: !20, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: "x", arg: 3, scope: !47, type: !24, flags: DIFlagArtificial)
!52 = !DILocation(line: 55, column: 3, scope: !47)
!53 = !{!54}
!54 = !{i64 2, i64 -1, i64 -1, i1 true}
