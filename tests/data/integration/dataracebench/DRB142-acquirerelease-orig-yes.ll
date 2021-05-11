; ModuleID = 'integration/dataracebench/DRB142-acquirerelease-orig-yes.c'
source_filename = "integration/dataracebench/DRB142-acquirerelease-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB142-acquirerelease-orig-yes.c;main;33;7;;\00", align 1
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@2 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB142-acquirerelease-orig-yes.c;main;43;5;;\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"x = %d\0A\00", align 1
@3 = private unnamed_addr constant [73 x i8] c";integration/dataracebench/DRB142-acquirerelease-orig-yes.c;main;29;24;;\00", align 1
@4 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB142-acquirerelease-orig-yes.c;main;29;3;;\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @3, i32 0, i32 0), i8** %2, align 8, !tbaa !17
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 0, i32* %retval, align 4
  %4 = bitcast i32* %x to i8*, !dbg !23
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !23
  call void @llvm.dbg.declare(metadata i32* %x, metadata !15, metadata !DIExpression()), !dbg !24
  store i32 0, i32* %x, align 4, !dbg !24, !tbaa !25
  %5 = bitcast i32* %y to i8*, !dbg !23
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !23
  call void @llvm.dbg.declare(metadata i32* %y, metadata !16, metadata !DIExpression()), !dbg !26
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !27
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @3, i32 0, i32 0), i8** %6, align 8, !dbg !27, !tbaa !17
  call void @__kmpc_push_num_threads(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 2), !dbg !27
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !27
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @4, i32 0, i32 0), i8** %7, align 8, !dbg !27, !tbaa !17
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %x, i32* %y), !dbg !27
  %8 = bitcast i32* %y to i8*, !dbg !28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #5, !dbg !28
  %9 = bitcast i32* %x to i8*, !dbg !28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #5, !dbg !28
  ret i32 0, !dbg !29
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %x, i32* dereferenceable(4) %y) #3 !dbg !30 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %thrd = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %tmp = alloca i32, align 4
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !39, metadata !DIExpression()), !dbg !49
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !40, metadata !DIExpression()), !dbg !49
  store i32* %x, i32** %x.addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !41, metadata !DIExpression()), !dbg !50
  store i32* %y, i32** %y.addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %y.addr, metadata !42, metadata !DIExpression()), !dbg !51
  %2 = load i32*, i32** %x.addr, align 8, !dbg !52, !tbaa !48
  %3 = load i32*, i32** %y.addr, align 8, !dbg !52, !tbaa !48
  %4 = bitcast i32* %thrd to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %thrd, metadata !43, metadata !DIExpression()), !dbg !54
  %call = call i32 @omp_get_thread_num(), !dbg !55
  store i32 %call, i32* %thrd, align 4, !dbg !54, !tbaa !25
  %5 = load i32, i32* %thrd, align 4, !dbg !56, !tbaa !25
  %cmp = icmp eq i32 %5, 0, !dbg !57
  br i1 %cmp, label %if.then, label %if.else, !dbg !58

if.then:                                          ; preds = %entry
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !59
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !59, !tbaa !17
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !59
  %8 = load i32, i32* %7, align 4, !dbg !59, !tbaa !25
  call void @__kmpc_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %8, [8 x i32]* @.gomp_critical_user_.var), !dbg !59
  store i32 10, i32* %2, align 4, !dbg !61, !tbaa !25
  call void @__kmpc_end_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %8, [8 x i32]* @.gomp_critical_user_.var), !dbg !64
  store atomic i32 1, i32* %3 monotonic, align 4, !dbg !65, !tbaa !25
  br label %if.end5, !dbg !67

if.else:                                          ; preds = %entry
  %9 = bitcast i32* %tmp to i8*, !dbg !68
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !45, metadata !DIExpression()), !dbg !69
  store i32 0, i32* %tmp, align 4, !dbg !69, !tbaa !25
  br label %while.cond, !dbg !70

