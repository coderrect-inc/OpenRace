; ModuleID = 'integration/pthreadrace/pthread-simple-yes.c'
source_filename = "integration/pthreadrace/pthread-simple-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_attr_t = type { i64, [48 x i8] }

@global = common dso_local global i32 0, align 4, !dbg !0
@mutex = common dso_local global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !51
@global_locked = common dso_local global i32 0, align 4, !dbg !54

; Function Attrs: nounwind uwtable
define dso_local i8* @foo(i8* %a) #0 !dbg !60 {
entry:
  %a.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata i8** %a.addr, metadata !64, metadata !DIExpression()), !dbg !69
  %0 = load i32, i32* @global, align 4, !dbg !70, !tbaa !71
  %inc = add nsw i32 %0, 1, !dbg !70
  store i32 %inc, i32* @global, align 4, !dbg !70, !tbaa !71
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutex) #5, !dbg !73
  %1 = load i32, i32* @global_locked, align 4, !dbg !74, !tbaa !71
  %inc1 = add nsw i32 %1, 1, !dbg !74
  store i32 %inc1, i32* @global_locked, align 4, !dbg !74, !tbaa !71
  %call2 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutex) #5, !dbg !75
  ret i8* null, !dbg !76
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !6 dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind
declare !dbg !43 dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !77 {
entry:
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %mutex = alloca %union.pthread_mutex_t, align 8
  %0 = bitcast i64* %t1 to i8*, !dbg !85
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #5, !dbg !85
  call void @llvm.dbg.declare(metadata i64* %t1, metadata !81, metadata !DIExpression()), !dbg !86
  %1 = bitcast i64* %t2 to i8*, !dbg !85
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #5, !dbg !85
  call void @llvm.dbg.declare(metadata i64* %t2, metadata !83, metadata !DIExpression()), !dbg !87
  %2 = bitcast %union.pthread_mutex_t* %mutex to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %2) #5, !dbg !88
  call void @llvm.dbg.declare(metadata %union.pthread_mutex_t* %mutex, metadata !84, metadata !DIExpression()), !dbg !89
  %call = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @foo, i8* null) #5, !dbg !90
  %call1 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @foo, i8* null) #5, !dbg !91
  %3 = load i64, i64* %t1, align 8, !dbg !92, !tbaa !93
  %call2 = call i32 @pthread_join(i64 %3, i8** null), !dbg !95
  %4 = load i64, i64* %t2, align 8, !dbg !96, !tbaa !93
  %call3 = call i32 @pthread_join(i64 %4, i8** null), !dbg !97
  %5 = bitcast %union.pthread_mutex_t* %mutex to i8*, !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %5) #5, !dbg !98
  %6 = bitcast i64* %t2 to i8*, !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #5, !dbg !98
  %7 = bitcast i64* %t1 to i8*, !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #5, !dbg !98
  ret i32 0, !dbg !98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare !callback !99 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

declare !dbg !44 dso_local i32 @pthread_join(i64, i8**) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!56, !57, !58}
!llvm.ident = !{!59}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "global", scope: !2, file: !3, line: 3, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !50, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/pthreadrace/pthread-simple-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!6, !43, !44}
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
!44 = !DISubprogram(name: "pthread_join", scope: !7, file: !7, line: 217, type: !45, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!45 = !DISubroutineType(types: !46)
!46 = !{!10, !47, !48}
!47 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!50 = !{!0, !51, !54}
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "mutex", scope: !2, file: !3, line: 4, type: !53, isLocal: false, isDefinition: true)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !13, line: 72, baseType: !12)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "global_locked", scope: !2, file: !3, line: 5, type: !10, isLocal: false, isDefinition: true)
!56 = !{i32 7, !"Dwarf Version", i32 4}
!57 = !{i32 2, !"Debug Info Version", i32 3}
!58 = !{i32 1, !"wchar_size", i32 4}
!59 = !{!"clang version 10.0.1 "}
!60 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 7, type: !61, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !63)
!61 = !DISubroutineType(types: !62)
!62 = !{!49, !49}
!63 = !{!64}
!64 = !DILocalVariable(name: "a", arg: 1, scope: !60, file: !3, line: 7, type: !49)
!65 = !{!66, !66, i64 0}
!66 = !{!"any pointer", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !DILocation(line: 7, column: 17, scope: !60)
!70 = !DILocation(line: 8, column: 9, scope: !60)
!71 = !{!72, !72, i64 0}
!72 = !{!"int", !67, i64 0}
!73 = !DILocation(line: 9, column: 3, scope: !60)
!74 = !DILocation(line: 10, column: 16, scope: !60)
!75 = !DILocation(line: 11, column: 3, scope: !60)
!76 = !DILocation(line: 12, column: 3, scope: !60)
!77 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 15, type: !78, scopeLine: 15, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !80)
!78 = !DISubroutineType(types: !79)
!79 = !{!10}
!80 = !{!81, !83, !84}
!81 = !DILocalVariable(name: "t1", scope: !77, file: !3, line: 16, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !13, line: 27, baseType: !47)
!83 = !DILocalVariable(name: "t2", scope: !77, file: !3, line: 16, type: !82)
!84 = !DILocalVariable(name: "mutex", scope: !77, file: !3, line: 17, type: !53)
!85 = !DILocation(line: 16, column: 3, scope: !77)
!86 = !DILocation(line: 16, column: 13, scope: !77)
!87 = !DILocation(line: 16, column: 17, scope: !77)
!88 = !DILocation(line: 17, column: 3, scope: !77)
!89 = !DILocation(line: 17, column: 19, scope: !77)
!90 = !DILocation(line: 19, column: 3, scope: !77)
!91 = !DILocation(line: 20, column: 3, scope: !77)
!92 = !DILocation(line: 21, column: 16, scope: !77)
!93 = !{!94, !94, i64 0}
!94 = !{!"long", !67, i64 0}
!95 = !DILocation(line: 21, column: 3, scope: !77)
!96 = !DILocation(line: 22, column: 16, scope: !77)
!97 = !DILocation(line: 22, column: 3, scope: !77)
!98 = !DILocation(line: 23, column: 1, scope: !77)
!99 = !{!100}
!100 = !{i64 2, i64 3, i1 false}
