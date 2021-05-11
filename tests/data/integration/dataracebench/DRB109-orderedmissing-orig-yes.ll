; ModuleID = 'integration/dataracebench/DRB109-orderedmissing-orig-yes.c'
source_filename = "integration/dataracebench/DRB109-orderedmissing-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB109-orderedmissing-orig-yes.c;main;54;1;;\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"x=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %x to i8*, !dbg !13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !13
  call void @llvm.dbg.declare(metadata i32* %x, metadata !12, metadata !DIExpression()), !dbg !14
  store i32 0, i32* %x, align 4, !dbg !14, !tbaa !15
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !19
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !19, !tbaa !20
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %x), !dbg !19
  %4 = load i32, i32* %x, align 4, !dbg !23, !tbaa !15
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %4), !dbg !24
  %5 = bitcast i32* %x to i8*, !dbg !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #5, !dbg !25
  ret i32 0, !dbg !26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %x) #3 !dbg !27 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !36, metadata !DIExpression()), !dbg !46
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !37, metadata !DIExpression()), !dbg !46
  store i32* %x, i32** %x.addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !38, metadata !DIExpression()), !dbg !47
  %2 = load i32*, i32** %x.addr, align 8, !dbg !48, !tbaa !45
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !39, metadata !DIExpression()), !dbg !46
  %4 = bitcast i32* %.omp.lb to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !40, metadata !DIExpression()), !dbg !46
  store i32 0, i32* %.omp.lb, align 4, !dbg !49, !tbaa !15
  %5 = bitcast i32* %.omp.ub to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !41, metadata !DIExpression()), !dbg !46
  store i32 99, i32* %.omp.ub, align 4, !dbg !49, !tbaa !15
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !42, metadata !DIExpression()), !dbg !46
  store i32 1, i32* %.omp.stride, align 4, !dbg !49, !tbaa !15
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !43, metadata !DIExpression()), !dbg !46
  store i32 0, i32* %.omp.is_last, align 4, !dbg !49, !tbaa !15
  %8 = bitcast i32* %i to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %i, metadata !44, metadata !DIExpression()), !dbg !46
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !48
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !48, !tbaa !20
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !48
  %11 = load i32, i32* %10, align 4, !dbg !48, !tbaa !15
  call void @__kmpc_dispatch_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 66, i32 0, i32 99, i32 1, i32 1), !dbg !48
  br label %omp.dispatch.cond, !dbg !48

omp.dispatch.cond:                                ; preds = %omp.dispatch.inc, %entry
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !48
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @1, i32 0, i32 0), i8** %12, align 8, !dbg !48, !tbaa !20
  %13 = call i32 @__kmpc_dispatch_next_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride), !dbg !48
  %tobool = icmp ne i32 %13, 0, !dbg !48
  br i1 %tobool, label %omp.dispatch.body, label %omp.dispatch.cleanup, !dbg !48

omp.dispatch.cleanup:                             ; preds = %omp.dispatch.cond
  br label %omp.dispatch.end, !dbg !48

omp.dispatch.body:                                ; preds = %omp.dispatch.cond
  %14 = load i32, i32* %.omp.lb, align 4, !dbg !49, !tbaa !15
  store i32 %14, i32* %.omp.iv, align 4, !dbg !49, !tbaa !15
  br label %omp.inner.for.cond, !dbg !48

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.dispatch.body
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !49, !tbaa !15
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !49, !tbaa !15
  %cmp = icmp sle i32 %15, %16, !dbg !48
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !48

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !48

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !49, !tbaa !15
  %mul = mul nsw i32 %17, 1, !dbg !50
  %add = add nsw i32 0, %mul, !dbg !50
  store i32 %add, i32* %i, align 4, !dbg !50, !tbaa !15
  %18 = load i32, i32* %2, align 4, !dbg !51, !tbaa !15
  %inc = add nsw i32 %18, 1, !dbg !51
  store i32 %inc, i32* %2, align 4, !dbg !51, !tbaa !15
  br label %omp.body.continue, !dbg !53

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !54

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !49, !tbaa !15
  %add1 = add nsw i32 %19, 1, !dbg !48
  store i32 %add1, i32* %.omp.iv, align 4, !dbg !48, !tbaa !15
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !54
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @1, i32 0, i32 0), i8** %20, align 8, !dbg !54, !tbaa !20
  call void @__kmpc_dispatch_fini_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11), !dbg !54
  br label %omp.inner.for.cond, !dbg !54, !llvm.loop !55

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.dispatch.inc, !dbg !54

