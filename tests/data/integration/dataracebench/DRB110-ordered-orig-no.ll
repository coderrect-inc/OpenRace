; ModuleID = 'integration/dataracebench/DRB110-ordered-orig-no.c'
source_filename = "integration/dataracebench/DRB110-ordered-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [64 x i8] c";integration/dataracebench/DRB110-ordered-orig-no.c;main;54;1;;\00", align 1
@2 = private unnamed_addr constant [64 x i8] c";integration/dataracebench/DRB110-ordered-orig-no.c;main;56;1;;\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"x==100\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"integration/dataracebench/DRB110-ordered-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"x=%d\0A\00", align 1

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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6, !dbg !13
  call void @llvm.dbg.declare(metadata i32* %x, metadata !12, metadata !DIExpression()), !dbg !14
  store i32 0, i32* %x, align 4, !dbg !14, !tbaa !15
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !19
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !19, !tbaa !20
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %x), !dbg !19
  %4 = load i32, i32* %x, align 4, !dbg !23, !tbaa !15
  %cmp = icmp eq i32 %4, 100, !dbg !23
  br i1 %cmp, label %if.then, label %if.else, !dbg !26

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !26

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7, !dbg !23
  unreachable, !dbg !23

if.end:                                           ; preds = %if.then
  %5 = load i32, i32* %x, align 4, !dbg !27, !tbaa !15
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %5), !dbg !28
  %6 = bitcast i32* %x to i8*, !dbg !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #6, !dbg !29
  ret i32 0, !dbg !30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %x) #3 !dbg !31 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !40, metadata !DIExpression()), !dbg !50
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !41, metadata !DIExpression()), !dbg !50
  store i32* %x, i32** %x.addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !42, metadata !DIExpression()), !dbg !51
  %2 = load i32*, i32** %x.addr, align 8, !dbg !52, !tbaa !49
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #6, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !43, metadata !DIExpression()), !dbg !50
  %4 = bitcast i32* %.omp.lb to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #6, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !44, metadata !DIExpression()), !dbg !50
  store i32 0, i32* %.omp.lb, align 4, !dbg !53, !tbaa !15
  %5 = bitcast i32* %.omp.ub to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #6, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !45, metadata !DIExpression()), !dbg !50
  store i32 99, i32* %.omp.ub, align 4, !dbg !53, !tbaa !15
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #6, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !46, metadata !DIExpression()), !dbg !50
  store i32 1, i32* %.omp.stride, align 4, !dbg !53, !tbaa !15
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #6, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !47, metadata !DIExpression()), !dbg !50
  store i32 0, i32* %.omp.is_last, align 4, !dbg !53, !tbaa !15
  %8 = bitcast i32* %i to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #6, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %i, metadata !48, metadata !DIExpression()), !dbg !50
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !52
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !52, !tbaa !20
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !52
  %11 = load i32, i32* %10, align 4, !dbg !52, !tbaa !15
  call void @__kmpc_dispatch_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 66, i32 0, i32 99, i32 1, i32 1), !dbg !52
  br label %omp.dispatch.cond, !dbg !52

omp.dispatch.cond:                                ; preds = %omp.dispatch.inc, %entry
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !52
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1, i32 0, i32 0), i8** %12, align 8, !dbg !52, !tbaa !20
  %13 = call i32 @__kmpc_dispatch_next_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride), !dbg !52
  %tobool = icmp ne i32 %13, 0, !dbg !52
  br i1 %tobool, label %omp.dispatch.body, label %omp.dispatch.cleanup, !dbg !52

omp.dispatch.cleanup:                             ; preds = %omp.dispatch.cond
  br label %omp.dispatch.end, !dbg !52

omp.dispatch.body:                                ; preds = %omp.dispatch.cond
  %14 = load i32, i32* %.omp.lb, align 4, !dbg !53, !tbaa !15
  store i32 %14, i32* %.omp.iv, align 4, !dbg !53, !tbaa !15
  br label %omp.inner.for.cond, !dbg !52

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.dispatch.body
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !53, !tbaa !15
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !53, !tbaa !15
  %cmp = icmp sle i32 %15, %16, !dbg !52
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !52

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !52

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !53, !tbaa !15
  %mul = mul nsw i32 %17, 1, !dbg !54
  %add = add nsw i32 0, %mul, !dbg !54
  store i32 %add, i32* %i, align 4, !dbg !54, !tbaa !15
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !55
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @2, i32 0, i32 0), i8** %18, align 8, !dbg !55, !tbaa !20
  call void @__kmpc_ordered(%struct.ident_t* %.kmpc_loc.addr, i32 %11), !dbg !55
  %19 = load i32, i32* %2, align 4, !dbg !57, !tbaa !15
  %inc = add nsw i32 %19, 1, !dbg !57
  store i32 %inc, i32* %2, align 4, !dbg !57, !tbaa !15
  call void @__kmpc_end_ordered(%struct.ident_t* %.kmpc_loc.addr, i32 %11), !dbg !60
  br label %omp.body.continue, !dbg !61

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !62

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !53, !tbaa !15
  %add1 = add nsw i32 %20, 1, !dbg !52
  store i32 %add1, i32* %.omp.iv, align 4, !dbg !52, !tbaa !15
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !62
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1, i32 0, i32 0), i8** %21, align 8, !dbg !62, !tbaa !20
  call void @__kmpc_dispatch_fini_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11), !dbg !62
  br label %omp.inner.for.cond, !dbg !62, !llvm.loop !63

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.dispatch.inc, !dbg !62