while.cond:                                       ; preds = %while.body, %if.else
  %10 = load i32, i32* %tmp, align 4, !dbg !71, !tbaa !25
  %cmp1 = icmp eq i32 %10, 0, !dbg !72
  br i1 %cmp1, label %while.body, label %while.end, !dbg !70

while.body:                                       ; preds = %while.cond
  %atomic-load = load atomic i32, i32* %3 monotonic, align 4, !dbg !73, !tbaa !25
  store i32 %atomic-load, i32* %tmp, align 4, !dbg !73, !tbaa !25
  br label %while.cond, !dbg !70, !llvm.loop !76

while.end:                                        ; preds = %while.cond
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !78
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @2, i32 0, i32 0), i8** %11, align 8, !dbg !78, !tbaa !17
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !78
  %13 = load i32, i32* %12, align 4, !dbg !78, !tbaa !25
  call void @__kmpc_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %13, [8 x i32]* @.gomp_critical_user_.var), !dbg !78
  %14 = load i32, i32* %2, align 4, !dbg !79, !tbaa !25
  %cmp2 = icmp ne i32 %14, 10, !dbg !83
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !84

if.then3:                                         ; preds = %while.end
  %15 = load i32, i32* %2, align 4, !dbg !85, !tbaa !25
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %15), !dbg !86
  br label %if.end, !dbg !86

if.end:                                           ; preds = %if.then3, %while.end
  call void @__kmpc_end_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %13, [8 x i32]* @.gomp_critical_user_.var), !dbg !87
  %16 = bitcast i32* %tmp to i8*, !dbg !88
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #5, !dbg !88
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %17 = bitcast i32* %thrd to i8*, !dbg !89
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #5, !dbg !89
  ret void, !dbg !89
}

declare !dbg !4 dso_local i32 @omp_get_thread_num() #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %x, i32* dereferenceable(4) %y) #3 !dbg !90 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !92, metadata !DIExpression()), !dbg !96
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !93, metadata !DIExpression()), !dbg !96
  store i32* %x, i32** %x.addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !94, metadata !DIExpression()), !dbg !96
  store i32* %y, i32** %y.addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %y.addr, metadata !95, metadata !DIExpression()), !dbg !96
  %0 = load i32*, i32** %x.addr, align 8, !dbg !97, !tbaa !48
  %1 = load i32*, i32** %y.addr, align 8, !dbg !97, !tbaa !48
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !97, !tbaa !48
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !97, !tbaa !48
  %4 = load i32*, i32** %x.addr, align 8, !dbg !97, !tbaa !48
  %5 = load i32*, i32** %y.addr, align 8, !dbg !97, !tbaa !48
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #5, !dbg !97
  ret void, !dbg !97
}

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local void @__kmpc_push_num_threads(%struct.ident_t*, i32, i32)

