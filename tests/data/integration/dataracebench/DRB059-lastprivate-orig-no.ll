; ModuleID = 'integration/dataracebench/DRB059-lastprivate-orig-no.c'
source_filename = "integration/dataracebench/DRB059-lastprivate-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [67 x i8] c";integration/dataracebench/DRB059-lastprivate-orig-no.c;foo;59;1;;\00", align 1
@2 = private unnamed_addr constant [68 x i8] c";integration/dataracebench/DRB059-lastprivate-orig-no.c;foo;59;53;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"x=%d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @foo() #0 !dbg !7 {
entry:
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast i32* %i to i8*, !dbg !14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !11, metadata !DIExpression()), !dbg !15
  %3 = bitcast i32* %x to i8*, !dbg !14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !14
  call void @llvm.dbg.declare(metadata i32* %x, metadata !13, metadata !DIExpression()), !dbg !16
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !17
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !17, !tbaa !18
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %x), !dbg !17
  %5 = load i32, i32* %x, align 4, !dbg !24, !tbaa !25
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %5), !dbg !26
  %6 = bitcast i32* %x to i8*, !dbg !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #5, !dbg !27
  %7 = bitcast i32* %i to i8*, !dbg !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #5, !dbg !27
  ret void, !dbg !27
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %x) #3 !dbg !28 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !37, metadata !DIExpression()), !dbg !48
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !38, metadata !DIExpression()), !dbg !48
  store i32* %x, i32** %x.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !39, metadata !DIExpression()), !dbg !49
  %2 = load i32*, i32** %x.addr, align 8, !dbg !50, !tbaa !47
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !40, metadata !DIExpression()), !dbg !48
  %4 = bitcast i32* %.omp.lb to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !41, metadata !DIExpression()), !dbg !48
  store i32 0, i32* %.omp.lb, align 4, !dbg !51, !tbaa !25
  %5 = bitcast i32* %.omp.ub to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !42, metadata !DIExpression()), !dbg !48
  store i32 99, i32* %.omp.ub, align 4, !dbg !51, !tbaa !25
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !43, metadata !DIExpression()), !dbg !48
  store i32 1, i32* %.omp.stride, align 4, !dbg !51, !tbaa !25
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !44, metadata !DIExpression()), !dbg !48
  store i32 0, i32* %.omp.is_last, align 4, !dbg !51, !tbaa !25
  %8 = bitcast i32* %i to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %i, metadata !45, metadata !DIExpression()), !dbg !48
  %9 = bitcast i32* %x1 to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %x1, metadata !46, metadata !DIExpression()), !dbg !48
  %10 = bitcast i32* %i2 to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %i2, metadata !45, metadata !DIExpression()), !dbg !48
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !50, !tbaa !18
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !50
  %13 = load i32, i32* %12, align 4, !dbg !50, !tbaa !25
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !50
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !51, !tbaa !25
  %cmp = icmp sgt i32 %14, 99, !dbg !51
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !51

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !51

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !51, !tbaa !25
  br label %cond.end, !dbg !51

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %15, %cond.false ], !dbg !51
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !51, !tbaa !25
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !51, !tbaa !25
  store i32 %16, i32* %.omp.iv, align 4, !dbg !51, !tbaa !25
  br label %omp.inner.for.cond, !dbg !50

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !51, !tbaa !25
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !51, !tbaa !25
  %cmp3 = icmp sle i32 %17, %18, !dbg !50
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !50

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !50

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !51, !tbaa !25
  %mul = mul nsw i32 %19, 1, !dbg !52
  %add = add nsw i32 0, %mul, !dbg !52
  store i32 %add, i32* %i, align 4, !dbg !52, !tbaa !25
  %20 = load i32, i32* %i, align 4, !dbg !53, !tbaa !25
  store i32 %20, i32* %x1, align 4, !dbg !54, !tbaa !25
  br label %omp.body.continue, !dbg !55

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !56

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !51, !tbaa !25
  %add4 = add nsw i32 %21, 1, !dbg !50
  store i32 %add4, i32* %.omp.iv, align 4, !dbg !50, !tbaa !25
  br label %omp.inner.for.cond, !dbg !56, !llvm.loop !57

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !56

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !56
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @2, i32 0, i32 0), i8** %22, align 8, !dbg !56, !tbaa !18
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !56
  %23 = load i32, i32* %.omp.is_last, align 4, !dbg !56, !tbaa !25
  %24 = icmp ne i32 %23, 0, !dbg !56
  br i1 %24, label %.omp.lastprivate.then, label %.omp.lastprivate.done, !dbg !56

