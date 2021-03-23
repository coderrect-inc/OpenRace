; ModuleID = 'pthread-barrier-no.c'
source_filename = "pthread-barrier-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_barrier_t = type { i64, [24 x i8] }
%union.pthread_barrierattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [23 x i8] c"thread1 starting at %s\00", align 1
@barrier = common dso_local global %union.pthread_barrier_t zeroinitializer, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [32 x i8] c"barrier in thread1() done at %s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"thread2 starting at %s\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"barrier in thread2() done at %s\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"main () waiting for barrier at %s\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"barrier in main () done at %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @thread1(i8* %not_used) #0 !dbg !23 {
entry:
  %not_used.addr = alloca i8*, align 8
  %now = alloca i64, align 8
  %buf = alloca [27 x i8], align 16
  store i8* %not_used, i8** %not_used.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %not_used.addr, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i64* %now, metadata !28, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata [27 x i8]* %buf, metadata !34, metadata !DIExpression()), !dbg !38
  %call = call i64 @time(i64* %now) #4, !dbg !39
  %arraydecay = getelementptr inbounds [27 x i8], [27 x i8]* %buf, i64 0, i64 0, !dbg !40
  %call1 = call i8* @ctime_r(i64* %now, i8* %arraydecay) #4, !dbg !41
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %call1), !dbg !42
  %call3 = call i32 @sleep(i32 20), !dbg !43
  %call4 = call i32 @pthread_barrier_wait(%union.pthread_barrier_t* @barrier) #4, !dbg !44
  %call5 = call i64 @time(i64* %now) #4, !dbg !45
  %arraydecay6 = getelementptr inbounds [27 x i8], [27 x i8]* %buf, i64 0, i64 0, !dbg !46
  %call7 = call i8* @ctime_r(i64* %now, i8* %arraydecay6) #4, !dbg !47
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %call7), !dbg !48
  ret i8* null, !dbg !49
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare dso_local i8* @ctime_r(i64*, i8*) #2

declare dso_local i32 @sleep(i32) #3

; Function Attrs: nounwind
declare dso_local i32 @pthread_barrier_wait(%union.pthread_barrier_t*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @thread2(i8* %not_used) #0 !dbg !50 {
entry:
  %not_used.addr = alloca i8*, align 8
  %now = alloca i64, align 8
  %buf = alloca [27 x i8], align 16
  store i8* %not_used, i8** %not_used.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %not_used.addr, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i64* %now, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata [27 x i8]* %buf, metadata !55, metadata !DIExpression()), !dbg !56
  %call = call i64 @time(i64* %now) #4, !dbg !57
  %arraydecay = getelementptr inbounds [27 x i8], [27 x i8]* %buf, i64 0, i64 0, !dbg !58
  %call1 = call i8* @ctime_r(i64* %now, i8* %arraydecay) #4, !dbg !59
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %call1), !dbg !60
  %call3 = call i32 @sleep(i32 40), !dbg !61
  %call4 = call i32 @pthread_barrier_wait(%union.pthread_barrier_t* @barrier) #4, !dbg !62
  %call5 = call i64 @time(i64* %now) #4, !dbg !63
  %arraydecay6 = getelementptr inbounds [27 x i8], [27 x i8]* %buf, i64 0, i64 0, !dbg !64
  %call7 = call i8* @ctime_r(i64* %now, i8* %arraydecay6) #4, !dbg !65
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %call7), !dbg !66
  ret i8* null, !dbg !67
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !68 {
entry:
  %now = alloca i64, align 8
  %buf = alloca [27 x i8], align 16
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %now, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata [27 x i8]* %buf, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i64* %t1, metadata !76, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata i64* %t2, metadata !80, metadata !DIExpression()), !dbg !81
  %call = call i32 @pthread_barrier_init(%union.pthread_barrier_t* @barrier, %union.pthread_barrierattr_t* null, i32 3) #4, !dbg !82
  %call1 = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @thread1, i8* null) #4, !dbg !83
  %call2 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @thread2, i8* null) #4, !dbg !84
  %call3 = call i64 @time(i64* %now) #4, !dbg !85
  %arraydecay = getelementptr inbounds [27 x i8], [27 x i8]* %buf, i64 0, i64 0, !dbg !86
  %call4 = call i8* @ctime_r(i64* %now, i8* %arraydecay) #4, !dbg !87
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %call4), !dbg !88
  %call6 = call i32 @pthread_barrier_wait(%union.pthread_barrier_t* @barrier) #4, !dbg !89
  %call7 = call i64 @time(i64* %now) #4, !dbg !90
  %arraydecay8 = getelementptr inbounds [27 x i8], [27 x i8]* %buf, i64 0, i64 0, !dbg !91
  %call9 = call i8* @ctime_r(i64* %now, i8* %arraydecay8) #4, !dbg !92
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %call9), !dbg !93
  ret i32 0, !dbg !94
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_barrier_init(%union.pthread_barrier_t*, %union.pthread_barrierattr_t*, i32) #2

