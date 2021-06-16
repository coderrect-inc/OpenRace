; ModuleID = 'integration/openmp/ordered-no.c'
source_filename = "integration/openmp/ordered-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [44 x i8] c";integration/openmp/ordered-no.c;main;8;9;;\00", align 1
@2 = private unnamed_addr constant [46 x i8] c";integration/openmp/ordered-no.c;main;10;13;;\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"n = %d\0A\00", align 1
@3 = private unnamed_addr constant [44 x i8] c";integration/openmp/ordered-no.c;main;6;5;;\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %n to i8*, !dbg !13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !13
  call void @llvm.dbg.declare(metadata i32* %n, metadata !12, metadata !DIExpression()), !dbg !14
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !15
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @3, i32 0, i32 0), i8** %3, align 8, !dbg !15, !tbaa !16
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !15
  %4 = bitcast i32* %n to i8*, !dbg !22
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #5, !dbg !22
  ret i32 0, !dbg !23
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !24 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %n = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !32, metadata !DIExpression()), !dbg !43
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !33, metadata !DIExpression()), !dbg !43
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !34, metadata !DIExpression()), !dbg !45
  %3 = bitcast i32* %.omp.lb to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !37, metadata !DIExpression()), !dbg !45
  store i32 0, i32* %.omp.lb, align 4, !dbg !46, !tbaa !47
  %4 = bitcast i32* %.omp.ub to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !38, metadata !DIExpression()), !dbg !45
  store i32 9, i32* %.omp.ub, align 4, !dbg !46, !tbaa !47
  %5 = bitcast i32* %.omp.stride to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !39, metadata !DIExpression()), !dbg !45
  store i32 1, i32* %.omp.stride, align 4, !dbg !46, !tbaa !47
  %6 = bitcast i32* %.omp.is_last to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !40, metadata !DIExpression()), !dbg !45
  store i32 0, i32* %.omp.is_last, align 4, !dbg !46, !tbaa !47
  %7 = bitcast i32* %n to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %n, metadata !41, metadata !DIExpression()), !dbg !45
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !44
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !44, !tbaa !16
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !44
  %10 = load i32, i32* %9, align 4, !dbg !44, !tbaa !47
  call void @__kmpc_dispatch_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %10, i32 66, i32 0, i32 9, i32 1, i32 1), !dbg !44
  br label %omp.dispatch.cond, !dbg !44

omp.dispatch.cond:                                ; preds = %omp.dispatch.inc, %entry
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !44
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !44, !tbaa !16
  %12 = call i32 @__kmpc_dispatch_next_4(%struct.ident_t* %.kmpc_loc.addr, i32 %10, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride), !dbg !44
  %tobool = icmp ne i32 %12, 0, !dbg !44
  br i1 %tobool, label %omp.dispatch.body, label %omp.dispatch.cleanup, !dbg !44

omp.dispatch.cleanup:                             ; preds = %omp.dispatch.cond
  br label %omp.dispatch.end, !dbg !44

omp.dispatch.body:                                ; preds = %omp.dispatch.cond
  %13 = load i32, i32* %.omp.lb, align 4, !dbg !46, !tbaa !47
  store i32 %13, i32* %.omp.iv, align 4, !dbg !46, !tbaa !47
  br label %omp.inner.for.cond, !dbg !44

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.dispatch.body
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !46, !tbaa !47
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !46, !tbaa !47
  %cmp = icmp sle i32 %14, %15, !dbg !48
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !44

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !44

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !46, !tbaa !47
  %mul = mul nsw i32 %16, 1, !dbg !49
  %add = add nsw i32 0, %mul, !dbg !49
  store i32 %add, i32* %n, align 4, !dbg !49, !tbaa !47
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2, i32 0, i32 0), i8** %17, align 8, !dbg !50, !tbaa !16
  call void @__kmpc_ordered(%struct.ident_t* %.kmpc_loc.addr, i32 %10), !dbg !50
  %18 = load i32, i32* %n, align 4, !dbg !51, !tbaa !47
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %18), !dbg !53
  call void @__kmpc_end_ordered(%struct.ident_t* %.kmpc_loc.addr, i32 %10), !dbg !53
  br label %omp.body.continue, !dbg !54

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !55

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !46, !tbaa !47
  %add1 = add nsw i32 %19, 1, !dbg !48
  store i32 %add1, i32* %.omp.iv, align 4, !dbg !48, !tbaa !47
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !55
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i32 0, i32 0), i8** %20, align 8, !dbg !55, !tbaa !16
  call void @__kmpc_dispatch_fini_4(%struct.ident_t* %.kmpc_loc.addr, i32 %10), !dbg !55
  br label %omp.inner.for.cond, !dbg !55, !llvm.loop !56

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.dispatch.inc, !dbg !55

