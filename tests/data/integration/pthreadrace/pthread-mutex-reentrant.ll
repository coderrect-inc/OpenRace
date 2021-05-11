; ModuleID = 'integration/pthreadrace/pthread-mutex-reentrant.c'
source_filename = "integration/pthreadrace/pthread-mutex-reentrant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@_lock1 = common dso_local global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !0
@v = dso_local global i32 0, align 4, !dbg !63
@.str = private unnamed_addr constant [15 x i8] c"value of v=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @reentrant() #0 !dbg !70 {
entry:
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @_lock1) #5, !dbg !73
  %0 = load i32, i32* @v, align 4, !dbg !74, !tbaa !75
  %inc = add nsw i32 %0, 1, !dbg !74
  store i32 %inc, i32* @v, align 4, !dbg !74, !tbaa !75
  %call1 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @_lock1) #5, !dbg !79
  ret void, !dbg !80
}

; Function Attrs: nounwind
declare !dbg !6 dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare !dbg !43 dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind uwtable
define dso_local i8* @f1(i8* %arg) #0 !dbg !81 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !85, metadata !DIExpression()), !dbg !88
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !89, !tbaa !86
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @_lock1) #5, !dbg !90
  call void @reentrant(), !dbg !91
  %call1 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @_lock1) #5, !dbg !92
  ret i8* null, !dbg !93
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !94 {
entry:
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %0 = bitcast i64* %t1 to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #5, !dbg !101
  call void @llvm.dbg.declare(metadata i64* %t1, metadata !98, metadata !DIExpression()), !dbg !102
  %1 = bitcast i64* %t2 to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #5, !dbg !101
  call void @llvm.dbg.declare(metadata i64* %t2, metadata !100, metadata !DIExpression()), !dbg !103
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @_lock1, %union.pthread_mutexattr_t* null) #5, !dbg !104
  %call1 = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @f1, i8* null) #5, !dbg !105
  %call2 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @f1, i8* null) #5, !dbg !106
  %2 = load i64, i64* %t1, align 8, !dbg !107, !tbaa !108
  %call3 = call i32 @pthread_join(i64 %2, i8** null), !dbg !110
  %3 = load i64, i64* %t2, align 8, !dbg !111, !tbaa !108
  %call4 = call i32 @pthread_join(i64 %3, i8** null), !dbg !112
  %4 = load i32, i32* @v, align 4, !dbg !113, !tbaa !75
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %4), !dbg !114
  %5 = bitcast i64* %t2 to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #5, !dbg !115
  %6 = bitcast i64* %t1 to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #5, !dbg !115
  ret i32 0, !dbg !115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare !dbg !45 dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: nounwind
declare !callback !116 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

declare !dbg !57 dso_local i32 @pthread_join(i64, i8**) #4

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!66, !67, !68}
!llvm.ident = !{!69}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_lock1", scope: !2, file: !3, line: 10, type: !65, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/pthreadrace/pthread-mutex-reentrant.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!6, !43, !44, !45, !57}
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
!57 = !DISubprogram(name: "pthread_join", scope: !7, file: !7, line: 217, type: !58, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!58 = !DISubroutineType(types: !59)
!59 = !{!10, !60, !61}
!60 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!62 = !{!0, !63}
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "v", scope: !2, file: !3, line: 8, type: !10, isLocal: false, isDefinition: true)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !13, line: 72, baseType: !12)
!66 = !{i32 7, !"Dwarf Version", i32 4}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{!"clang version 10.0.1 "}
!70 = distinct !DISubprogram(name: "reentrant", scope: !3, file: !3, line: 12, type: !71, scopeLine: 12, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!71 = !DISubroutineType(types: !72)
!72 = !{null}
!73 = !DILocation(line: 13, column: 3, scope: !70)
!74 = !DILocation(line: 14, column: 4, scope: !70)
!75 = !{!76, !76, i64 0}
!76 = !{!"int", !77, i64 0}
!77 = !{!"omnipotent char", !78, i64 0}
!78 = !{!"Simple C/C++ TBAA"}
!79 = !DILocation(line: 15, column: 3, scope: !70)
!80 = !DILocation(line: 16, column: 1, scope: !70)
!81 = distinct !DISubprogram(name: "f1", scope: !3, file: !3, line: 18, type: !82, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !84)
!82 = !DISubroutineType(types: !83)
!83 = !{!44, !44}
!84 = !{!85}
!85 = !DILocalVariable(name: "arg", arg: 1, scope: !81, file: !3, line: 18, type: !44)
!86 = !{!87, !87, i64 0}
!87 = !{!"any pointer", !77, i64 0}
!88 = !DILocation(line: 18, column: 16, scope: !81)
!89 = !DILocation(line: 19, column: 9, scope: !81)
!90 = !DILocation(line: 21, column: 3, scope: !81)
!91 = !DILocation(line: 22, column: 3, scope: !81)
!92 = !DILocation(line: 23, column: 3, scope: !81)
!93 = !DILocation(line: 25, column: 3, scope: !81)
!94 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 28, type: !95, scopeLine: 28, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !97)
!95 = !DISubroutineType(types: !96)
!96 = !{!10}
!97 = !{!98, !100}
!98 = !DILocalVariable(name: "t1", scope: !94, file: !3, line: 29, type: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !13, line: 27, baseType: !60)
!100 = !DILocalVariable(name: "t2", scope: !94, file: !3, line: 29, type: !99)
!101 = !DILocation(line: 29, column: 3, scope: !94)
!102 = !DILocation(line: 29, column: 13, scope: !94)
!103 = !DILocation(line: 29, column: 17, scope: !94)
!104 = !DILocation(line: 31, column: 3, scope: !94)
!105 = !DILocation(line: 33, column: 3, scope: !94)
!106 = !DILocation(line: 34, column: 3, scope: !94)
!107 = !DILocation(line: 36, column: 16, scope: !94)
!108 = !{!109, !109, i64 0}
!109 = !{!"long", !77, i64 0}
!110 = !DILocation(line: 36, column: 3, scope: !94)
!111 = !DILocation(line: 37, column: 16, scope: !94)
!112 = !DILocation(line: 37, column: 3, scope: !94)
!113 = !DILocation(line: 39, column: 29, scope: !94)
!114 = !DILocation(line: 39, column: 3, scope: !94)
!115 = !DILocation(line: 40, column: 1, scope: !94)
!116 = !{!117}
!117 = !{i64 2, i64 3, i1 false}
