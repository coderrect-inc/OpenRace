; ModuleID = 'DRB143-acquirerelease-orig-no.c'
source_filename = "DRB143-acquirerelease-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [45 x i8] c";DRB143-acquirerelease-orig-no.c;main;26;5;;\00", align 1
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@2 = private unnamed_addr constant [45 x i8] c";DRB143-acquirerelease-orig-no.c;main;29;5;;\00", align 1
@3 = private unnamed_addr constant [45 x i8] c";DRB143-acquirerelease-orig-no.c;main;39;5;;\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"x = %d\0A\00", align 1
@4 = private unnamed_addr constant [46 x i8] c";DRB143-acquirerelease-orig-no.c;main;22;24;;\00", align 1
@5 = private unnamed_addr constant [45 x i8] c";DRB143-acquirerelease-orig-no.c;main;22;3;;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @4, i32 0, i32 0), i8** %2, align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %x, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 0, i32* %x, align 4, !dbg !12
  call void @llvm.dbg.declare(metadata i32* %y, metadata !13, metadata !DIExpression()), !dbg !14
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !15
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @4, i32 0, i32 0), i8** %4, align 8, !dbg !15
  call void @__kmpc_push_num_threads(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 2), !dbg !15
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !15
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @5, i32 0, i32 0), i8** %5, align 8, !dbg !15
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %x, i32* %y), !dbg !15
  ret i32 0, !dbg !16
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %x, i32* dereferenceable(4) %y) #2 !dbg !17 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !25, metadata !DIExpression()), !dbg !26
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !27, metadata !DIExpression()), !dbg !26
  store i32* %x, i32** %x.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !28, metadata !DIExpression()), !dbg !29
  store i32* %y, i32** %y.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %y.addr, metadata !30, metadata !DIExpression()), !dbg !31
  %2 = load i32*, i32** %x.addr, align 8, !dbg !32
  %3 = load i32*, i32** %y.addr, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %thrd, metadata !33, metadata !DIExpression()), !dbg !35
  %call = call i32 @omp_get_thread_num(), !dbg !36
  store i32 %call, i32* %thrd, align 4, !dbg !35
  %4 = load i32, i32* %thrd, align 4, !dbg !37
  %cmp = icmp eq i32 %4, 0, !dbg !39
  br i1 %cmp, label %if.then, label %if.else, !dbg !40

if.then:                                          ; preds = %entry
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !41
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !41
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !41
  %7 = load i32, i32* %6, align 4, !dbg !41
  call void @__kmpc_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %7, [8 x i32]* @.gomp_critical_user_.var), !dbg !41
  store i32 10, i32* %2, align 4, !dbg !43
  call void @__kmpc_end_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %7, [8 x i32]* @.gomp_critical_user_.var), !dbg !46
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !47
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @2, i32 0, i32 0), i8** %8, align 8, !dbg !47
  call void @__kmpc_flush(%struct.ident_t* %.kmpc_loc.addr), !dbg !47
  store atomic i32 1, i32* %3 monotonic, align 4, !dbg !48
  br label %if.end5, !dbg !50

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !51, metadata !DIExpression()), !dbg !53
  store i32 0, i32* %tmp, align 4, !dbg !53
  br label %while.cond, !dbg !54

while.cond:                                       ; preds = %while.body, %if.else
  %9 = load i32, i32* %tmp, align 4, !dbg !55
  %cmp1 = icmp eq i32 %9, 0, !dbg !56
  br i1 %cmp1, label %while.body, label %while.end, !dbg !54

while.body:                                       ; preds = %while.cond
  %atomic-load = load atomic i32, i32* %3 monotonic, align 4, !dbg !57
  store i32 %atomic-load, i32* %tmp, align 4, !dbg !57
  br label %while.cond, !dbg !54, !llvm.loop !60

while.end:                                        ; preds = %while.cond
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !62
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @3, i32 0, i32 0), i8** %10, align 8, !dbg !62
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !62
  %12 = load i32, i32* %11, align 4, !dbg !62
  call void @__kmpc_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %12, [8 x i32]* @.gomp_critical_user_.var), !dbg !62
  %13 = load i32, i32* %2, align 4, !dbg !63
  %cmp2 = icmp ne i32 %13, 10, !dbg !67
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !68

if.then3:                                         ; preds = %while.end
  %14 = load i32, i32* %2, align 4, !dbg !69
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %14), !dbg !70
  br label %if.end, !dbg !70

if.end:                                           ; preds = %if.then3, %while.end
  call void @__kmpc_end_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %12, [8 x i32]* @.gomp_critical_user_.var), !dbg !71
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  ret void, !dbg !72
}