; Function Attrs: nounwind
declare !callback !95 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!19, !20, !21}
!llvm.ident = !{!22}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "barrier", scope: !2, file: !3, line: 10, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "pthread-barrier-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/pthreadrace")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_barrier_t", file: !9, line: 112, baseType: !10)
!9 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "")
!10 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !9, line: 108, size: 256, elements: !11)
!11 = !{!12, !17}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !10, file: !9, line: 110, baseType: !13, size: 256)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !15)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !{!16}
!16 = !DISubrange(count: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !10, file: !9, line: 111, baseType: !18, size: 64)
!18 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!19 = !{i32 7, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{!"clang version 10.0.1 "}
!23 = distinct !DISubprogram(name: "thread1", scope: !3, file: !3, line: 12, type: !24, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!24 = !DISubroutineType(types: !25)
!25 = !{!6, !6}
!26 = !DILocalVariable(name: "not_used", arg: 1, scope: !23, file: !3, line: 12, type: !6)
!27 = !DILocation(line: 12, column: 21, scope: !23)
!28 = !DILocalVariable(name: "now", scope: !23, file: !3, line: 13, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !30, line: 7, baseType: !31)
!30 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !32, line: 160, baseType: !18)
!32 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!33 = !DILocation(line: 13, column: 10, scope: !23)
!34 = !DILocalVariable(name: "buf", scope: !23, file: !3, line: 14, type: !35)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 216, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 27)
!38 = !DILocation(line: 14, column: 8, scope: !23)
!39 = !DILocation(line: 16, column: 3, scope: !23)
!40 = !DILocation(line: 17, column: 50, scope: !23)
!41 = !DILocation(line: 17, column: 36, scope: !23)
!42 = !DILocation(line: 17, column: 3, scope: !23)
!43 = !DILocation(line: 21, column: 3, scope: !23)
!44 = !DILocation(line: 22, column: 3, scope: !23)
!45 = !DILocation(line: 24, column: 3, scope: !23)
!46 = !DILocation(line: 25, column: 59, scope: !23)
!47 = !DILocation(line: 25, column: 45, scope: !23)
!48 = !DILocation(line: 25, column: 3, scope: !23)
!49 = !DILocation(line: 26, column: 3, scope: !23)
!50 = distinct !DISubprogram(name: "thread2", scope: !3, file: !3, line: 29, type: !24, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!51 = !DILocalVariable(name: "not_used", arg: 1, scope: !50, file: !3, line: 29, type: !6)
!52 = !DILocation(line: 29, column: 21, scope: !50)
!53 = !DILocalVariable(name: "now", scope: !50, file: !3, line: 30, type: !29)
!54 = !DILocation(line: 30, column: 10, scope: !50)
!55 = !DILocalVariable(name: "buf", scope: !50, file: !3, line: 31, type: !35)
!56 = !DILocation(line: 31, column: 8, scope: !50)
!57 = !DILocation(line: 33, column: 3, scope: !50)
!58 = !DILocation(line: 34, column: 50, scope: !50)
!59 = !DILocation(line: 34, column: 36, scope: !50)
!60 = !DILocation(line: 34, column: 3, scope: !50)
!61 = !DILocation(line: 38, column: 3, scope: !50)
!62 = !DILocation(line: 39, column: 3, scope: !50)
!63 = !DILocation(line: 41, column: 3, scope: !50)
!64 = !DILocation(line: 42, column: 59, scope: !50)
!65 = !DILocation(line: 42, column: 45, scope: !50)
!66 = !DILocation(line: 42, column: 3, scope: !50)
!67 = !DILocation(line: 43, column: 3, scope: !50)
!68 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 46, type: !69, scopeLine: 47, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!69 = !DISubroutineType(types: !70)
!70 = !{!71}
!71 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!72 = !DILocalVariable(name: "now", scope: !68, file: !3, line: 48, type: !29)
!73 = !DILocation(line: 48, column: 10, scope: !68)
!74 = !DILocalVariable(name: "buf", scope: !68, file: !3, line: 49, type: !35)
!75 = !DILocation(line: 49, column: 8, scope: !68)
!76 = !DILocalVariable(name: "t1", scope: !68, file: !3, line: 50, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !9, line: 27, baseType: !78)
!78 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!79 = !DILocation(line: 50, column: 13, scope: !68)
!80 = !DILocalVariable(name: "t2", scope: !68, file: !3, line: 50, type: !77)
!81 = !DILocation(line: 50, column: 17, scope: !68)
!82 = !DILocation(line: 53, column: 3, scope: !68)
!83 = !DILocation(line: 56, column: 3, scope: !68)
!84 = !DILocation(line: 57, column: 3, scope: !68)
!85 = !DILocation(line: 62, column: 3, scope: !68)
!86 = !DILocation(line: 63, column: 61, scope: !68)
!87 = !DILocation(line: 63, column: 47, scope: !68)
!88 = !DILocation(line: 63, column: 3, scope: !68)
!89 = !DILocation(line: 64, column: 3, scope: !68)
!90 = !DILocation(line: 67, column: 3, scope: !68)
!91 = !DILocation(line: 68, column: 57, scope: !68)
!92 = !DILocation(line: 68, column: 43, scope: !68)
!93 = !DILocation(line: 68, column: 3, scope: !68)
!94 = !DILocation(line: 69, column: 1, scope: !68)
!95 = !{!96}
!96 = !{i64 2, i64 3, i1 false}