declare !callback !98 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB142-acquirerelease-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "omp_get_thread_num", scope: !5, file: !5, line: 68, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 10.0.1 "}
!13 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 25, type: !6, scopeLine: 25, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!14 = !{!15, !16}
!15 = !DILocalVariable(name: "x", scope: !13, file: !1, line: 27, type: !8)
!16 = !DILocalVariable(name: "y", scope: !13, file: !1, line: 27, type: !8)
!17 = !{!18, !22, i64 16}
!18 = !{!"ident_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !22, i64 16}
!19 = !{!"int", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
!22 = !{!"any pointer", !20, i64 0}
!23 = !DILocation(line: 27, column: 3, scope: !13)
!24 = !DILocation(line: 27, column: 7, scope: !13)
!25 = !{!19, !19, i64 0}
!26 = !DILocation(line: 27, column: 14, scope: !13)
!27 = !DILocation(line: 29, column: 3, scope: !13)
!28 = !DILocation(line: 48, column: 1, scope: !13)
!29 = !DILocation(line: 47, column: 3, scope: !13)
!30 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 30, type: !31, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !38)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33, !33, !37, !37}
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!37 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!38 = !{!39, !40, !41, !42, !43, !45}
!39 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !30, type: !33, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !30, type: !33, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: "x", arg: 3, scope: !30, file: !1, line: 27, type: !37)
!42 = !DILocalVariable(name: "y", arg: 4, scope: !30, file: !1, line: 27, type: !37)
!43 = !DILocalVariable(name: "thrd", scope: !44, file: !1, line: 31, type: !8)
!44 = distinct !DILexicalBlock(scope: !30, file: !1, line: 30, column: 3)
!45 = !DILocalVariable(name: "tmp", scope: !46, file: !1, line: 38, type: !8)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 37, column: 12)
!47 = distinct !DILexicalBlock(scope: !44, file: !1, line: 32, column: 9)
!48 = !{!22, !22, i64 0}
!49 = !DILocation(line: 0, scope: !30)
!50 = !DILocation(line: 27, column: 7, scope: !30)
!51 = !DILocation(line: 27, column: 14, scope: !30)
!52 = !DILocation(line: 30, column: 3, scope: !30)
!53 = !DILocation(line: 31, column: 5, scope: !44)
!54 = !DILocation(line: 31, column: 9, scope: !44)
!55 = !DILocation(line: 31, column: 16, scope: !44)
!56 = !DILocation(line: 32, column: 9, scope: !47)
!57 = !DILocation(line: 32, column: 14, scope: !47)
!58 = !DILocation(line: 32, column: 9, scope: !44)
!59 = !DILocation(line: 33, column: 7, scope: !60)
!60 = distinct !DILexicalBlock(scope: !47, file: !1, line: 32, column: 20)
!61 = !DILocation(line: 34, column: 11, scope: !62)
!62 = distinct !DILexicalBlock(scope: !63, file: !1, line: 34, column: 7)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 33, column: 7)
!64 = !DILocation(line: 34, column: 17, scope: !62)
!65 = !DILocation(line: 36, column: 7, scope: !66)
!66 = distinct !DILexicalBlock(scope: !60, file: !1, line: 35, column: 7)
!67 = !DILocation(line: 37, column: 5, scope: !60)
!68 = !DILocation(line: 38, column: 7, scope: !46)
!69 = !DILocation(line: 38, column: 11, scope: !46)
!70 = !DILocation(line: 39, column: 7, scope: !46)
!71 = !DILocation(line: 39, column: 14, scope: !46)
!72 = !DILocation(line: 39, column: 18, scope: !46)
!73 = !DILocation(line: 41, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !1, line: 40, column: 9)
!75 = distinct !DILexicalBlock(scope: !46, file: !1, line: 39, column: 24)
!76 = distinct !{!76, !70, !77}
!77 = !DILocation(line: 42, column: 5, scope: !46)
!78 = !DILocation(line: 43, column: 5, scope: !46)
!79 = !DILocation(line: 44, column: 11, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 44, column: 11)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 44, column: 5)
!82 = distinct !DILexicalBlock(scope: !46, file: !1, line: 43, column: 5)
!83 = !DILocation(line: 44, column: 12, scope: !80)
!84 = !DILocation(line: 44, column: 11, scope: !81)
!85 = !DILocation(line: 44, column: 37, scope: !80)
!86 = !DILocation(line: 44, column: 18, scope: !80)
!87 = !DILocation(line: 44, column: 41, scope: !81)
!88 = !DILocation(line: 45, column: 5, scope: !47)
!89 = !DILocation(line: 46, column: 3, scope: !30)
!90 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 30, type: !31, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !91)
!91 = !{!92, !93, !94, !95}
!92 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !90, type: !33, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !90, type: !33, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: "x", arg: 3, scope: !90, type: !37, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "y", arg: 4, scope: !90, type: !37, flags: DIFlagArtificial)
!96 = !DILocation(line: 0, scope: !90)
!97 = !DILocation(line: 30, column: 3, scope: !90)
!98 = !{!99}
!99 = !{i64 2, i64 -1, i64 -1, i1 true}
