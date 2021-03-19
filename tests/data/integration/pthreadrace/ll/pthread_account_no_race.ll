; ModuleID = 'pthread_account_no_race.c'
source_filename = "pthread_account_no_race.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@deposit_done = dso_local global i8 0, align 1, !dbg !0
@withdraw_done = dso_local global i8 0, align 1, !dbg !8
@m = common dso_local global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !11
@balance = common dso_local global i32 0, align 4, !dbg !52
@y = common dso_local global i32 0, align 4, !dbg !48
@z = common dso_local global i32 0, align 4, !dbg !50
@x = common dso_local global i32 0, align 4, !dbg !46
@.str = private unnamed_addr constant [23 x i8] c"balance == (x + y) - z\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"pthread_account_no_race.c\00", align 1
@__PRETTY_FUNCTION__.check_result = private unnamed_addr constant [27 x i8] c"void *check_result(void *)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @deposit(i8* %arg) #0 !dbg !58 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !61, metadata !DIExpression()), !dbg !62
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @m) #4, !dbg !63
  %0 = load i32, i32* @balance, align 4, !dbg !64
  %1 = load i32, i32* @y, align 4, !dbg !65
  %add = add nsw i32 %0, %1, !dbg !66
  store i32 %add, i32* @balance, align 4, !dbg !67
  store i8 1, i8* @deposit_done, align 1, !dbg !68
  %call1 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @m) #4, !dbg !69
  ret i8* null, !dbg !70
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @withdraw(i8* %arg) #0 !dbg !71 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !72, metadata !DIExpression()), !dbg !73
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @m) #4, !dbg !74
  %0 = load i32, i32* @balance, align 4, !dbg !75
  %1 = load i32, i32* @z, align 4, !dbg !76
  %sub = sub nsw i32 %0, %1, !dbg !77
  store i32 %sub, i32* @balance, align 4, !dbg !78
  store i8 1, i8* @withdraw_done, align 1, !dbg !79
  %call1 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @m) #4, !dbg !80
  ret i8* null, !dbg !81
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @check_result(i8* %arg) #0 !dbg !82 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !83, metadata !DIExpression()), !dbg !84
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @m) #4, !dbg !85
  %0 = load i8, i8* @deposit_done, align 1, !dbg !86
  %tobool = trunc i8 %0 to i1, !dbg !86
  br i1 %tobool, label %land.lhs.true, label %if.end3, !dbg !88

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* @withdraw_done, align 1, !dbg !89
  %tobool1 = trunc i8 %1 to i1, !dbg !89
  br i1 %tobool1, label %if.then, label %if.end3, !dbg !90

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* @balance, align 4, !dbg !91
  %3 = load i32, i32* @x, align 4, !dbg !91
  %4 = load i32, i32* @y, align 4, !dbg !91
  %add = add nsw i32 %3, %4, !dbg !91
  %5 = load i32, i32* @z, align 4, !dbg !91
  %sub = sub nsw i32 %add, %5, !dbg !91
  %cmp = icmp eq i32 %2, %sub, !dbg !91
  br i1 %cmp, label %if.then2, label %if.else, !dbg !94

if.then2:                                         ; preds = %if.then
  br label %if.end, !dbg !94

if.else:                                          ; preds = %if.then
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.check_result, i64 0, i64 0)) #5, !dbg !91
  unreachable, !dbg !91

if.end:                                           ; preds = %if.then2
  br label %if.end3, !dbg !95

if.end3:                                          ; preds = %if.end, %land.lhs.true, %entry
  %call4 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @m) #4, !dbg !96
  ret i8* null, !dbg !97
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !98 {
entry:
  %retval = alloca i32, align 4
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %t3 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i64* %t1, metadata !101, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata i64* %t2, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata i64* %t3, metadata !107, metadata !DIExpression()), !dbg !108
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @m, %union.pthread_mutexattr_t* null) #4, !dbg !109
  store i32 1, i32* @x, align 4, !dbg !110
  store i32 2, i32* @y, align 4, !dbg !111
  store i32 4, i32* @z, align 4, !dbg !112
  %0 = load i32, i32* @x, align 4, !dbg !113
  store i32 %0, i32* @balance, align 4, !dbg !114
  %call1 = call i32 @pthread_create(i64* %t3, %union.pthread_attr_t* null, i8* (i8*)* @check_result, i8* null) #4, !dbg !115
  %call2 = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @deposit, i8* null) #4, !dbg !116
  %call3 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @withdraw, i8* null) #4, !dbg !117
  ret i32 0, !dbg !118
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #2