omp.dispatch.inc:                                 ; preds = %omp.inner.for.end
  br label %omp.dispatch.cond, !dbg !54, !llvm.loop !57

omp.dispatch.end:                                 ; preds = %omp.dispatch.cleanup
  %21 = bitcast i32* %i to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #5, !dbg !54
  %22 = bitcast i32* %.omp.is_last to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #5, !dbg !54
  %23 = bitcast i32* %.omp.stride to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #5, !dbg !54
  %24 = bitcast i32* %.omp.ub to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !54
  %25 = bitcast i32* %.omp.lb to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !54
  %26 = bitcast i32* %.omp.iv to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !54
  ret void, !dbg !58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_dispatch_init_4(%struct.ident_t*, i32, i32, i32, i32, i32, i32)

declare dso_local i32 @__kmpc_dispatch_next_4(%struct.ident_t*, i32, i32*, i32*, i32*, i32*)

declare dso_local void @__kmpc_dispatch_fini_4(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %x) #3 !dbg !59 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !61, metadata !DIExpression()), !dbg !64
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !62, metadata !DIExpression()), !dbg !64
  store i32* %x, i32** %x.addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !63, metadata !DIExpression()), !dbg !64
  %0 = load i32*, i32** %x.addr, align 8, !dbg !65, !tbaa !45
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !65, !tbaa !45
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !65, !tbaa !45
  %3 = load i32*, i32** %x.addr, align 8, !dbg !65, !tbaa !45
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !65
  ret void, !dbg !65
}

declare !callback !66 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

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
!1 = !DIFile(filename: "integration/dataracebench/DRB109-orderedmissing-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !8, scopeLine: 52, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 53, type: !10)
!13 = !DILocation(line: 53, column: 3, scope: !7)
!14 = !DILocation(line: 53, column: 7, scope: !7)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 54, column: 1, scope: !7)
!20 = !{!21, !22, i64 16}
!21 = !{!"ident_t", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !22, i64 16}
!22 = !{!"any pointer", !17, i64 0}
!23 = !DILocation(line: 58, column: 20, scope: !7)
!24 = !DILocation(line: 58, column: 3, scope: !7)
!25 = !DILocation(line: 60, column: 1, scope: !7)
!26 = !DILocation(line: 59, column: 3, scope: !7)
!27 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 55, type: !28, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !35)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !30, !34}
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!34 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44}
!36 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !27, type: !30, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !27, type: !30, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: "x", arg: 3, scope: !27, file: !1, line: 53, type: !34)
!39 = !DILocalVariable(name: ".omp.iv", scope: !27, type: !10, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: ".omp.lb", scope: !27, type: !10, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".omp.ub", scope: !27, type: !10, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: ".omp.stride", scope: !27, type: !10, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: ".omp.is_last", scope: !27, type: !10, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: "i", scope: !27, type: !10, flags: DIFlagArtificial)
!45 = !{!22, !22, i64 0}
!46 = !DILocation(line: 0, scope: !27)
!47 = !DILocation(line: 53, column: 7, scope: !27)
!48 = !DILocation(line: 55, column: 3, scope: !27)
!49 = !DILocation(line: 55, column: 8, scope: !27)
!50 = !DILocation(line: 55, column: 28, scope: !27)
!51 = !DILocation(line: 56, column: 6, scope: !52)
!52 = distinct !DILexicalBlock(scope: !27, file: !1, line: 55, column: 33)
!53 = !DILocation(line: 57, column: 3, scope: !52)
!54 = !DILocation(line: 54, column: 1, scope: !27)
!55 = distinct !{!55, !54, !56}
!56 = !DILocation(line: 54, column: 34, scope: !27)
!57 = distinct !{!57, !54, !56}
!58 = !DILocation(line: 57, column: 3, scope: !27)
!59 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 55, type: !28, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !60)
!60 = !{!61, !62, !63}
!61 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !59, type: !30, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !59, type: !30, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: "x", arg: 3, scope: !59, type: !34, flags: DIFlagArtificial)
!64 = !DILocation(line: 0, scope: !59)
!65 = !DILocation(line: 55, column: 3, scope: !59)
!66 = !{!67}
!67 = !{i64 2, i64 -1, i64 -1, i1 true}
