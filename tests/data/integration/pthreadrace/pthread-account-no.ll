; ModuleID = 'integration/pthreadrace/pthread-account-no.c'
source_filename = "integration/pthreadrace/pthread-account-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@m = common dso_local global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !0
@balance = common dso_local global i32 0, align 4, !dbg !64
@y = common dso_local global i32 0, align 4, !dbg !60
@deposit_done = dso_local global i8 0, align 1, !dbg !66
@z = common dso_local global i32 0, align 4, !dbg !62
@withdraw_done = dso_local global i8 0, align 1, !dbg !69
@x = common dso_local global i32 0, align 4, !dbg !58
@.str = private unnamed_addr constant [23 x i8] c"balance == (x + y) - z\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"integration/pthreadrace/pthread-account-no.c\00", align 1
@__PRETTY_FUNCTION__.check_result = private unnamed_addr constant [27 x i8] c"void *check_result(void *)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i8* @deposit(i8* %arg) #0 !dbg !76 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !81
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !80, metadata !DIExpression()), !dbg !85
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @m) #5, !dbg !86
  %0 = load i32, i32* @balance, align 4, !dbg !87, !tbaa !88
  %1 = load i32, i32* @y, align 4, !dbg !90, !tbaa !88
  %add = add nsw i32 %0, %1, !dbg !91
  store i32 %add, i32* @balance, align 4, !dbg !92, !tbaa !88
  store i8 1, i8* @deposit_done, align 1, !dbg !93, !tbaa !94
  %call1 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @m) #5, !dbg !96
  ret i8* null, !dbg !97
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !6 dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind
declare !dbg !43 dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind uwtable
define dso_local i8* @withdraw(i8* %arg) #0 !dbg !98 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !81
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !100, metadata !DIExpression()), !dbg !101
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @m) #5, !dbg !102
  %0 = load i32, i32* @balance, align 4, !dbg !103, !tbaa !88
  %1 = load i32, i32* @z, align 4, !dbg !104, !tbaa !88
  %sub = sub nsw i32 %0, %1, !dbg !105
  store i32 %sub, i32* @balance, align 4, !dbg !106, !tbaa !88
  store i8 1, i8* @withdraw_done, align 1, !dbg !107, !tbaa !94
  %call1 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @m) #5, !dbg !108
  ret i8* null, !dbg !109
}

; Function Attrs: nounwind uwtable
define dso_local i8* @check_result(i8* %arg) #0 !dbg !110 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !81
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !112, metadata !DIExpression()), !dbg !113
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @m) #5, !dbg !114
  %0 = load i8, i8* @deposit_done, align 1, !dbg !115, !tbaa !94, !range !117
  %tobool = trunc i8 %0 to i1, !dbg !115
  br i1 %tobool, label %land.lhs.true, label %if.end3, !dbg !118

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* @withdraw_done, align 1, !dbg !119, !tbaa !94, !range !117
  %tobool1 = trunc i8 %1 to i1, !dbg !119
  br i1 %tobool1, label %if.then, label %if.end3, !dbg !120

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* @balance, align 4, !dbg !121, !tbaa !88
  %3 = load i32, i32* @x, align 4, !dbg !121, !tbaa !88
  %4 = load i32, i32* @y, align 4, !dbg !121, !tbaa !88
  %add = add nsw i32 %3, %4, !dbg !121
  %5 = load i32, i32* @z, align 4, !dbg !121, !tbaa !88
  %sub = sub nsw i32 %add, %5, !dbg !121
  %cmp = icmp eq i32 %2, %sub, !dbg !121
  br i1 %cmp, label %if.then2, label %if.else, !dbg !124

if.then2:                                         ; preds = %if.then
  br label %if.end, !dbg !124

if.else:                                          ; preds = %if.then
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.check_result, i64 0, i64 0)) #6, !dbg !121
  unreachable, !dbg !121

if.end:                                           ; preds = %if.then2
  br label %if.end3, !dbg !125

