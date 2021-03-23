; ModuleID = 'pthread-array-no.c'
source_filename = "pthread-array-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@v = common dso_local global [2 x i32] zeroinitializer, align 4, !dbg !0
@.str = private unnamed_addr constant [22 x i8] c"Value of array: %d %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @f1(i8* %arg) #0 !dbg !16 {
entry:
  %arg.addr = alloca i8*, align 8
  %p = alloca i32*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32** %p, metadata !21, metadata !DIExpression()), !dbg !23
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @v, i64 0, i64 0), i32** %p, align 8, !dbg !23
  %0 = load i32*, i32** %p, align 8, !dbg !24
  store i32 34, i32* %0, align 4, !dbg !25
  ret i8* null, !dbg !26
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @f2(i8* %arg) #0 !dbg !27 {
entry:
  %arg.addr = alloca i8*, align 8
  %p = alloca i32*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !28, metadata !DIExpression()), !dbg !29
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !30
  call void @llvm.dbg.declare(metadata i32** %p, metadata !31, metadata !DIExpression()), !dbg !32
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @v, i64 0, i64 1), i32** %p, align 8, !dbg !32
  %1 = load i32*, i32** %p, align 8, !dbg !33
  store i32 12, i32* %1, align 4, !dbg !34
  ret i8* null, !dbg !35
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !36 {
entry:
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %t1, metadata !39, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i64* %t2, metadata !44, metadata !DIExpression()), !dbg !45
  %call = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @f1, i8* null) #4, !dbg !46
  %call1 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @f2, i8* null) #4, !dbg !47
  %0 = load i64, i64* %t1, align 8, !dbg !48
  %call2 = call i32 @pthread_join(i64 %0, i8** null), !dbg !49
  %1 = load i64, i64* %t2, align 8, !dbg !50
  %call3 = call i32 @pthread_join(i64 %1, i8** null), !dbg !51
  %2 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @v, i64 0, i64 0), align 4, !dbg !52
  %3 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @v, i64 0, i64 1), align 4, !dbg !53
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3), !dbg !54
  ret i32 0, !dbg !55
}

; Function Attrs: nounwind
declare !callback !56 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

declare dso_local i32 @pthread_join(i64, i8**) #3

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "v", scope: !2, file: !3, line: 6, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "pthread-array-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/pthreadrace")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0}
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, elements: !10)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{!11}
!11 = !DISubrange(count: 2)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{!"clang version 10.0.1 "}
!16 = distinct !DISubprogram(name: "f1", scope: !3, file: !3, line: 10, type: !17, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!17 = !DISubroutineType(types: !18)
!18 = !{!6, !6}
!19 = !DILocalVariable(name: "arg", arg: 1, scope: !16, file: !3, line: 10, type: !6)
!20 = !DILocation(line: 10, column: 16, scope: !16)
!21 = !DILocalVariable(name: "p", scope: !16, file: !3, line: 11, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!23 = !DILocation(line: 11, column: 8, scope: !16)
!24 = !DILocation(line: 12, column: 4, scope: !16)
!25 = !DILocation(line: 12, column: 6, scope: !16)
!26 = !DILocation(line: 14, column: 3, scope: !16)
!27 = distinct !DISubprogram(name: "f2", scope: !3, file: !3, line: 17, type: !17, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!28 = !DILocalVariable(name: "arg", arg: 1, scope: !27, file: !3, line: 17, type: !6)
!29 = !DILocation(line: 17, column: 16, scope: !27)
!30 = !DILocation(line: 18, column: 9, scope: !27)
!31 = !DILocalVariable(name: "p", scope: !27, file: !3, line: 20, type: !22)
!32 = !DILocation(line: 20, column: 8, scope: !27)
!33 = !DILocation(line: 21, column: 4, scope: !27)
!34 = !DILocation(line: 21, column: 6, scope: !27)
!35 = !DILocation(line: 23, column: 3, scope: !27)
!36 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 26, type: !37, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!37 = !DISubroutineType(types: !38)
!38 = !{!9}
!39 = !DILocalVariable(name: "t1", scope: !36, file: !3, line: 27, type: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !41, line: 27, baseType: !42)
!41 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "")
!42 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!43 = !DILocation(line: 27, column: 13, scope: !36)
!44 = !DILocalVariable(name: "t2", scope: !36, file: !3, line: 27, type: !40)
!45 = !DILocation(line: 27, column: 17, scope: !36)
!46 = !DILocation(line: 29, column: 3, scope: !36)
!47 = !DILocation(line: 30, column: 3, scope: !36)
!48 = !DILocation(line: 32, column: 16, scope: !36)
!49 = !DILocation(line: 32, column: 3, scope: !36)
!50 = !DILocation(line: 33, column: 16, scope: !36)
!51 = !DILocation(line: 33, column: 3, scope: !36)
!52 = !DILocation(line: 34, column: 35, scope: !36)
!53 = !DILocation(line: 34, column: 41, scope: !36)
!54 = !DILocation(line: 34, column: 3, scope: !36)
!55 = !DILocation(line: 35, column: 1, scope: !36)
!56 = !{!57}
!57 = !{i64 2, i64 3, i1 false}