.omp.lastprivate.then:                            ; preds = %omp.loop.exit
  %25 = load i32, i32* %x1, align 4, !dbg !59, !tbaa !25
  store i32 %25, i32* %2, align 4, !dbg !59, !tbaa !25
  br label %.omp.lastprivate.done, !dbg !56

.omp.lastprivate.done:                            ; preds = %.omp.lastprivate.then, %omp.loop.exit
  %26 = bitcast i32* %i2 to i8*, !dbg !56
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !56
  %27 = bitcast i32* %x1 to i8*, !dbg !56
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !56
  %28 = bitcast i32* %i to i8*, !dbg !56
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !56
  %29 = bitcast i32* %.omp.is_last to i8*, !dbg !56
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !56
  %30 = bitcast i32* %.omp.stride to i8*, !dbg !56
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !56
  %31 = bitcast i32* %.omp.ub to i8*, !dbg !56
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #5, !dbg !56
  %32 = bitcast i32* %.omp.lb to i8*, !dbg !56
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #5, !dbg !56
  %33 = bitcast i32* %.omp.iv to i8*, !dbg !56
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #5, !dbg !56
  ret void, !dbg !53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %x) #3 !dbg !60 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !62, metadata !DIExpression()), !dbg !65
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !63, metadata !DIExpression()), !dbg !65
  store i32* %x, i32** %x.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !64, metadata !DIExpression()), !dbg !65
  %0 = load i32*, i32** %x.addr, align 8, !dbg !66, !tbaa !47
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !66, !tbaa !47
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !66, !tbaa !47
  %3 = load i32*, i32** %x.addr, align 8, !dbg !66, !tbaa !47
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !66
  ret void, !dbg !66
}

declare !callback !67 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !69 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @foo(), !dbg !72
  ret i32 0, !dbg !73
}

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
!1 = !DIFile(filename: "integration/dataracebench/DRB059-lastprivate-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 56, type: !8, scopeLine: 57, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !{!11, !13}
!11 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 58, type: !12)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 58, type: !12)
!14 = !DILocation(line: 58, column: 3, scope: !7)
!15 = !DILocation(line: 58, column: 7, scope: !7)
!16 = !DILocation(line: 58, column: 9, scope: !7)
!17 = !DILocation(line: 59, column: 1, scope: !7)
!18 = !{!19, !23, i64 16}
!19 = !{!"ident_t", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !23, i64 16}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !{!"any pointer", !21, i64 0}
!24 = !DILocation(line: 62, column: 17, scope: !7)
!25 = !{!20, !20, i64 0}
!26 = !DILocation(line: 62, column: 3, scope: !7)
!27 = !DILocation(line: 63, column: 1, scope: !7)
!28 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 60, type: !29, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !36)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !31, !35}
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!35 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !45}
!37 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !28, type: !31, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !28, type: !31, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: "x", arg: 3, scope: !28, file: !1, line: 58, type: !35)
!40 = !DILocalVariable(name: ".omp.iv", scope: !28, type: !12, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".omp.lb", scope: !28, type: !12, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: ".omp.ub", scope: !28, type: !12, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: ".omp.stride", scope: !28, type: !12, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".omp.is_last", scope: !28, type: !12, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: "i", scope: !28, type: !12, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "x", scope: !28, type: !12, flags: DIFlagArtificial)
!47 = !{!23, !23, i64 0}
!48 = !DILocation(line: 0, scope: !28)
!49 = !DILocation(line: 58, column: 9, scope: !28)
!50 = !DILocation(line: 60, column: 3, scope: !28)
!51 = !DILocation(line: 60, column: 8, scope: !28)
!52 = !DILocation(line: 60, column: 18, scope: !28)
!53 = !DILocation(line: 61, column: 7, scope: !28)
!54 = !DILocation(line: 61, column: 6, scope: !28)
!55 = !DILocation(line: 61, column: 5, scope: !28)
!56 = !DILocation(line: 59, column: 1, scope: !28)
!57 = distinct !{!57, !56, !58}
!58 = !DILocation(line: 59, column: 53, scope: !28)
!59 = !DILocation(line: 59, column: 51, scope: !28)
!60 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 60, type: !29, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !61)
!61 = !{!62, !63, !64}
!62 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !60, type: !31, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !60, type: !31, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: "x", arg: 3, scope: !60, type: !35, flags: DIFlagArtificial)
!65 = !DILocation(line: 0, scope: !60)
!66 = !DILocation(line: 60, column: 3, scope: !60)
!67 = !{!68}
!68 = !{i64 2, i64 -1, i64 -1, i1 true}
!69 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 65, type: !70, scopeLine: 66, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!70 = !DISubroutineType(types: !71)
!71 = !{!12}
!72 = !DILocation(line: 67, column: 3, scope: !69)
!73 = !DILocation(line: 68, column: 3, scope: !69)