if.end3:                                          ; preds = %if.end, %land.lhs.true, %entry
  %call4 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @m) #5, !dbg !126
  ret i8* null, !dbg !127
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !128 {
entry:
  %retval = alloca i32, align 4
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %t3 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast i64* %t1 to i8*, !dbg !137
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #5, !dbg !137
  call void @llvm.dbg.declare(metadata i64* %t1, metadata !132, metadata !DIExpression()), !dbg !138
  %1 = bitcast i64* %t2 to i8*, !dbg !137
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #5, !dbg !137
  call void @llvm.dbg.declare(metadata i64* %t2, metadata !135, metadata !DIExpression()), !dbg !139
  %2 = bitcast i64* %t3 to i8*, !dbg !137
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #5, !dbg !137
  call void @llvm.dbg.declare(metadata i64* %t3, metadata !136, metadata !DIExpression()), !dbg !140
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @m, %union.pthread_mutexattr_t* null) #5, !dbg !141
  store i32 1, i32* @x, align 4, !dbg !142, !tbaa !88
  store i32 2, i32* @y, align 4, !dbg !143, !tbaa !88
  store i32 4, i32* @z, align 4, !dbg !144, !tbaa !88
  %3 = load i32, i32* @x, align 4, !dbg !145, !tbaa !88
  store i32 %3, i32* @balance, align 4, !dbg !146, !tbaa !88
  %call1 = call i32 @pthread_create(i64* %t3, %union.pthread_attr_t* null, i8* (i8*)* @check_result, i8* null) #5, !dbg !147
  %call2 = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @deposit, i8* null) #5, !dbg !148
  %call3 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @withdraw, i8* null) #5, !dbg !149
  %4 = bitcast i64* %t3 to i8*, !dbg !150
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #5, !dbg !150
  %5 = bitcast i64* %t2 to i8*, !dbg !150
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #5, !dbg !150
  %6 = bitcast i64* %t1 to i8*, !dbg !150
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #5, !dbg !150
  ret i32 0, !dbg !151
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind
declare !dbg !45 dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #2

