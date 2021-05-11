; ModuleID = 'integration/pthreadrace/pthread-array-no.c'
source_filename = "integration/pthreadrace/pthread-array-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@v = common dso_local global [2 x i32] zeroinitializer, align 4, !dbg !0
@.str = private unnamed_addr constant [22 x i8] c"Value of array: %d %d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i8* @f1(i8* %arg) #0 !dbg !22 {
entry:
  %arg.addr = alloca i8*, align 8
  %p = alloca i32*, align 8
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !26, metadata !DIExpression()), !dbg !33
  %0 = bitcast i32** %p to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #5, !dbg !34
  call void @llvm.dbg.declare(metadata i32** %p, metadata !27, metadata !DIExpression()), !dbg !35
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @v, i64 0, i64 0), i32** %p, align 8, !dbg !35, !tbaa !29
  %1 = load i32*, i32** %p, align 8, !dbg !36, !tbaa !29
  store i32 34, i32* %1, align 4, !dbg !37, !tbaa !38
  %2 = bitcast i32** %p to i8*, !dbg !40
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %2) #5, !dbg !40
  ret i8* null, !dbg !41
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i8* @f2(i8* %arg) #0 !dbg !42 {
entry:
  %arg.addr = alloca i8*, align 8
  %p = alloca i32*, align 8
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !44, metadata !DIExpression()), !dbg !46
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !47, !tbaa !29
  %1 = bitcast i32** %p to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #5, !dbg !48
  call void @llvm.dbg.declare(metadata i32** %p, metadata !45, metadata !DIExpression()), !dbg !49
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @v, i64 0, i64 1), i32** %p, align 8, !dbg !49, !tbaa !29
  %2 = load i32*, i32** %p, align 8, !dbg !50, !tbaa !29
  store i32 12, i32* %2, align 4, !dbg !51, !tbaa !38
  %3 = bitcast i32** %p to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %3) #5, !dbg !52
  ret i8* null, !dbg !53
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !54 {
entry:
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %0 = bitcast i64* %t1 to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #5, !dbg !62
  call void @llvm.dbg.declare(metadata i64* %t1, metadata !58, metadata !DIExpression()), !dbg !63
  %1 = bitcast i64* %t2 to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #5, !dbg !62
  call void @llvm.dbg.declare(metadata i64* %t2, metadata !61, metadata !DIExpression()), !dbg !64
  %call = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @f1, i8* null) #5, !dbg !65
  %call1 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @f2, i8* null) #5, !dbg !66
  %2 = load i64, i64* %t1, align 8, !dbg !67, !tbaa !68
  %call2 = call i32 @pthread_join(i64 %2, i8** null), !dbg !70
  %3 = load i64, i64* %t2, align 8, !dbg !71, !tbaa !68
  %call3 = call i32 @pthread_join(i64 %3, i8** null), !dbg !72
  %4 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @v, i64 0, i64 0), align 4, !dbg !73, !tbaa !38
  %5 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @v, i64 0, i64 1), align 4, !dbg !74, !tbaa !38
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %5), !dbg !75
  %6 = bitcast i64* %t2 to i8*, !dbg !76
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #5, !dbg !76
  %7 = bitcast i64* %t1 to i8*, !dbg !76
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #5, !dbg !76
  ret i32 0, !dbg !76
}

; Function Attrs: nounwind
declare !callback !77 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

declare !dbg !7 dso_local i32 @pthread_join(i64, i8**) #4

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "v", scope: !2, file: !3, line: 6, type: !15, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/pthreadrace/pthread-array-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DISubprogram(name: "pthread_join", scope: !8, file: !8, line: 217, type: !9, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!8 = !DIFile(filename: "/usr/include/pthread.h", directory: "")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !12, !13}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!14 = !{!0}
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 64, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 2)
!18 = !{i32 7, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{!"clang version 10.0.1 "}
!22 = distinct !DISubprogram(name: "f1", scope: !3, file: !3, line: 10, type: !23, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !25)
!23 = !DISubroutineType(types: !24)
!24 = !{!6, !6}
!25 = !{!26, !27}
!26 = !DILocalVariable(name: "arg", arg: 1, scope: !22, file: !3, line: 10, type: !6)
!27 = !DILocalVariable(name: "p", scope: !22, file: !3, line: 11, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!29 = !{!30, !30, i64 0}
!30 = !{!"any pointer", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = !DILocation(line: 10, column: 16, scope: !22)
!34 = !DILocation(line: 11, column: 3, scope: !22)
!35 = !DILocation(line: 11, column: 8, scope: !22)
!36 = !DILocation(line: 12, column: 4, scope: !22)
!37 = !DILocation(line: 12, column: 6, scope: !22)
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !31, i64 0}
!40 = !DILocation(line: 15, column: 1, scope: !22)
!41 = !DILocation(line: 14, column: 3, scope: !22)
!42 = distinct !DISubprogram(name: "f2", scope: !3, file: !3, line: 17, type: !23, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !43)
!43 = !{!44, !45}
!44 = !DILocalVariable(name: "arg", arg: 1, scope: !42, file: !3, line: 17, type: !6)
!45 = !DILocalVariable(name: "p", scope: !42, file: !3, line: 20, type: !28)
!46 = !DILocation(line: 17, column: 16, scope: !42)
!47 = !DILocation(line: 18, column: 9, scope: !42)
!48 = !DILocation(line: 20, column: 3, scope: !42)
!49 = !DILocation(line: 20, column: 8, scope: !42)
!50 = !DILocation(line: 21, column: 4, scope: !42)
!51 = !DILocation(line: 21, column: 6, scope: !42)
!52 = !DILocation(line: 24, column: 1, scope: !42)
!53 = !DILocation(line: 23, column: 3, scope: !42)
!54 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 26, type: !55, scopeLine: 26, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !57)
!55 = !DISubroutineType(types: !56)
!56 = !{!11}
!57 = !{!58, !61}
!58 = !DILocalVariable(name: "t1", scope: !54, file: !3, line: 27, type: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !60, line: 27, baseType: !12)
!60 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "")
!61 = !DILocalVariable(name: "t2", scope: !54, file: !3, line: 27, type: !59)
!62 = !DILocation(line: 27, column: 3, scope: !54)
!63 = !DILocation(line: 27, column: 13, scope: !54)
!64 = !DILocation(line: 27, column: 17, scope: !54)
!65 = !DILocation(line: 29, column: 3, scope: !54)
!66 = !DILocation(line: 30, column: 3, scope: !54)
!67 = !DILocation(line: 32, column: 16, scope: !54)
!68 = !{!69, !69, i64 0}
!69 = !{!"long", !31, i64 0}
!70 = !DILocation(line: 32, column: 3, scope: !54)
!71 = !DILocation(line: 33, column: 16, scope: !54)
!72 = !DILocation(line: 33, column: 3, scope: !54)
!73 = !DILocation(line: 34, column: 35, scope: !54)
!74 = !DILocation(line: 34, column: 41, scope: !54)
!75 = !DILocation(line: 34, column: 3, scope: !54)
!76 = !DILocation(line: 35, column: 1, scope: !54)
!77 = !{!78}
!78 = !{i64 2, i64 3, i1 false}
