; ModuleID = 'pthread-mutex-reentrant.c'
source_filename = "pthread-mutex-reentrant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@v = dso_local global i32 0, align 4, !dbg !0
@_lock1 = common dso_local global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !8
@.str = private unnamed_addr constant [15 x i8] c"value of v=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reentrant() #0 !dbg !47 {
entry:
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @_lock1) #4, !dbg !50
  %0 = load i32, i32* @v, align 4, !dbg !51
  %inc = add nsw i32 %0, 1, !dbg !51
  store i32 %inc, i32* @v, align 4, !dbg !51
  %call1 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @_lock1) #4, !dbg !52
  ret void, !dbg !53
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @f1(i8* %arg) #0 !dbg !54 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !57, metadata !DIExpression()), !dbg !58
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !59
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @_lock1) #4, !dbg !60
  call void @reentrant(), !dbg !61
  %call1 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @_lock1) #4, !dbg !62
  ret i8* null, !dbg !63
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !64 {
entry:
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %t1, metadata !67, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i64* %t2, metadata !71, metadata !DIExpression()), !dbg !72
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @_lock1, %union.pthread_mutexattr_t* null) #4, !dbg !73
  %call1 = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @f1, i8* null) #4, !dbg !74
  %call2 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @f1, i8* null) #4, !dbg !75
  %0 = load i64, i64* %t1, align 8, !dbg !76
  %call3 = call i32 @pthread_join(i64 %0, i8** null), !dbg !77
  %1 = load i64, i64* %t2, align 8, !dbg !78
  %call4 = call i32 @pthread_join(i64 %1, i8** null), !dbg !79
  %2 = load i32, i32* @v, align 4, !dbg !80
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %2), !dbg !81
  ret i32 0, !dbg !82
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: nounwind
declare !callback !83 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

declare dso_local i32 @pthread_join(i64, i8**) #3

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "v", scope: !2, file: !3, line: 8, type: !19, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "pthread-mutex-reentrant.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/pthreadrace")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "_lock1", scope: !2, file: !3, line: 10, type: !10, isLocal: false, isDefinition: true)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !11, line: 72, baseType: !12)
!11 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "")
!12 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !11, line: 67, size: 320, elements: !13)
!13 = !{!14, !36, !41}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !12, file: !11, line: 69, baseType: !15, size: 320)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !16, line: 22, size: 320, elements: !17)
!16 = !DIFile(filename: "/usr/include/bits/struct_mutex.h", directory: "")
!17 = !{!18, !20, !22, !23, !24, !25, !27, !28}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !15, file: !16, line: 24, baseType: !19, size: 32)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !15, file: !16, line: 25, baseType: !21, size: 32, offset: 32)
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !15, file: !16, line: 26, baseType: !19, size: 32, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !15, file: !16, line: 28, baseType: !21, size: 32, offset: 96)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !15, file: !16, line: 32, baseType: !19, size: 32, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !15, file: !16, line: 34, baseType: !26, size: 16, offset: 160)
!26 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !15, file: !16, line: 35, baseType: !26, size: 16, offset: 176)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !15, file: !16, line: 36, baseType: !29, size: 128, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !30, line: 53, baseType: !31)
!30 = !DIFile(filename: "/usr/include/bits/thread-shared-types.h", directory: "")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !30, line: 49, size: 128, elements: !32)
!32 = !{!33, !35}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !31, file: !30, line: 51, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !31, file: !30, line: 52, baseType: !34, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !12, file: !11, line: 70, baseType: !37, size: 320)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 320, elements: !39)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !{!40}
!40 = !DISubrange(count: 40)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !12, file: !11, line: 71, baseType: !42, size: 64)
!42 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!43 = !{i32 7, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 4}
!46 = !{!"clang version 10.0.1 "}
!47 = distinct !DISubprogram(name: "reentrant", scope: !3, file: !3, line: 12, type: !48, scopeLine: 12, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!48 = !DISubroutineType(types: !49)
!49 = !{null}
!50 = !DILocation(line: 13, column: 3, scope: !47)
!51 = !DILocation(line: 14, column: 4, scope: !47)
!52 = !DILocation(line: 15, column: 3, scope: !47)
!53 = !DILocation(line: 16, column: 1, scope: !47)
!54 = distinct !DISubprogram(name: "f1", scope: !3, file: !3, line: 18, type: !55, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!55 = !DISubroutineType(types: !56)
!56 = !{!6, !6}
!57 = !DILocalVariable(name: "arg", arg: 1, scope: !54, file: !3, line: 18, type: !6)
!58 = !DILocation(line: 18, column: 16, scope: !54)
!59 = !DILocation(line: 19, column: 9, scope: !54)
!60 = !DILocation(line: 21, column: 3, scope: !54)
!61 = !DILocation(line: 22, column: 3, scope: !54)
!62 = !DILocation(line: 23, column: 3, scope: !54)
!63 = !DILocation(line: 25, column: 3, scope: !54)
!64 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 28, type: !65, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!65 = !DISubroutineType(types: !66)
!66 = !{!19}
!67 = !DILocalVariable(name: "t1", scope: !64, file: !3, line: 29, type: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !11, line: 27, baseType: !69)
!69 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!70 = !DILocation(line: 29, column: 13, scope: !64)
!71 = !DILocalVariable(name: "t2", scope: !64, file: !3, line: 29, type: !68)
!72 = !DILocation(line: 29, column: 17, scope: !64)
!73 = !DILocation(line: 31, column: 3, scope: !64)
!74 = !DILocation(line: 33, column: 3, scope: !64)
!75 = !DILocation(line: 34, column: 3, scope: !64)
!76 = !DILocation(line: 36, column: 16, scope: !64)
!77 = !DILocation(line: 36, column: 3, scope: !64)
!78 = !DILocation(line: 37, column: 16, scope: !64)
!79 = !DILocation(line: 37, column: 3, scope: !64)
!80 = !DILocation(line: 39, column: 29, scope: !64)
!81 = !DILocation(line: 39, column: 3, scope: !64)
!82 = !DILocation(line: 40, column: 1, scope: !64)
!83 = !{!84}
!84 = !{i64 2, i64 3, i1 false}
