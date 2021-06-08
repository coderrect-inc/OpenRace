; ModuleID = 'integration/openmp/thread-sanitizer-falsepos.c'
source_filename = "integration/openmp/thread-sanitizer-falsepos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [60 x i8] c";integration/openmp/thread-sanitizer-falsepos.c;do_it;9;1;;\00", align 1
@sum = common dso_local global i32 0, align 4, !dbg !0
@2 = private unnamed_addr constant [61 x i8] c";integration/openmp/thread-sanitizer-falsepos.c;do_it;9;16;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [60 x i8] c";integration/openmp/thread-sanitizer-falsepos.c;do_it;7;1;;\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @do_it() #0 !dbg !11 {
entry:
  %n = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast i32* %n to i8*, !dbg !17
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !17
  call void @llvm.dbg.declare(metadata i32* %n, metadata !15, metadata !DIExpression()), !dbg !18
  store i32 1000, i32* %n, align 4, !dbg !18, !tbaa !19
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !23
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @4, i32 0, i32 0), i8** %3, align 8, !dbg !23, !tbaa !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %n), !dbg !23
  %4 = bitcast i32* %n to i8*, !dbg !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #5, !dbg !27
  ret void, !dbg !27
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n) #3 !dbg !28 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !36, metadata !DIExpression()), !dbg !48
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !37, metadata !DIExpression()), !dbg !48
  store i32* %n, i32** %n.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !38, metadata !DIExpression()), !dbg !49
  %2 = load i32*, i32** %n.addr, align 8, !dbg !50, !tbaa !47
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !39, metadata !DIExpression()), !dbg !52
  %4 = bitcast i32* %.omp.lb to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !42, metadata !DIExpression()), !dbg !52
  store i32 0, i32* %.omp.lb, align 4, !dbg !53, !tbaa !19
  %5 = bitcast i32* %.omp.ub to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !43, metadata !DIExpression()), !dbg !52
  store i32 999, i32* %.omp.ub, align 4, !dbg !53, !tbaa !19
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !44, metadata !DIExpression()), !dbg !52
  store i32 1, i32* %.omp.stride, align 4, !dbg !53, !tbaa !19
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !45, metadata !DIExpression()), !dbg !52
  store i32 0, i32* %.omp.is_last, align 4, !dbg !53, !tbaa !19
  %8 = bitcast i32* %i to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %i, metadata !46, metadata !DIExpression()), !dbg !52
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !51
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !51, !tbaa !24
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !51
  %11 = load i32, i32* %10, align 4, !dbg !51, !tbaa !19
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !51
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !53, !tbaa !19
  %cmp = icmp sgt i32 %12, 999, !dbg !53
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !53

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !53

cond.false:                                       ; preds = %entry
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !53, !tbaa !19
  br label %cond.end, !dbg !53

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 999, %cond.true ], [ %13, %cond.false ], !dbg !53
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !53, !tbaa !19
  %14 = load i32, i32* %.omp.lb, align 4, !dbg !53, !tbaa !19
  store i32 %14, i32* %.omp.iv, align 4, !dbg !53, !tbaa !19
  br label %omp.inner.for.cond, !dbg !51

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !53, !tbaa !19
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !53, !tbaa !19
  %cmp1 = icmp sle i32 %15, %16, !dbg !54
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !51

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !51

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !53, !tbaa !19
  %mul = mul nsw i32 %17, 1, !dbg !55
  %add = add nsw i32 1, %mul, !dbg !55
  store i32 %add, i32* %i, align 4, !dbg !55, !tbaa !19
  %18 = load i32, i32* %i, align 4, !dbg !56, !tbaa !19
  %19 = atomicrmw add i32* @sum, i32 %18 monotonic, !dbg !59
  br label %omp.body.continue, !dbg !60

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !61

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !53, !tbaa !19
  %add2 = add nsw i32 %20, 1, !dbg !54
  store i32 %add2, i32* %.omp.iv, align 4, !dbg !54, !tbaa !19
  br label %omp.inner.for.cond, !dbg !61, !llvm.loop !62

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !61

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !61
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2, i32 0, i32 0), i8** %21, align 8, !dbg !61, !tbaa !24
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %11), !dbg !61
  %22 = bitcast i32* %i to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #5, !dbg !61
  %23 = bitcast i32* %.omp.is_last to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #5, !dbg !61
  %24 = bitcast i32* %.omp.stride to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !61
  %25 = bitcast i32* %.omp.ub to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !61
  %26 = bitcast i32* %.omp.lb to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !61
  %27 = bitcast i32* %.omp.iv to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !61
  %28 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !63
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @1, i32 0, i32 0), i8** %28, align 8, !dbg !63, !tbaa !24
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %11), !dbg !63
  ret void, !dbg !64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n) #3 !dbg !65 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !67, metadata !DIExpression()), !dbg !70
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !68, metadata !DIExpression()), !dbg !70
  store i32* %n, i32** %n.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !69, metadata !DIExpression()), !dbg !70
  %0 = load i32*, i32** %n.addr, align 8, !dbg !71, !tbaa !47
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !71, !tbaa !47
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !71, !tbaa !47
  %3 = load i32*, i32** %n.addr, align 8, !dbg !71, !tbaa !47
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !71
  ret void, !dbg !71
}