omp.dispatch.inc:                                 ; preds = %omp.inner.for.end
  br label %omp.dispatch.cond, !dbg !62, !llvm.loop !65

omp.dispatch.end:                                 ; preds = %omp.dispatch.cleanup
  %22 = bitcast i32* %i to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #6, !dbg !62
  %23 = bitcast i32* %.omp.is_last to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #6, !dbg !62
  %24 = bitcast i32* %.omp.stride to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #6, !dbg !62
  %25 = bitcast i32* %.omp.ub to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #6, !dbg !62
  %26 = bitcast i32* %.omp.lb to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #6, !dbg !62
  %27 = bitcast i32* %.omp.iv to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #6, !dbg !62
  ret void, !dbg !66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_dispatch_init_4(%struct.ident_t*, i32, i32, i32, i32, i32, i32)

declare dso_local i32 @__kmpc_dispatch_next_4(%struct.ident_t*, i32, i32*, i32*, i32*, i32*)

declare dso_local void @__kmpc_end_ordered(%struct.ident_t*, i32)

declare dso_local void @__kmpc_ordered(%struct.ident_t*, i32)

declare dso_local void @__kmpc_dispatch_fini_4(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %x) #3 !dbg !67 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !69, metadata !DIExpression()), !dbg !72
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !70, metadata !DIExpression()), !dbg !72
  store i32* %x, i32** %x.addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !71, metadata !DIExpression()), !dbg !72
  %0 = load i32*, i32** %x.addr, align 8, !dbg !73, !tbaa !49
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !73, !tbaa !49
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !73, !tbaa !49
  %3 = load i32*, i32** %x.addr, align 8, !dbg !73, !tbaa !49
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #6, !dbg !73
  ret void, !dbg !73
}

declare !callback !74 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

declare dso_local i32 @printf(i8*, ...) #5

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB110-ordered-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!23 = !DILocation(line: 61, column: 3, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 61, column: 3)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 61, column: 3)
!26 = !DILocation(line: 61, column: 3, scope: !25)
!27 = !DILocation(line: 62, column: 20, scope: !7)
!28 = !DILocation(line: 62, column: 3, scope: !7)
!29 = !DILocation(line: 64, column: 1, scope: !7)
!30 = !DILocation(line: 63, column: 3, scope: !7)
!31 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 55, type: !32, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34, !34, !38}
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!38 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48}
!40 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !31, type: !34, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !31, type: !34, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: "x", arg: 3, scope: !31, file: !1, line: 53, type: !38)
!43 = !DILocalVariable(name: ".omp.iv", scope: !31, type: !10, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".omp.lb", scope: !31, type: !10, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".omp.ub", scope: !31, type: !10, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: ".omp.stride", scope: !31, type: !10, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: ".omp.is_last", scope: !31, type: !10, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: "i", scope: !31, type: !10, flags: DIFlagArtificial)
!49 = !{!22, !22, i64 0}
!50 = !DILocation(line: 0, scope: !31)
!51 = !DILocation(line: 53, column: 7, scope: !31)
!52 = !DILocation(line: 55, column: 3, scope: !31)
!53 = !DILocation(line: 55, column: 8, scope: !31)
!54 = !DILocation(line: 55, column: 28, scope: !31)
!55 = !DILocation(line: 56, column: 1, scope: !56)
!56 = distinct !DILexicalBlock(scope: !31, file: !1, line: 55, column: 33)
!57 = !DILocation(line: 58, column: 8, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 57, column: 5)
!59 = distinct !DILexicalBlock(scope: !56, file: !1, line: 56, column: 1)
!60 = !DILocation(line: 59, column: 5, scope: !58)
!61 = !DILocation(line: 60, column: 3, scope: !56)
!62 = !DILocation(line: 54, column: 1, scope: !31)
!63 = distinct !{!63, !62, !64}
!64 = !DILocation(line: 54, column: 34, scope: !31)
!65 = distinct !{!65, !62, !64}
!66 = !DILocation(line: 60, column: 3, scope: !31)
!67 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 55, type: !32, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!68 = !{!69, !70, !71}
!69 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !67, type: !34, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !67, type: !34, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: "x", arg: 3, scope: !67, type: !38, flags: DIFlagArtificial)
!72 = !DILocation(line: 0, scope: !67)
!73 = !DILocation(line: 55, column: 3, scope: !67)
!74 = !{!75}
!75 = !{i64 2, i64 -1, i64 -1, i1 true}