; Function Attrs: nounwind
declare !callback !152 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!72, !73, !74}
!llvm.ident = !{!75}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "m", scope: !2, file: !3, line: 5, type: !71, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !57, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/pthreadrace/pthread-account-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!6, !43, !44, !45}
!6 = !DISubprogram(name: "pthread_mutex_lock", scope: !7, file: !7, line: 771, type: !8, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!7 = !DIFile(filename: "/usr/include/pthread.h", directory: "")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !13, line: 67, size: 320, elements: !14)
!13 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "")
!14 = !{!15, !36, !41}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !12, file: !13, line: 69, baseType: !16, size: 320)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !17, line: 22, size: 320, elements: !18)
!17 = !DIFile(filename: "/usr/include/bits/struct_mutex.h", directory: "")
!18 = !{!19, !20, !22, !23, !24, !25, !27, !28}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !16, file: !17, line: 24, baseType: !10, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !16, file: !17, line: 25, baseType: !21, size: 32, offset: 32)
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !16, file: !17, line: 26, baseType: !10, size: 32, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !16, file: !17, line: 28, baseType: !21, size: 32, offset: 96)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !16, file: !17, line: 32, baseType: !10, size: 32, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !16, file: !17, line: 34, baseType: !26, size: 16, offset: 160)
!26 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !16, file: !17, line: 35, baseType: !26, size: 16, offset: 176)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !16, file: !17, line: 36, baseType: !29, size: 128, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !30, line: 53, baseType: !31)
!30 = !DIFile(filename: "/usr/include/bits/thread-shared-types.h", directory: "")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !30, line: 49, size: 128, elements: !32)
!32 = !{!33, !35}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !31, file: !30, line: 51, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !31, file: !30, line: 52, baseType: !34, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !12, file: !13, line: 70, baseType: !37, size: 320)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 320, elements: !39)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !{!40}
!40 = !DISubrange(count: 40)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !12, file: !13, line: 71, baseType: !42, size: 64)
!42 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!43 = !DISubprogram(name: "pthread_mutex_unlock", scope: !7, file: !7, line: 789, type: !8, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DISubprogram(name: "pthread_mutex_init", scope: !7, file: !7, line: 758, type: !46, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!46 = !DISubroutineType(types: !47)
!47 = !{!10, !11, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !13, line: 32, size: 32, elements: !51)
!51 = !{!52, !56}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !50, file: !13, line: 34, baseType: !53, size: 32)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 4)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !50, file: !13, line: 35, baseType: !10, size: 32)
!57 = !{!0, !58, !60, !62, !64, !66, !69}
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 6, type: !10, isLocal: false, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !3, line: 6, type: !10, isLocal: false, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "z", scope: !2, file: !3, line: 6, type: !10, isLocal: false, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "balance", scope: !2, file: !3, line: 6, type: !10, isLocal: false, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "deposit_done", scope: !2, file: !3, line: 7, type: !68, isLocal: false, isDefinition: true)
!68 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "withdraw_done", scope: !2, file: !3, line: 7, type: !68, isLocal: false, isDefinition: true)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !13, line: 72, baseType: !12)
!72 = !{i32 7, !"Dwarf Version", i32 4}
!73 = !{i32 2, !"Debug Info Version", i32 3}
!74 = !{i32 1, !"wchar_size", i32 4}
!75 = !{!"clang version 10.0.1 "}
!76 = distinct !DISubprogram(name: "deposit", scope: !3, file: !3, line: 9, type: !77, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !79)
!77 = !DISubroutineType(types: !78)
!78 = !{!44, !44}
!79 = !{!80}
!80 = !DILocalVariable(name: "arg", arg: 1, scope: !76, file: !3, line: 9, type: !44)
!81 = !{!82, !82, i64 0}
!82 = !{!"any pointer", !83, i64 0}
!83 = !{!"omnipotent char", !84, i64 0}
!84 = !{!"Simple C/C++ TBAA"}
!85 = !DILocation(line: 9, column: 21, scope: !76)
!86 = !DILocation(line: 10, column: 3, scope: !76)
!87 = !DILocation(line: 11, column: 13, scope: !76)
!88 = !{!89, !89, i64 0}
!89 = !{!"int", !83, i64 0}
!90 = !DILocation(line: 11, column: 23, scope: !76)
!91 = !DILocation(line: 11, column: 21, scope: !76)
!92 = !DILocation(line: 11, column: 11, scope: !76)
!93 = !DILocation(line: 12, column: 16, scope: !76)
!94 = !{!95, !95, i64 0}
!95 = !{!"_Bool", !83, i64 0}
!96 = !DILocation(line: 13, column: 3, scope: !76)
!97 = !DILocation(line: 14, column: 3, scope: !76)
!98 = distinct !DISubprogram(name: "withdraw", scope: !3, file: !3, line: 17, type: !77, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !99)
!99 = !{!100}
!100 = !DILocalVariable(name: "arg", arg: 1, scope: !98, file: !3, line: 17, type: !44)
!101 = !DILocation(line: 17, column: 22, scope: !98)
!102 = !DILocation(line: 18, column: 3, scope: !98)
!103 = !DILocation(line: 19, column: 13, scope: !98)
!104 = !DILocation(line: 19, column: 23, scope: !98)
!105 = !DILocation(line: 19, column: 21, scope: !98)
!106 = !DILocation(line: 19, column: 11, scope: !98)
!107 = !DILocation(line: 20, column: 17, scope: !98)
!108 = !DILocation(line: 21, column: 3, scope: !98)
!109 = !DILocation(line: 22, column: 3, scope: !98)
!110 = distinct !DISubprogram(name: "check_result", scope: !3, file: !3, line: 25, type: !77, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !111)
!111 = !{!112}
!112 = !DILocalVariable(name: "arg", arg: 1, scope: !110, file: !3, line: 25, type: !44)
!113 = !DILocation(line: 25, column: 26, scope: !110)
!114 = !DILocation(line: 26, column: 3, scope: !110)
!115 = !DILocation(line: 27, column: 7, scope: !116)
!116 = distinct !DILexicalBlock(scope: !110, file: !3, line: 27, column: 7)
!117 = !{i8 0, i8 2}
!118 = !DILocation(line: 27, column: 20, scope: !116)
!119 = !DILocation(line: 27, column: 23, scope: !116)
!120 = !DILocation(line: 27, column: 7, scope: !110)
!121 = !DILocation(line: 27, column: 38, scope: !122)
!122 = distinct !DILexicalBlock(scope: !123, file: !3, line: 27, column: 38)
!123 = distinct !DILexicalBlock(scope: !116, file: !3, line: 27, column: 38)
!124 = !DILocation(line: 27, column: 38, scope: !123)
!125 = !DILocation(line: 27, column: 38, scope: !116)
!126 = !DILocation(line: 28, column: 3, scope: !110)
!127 = !DILocation(line: 29, column: 3, scope: !110)
!128 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 32, type: !129, scopeLine: 32, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !131)
!129 = !DISubroutineType(types: !130)
!130 = !{!10}
!131 = !{!132, !135, !136}
!132 = !DILocalVariable(name: "t1", scope: !128, file: !3, line: 33, type: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !13, line: 27, baseType: !134)
!134 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!135 = !DILocalVariable(name: "t2", scope: !128, file: !3, line: 33, type: !133)
!136 = !DILocalVariable(name: "t3", scope: !128, file: !3, line: 33, type: !133)
!137 = !DILocation(line: 33, column: 3, scope: !128)
!138 = !DILocation(line: 33, column: 13, scope: !128)
!139 = !DILocation(line: 33, column: 17, scope: !128)
!140 = !DILocation(line: 33, column: 21, scope: !128)
!141 = !DILocation(line: 35, column: 3, scope: !128)
!142 = !DILocation(line: 37, column: 5, scope: !128)
!143 = !DILocation(line: 38, column: 5, scope: !128)
!144 = !DILocation(line: 39, column: 5, scope: !128)
!145 = !DILocation(line: 40, column: 13, scope: !128)
!146 = !DILocation(line: 40, column: 11, scope: !128)
!147 = !DILocation(line: 42, column: 3, scope: !128)
!148 = !DILocation(line: 43, column: 3, scope: !128)
!149 = !DILocation(line: 44, column: 3, scope: !128)
!150 = !DILocation(line: 47, column: 1, scope: !128)
!151 = !DILocation(line: 46, column: 3, scope: !128)
!152 = !{!153}
!153 = !{i64 2, i64 3, i1 false}