declare !callback !72 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !74 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* @sum, align 4, !dbg !77, !tbaa !19
  call void @do_it(), !dbg !78
  %0 = load i32, i32* @sum, align 4, !dbg !79, !tbaa !19
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %0), !dbg !80
  ret i32 0, !dbg !81
}

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sum", scope: !2, file: !3, line: 3, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 (git@github.com:coderrect-inc/classic-flang-llvm-project.git 385cb14c62f7038a201227dbe865453e88b40fe5)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/openmp/thread-sanitizer-falsepos.c", directory: "/home/rohan/OpenRace/tests/data")
!4 = !{}
!5 = !{!0}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 10.0.1 (git@github.com:coderrect-inc/classic-flang-llvm-project.git 385cb14c62f7038a201227dbe865453e88b40fe5)"}
!11 = distinct !DISubprogram(name: "do_it", scope: !3, file: !3, line: 5, type: !12, scopeLine: 5, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !14)
!12 = !DISubroutineType(types: !13)
!13 = !{null}
!14 = !{!15}
!15 = !DILocalVariable(name: "n", scope: !11, file: !3, line: 6, type: !16)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!17 = !DILocation(line: 6, column: 3, scope: !11)
!18 = !DILocation(line: 6, column: 13, scope: !11)
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !DILocation(line: 7, column: 1, scope: !11)
!24 = !{!25, !26, i64 16}
!25 = !{!"ident_t", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !26, i64 16}
!26 = !{!"any pointer", !21, i64 0}
!27 = !DILocation(line: 15, column: 1, scope: !11)
!28 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 8, type: !29, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !35)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !31, !34}
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 64)
!35 = !{!36, !37, !38, !39, !42, !43, !44, !45, !46}
!36 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !28, type: !31, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !28, type: !31, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: "n", arg: 3, scope: !28, file: !3, line: 6, type: !34)
!39 = !DILocalVariable(name: ".omp.iv", scope: !40, type: !6, flags: DIFlagArtificial)
!40 = distinct !DILexicalBlock(scope: !41, file: !3, line: 9, column: 1)
!41 = distinct !DILexicalBlock(scope: !28, file: !3, line: 8, column: 3)
!42 = !DILocalVariable(name: ".omp.lb", scope: !40, type: !6, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: ".omp.ub", scope: !40, type: !6, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".omp.stride", scope: !40, type: !6, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".omp.is_last", scope: !40, type: !6, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "i", scope: !40, type: !6, flags: DIFlagArtificial)
!47 = !{!26, !26, i64 0}
!48 = !DILocation(line: 0, scope: !28)
!49 = !DILocation(line: 6, column: 13, scope: !28)
!50 = !DILocation(line: 8, column: 3, scope: !28)
!51 = !DILocation(line: 9, column: 1, scope: !41)
!52 = !DILocation(line: 0, scope: !40)
!53 = !DILocation(line: 10, column: 10, scope: !40)
!54 = !DILocation(line: 10, column: 5, scope: !40)
!55 = !DILocation(line: 10, column: 29, scope: !40)
!56 = !DILocation(line: 12, column: 14, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !3, line: 11, column: 1)
!58 = distinct !DILexicalBlock(scope: !40, file: !3, line: 10, column: 34)
!59 = !DILocation(line: 12, column: 7, scope: !57)
!60 = !DILocation(line: 13, column: 5, scope: !58)
!61 = !DILocation(line: 9, column: 1, scope: !40)
!62 = distinct !{!62, !61, !63}
!63 = !DILocation(line: 9, column: 16, scope: !40)
!64 = !DILocation(line: 14, column: 3, scope: !28)
!65 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 8, type: !29, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !66)
!66 = !{!67, !68, !69}
!67 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !65, type: !31, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !65, type: !31, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: "n", arg: 3, scope: !65, type: !34, flags: DIFlagArtificial)
!70 = !DILocation(line: 0, scope: !65)
!71 = !DILocation(line: 8, column: 3, scope: !65)
!72 = !{!73}
!73 = !{i64 2, i64 -1, i64 -1, i1 true}
!74 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 17, type: !75, scopeLine: 17, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!75 = !DISubroutineType(types: !76)
!76 = !{!6}
!77 = !DILocation(line: 18, column: 7, scope: !74)
!78 = !DILocation(line: 19, column: 3, scope: !74)
!79 = !DILocation(line: 20, column: 18, scope: !74)
!80 = !DILocation(line: 20, column: 3, scope: !74)
!81 = !DILocation(line: 21, column: 3, scope: !74)