omp.dispatch.inc:                                 ; preds = %omp.inner.for.end
  br label %omp.dispatch.cond, !dbg !55, !llvm.loop !58

omp.dispatch.end:                                 ; preds = %omp.dispatch.cleanup
  %21 = bitcast i32* %n to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #5, !dbg !55
  %22 = bitcast i32* %.omp.is_last to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #5, !dbg !55
  %23 = bitcast i32* %.omp.stride to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #5, !dbg !55
  %24 = bitcast i32* %.omp.ub to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !55
  %25 = bitcast i32* %.omp.lb to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !55
  %26 = bitcast i32* %.omp.iv to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !55
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !57
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i32 0, i32 0), i8** %27, align 8, !dbg !57, !tbaa !16
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %10), !dbg !57
  ret void, !dbg !59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_dispatch_init_4(%struct.ident_t*, i32, i32, i32, i32, i32, i32)

declare dso_local i32 @__kmpc_dispatch_next_4(%struct.ident_t*, i32, i32*, i32*, i32*, i32*)

declare dso_local void @__kmpc_end_ordered(%struct.ident_t*, i32)

declare dso_local void @__kmpc_ordered(%struct.ident_t*, i32)

declare dso_local i32 @printf(i8*, ...) #4

declare dso_local void @__kmpc_dispatch_fini_4(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !60 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !62, metadata !DIExpression()), !dbg !64
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !42
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !63, metadata !DIExpression()), !dbg !64
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !65, !tbaa !42
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !65, !tbaa !42
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #5, !dbg !65
  ret void, !dbg !65
}

declare !callback !66 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/ordered-no.c", directory: "/home/rohan/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, scopeLine: 3, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 5, type: !10)
!13 = !DILocation(line: 5, column: 5, scope: !7)
!14 = !DILocation(line: 5, column: 9, scope: !7)
!15 = !DILocation(line: 6, column: 5, scope: !7)
!16 = !{!17, !21, i64 16}
!17 = !{!"ident_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !21, i64 16}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !{!"any pointer", !19, i64 0}
!22 = !DILocation(line: 14, column: 1, scope: !7)
!23 = !DILocation(line: 13, column: 5, scope: !7)
!24 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 7, type: !25, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !27, !27}
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!31 = !{!32, !33, !34, !37, !38, !39, !40, !41}
!32 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !24, type: !27, flags: DIFlagArtificial)
!33 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !24, type: !27, flags: DIFlagArtificial)
!34 = !DILocalVariable(name: ".omp.iv", scope: !35, type: !10, flags: DIFlagArtificial)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 8, column: 9)
!36 = distinct !DILexicalBlock(scope: !24, file: !1, line: 7, column: 5)
!37 = !DILocalVariable(name: ".omp.lb", scope: !35, type: !10, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: ".omp.ub", scope: !35, type: !10, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: ".omp.stride", scope: !35, type: !10, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: ".omp.is_last", scope: !35, type: !10, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: "n", scope: !35, type: !10, flags: DIFlagArtificial)
!42 = !{!21, !21, i64 0}
!43 = !DILocation(line: 0, scope: !24)
!44 = !DILocation(line: 8, column: 9, scope: !36)
!45 = !DILocation(line: 0, scope: !35)
!46 = !DILocation(line: 9, column: 14, scope: !35)
!47 = !{!18, !18, i64 0}
!48 = !DILocation(line: 9, column: 9, scope: !35)
!49 = !DILocation(line: 9, column: 23, scope: !35)
!50 = !DILocation(line: 10, column: 13, scope: !35)
!51 = !DILocation(line: 11, column: 31, scope: !52)
!52 = distinct !DILexicalBlock(scope: !35, file: !1, line: 10, column: 13)
!53 = !DILocation(line: 11, column: 13, scope: !52)
!54 = !DILocation(line: 10, column: 32, scope: !52)
!55 = !DILocation(line: 8, column: 9, scope: !35)
!56 = distinct !{!56, !55, !57}
!57 = !DILocation(line: 8, column: 32, scope: !35)
!58 = distinct !{!58, !55, !57}
!59 = !DILocation(line: 12, column: 5, scope: !24)
!60 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 7, type: !25, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !61)
!61 = !{!62, !63}
!62 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !60, type: !27, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !60, type: !27, flags: DIFlagArtificial)
!64 = !DILocation(line: 0, scope: !60)
!65 = !DILocation(line: 7, column: 5, scope: !60)
!66 = !{!67}
!67 = !{i64 2, i64 -1, i64 -1, i1 true}
