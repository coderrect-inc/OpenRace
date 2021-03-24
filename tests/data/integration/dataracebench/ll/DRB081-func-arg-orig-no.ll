; ModuleID = 'DRB081-func-arg-orig-no.c'
source_filename = "DRB081-func-arg-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [39 x i8] c";DRB081-func-arg-orig-no.c;main;63;3;;\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"i==0\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"DRB081-func-arg-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"i=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f1(i32 %q) #0 !dbg !7 {
entry:
  %q.addr = alloca i32, align 4
  store i32 %q, i32* %q.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %q.addr, metadata !11, metadata !DIExpression()), !dbg !12
  %0 = load i32, i32* %q.addr, align 4, !dbg !13
  %add = add nsw i32 %0, 1, !dbg !13
  store i32 %add, i32* %q.addr, align 4, !dbg !13
  ret void, !dbg !14
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !15 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 0, i32* %i, align 4, !dbg !19
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !20
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !20
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %i), !dbg !20
  %3 = load i32, i32* %i, align 4, !dbg !21
  %cmp = icmp eq i32 %3, 0, !dbg !21
  br i1 %cmp, label %if.then, label %if.else, !dbg !24

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !24

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6, !dbg !21
  unreachable, !dbg !21

if.end:                                           ; preds = %if.then
  %4 = load i32, i32* %i, align 4, !dbg !25
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %4), !dbg !26
  ret i32 0, !dbg !27
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #2 !dbg !28 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !36, metadata !DIExpression()), !dbg !37
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !38, metadata !DIExpression()), !dbg !37
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !39, metadata !DIExpression()), !dbg !40
  %0 = load i32*, i32** %i.addr, align 8, !dbg !41
  %1 = load i32, i32* %0, align 4, !dbg !42
  call void @f1(i32 %1), !dbg !44
  ret void, !dbg !45
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #2 !dbg !46 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !47, metadata !DIExpression()), !dbg !48
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !49, metadata !DIExpression()), !dbg !48
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !50, metadata !DIExpression()), !dbg !48
  %0 = load i32*, i32** %i.addr, align 8, !dbg !51
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !51
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !51
  %3 = load i32*, i32** %i.addr, align 8, !dbg !51
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #7, !dbg !51
  ret void, !dbg !51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare !callback !52 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

declare dso_local i32 @printf(i8*, ...) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB081-func-arg-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "f1", scope: !1, file: !1, line: 55, type: !8, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "q", arg: 1, scope: !7, file: !1, line: 55, type: !10)
!12 = !DILocation(line: 55, column: 13, scope: !7)
!13 = !DILocation(line: 57, column: 5, scope: !7)
!14 = !DILocation(line: 58, column: 1, scope: !7)
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 60, type: !16, scopeLine: 61, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{!10}
!18 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 62, type: !10)
!19 = !DILocation(line: 62, column: 7, scope: !15)
!20 = !DILocation(line: 63, column: 3, scope: !15)
!21 = !DILocation(line: 67, column: 3, scope: !22)
!22 = distinct !DILexicalBlock(scope: !23, file: !1, line: 67, column: 3)
!23 = distinct !DILexicalBlock(scope: !15, file: !1, line: 67, column: 3)
!24 = !DILocation(line: 67, column: 3, scope: !23)
!25 = !DILocation(line: 68, column: 20, scope: !15)
!26 = !DILocation(line: 68, column: 3, scope: !15)
!27 = !DILocation(line: 69, column: 3, scope: !15)
!28 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 64, type: !29, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !31, !35}
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!35 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!36 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !28, type: !31, flags: DIFlagArtificial)
!37 = !DILocation(line: 0, scope: !28)
!38 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !28, type: !31, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: "i", arg: 3, scope: !28, file: !1, line: 62, type: !35)
!40 = !DILocation(line: 62, column: 7, scope: !28)
!41 = !DILocation(line: 64, column: 3, scope: !28)
!42 = !DILocation(line: 65, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !28, file: !1, line: 64, column: 3)
!44 = !DILocation(line: 65, column: 6, scope: !43)
!45 = !DILocation(line: 66, column: 3, scope: !28)
!46 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 64, type: !29, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!47 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !46, type: !31, flags: DIFlagArtificial)
!48 = !DILocation(line: 0, scope: !46)
!49 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !46, type: !31, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: "i", arg: 3, scope: !46, type: !35, flags: DIFlagArtificial)
!51 = !DILocation(line: 64, column: 3, scope: !46)
!52 = !{!53}
!53 = !{i64 2, i64 -1, i64 -1, i1 true}