; Function Attrs: nounwind
declare !callback !119 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!54, !55, !56}
!llvm.ident = !{!57}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "deposit_done", scope: !2, file: !3, line: 7, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "pthread_account_no_race.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/pthreadrace")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8, !11, !46, !48, !50, !52}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "withdraw_done", scope: !2, file: !3, line: 7, type: !10, isLocal: false, isDefinition: true)
!10 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "m", scope: !2, file: !3, line: 5, type: !13, isLocal: false, isDefinition: true)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !14, line: 72, baseType: !15)
!14 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "")
!15 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !14, line: 67, size: 320, elements: !16)
!16 = !{!17, !39, !44}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !15, file: !14, line: 69, baseType: !18, size: 320)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !19, line: 22, size: 320, elements: !20)
!19 = !DIFile(filename: "/usr/include/bits/struct_mutex.h", directory: "")
!20 = !{!21, !23, !25, !26, !27, !28, !30, !31}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !18, file: !19, line: 24, baseType: !22, size: 32)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !18, file: !19, line: 25, baseType: !24, size: 32, offset: 32)
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !18, file: !19, line: 26, baseType: !22, size: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !18, file: !19, line: 28, baseType: !24, size: 32, offset: 96)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !18, file: !19, line: 32, baseType: !22, size: 32, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !18, file: !19, line: 34, baseType: !29, size: 16, offset: 160)
!29 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !18, file: !19, line: 35, baseType: !29, size: 16, offset: 176)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !18, file: !19, line: 36, baseType: !32, size: 128, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !33, line: 53, baseType: !34)
!33 = !DIFile(filename: "/usr/include/bits/thread-shared-types.h", directory: "")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !33, line: 49, size: 128, elements: !35)
!35 = !{!36, !38}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !34, file: !33, line: 51, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !34, file: !33, line: 52, baseType: !37, size: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !15, file: !14, line: 70, baseType: !40, size: 320)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 320, elements: !42)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!42 = !{!43}
!43 = !DISubrange(count: 40)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !15, file: !14, line: 71, baseType: !45, size: 64)
!45 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 6, type: !22, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !3, line: 6, type: !22, isLocal: false, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "z", scope: !2, file: !3, line: 6, type: !22, isLocal: false, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "balance", scope: !2, file: !3, line: 6, type: !22, isLocal: false, isDefinition: true)
!54 = !{i32 7, !"Dwarf Version", i32 4}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{i32 1, !"wchar_size", i32 4}
!57 = !{!"clang version 10.0.1 "}
!58 = distinct !DISubprogram(name: "deposit", scope: !3, file: !3, line: 9, type: !59, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!59 = !DISubroutineType(types: !60)
!60 = !{!6, !6}
!61 = !DILocalVariable(name: "arg", arg: 1, scope: !58, file: !3, line: 9, type: !6)
!62 = !DILocation(line: 9, column: 21, scope: !58)
!63 = !DILocation(line: 10, column: 3, scope: !58)
!64 = !DILocation(line: 11, column: 13, scope: !58)
!65 = !DILocation(line: 11, column: 23, scope: !58)
!66 = !DILocation(line: 11, column: 21, scope: !58)
!67 = !DILocation(line: 11, column: 11, scope: !58)
!68 = !DILocation(line: 12, column: 16, scope: !58)
!69 = !DILocation(line: 13, column: 3, scope: !58)
!70 = !DILocation(line: 14, column: 3, scope: !58)
!71 = distinct !DISubprogram(name: "withdraw", scope: !3, file: !3, line: 17, type: !59, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!72 = !DILocalVariable(name: "arg", arg: 1, scope: !71, file: !3, line: 17, type: !6)
!73 = !DILocation(line: 17, column: 22, scope: !71)
!74 = !DILocation(line: 18, column: 3, scope: !71)
!75 = !DILocation(line: 19, column: 13, scope: !71)
!76 = !DILocation(line: 19, column: 23, scope: !71)
!77 = !DILocation(line: 19, column: 21, scope: !71)
!78 = !DILocation(line: 19, column: 11, scope: !71)
!79 = !DILocation(line: 20, column: 17, scope: !71)
!80 = !DILocation(line: 21, column: 3, scope: !71)
!81 = !DILocation(line: 22, column: 3, scope: !71)
!82 = distinct !DISubprogram(name: "check_result", scope: !3, file: !3, line: 25, type: !59, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!83 = !DILocalVariable(name: "arg", arg: 1, scope: !82, file: !3, line: 25, type: !6)
!84 = !DILocation(line: 25, column: 26, scope: !82)
!85 = !DILocation(line: 26, column: 3, scope: !82)
!86 = !DILocation(line: 27, column: 7, scope: !87)
!87 = distinct !DILexicalBlock(scope: !82, file: !3, line: 27, column: 7)
!88 = !DILocation(line: 27, column: 20, scope: !87)
!89 = !DILocation(line: 27, column: 23, scope: !87)
!90 = !DILocation(line: 27, column: 7, scope: !82)
!91 = !DILocation(line: 27, column: 38, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !3, line: 27, column: 38)
!93 = distinct !DILexicalBlock(scope: !87, file: !3, line: 27, column: 38)
!94 = !DILocation(line: 27, column: 38, scope: !93)
!95 = !DILocation(line: 27, column: 38, scope: !87)
!96 = !DILocation(line: 28, column: 3, scope: !82)
!97 = !DILocation(line: 29, column: 3, scope: !82)
!98 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 32, type: !99, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!99 = !DISubroutineType(types: !100)
!100 = !{!22}
!101 = !DILocalVariable(name: "t1", scope: !98, file: !3, line: 33, type: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !14, line: 27, baseType: !103)
!103 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!104 = !DILocation(line: 33, column: 13, scope: !98)
!105 = !DILocalVariable(name: "t2", scope: !98, file: !3, line: 33, type: !102)
!106 = !DILocation(line: 33, column: 17, scope: !98)
!107 = !DILocalVariable(name: "t3", scope: !98, file: !3, line: 33, type: !102)
!108 = !DILocation(line: 33, column: 21, scope: !98)
!109 = !DILocation(line: 35, column: 3, scope: !98)
!110 = !DILocation(line: 37, column: 5, scope: !98)
!111 = !DILocation(line: 38, column: 5, scope: !98)
!112 = !DILocation(line: 39, column: 5, scope: !98)
!113 = !DILocation(line: 40, column: 13, scope: !98)
!114 = !DILocation(line: 40, column: 11, scope: !98)
!115 = !DILocation(line: 42, column: 3, scope: !98)
!116 = !DILocation(line: 43, column: 3, scope: !98)
!117 = !DILocation(line: 44, column: 3, scope: !98)
!118 = !DILocation(line: 46, column: 3, scope: !98)
!119 = !{!120}
!120 = !{i64 2, i64 3, i1 false}
