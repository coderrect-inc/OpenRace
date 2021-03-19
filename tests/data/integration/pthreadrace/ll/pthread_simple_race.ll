; ModuleID = 'pthread_simple_race.c'
source_filename = "pthread_simple_race.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_attr_t = type { i64, [48 x i8] }

@global = common dso_local global i32 0, align 4, !dbg !0
@mutex = common dso_local global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !6
@global_locked = common dso_local global i32 0, align 4, !dbg !41

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @foo(i8* %a) #0 !dbg !47 {
entry:
  %a.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %a.addr, metadata !51, metadata !DIExpression()), !dbg !52
  %0 = load i32, i32* @global, align 4, !dbg !53
  %inc = add nsw i32 %0, 1, !dbg !53
  store i32 %inc, i32* @global, align 4, !dbg !53
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutex) #4, !dbg !54
  %1 = load i32, i32* @global_locked, align 4, !dbg !55
  %inc1 = add nsw i32 %1, 1, !dbg !55
  store i32 %inc1, i32* @global_locked, align 4, !dbg !55
  %call2 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutex) #4, !dbg !56
  ret i8* null, !dbg !57
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !58 {
entry:
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %mutex = alloca %union.pthread_mutex_t, align 8
  call void @llvm.dbg.declare(metadata i64* %t1, metadata !61, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i64* %t2, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata %union.pthread_mutex_t* %mutex, metadata !67, metadata !DIExpression()), !dbg !68
  %call = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @foo, i8* null) #4, !dbg !69
  %call1 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @foo, i8* null) #4, !dbg !70
  %0 = load i64, i64* %t1, align 8, !dbg !71
  %call2 = call i32 @pthread_join(i64 %0, i8** null), !dbg !72
  %1 = load i64, i64* %t2, align 8, !dbg !73
  %call3 = call i32 @pthread_join(i64 %1, i8** null), !dbg !74
  ret i32 0, !dbg !75
}

; Function Attrs: nounwind
declare !callback !76 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

declare dso_local i32 @pthread_join(i64, i8**) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "global", scope: !2, file: !3, line: 3, type: !17, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "pthread_simple_race.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/pthreadrace")
!4 = !{}
!5 = !{!0, !6, !41}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "mutex", scope: !2, file: !3, line: 4, type: !8, isLocal: false, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !9, line: 72, baseType: !10)
!9 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "")
!10 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !9, line: 67, size: 320, elements: !11)
!11 = !{!12, !34, !39}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !10, file: !9, line: 69, baseType: !13, size: 320)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !14, line: 22, size: 320, elements: !15)
!14 = !DIFile(filename: "/usr/include/bits/struct_mutex.h", directory: "")
!15 = !{!16, !18, !20, !21, !22, !23, !25, !26}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !13, file: !14, line: 24, baseType: !17, size: 32)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !13, file: !14, line: 25, baseType: !19, size: 32, offset: 32)
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !13, file: !14, line: 26, baseType: !17, size: 32, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !13, file: !14, line: 28, baseType: !19, size: 32, offset: 96)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !13, file: !14, line: 32, baseType: !17, size: 32, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !13, file: !14, line: 34, baseType: !24, size: 16, offset: 160)
!24 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !13, file: !14, line: 35, baseType: !24, size: 16, offset: 176)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !13, file: !14, line: 36, baseType: !27, size: 128, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !28, line: 53, baseType: !29)
!28 = !DIFile(filename: "/usr/include/bits/thread-shared-types.h", directory: "")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !28, line: 49, size: 128, elements: !30)
!30 = !{!31, !33}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !29, file: !28, line: 51, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !29, file: !28, line: 52, baseType: !32, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !10, file: !9, line: 70, baseType: !35, size: 320)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 320, elements: !37)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !{!38}
!38 = !DISubrange(count: 40)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !10, file: !9, line: 71, baseType: !40, size: 64)
!40 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "global_locked", scope: !2, file: !3, line: 5, type: !17, isLocal: false, isDefinition: true)
!43 = !{i32 7, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 4}
!46 = !{!"clang version 10.0.1 "}
!47 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 7, type: !48, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!51 = !DILocalVariable(name: "a", arg: 1, scope: !47, file: !3, line: 7, type: !50)
!52 = !DILocation(line: 7, column: 17, scope: !47)
!53 = !DILocation(line: 8, column: 9, scope: !47)
!54 = !DILocation(line: 9, column: 3, scope: !47)
!55 = !DILocation(line: 10, column: 16, scope: !47)
!56 = !DILocation(line: 11, column: 3, scope: !47)
!57 = !DILocation(line: 12, column: 3, scope: !47)
!58 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 15, type: !59, scopeLine: 15, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!59 = !DISubroutineType(types: !60)
!60 = !{!17}
!61 = !DILocalVariable(name: "t1", scope: !58, file: !3, line: 16, type: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !9, line: 27, baseType: !63)
!63 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!64 = !DILocation(line: 16, column: 13, scope: !58)
!65 = !DILocalVariable(name: "t2", scope: !58, file: !3, line: 16, type: !62)
!66 = !DILocation(line: 16, column: 17, scope: !58)
!67 = !DILocalVariable(name: "mutex", scope: !58, file: !3, line: 17, type: !8)
!68 = !DILocation(line: 17, column: 19, scope: !58)
!69 = !DILocation(line: 19, column: 3, scope: !58)
!70 = !DILocation(line: 20, column: 3, scope: !58)
!71 = !DILocation(line: 21, column: 16, scope: !58)
!72 = !DILocation(line: 21, column: 3, scope: !58)
!73 = !DILocation(line: 22, column: 16, scope: !58)
!74 = !DILocation(line: 22, column: 3, scope: !58)
!75 = !DILocation(line: 23, column: 1, scope: !58)
!76 = !{!77}
!77 = !{i64 2, i64 3, i1 false}