declare dso_local i32 @omp_get_thread_num() #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_flush(%struct.ident_t*)

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %x, i32* dereferenceable(4) %y) #2 !dbg !73 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !74, metadata !DIExpression()), !dbg !75
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !76, metadata !DIExpression()), !dbg !75
  store i32* %x, i32** %x.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !77, metadata !DIExpression()), !dbg !75
  store i32* %y, i32** %y.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %y.addr, metadata !78, metadata !DIExpression()), !dbg !75
  %0 = load i32*, i32** %x.addr, align 8, !dbg !79
  %1 = load i32*, i32** %y.addr, align 8, !dbg !79
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !79
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !79
  %4 = load i32*, i32** %x.addr, align 8, !dbg !79
  %5 = load i32*, i32** %y.addr, align 8, !dbg !79
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #5, !dbg !79
  ret void, !dbg !79
}

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local void @__kmpc_push_num_threads(%struct.ident_t*, i32, i32)

declare !callback !80 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB143-acquirerelease-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !8, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 20, type: !10)
!12 = !DILocation(line: 20, column: 7, scope: !7)
!13 = !DILocalVariable(name: "y", scope: !7, file: !1, line: 20, type: !10)
!14 = !DILocation(line: 20, column: 14, scope: !7)
!15 = !DILocation(line: 22, column: 3, scope: !7)
!16 = !DILocation(line: 43, column: 3, scope: !7)
!17 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 23, type: !18, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !20, !24, !24}
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!24 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!25 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !17, type: !20, flags: DIFlagArtificial)
!26 = !DILocation(line: 0, scope: !17)
!27 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !17, type: !20, flags: DIFlagArtificial)
!28 = !DILocalVariable(name: "x", arg: 3, scope: !17, file: !1, line: 20, type: !24)
!29 = !DILocation(line: 20, column: 7, scope: !17)
!30 = !DILocalVariable(name: "y", arg: 4, scope: !17, file: !1, line: 20, type: !24)
!31 = !DILocation(line: 20, column: 14, scope: !17)
!32 = !DILocation(line: 23, column: 3, scope: !17)
!33 = !DILocalVariable(name: "thrd", scope: !34, file: !1, line: 24, type: !10)
!34 = distinct !DILexicalBlock(scope: !17, file: !1, line: 23, column: 3)
!35 = !DILocation(line: 24, column: 7, scope: !34)
!36 = !DILocation(line: 24, column: 14, scope: !34)
!37 = !DILocation(line: 25, column: 7, scope: !38)
!38 = distinct !DILexicalBlock(scope: !34, file: !1, line: 25, column: 7)
!39 = !DILocation(line: 25, column: 12, scope: !38)
!40 = !DILocation(line: 25, column: 7, scope: !34)
!41 = !DILocation(line: 26, column: 5, scope: !42)
!42 = distinct !DILexicalBlock(scope: !38, file: !1, line: 25, column: 18)
!43 = !DILocation(line: 27, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 27, column: 5)
!45 = distinct !DILexicalBlock(scope: !42, file: !1, line: 26, column: 5)
!46 = !DILocation(line: 27, column: 15, scope: !44)
!47 = !DILocation(line: 29, column: 5, scope: !42)
!48 = !DILocation(line: 32, column: 5, scope: !49)
!49 = distinct !DILexicalBlock(scope: !42, file: !1, line: 31, column: 5)
!50 = !DILocation(line: 33, column: 3, scope: !42)
!51 = !DILocalVariable(name: "tmp", scope: !52, file: !1, line: 34, type: !10)
!52 = distinct !DILexicalBlock(scope: !38, file: !1, line: 33, column: 10)
!53 = !DILocation(line: 34, column: 11, scope: !52)
!54 = !DILocation(line: 35, column: 7, scope: !52)
!55 = !DILocation(line: 35, column: 14, scope: !52)
!56 = !DILocation(line: 35, column: 18, scope: !52)
!57 = !DILocation(line: 37, column: 7, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 36, column: 7)
!59 = distinct !DILexicalBlock(scope: !52, file: !1, line: 35, column: 24)
!60 = distinct !{!60, !54, !61}
!61 = !DILocation(line: 38, column: 7, scope: !52)
!62 = !DILocation(line: 39, column: 5, scope: !52)
!63 = !DILocation(line: 40, column: 11, scope: !64)
!64 = distinct !DILexicalBlock(scope: !65, file: !1, line: 40, column: 11)
!65 = distinct !DILexicalBlock(scope: !66, file: !1, line: 40, column: 5)
!66 = distinct !DILexicalBlock(scope: !52, file: !1, line: 39, column: 5)
!67 = !DILocation(line: 40, column: 12, scope: !64)
!68 = !DILocation(line: 40, column: 11, scope: !65)
!69 = !DILocation(line: 40, column: 37, scope: !64)
!70 = !DILocation(line: 40, column: 18, scope: !64)
!71 = !DILocation(line: 40, column: 41, scope: !65)
!72 = !DILocation(line: 42, column: 3, scope: !17)
!73 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 23, type: !18, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!74 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !73, type: !20, flags: DIFlagArtificial)
!75 = !DILocation(line: 0, scope: !73)
!76 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !73, type: !20, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "x", arg: 3, scope: !73, type: !24, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: "y", arg: 4, scope: !73, type: !24, flags: DIFlagArtificial)
!79 = !DILocation(line: 23, column: 3, scope: !73)
!80 = !{!81}
!81 = !{i64 2, i64 -1, i64 -1, i1 true}
