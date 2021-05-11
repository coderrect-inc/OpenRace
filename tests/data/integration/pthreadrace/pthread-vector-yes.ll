; ModuleID = 'integration/pthreadrace/pthread-vector-yes.cpp'
source_filename = "integration/pthreadrace/pthread-vector-yes.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::ios_base::Init" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data" = type { i64*, i64*, i64* }
%"class.__gnu_cxx::__normal_iterator" = type { i64* }
%union.pthread_attr_t = type { i64, [48 x i8] }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"struct.std::integral_constant" = type { i8 }

$_ZNSt6vectorImSaImEEC2Ev = comdat any

$_ZNSt6vectorImSaImEE9push_backERKm = comdat any

$_ZNSt6vectorImSaImEE5beginEv = comdat any

$_ZNSt6vectorImSaImEE3endEv = comdat any

$_ZN9__gnu_cxxneIPmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEppEv = comdat any

$_ZNSt6vectorImSaImEED2Ev = comdat any

$_ZNSt12_Vector_baseImSaImEEC2Ev = comdat any

$_ZNSt12_Vector_baseImSaImEE12_Vector_implC2Ev = comdat any

$_ZNSaImEC2Ev = comdat any

$_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorImEC2Ev = comdat any

$_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseImSaImEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZSt8_DestroyIPmEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_ = comdat any

$_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm = comdat any

$_ZN9__gnu_cxx13new_allocatorImED2Ev = comdat any

$_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm = comdat any

$_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm = comdat any

$_ZNSt16allocator_traitsISaImEE9constructImJRKmEEEvRS0_PT_DpOT0_ = comdat any

$_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_ = comdat any

$_ZN9__gnu_cxx13new_allocatorImE9constructImJRKmEEEvPT_DpOT0_ = comdat any

$_ZSt7forwardIRKmEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ = comdat any

$_ZNSt12_Vector_baseImSaImEE11_M_allocateEm = comdat any

$_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv = comdat any

$_ZNKSt6vectorImSaImEE8max_sizeEv = comdat any

$_ZNKSt6vectorImSaImEE4sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_ = comdat any

$_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaImEE8max_sizeERKS0_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaImEE8allocateERS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv = comdat any

$_ZNSt6vectorImSaImEE14_S_do_relocateEPmS2_S2_RS0_St17integral_constantIbLb1EE = comdat any

$_ZSt12__relocate_aIPmS0_SaImEET0_T_S3_S2_RT1_ = comdat any

$_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E = comdat any

$_ZSt12__niter_baseIPmET_S1_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC2ERKS1_ = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [9 x i8] c"accum = \00", align 1
@accum = dso_local global i32 0, align 4, !dbg !0
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !591
@__dso_handle = external hidden global i8
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_pthread_vector_yes.cpp, i8* null }]

; Function Attrs: norecurse uwtable
define dso_local i32 @main() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1542 {
entry:
  %retval = alloca i32, align 4
  %ths = alloca %"class.std::vector", align 8
  %i = alloca i64, align 8
  %th = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %__range1 = alloca %"class.std::vector"*, align 8
  %__begin1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__end1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %th8 = alloca i64*, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast %"class.std::vector"* %ths to i8*, !dbg !1558
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %0) #9, !dbg !1558
  call void @llvm.dbg.declare(metadata %"class.std::vector"* %ths, metadata !1544, metadata !DIExpression()), !dbg !1559
  call void @_ZNSt6vectorImSaImEEC2Ev(%"class.std::vector"* %ths) #9, !dbg !1559
  %1 = bitcast i64* %i to i8*, !dbg !1560
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #9, !dbg !1560
  call void @llvm.dbg.declare(metadata i64* %i, metadata !1545, metadata !DIExpression()), !dbg !1561
  store i64 1, i64* %i, align 8, !dbg !1561, !tbaa !1562
  br label %for.cond, !dbg !1560

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8, !dbg !1566, !tbaa !1562
  %cmp = icmp sle i64 %2, 20, !dbg !1567
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1568

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i64* %i to i8*, !dbg !1569
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %3) #9, !dbg !1569
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast i64* %th to i8*, !dbg !1570
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #9, !dbg !1570
  call void @llvm.dbg.declare(metadata i64* %th, metadata !1547, metadata !DIExpression()), !dbg !1571
  %5 = load i64, i64* %i, align 8, !dbg !1572, !tbaa !1562
  %6 = inttoptr i64 %5 to i8*, !dbg !1573
  %call = call i32 @pthread_create(i64* %th, %union.pthread_attr_t* null, i8* (i8*)* @_ZL6squarePv, i8* %6) #9, !dbg !1574
  invoke void @_ZNSt6vectorImSaImEE9push_backERKm(%"class.std::vector"* %ths, i64* dereferenceable(8) %th)
          to label %invoke.cont unwind label %lpad, !dbg !1575

invoke.cont:                                      ; preds = %for.body
  %7 = bitcast i64* %th to i8*, !dbg !1576
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #9, !dbg !1576
  br label %for.inc, !dbg !1577

for.inc:                                          ; preds = %invoke.cont
  %8 = load i64, i64* %i, align 8, !dbg !1578, !tbaa !1562
  %inc = add nsw i64 %8, 1, !dbg !1578
  store i64 %inc, i64* %i, align 8, !dbg !1578, !tbaa !1562
  br label %for.cond, !dbg !1569, !llvm.loop !1579

lpad:                                             ; preds = %for.body
  %9 = landingpad { i8*, i32 }
          cleanup, !dbg !1581
  %10 = extractvalue { i8*, i32 } %9, 0, !dbg !1581
  store i8* %10, i8** %exn.slot, align 8, !dbg !1581
  %11 = extractvalue { i8*, i32 } %9, 1, !dbg !1581
  store i32 %11, i32* %ehselector.slot, align 4, !dbg !1581
  %12 = bitcast i64* %th to i8*, !dbg !1576
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %12) #9, !dbg !1576
  %13 = bitcast i64* %i to i8*, !dbg !1569
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %13) #9, !dbg !1569
  br label %ehcleanup, !dbg !1569

for.end:                                          ; preds = %for.cond.cleanup
  %14 = bitcast %"class.std::vector"** %__range1 to i8*, !dbg !1582
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #9, !dbg !1582
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %__range1, metadata !1552, metadata !DIExpression()), !dbg !1583
  store %"class.std::vector"* %ths, %"class.std::vector"** %__range1, align 8, !dbg !1582, !tbaa !1584
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__begin1 to i8*, !dbg !1586
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #9, !dbg !1586
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__begin1, metadata !1554, metadata !DIExpression()), !dbg !1583
  %16 = load %"class.std::vector"*, %"class.std::vector"** %__range1, align 8, !dbg !1586, !tbaa !1584
  %call1 = call i64* @_ZNSt6vectorImSaImEE5beginEv(%"class.std::vector"* %16) #9, !dbg !1586
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__begin1, i32 0, i32 0, !dbg !1586
  store i64* %call1, i64** %coerce.dive, align 8, !dbg !1586
  %17 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__end1 to i8*, !dbg !1586
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #9, !dbg !1586
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__end1, metadata !1555, metadata !DIExpression()), !dbg !1583
  %18 = load %"class.std::vector"*, %"class.std::vector"** %__range1, align 8, !dbg !1586, !tbaa !1584
  %call2 = call i64* @_ZNSt6vectorImSaImEE3endEv(%"class.std::vector"* %18) #9, !dbg !1586
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__end1, i32 0, i32 0, !dbg !1586
  store i64* %call2, i64** %coerce.dive3, align 8, !dbg !1586
  br label %for.cond4, !dbg !1586

for.cond4:                                        ; preds = %for.inc13, %for.end
  %call5 = call zeroext i1 @_ZN9__gnu_cxxneIPmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__begin1, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__end1) #9, !dbg !1586
  br i1 %call5, label %for.body7, label %for.cond.cleanup6, !dbg !1586

for.cond.cleanup6:                                ; preds = %for.cond4
  %19 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__end1 to i8*, !dbg !1586
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %19) #9, !dbg !1586
  %20 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__begin1 to i8*, !dbg !1586
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #9, !dbg !1586
  %21 = bitcast %"class.std::vector"** %__range1 to i8*, !dbg !1586
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %21) #9, !dbg !1586
  br label %for.end15

for.body7:                                        ; preds = %for.cond4
  %22 = bitcast i64** %th8 to i8*, !dbg !1587
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %22) #9, !dbg !1587
  call void @llvm.dbg.declare(metadata i64** %th8, metadata !1556, metadata !DIExpression()), !dbg !1588
  %call9 = call dereferenceable(8) i64* @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__begin1) #9, !dbg !1589
  store i64* %call9, i64** %th8, align 8, !dbg !1588, !tbaa !1584
  %23 = load i64*, i64** %th8, align 8, !dbg !1590, !tbaa !1584
  %24 = load i64, i64* %23, align 8, !dbg !1590, !tbaa !1562
  %call12 = invoke i32 @pthread_join(i64 %24, i8** null)
          to label %invoke.cont11 unwind label %lpad10, !dbg !1592

invoke.cont11:                                    ; preds = %for.body7
  %25 = bitcast i64** %th8 to i8*, !dbg !1593
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %25) #9, !dbg !1593
  br label %for.inc13, !dbg !1594

for.inc13:                                        ; preds = %invoke.cont11
  %call14 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__begin1) #9, !dbg !1586
  br label %for.cond4, !dbg !1586, !llvm.loop !1595

lpad10:                                           ; preds = %for.body7
  %26 = landingpad { i8*, i32 }
          cleanup, !dbg !1596
  %27 = extractvalue { i8*, i32 } %26, 0, !dbg !1596
  store i8* %27, i8** %exn.slot, align 8, !dbg !1596
  %28 = extractvalue { i8*, i32 } %26, 1, !dbg !1596
  store i32 %28, i32* %ehselector.slot, align 4, !dbg !1596
  %29 = bitcast i64** %th8 to i8*, !dbg !1593
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %29) #9, !dbg !1593
  %30 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__end1 to i8*, !dbg !1586
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %30) #9, !dbg !1586
  %31 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__begin1 to i8*, !dbg !1586
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %31) #9, !dbg !1586
  %32 = bitcast %"class.std::vector"** %__range1 to i8*, !dbg !1586
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %32) #9, !dbg !1586
  br label %ehcleanup, !dbg !1586

for.end15:                                        ; preds = %for.cond.cleanup6
  %call18 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
          to label %invoke.cont17 unwind label %lpad16, !dbg !1597

invoke.cont17:                                    ; preds = %for.end15
  %33 = load i32, i32* @accum, align 4, !dbg !1598, !tbaa !1599
  %call20 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call18, i32 %33)
          to label %invoke.cont19 unwind label %lpad16, !dbg !1601

invoke.cont19:                                    ; preds = %invoke.cont17
  %call22 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call20, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %invoke.cont21 unwind label %lpad16, !dbg !1602

invoke.cont21:                                    ; preds = %invoke.cont19
  store i32 0, i32* %retval, align 4, !dbg !1603
  call void @_ZNSt6vectorImSaImEED2Ev(%"class.std::vector"* %ths) #9, !dbg !1604
  %34 = bitcast %"class.std::vector"* %ths to i8*, !dbg !1604
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %34) #9, !dbg !1604
  %35 = load i32, i32* %retval, align 4, !dbg !1604
  ret i32 %35, !dbg !1604

lpad16:                                           ; preds = %invoke.cont19, %invoke.cont17, %for.end15
  %36 = landingpad { i8*, i32 }
          cleanup, !dbg !1604
  %37 = extractvalue { i8*, i32 } %36, 0, !dbg !1604
  store i8* %37, i8** %exn.slot, align 8, !dbg !1604
  %38 = extractvalue { i8*, i32 } %36, 1, !dbg !1604
  store i32 %38, i32* %ehselector.slot, align 4, !dbg !1604
  br label %ehcleanup, !dbg !1604

ehcleanup:                                        ; preds = %lpad16, %lpad10, %lpad
  call void @_ZNSt6vectorImSaImEED2Ev(%"class.std::vector"* %ths) #9, !dbg !1604
  %39 = bitcast %"class.std::vector"* %ths to i8*, !dbg !1604
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %39) #9, !dbg !1604
  br label %eh.resume, !dbg !1604

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1604
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1604
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !1604
  %lpad.val24 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1604
  resume { i8*, i32 } %lpad.val24, !dbg !1604
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorImSaImEEC2Ev(%"class.std::vector"* %this) unnamed_addr #3 comdat align 2 !dbg !1605 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !1607, metadata !DIExpression()), !dbg !1609
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !1610
  call void @_ZNSt12_Vector_baseImSaImEEC2Ev(%"struct.std::_Vector_base"* %0) #9, !dbg !1611
  ret void, !dbg !1610
}

; Function Attrs: nounwind
declare !callback !1612 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i8* @_ZL6squarePv(i8* %x) #3 !dbg !1614 {
entry:
  %x.addr = alloca i8*, align 8
  %k = alloca i64, align 8
  store i8* %x, i8** %x.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i8** %x.addr, metadata !1618, metadata !DIExpression()), !dbg !1620
  %0 = bitcast i64* %k to i8*, !dbg !1621
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #9, !dbg !1621
  call void @llvm.dbg.declare(metadata i64* %k, metadata !1619, metadata !DIExpression()), !dbg !1622
  %1 = load i8*, i8** %x.addr, align 8, !dbg !1623, !tbaa !1584
  %2 = ptrtoint i8* %1 to i64, !dbg !1624
  store i64 %2, i64* %k, align 8, !dbg !1622, !tbaa !1562
  %3 = load i64, i64* %k, align 8, !dbg !1625, !tbaa !1562
  %4 = load i64, i64* %k, align 8, !dbg !1626, !tbaa !1562
  %mul = mul nsw i64 %3, %4, !dbg !1627
  %5 = load i32, i32* @accum, align 4, !dbg !1628, !tbaa !1599
  %conv = sext i32 %5 to i64, !dbg !1628
  %add = add nsw i64 %conv, %mul, !dbg !1628
  %conv1 = trunc i64 %add to i32, !dbg !1628
  store i32 %conv1, i32* @accum, align 4, !dbg !1628, !tbaa !1599
  %6 = bitcast i64* %k to i8*, !dbg !1629
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #9, !dbg !1629
  ret i8* null, !dbg !1630
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt6vectorImSaImEE9push_backERKm(%"class.std::vector"* %this, i64* dereferenceable(8) %__x) #5 comdat align 2 !dbg !1631 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__x.addr = alloca i64*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !1633, metadata !DIExpression()), !dbg !1635
  store i64* %__x, i64** %__x.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__x.addr, metadata !1634, metadata !DIExpression()), !dbg !1636
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !1637
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !1637
  %1 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !1639
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %1, i32 0, i32 1, !dbg !1640
  %2 = load i64*, i64** %_M_finish, align 8, !dbg !1640, !tbaa !1641
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !1643
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0, !dbg !1643
  %4 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !1644
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %4, i32 0, i32 2, !dbg !1645
  %5 = load i64*, i64** %_M_end_of_storage, align 8, !dbg !1645, !tbaa !1646
  %cmp = icmp ne i64* %2, %5, !dbg !1647
  br i1 %cmp, label %if.then, label %if.else, !dbg !1648

if.then:                                          ; preds = %entry
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !1649
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0, !dbg !1649
  %7 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl3 to %"class.std::allocator"*, !dbg !1651
  %8 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !1652
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %8, i32 0, i32 0, !dbg !1652
  %9 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl4 to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !1653
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %9, i32 0, i32 1, !dbg !1654
  %10 = load i64*, i64** %_M_finish5, align 8, !dbg !1654, !tbaa !1641
  %11 = load i64*, i64** %__x.addr, align 8, !dbg !1655, !tbaa !1584
  call void @_ZNSt16allocator_traitsISaImEE9constructImJRKmEEEvRS0_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %7, i64* %10, i64* dereferenceable(8) %11) #9, !dbg !1656
  %12 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !1657
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %12, i32 0, i32 0, !dbg !1657
  %13 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl6 to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !1658
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %13, i32 0, i32 1, !dbg !1659
  %14 = load i64*, i64** %_M_finish7, align 8, !dbg !1660, !tbaa !1641
  %incdec.ptr = getelementptr inbounds i64, i64* %14, i32 1, !dbg !1660
  store i64* %incdec.ptr, i64** %_M_finish7, align 8, !dbg !1660, !tbaa !1641
  br label %if.end, !dbg !1661

if.else:                                          ; preds = %entry
  %call = call i64* @_ZNSt6vectorImSaImEE3endEv(%"class.std::vector"* %this1) #9, !dbg !1662
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !1662
  store i64* %call, i64** %coerce.dive, align 8, !dbg !1662
  %15 = load i64*, i64** %__x.addr, align 8, !dbg !1663, !tbaa !1584
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !1664
  %16 = load i64*, i64** %coerce.dive8, align 8, !dbg !1664
  call void @_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_(%"class.std::vector"* %this1, i64* %16, i64* dereferenceable(8) %15), !dbg !1664
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1665
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64* @_ZNSt6vectorImSaImEE5beginEv(%"class.std::vector"* %this) #3 comdat align 2 !dbg !1666 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !1668, metadata !DIExpression()), !dbg !1669
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !1670
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !1670
  %1 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !1671
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %1, i32 0, i32 0, !dbg !1672
  call void @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %retval, i64** dereferenceable(8) %_M_start) #9, !dbg !1673
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0, !dbg !1674
  %2 = load i64*, i64** %coerce.dive, align 8, !dbg !1674
  ret i64* %2, !dbg !1674
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64* @_ZNSt6vectorImSaImEE3endEv(%"class.std::vector"* %this) #3 comdat align 2 !dbg !1675 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !1677, metadata !DIExpression()), !dbg !1678
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !1679
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !1679
  %1 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !1680
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %1, i32 0, i32 1, !dbg !1681
  call void @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %retval, i64** dereferenceable(8) %_M_finish) #9, !dbg !1682
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0, !dbg !1683
  %2 = load i64*, i64** %coerce.dive, align 8, !dbg !1683
  ret i64* %2, !dbg !1683
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxxneIPmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #6 comdat !dbg !1684 {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, metadata !1689, metadata !DIExpression()), !dbg !1691
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, metadata !1690, metadata !DIExpression()), !dbg !1692
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8, !dbg !1693, !tbaa !1584
  %call = call dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0) #9, !dbg !1694
  %1 = load i64*, i64** %call, align 8, !dbg !1694, !tbaa !1584
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8, !dbg !1695, !tbaa !1584
  %call1 = call dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2) #9, !dbg !1696
  %3 = load i64*, i64** %call1, align 8, !dbg !1696, !tbaa !1584
  %cmp = icmp ne i64* %1, %3, !dbg !1697
  ret i1 %cmp, !dbg !1698
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) i64* @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %this) #3 comdat align 2 !dbg !1699 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %this.addr, metadata !1701, metadata !DIExpression()), !dbg !1703
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0, !dbg !1704
  %0 = load i64*, i64** %_M_current, align 8, !dbg !1704, !tbaa !1705
  ret i64* %0, !dbg !1707
}

declare !dbg !19 dso_local i32 @pthread_join(i64, i8**) #7

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %this) #3 comdat align 2 !dbg !1708 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %this.addr, metadata !1710, metadata !DIExpression()), !dbg !1712
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0, !dbg !1713
  %0 = load i64*, i64** %_M_current, align 8, !dbg !1714, !tbaa !1705
  %incdec.ptr = getelementptr inbounds i64, i64* %0, i32 1, !dbg !1714
  store i64* %incdec.ptr, i64** %_M_current, align 8, !dbg !1714, !tbaa !1705
  ret %"class.__gnu_cxx::__normal_iterator"* %this1, !dbg !1715
}

; Function Attrs: inlinehint uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %__out, i8* %__s) #8 !dbg !1716 {
entry:
  %__out.addr = alloca %"class.std::basic_ostream"*, align 8
  %__s.addr = alloca i8*, align 8
  store %"class.std::basic_ostream"* %__out, %"class.std::basic_ostream"** %__out.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %__out.addr, metadata !1724, metadata !DIExpression()), !dbg !1780
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !1725, metadata !DIExpression()), !dbg !1781
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !1782, !tbaa !1584
  %tobool = icmp ne i8* %0, null, !dbg !1782
  br i1 %tobool, label %if.else, label %if.then, !dbg !1784

if.then:                                          ; preds = %entry
  %1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__out.addr, align 8, !dbg !1785, !tbaa !1584
  %2 = bitcast %"class.std::basic_ostream"* %1 to i8**, !dbg !1785
  %vtable = load i8*, i8** %2, align 8, !dbg !1785, !tbaa !1786
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24, !dbg !1785
  %3 = bitcast i8* %vbase.offset.ptr to i64*, !dbg !1785
  %vbase.offset = load i64, i64* %3, align 8, !dbg !1785
  %4 = bitcast %"class.std::basic_ostream"* %1 to i8*, !dbg !1785
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %vbase.offset, !dbg !1785
  %5 = bitcast i8* %add.ptr to %"class.std::basic_ios"*, !dbg !1785
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* %5, i32 1), !dbg !1788
  br label %if.end, !dbg !1785

if.else:                                          ; preds = %entry
  %6 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__out.addr, align 8, !dbg !1789, !tbaa !1584
  %7 = load i8*, i8** %__s.addr, align 8, !dbg !1790, !tbaa !1584
  %8 = load i8*, i8** %__s.addr, align 8, !dbg !1791, !tbaa !1584
  %call = call i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %8), !dbg !1792
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272) %6, i8* %7, i64 %call), !dbg !1793
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__out.addr, align 8, !dbg !1794, !tbaa !1584
  ret %"class.std::basic_ostream"* %9, !dbg !1795
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #7

; Function Attrs: uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %this, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* %__pf) #5 align 2 !dbg !1796 {
entry:
  %this.addr = alloca %"class.std::basic_ostream"*, align 8
  %__pf.addr = alloca %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*, align 8
  store %"class.std::basic_ostream"* %this, %"class.std::basic_ostream"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %this.addr, metadata !1807, metadata !DIExpression()), !dbg !1810
  store %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* %__pf, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)** %__pf.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)** %__pf.addr, metadata !1809, metadata !DIExpression()), !dbg !1811
  %this1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %this.addr, align 8
  %0 = load %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)** %__pf.addr, align 8, !dbg !1812, !tbaa !1584
  %call = call dereferenceable(272) %"class.std::basic_ostream"* %0(%"class.std::basic_ostream"* dereferenceable(272) %this1), !dbg !1812
  ret %"class.std::basic_ostream"* %call, !dbg !1813
}

; Function Attrs: inlinehint uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272) %__os) #8 !dbg !1814 {
entry:
  %__os.addr = alloca %"class.std::basic_ostream"*, align 8
  store %"class.std::basic_ostream"* %__os, %"class.std::basic_ostream"** %__os.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %__os.addr, metadata !1818, metadata !DIExpression()), !dbg !1820
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__os.addr, align 8, !dbg !1821, !tbaa !1584
  %1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__os.addr, align 8, !dbg !1822, !tbaa !1584
  %2 = bitcast %"class.std::basic_ostream"* %1 to i8**, !dbg !1822
  %vtable = load i8*, i8** %2, align 8, !dbg !1822, !tbaa !1786
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24, !dbg !1822
  %3 = bitcast i8* %vbase.offset.ptr to i64*, !dbg !1822
  %vbase.offset = load i64, i64* %3, align 8, !dbg !1822
  %4 = bitcast %"class.std::basic_ostream"* %1 to i8*, !dbg !1822
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %vbase.offset, !dbg !1822
  %5 = bitcast i8* %add.ptr to %"class.std::basic_ios"*, !dbg !1822
  %call = call signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* %5, i8 signext 10), !dbg !1823
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* %0, i8 signext %call), !dbg !1824
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272) %call1), !dbg !1825
  ret %"class.std::basic_ostream"* %call2, !dbg !1826
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorImSaImEED2Ev(%"class.std::vector"* %this) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1827 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !1829, metadata !DIExpression()), !dbg !1830
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !1831
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !1831
  %1 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !1833
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %1, i32 0, i32 0, !dbg !1834
  %2 = load i64*, i64** %_M_start, align 8, !dbg !1834, !tbaa !1835
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !1836
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0, !dbg !1836
  %4 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !1837
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %4, i32 0, i32 1, !dbg !1838
  %5 = load i64*, i64** %_M_finish, align 8, !dbg !1838, !tbaa !1641
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !1839
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %6) #9, !dbg !1839
  invoke void @_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E(i64* %2, i64* %5, %"class.std::allocator"* dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad, !dbg !1840

invoke.cont:                                      ; preds = %entry
  %7 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !1841
  call void @_ZNSt12_Vector_baseImSaImEED2Ev(%"struct.std::_Vector_base"* %7) #9, !dbg !1841
  ret void, !dbg !1842

lpad:                                             ; preds = %entry
  %8 = landingpad { i8*, i32 }
          catch i8* null, !dbg !1841
  %9 = extractvalue { i8*, i32 } %8, 0, !dbg !1841
  store i8* %9, i8** %exn.slot, align 8, !dbg !1841
  %10 = extractvalue { i8*, i32 } %8, 1, !dbg !1841
  store i32 %10, i32* %ehselector.slot, align 4, !dbg !1841
  %11 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !1841
  call void @_ZNSt12_Vector_baseImSaImEED2Ev(%"struct.std::_Vector_base"* %11) #9, !dbg !1841
  br label %terminate.handler, !dbg !1841

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1841
  call void @__clang_call_terminate(i8* %exn) #14, !dbg !1841
  unreachable, !dbg !1841
}

; Function Attrs: uwtable
define internal void @__cxx_global_var_init() #5 section ".text.startup" !dbg !1843 {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !dbg !1844
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #9, !dbg !1844
  ret void, !dbg !1844
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #7

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #9

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseImSaImEEC2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #3 comdat align 2 !dbg !1845 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !1847, metadata !DIExpression()), !dbg !1849
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !1850
  call void @_ZNSt12_Vector_baseImSaImEE12_Vector_implC2Ev(%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl) #9, !dbg !1850
  ret void, !dbg !1851
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseImSaImEE12_Vector_implC2Ev(%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this) unnamed_addr #3 comdat align 2 !dbg !1852 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this, %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"** %this.addr, metadata !1854, metadata !DIExpression()), !dbg !1856
  %this1 = load %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"*, %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this1 to %"class.std::allocator"*, !dbg !1857
  call void @_ZNSaImEC2Ev(%"class.std::allocator"* %0) #9, !dbg !1858
  %1 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this1 to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !1857
  call void @_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %1) #9, !dbg !1859
  ret void, !dbg !1860
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSaImEC2Ev(%"class.std::allocator"* %this) unnamed_addr #3 comdat align 2 !dbg !1861 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %this.addr, metadata !1863, metadata !DIExpression()), !dbg !1865
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*, !dbg !1866
  call void @_ZN9__gnu_cxx13new_allocatorImEC2Ev(%"class.__gnu_cxx::new_allocator"* %0) #9, !dbg !1867
  ret void, !dbg !1868
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %this) unnamed_addr #3 comdat align 2 !dbg !1869 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %this, %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"** %this.addr, metadata !1871, metadata !DIExpression()), !dbg !1873
  %this1 = load %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"** %this.addr, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %this1, i32 0, i32 0, !dbg !1874
  store i64* null, i64** %_M_start, align 8, !dbg !1874, !tbaa !1835
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %this1, i32 0, i32 1, !dbg !1875
  store i64* null, i64** %_M_finish, align 8, !dbg !1875, !tbaa !1641
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %this1, i32 0, i32 2, !dbg !1876
  store i64* null, i64** %_M_end_of_storage, align 8, !dbg !1876, !tbaa !1646
  ret void, !dbg !1877
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorImEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #3 comdat align 2 !dbg !1878 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %this.addr, metadata !1880, metadata !DIExpression()), !dbg !1882
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void, !dbg !1883
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E(i64* %__first, i64* %__last, %"class.std::allocator"* dereferenceable(1) %0) #8 comdat !dbg !1884 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store i64* %__first, i64** %__first.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !1888, metadata !DIExpression()), !dbg !1893
  store i64* %__last, i64** %__last.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !1889, metadata !DIExpression()), !dbg !1894
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %.addr, metadata !1890, metadata !DIExpression()), !dbg !1895
  %1 = load i64*, i64** %__first.addr, align 8, !dbg !1896, !tbaa !1584
  %2 = load i64*, i64** %__last.addr, align 8, !dbg !1897, !tbaa !1584
  call void @_ZSt8_DestroyIPmEvT_S1_(i64* %1, i64* %2), !dbg !1898
  ret void, !dbg !1899
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #3 comdat align 2 !dbg !1900 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !1902, metadata !DIExpression()), !dbg !1903
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !1904
  %0 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*, !dbg !1905
  ret %"class.std::allocator"* %0, !dbg !1906
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseImSaImEED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1907 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !1909, metadata !DIExpression()), !dbg !1910
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !1911
  %0 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !1911
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %0, i32 0, i32 0, !dbg !1913
  %1 = load i64*, i64** %_M_start, align 8, !dbg !1913, !tbaa !1835
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !1914
  %2 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !1914
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %2, i32 0, i32 2, !dbg !1915
  %3 = load i64*, i64** %_M_end_of_storage, align 8, !dbg !1915, !tbaa !1646
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !1916
  %4 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl3 to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !1916
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %4, i32 0, i32 0, !dbg !1917
  %5 = load i64*, i64** %_M_start4, align 8, !dbg !1917, !tbaa !1835
  %sub.ptr.lhs.cast = ptrtoint i64* %3 to i64, !dbg !1918
  %sub.ptr.rhs.cast = ptrtoint i64* %5 to i64, !dbg !1918
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1918
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !1918
  invoke void @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%"struct.std::_Vector_base"* %this1, i64* %1, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad, !dbg !1919

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !1920
  call void bitcast (void (%"class.__gnu_cxx::new_allocator"*)* @_ZN9__gnu_cxx13new_allocatorImED2Ev to void (%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"*)*)(%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl5) #9, !dbg !1920
  ret void, !dbg !1921

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null, !dbg !1920
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !1920
  store i8* %7, i8** %exn.slot, align 8, !dbg !1920
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !1920
  store i32 %8, i32* %ehselector.slot, align 4, !dbg !1920
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !1920
  call void bitcast (void (%"class.__gnu_cxx::new_allocator"*)* @_ZN9__gnu_cxx13new_allocatorImED2Ev to void (%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"*)*)(%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl6) #9, !dbg !1920
  br label %terminate.handler, !dbg !1920

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1920
  call void @__clang_call_terminate(i8* %exn) #14, !dbg !1920
  unreachable, !dbg !1920
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #10 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #9
  call void @_ZSt9terminatev() #14
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPmEvT_S1_(i64* %__first, i64* %__last) #8 comdat !dbg !1922 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !1927, metadata !DIExpression()), !dbg !1930
  store i64* %__last, i64** %__last.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !1928, metadata !DIExpression()), !dbg !1931
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !1932, !tbaa !1584
  %1 = load i64*, i64** %__last.addr, align 8, !dbg !1933, !tbaa !1584
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_(i64* %0, i64* %1), !dbg !1934
  ret void, !dbg !1935
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_(i64* %0, i64* %1) #3 comdat align 2 !dbg !1936 {
entry:
  %.addr = alloca i64*, align 8
  %.addr1 = alloca i64*, align 8
  store i64* %0, i64** %.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %.addr, metadata !1942, metadata !DIExpression()), !dbg !1944
  store i64* %1, i64** %.addr1, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %.addr1, metadata !1943, metadata !DIExpression()), !dbg !1945
  ret void, !dbg !1946
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%"struct.std::_Vector_base"* %this, i64* %__p, i64 %__n) #5 comdat align 2 !dbg !1947 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__p.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !1949, metadata !DIExpression()), !dbg !1952
  store i64* %__p, i64** %__p.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__p.addr, metadata !1950, metadata !DIExpression()), !dbg !1953
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !1562
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !1951, metadata !DIExpression()), !dbg !1954
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64*, i64** %__p.addr, align 8, !dbg !1955, !tbaa !1584
  %tobool = icmp ne i64* %0, null, !dbg !1955
  br i1 %tobool, label %if.then, label %if.end, !dbg !1957

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !1958
  %1 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*, !dbg !1958
  %2 = load i64*, i64** %__p.addr, align 8, !dbg !1959, !tbaa !1584
  %3 = load i64, i64* %__n.addr, align 8, !dbg !1960, !tbaa !1562
  call void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(%"class.std::allocator"* dereferenceable(1) %1, i64* %2, i64 %3), !dbg !1961
  br label %if.end, !dbg !1961

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1962
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorImED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #3 comdat align 2 !dbg !1963 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %this.addr, metadata !1965, metadata !DIExpression()), !dbg !1966
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void, !dbg !1967
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(%"class.std::allocator"* dereferenceable(1) %__a, i64* %__p, i64 %__n) #5 comdat align 2 !dbg !1968 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__a.addr, metadata !1970, metadata !DIExpression()), !dbg !1973
  store i64* %__p, i64** %__p.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__p.addr, metadata !1971, metadata !DIExpression()), !dbg !1974
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !1562
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !1972, metadata !DIExpression()), !dbg !1975
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !dbg !1976, !tbaa !1584
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*, !dbg !1976
  %2 = load i64*, i64** %__p.addr, align 8, !dbg !1977, !tbaa !1584
  %3 = load i64, i64* %__n.addr, align 8, !dbg !1978, !tbaa !1562
  call void @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%"class.__gnu_cxx::new_allocator"* %1, i64* %2, i64 %3), !dbg !1979
  ret void, !dbg !1980
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%"class.__gnu_cxx::new_allocator"* %this, i64* %__p, i64 %__t) #3 comdat align 2 !dbg !1981 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca i64*, align 8
  %__t.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %this.addr, metadata !1983, metadata !DIExpression()), !dbg !1986
  store i64* %__p, i64** %__p.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__p.addr, metadata !1984, metadata !DIExpression()), !dbg !1987
  store i64 %__t, i64* %__t.addr, align 8, !tbaa !1562
  call void @llvm.dbg.declare(metadata i64* %__t.addr, metadata !1985, metadata !DIExpression()), !dbg !1988
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %0 = load i64*, i64** %__p.addr, align 8, !dbg !1989, !tbaa !1584
  %1 = bitcast i64* %0 to i8*, !dbg !1989
  call void @_ZdlPv(i8* %1) #9, !dbg !1990
  ret void, !dbg !1991
}

; Function Attrs: nobuiltin nounwind
declare !dbg !31 dso_local void @_ZdlPv(i8*) #11

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaImEE9constructImJRKmEEEvRS0_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %__a, i64* %__p, i64* dereferenceable(8) %__args) #3 comdat align 2 !dbg !1992 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca i64*, align 8
  %__args.addr = alloca i64*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__a.addr, metadata !2002, metadata !DIExpression()), !dbg !2005
  store i64* %__p, i64** %__p.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__p.addr, metadata !2003, metadata !DIExpression()), !dbg !2006
  store i64* %__args, i64** %__args.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__args.addr, metadata !2004, metadata !DIExpression()), !dbg !2007
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !dbg !2008, !tbaa !1584
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*, !dbg !2008
  %2 = load i64*, i64** %__p.addr, align 8, !dbg !2009, !tbaa !1584
  %3 = load i64*, i64** %__args.addr, align 8, !dbg !2010, !tbaa !1584
  %call = call dereferenceable(8) i64* @_ZSt7forwardIRKmEOT_RNSt16remove_referenceIS2_E4typeE(i64* dereferenceable(8) %3) #9, !dbg !2011
  call void @_ZN9__gnu_cxx13new_allocatorImE9constructImJRKmEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %1, i64* %2, i64* dereferenceable(8) %call) #9, !dbg !2012
  ret void, !dbg !2013
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_(%"class.std::vector"* %this, i64* %__position.coerce, i64* dereferenceable(8) %__args) #5 comdat align 2 !dbg !2014 {
entry:
  %__position = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  %__args.addr = alloca i64*, align 8
  %__len = alloca i64, align 8
  %__old_start = alloca i64*, align 8
  %__old_finish = alloca i64*, align 8
  %__elems_before = alloca i64, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__new_start = alloca i64*, align 8
  %__new_finish = alloca i64*, align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__position, i32 0, i32 0
  store i64* %__position.coerce, i64** %coerce.dive, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !2021, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__position, metadata !2022, metadata !DIExpression()), !dbg !2032
  store i64* %__args, i64** %__args.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__args.addr, metadata !2023, metadata !DIExpression()), !dbg !2033
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast i64* %__len to i8*, !dbg !2034
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #9, !dbg !2034
  call void @llvm.dbg.declare(metadata i64* %__len, metadata !2024, metadata !DIExpression()), !dbg !2035
  %call = call i64 @_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc(%"class.std::vector"* %this1, i64 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)), !dbg !2036
  store i64 %call, i64* %__len, align 8, !dbg !2035, !tbaa !1562
  %1 = bitcast i64** %__old_start to i8*, !dbg !2037
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #9, !dbg !2037
  call void @llvm.dbg.declare(metadata i64** %__old_start, metadata !2026, metadata !DIExpression()), !dbg !2038
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2039
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0, !dbg !2039
  %3 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !2040
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %3, i32 0, i32 0, !dbg !2041
  %4 = load i64*, i64** %_M_start, align 8, !dbg !2041, !tbaa !1835
  store i64* %4, i64** %__old_start, align 8, !dbg !2038, !tbaa !1584
  %5 = bitcast i64** %__old_finish to i8*, !dbg !2042
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #9, !dbg !2042
  call void @llvm.dbg.declare(metadata i64** %__old_finish, metadata !2027, metadata !DIExpression()), !dbg !2043
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2044
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0, !dbg !2044
  %7 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !2045
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %7, i32 0, i32 1, !dbg !2046
  %8 = load i64*, i64** %_M_finish, align 8, !dbg !2046, !tbaa !1641
  store i64* %8, i64** %__old_finish, align 8, !dbg !2043, !tbaa !1584
  %9 = bitcast i64* %__elems_before to i8*, !dbg !2047
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #9, !dbg !2047
  call void @llvm.dbg.declare(metadata i64* %__elems_before, metadata !2028, metadata !DIExpression()), !dbg !2048
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %ref.tmp to i8*, !dbg !2049
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #9, !dbg !2049
  %call3 = call i64* @_ZNSt6vectorImSaImEE5beginEv(%"class.std::vector"* %this1) #9, !dbg !2049
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp, i32 0, i32 0, !dbg !2049
  store i64* %call3, i64** %coerce.dive4, align 8, !dbg !2049
  %call5 = call i64 @_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ref.tmp) #9, !dbg !2050
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator"* %ref.tmp to i8*, !dbg !2051
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #9, !dbg !2051
  store i64 %call5, i64* %__elems_before, align 8, !dbg !2048, !tbaa !1562
  %12 = bitcast i64** %__new_start to i8*, !dbg !2052
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #9, !dbg !2052
  call void @llvm.dbg.declare(metadata i64** %__new_start, metadata !2029, metadata !DIExpression()), !dbg !2053
  %13 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2054
  %14 = load i64, i64* %__len, align 8, !dbg !2055, !tbaa !1562
  %call6 = call i64* @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%"struct.std::_Vector_base"* %13, i64 %14), !dbg !2054
  store i64* %call6, i64** %__new_start, align 8, !dbg !2053, !tbaa !1584
  %15 = bitcast i64** %__new_finish to i8*, !dbg !2056
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #9, !dbg !2056
  call void @llvm.dbg.declare(metadata i64** %__new_finish, metadata !2030, metadata !DIExpression()), !dbg !2057
  %16 = load i64*, i64** %__new_start, align 8, !dbg !2058, !tbaa !1584
  store i64* %16, i64** %__new_finish, align 8, !dbg !2057, !tbaa !1584
  %17 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2059
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %17, i32 0, i32 0, !dbg !2059
  %18 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl7 to %"class.std::allocator"*, !dbg !2061
  %19 = load i64*, i64** %__new_start, align 8, !dbg !2062, !tbaa !1584
  %20 = load i64, i64* %__elems_before, align 8, !dbg !2063, !tbaa !1562
  %add.ptr = getelementptr inbounds i64, i64* %19, i64 %20, !dbg !2064
  %21 = load i64*, i64** %__args.addr, align 8, !dbg !2065, !tbaa !1584
  %call8 = call dereferenceable(8) i64* @_ZSt7forwardIRKmEOT_RNSt16remove_referenceIS2_E4typeE(i64* dereferenceable(8) %21) #9, !dbg !2066
  call void @_ZNSt16allocator_traitsISaImEE9constructImJRKmEEEvRS0_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %18, i64* %add.ptr, i64* dereferenceable(8) %call8) #9, !dbg !2067
  store i64* null, i64** %__new_finish, align 8, !dbg !2068, !tbaa !1584
  %22 = load i64*, i64** %__old_start, align 8, !dbg !2069, !tbaa !1584
  %call9 = call dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position) #9, !dbg !2072
  %23 = load i64*, i64** %call9, align 8, !dbg !2072, !tbaa !1584
  %24 = load i64*, i64** %__new_start, align 8, !dbg !2073, !tbaa !1584
  %25 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2074
  %call10 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %25) #9, !dbg !2074
  %call11 = call i64* @_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_(i64* %22, i64* %23, i64* %24, %"class.std::allocator"* dereferenceable(1) %call10) #9, !dbg !2075
  store i64* %call11, i64** %__new_finish, align 8, !dbg !2076, !tbaa !1584
  %26 = load i64*, i64** %__new_finish, align 8, !dbg !2077, !tbaa !1584
  %incdec.ptr = getelementptr inbounds i64, i64* %26, i32 1, !dbg !2077
  store i64* %incdec.ptr, i64** %__new_finish, align 8, !dbg !2077, !tbaa !1584
  %call12 = call dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position) #9, !dbg !2078
  %27 = load i64*, i64** %call12, align 8, !dbg !2078, !tbaa !1584
  %28 = load i64*, i64** %__old_finish, align 8, !dbg !2079, !tbaa !1584
  %29 = load i64*, i64** %__new_finish, align 8, !dbg !2080, !tbaa !1584
  %30 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2081
  %call13 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %30) #9, !dbg !2081
  %call14 = call i64* @_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_(i64* %27, i64* %28, i64* %29, %"class.std::allocator"* dereferenceable(1) %call13) #9, !dbg !2082
  store i64* %call14, i64** %__new_finish, align 8, !dbg !2083, !tbaa !1584
  %31 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2084
  %32 = load i64*, i64** %__old_start, align 8, !dbg !2085, !tbaa !1584
  %33 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2086
  %_M_impl15 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %33, i32 0, i32 0, !dbg !2086
  %34 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl15 to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !2087
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %34, i32 0, i32 2, !dbg !2088
  %35 = load i64*, i64** %_M_end_of_storage, align 8, !dbg !2088, !tbaa !1646
  %36 = load i64*, i64** %__old_start, align 8, !dbg !2089, !tbaa !1584
  %sub.ptr.lhs.cast = ptrtoint i64* %35 to i64, !dbg !2090
  %sub.ptr.rhs.cast = ptrtoint i64* %36 to i64, !dbg !2090
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2090
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !2090
  call void @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%"struct.std::_Vector_base"* %31, i64* %32, i64 %sub.ptr.div), !dbg !2084
  %37 = load i64*, i64** %__new_start, align 8, !dbg !2091, !tbaa !1584
  %38 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2092
  %_M_impl16 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %38, i32 0, i32 0, !dbg !2092
  %39 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl16 to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !2093
  %_M_start17 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %39, i32 0, i32 0, !dbg !2094
  store i64* %37, i64** %_M_start17, align 8, !dbg !2095, !tbaa !1835
  %40 = load i64*, i64** %__new_finish, align 8, !dbg !2096, !tbaa !1584
  %41 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2097
  %_M_impl18 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %41, i32 0, i32 0, !dbg !2097
  %42 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl18 to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !2098
  %_M_finish19 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %42, i32 0, i32 1, !dbg !2099
  store i64* %40, i64** %_M_finish19, align 8, !dbg !2100, !tbaa !1641
  %43 = load i64*, i64** %__new_start, align 8, !dbg !2101, !tbaa !1584
  %44 = load i64, i64* %__len, align 8, !dbg !2102, !tbaa !1562
  %add.ptr20 = getelementptr inbounds i64, i64* %43, i64 %44, !dbg !2103
  %45 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2104
  %_M_impl21 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %45, i32 0, i32 0, !dbg !2104
  %46 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl21 to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !2105
  %_M_end_of_storage22 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %46, i32 0, i32 2, !dbg !2106
  store i64* %add.ptr20, i64** %_M_end_of_storage22, align 8, !dbg !2107, !tbaa !1646
  %47 = bitcast i64** %__new_finish to i8*, !dbg !2108
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %47) #9, !dbg !2108
  %48 = bitcast i64** %__new_start to i8*, !dbg !2108
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %48) #9, !dbg !2108
  %49 = bitcast i64* %__elems_before to i8*, !dbg !2108
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %49) #9, !dbg !2108
  %50 = bitcast i64** %__old_finish to i8*, !dbg !2108
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %50) #9, !dbg !2108
  %51 = bitcast i64** %__old_start to i8*, !dbg !2108
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %51) #9, !dbg !2108
  %52 = bitcast i64* %__len to i8*, !dbg !2108
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %52) #9, !dbg !2108
  ret void, !dbg !2108
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorImE9constructImJRKmEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %this, i64* %__p, i64* dereferenceable(8) %__args) #3 comdat align 2 !dbg !2109 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca i64*, align 8
  %__args.addr = alloca i64*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %this.addr, metadata !2114, metadata !DIExpression()), !dbg !2117
  store i64* %__p, i64** %__p.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__p.addr, metadata !2115, metadata !DIExpression()), !dbg !2118
  store i64* %__args, i64** %__args.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__args.addr, metadata !2116, metadata !DIExpression()), !dbg !2119
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %0 = load i64*, i64** %__p.addr, align 8, !dbg !2120, !tbaa !1584
  %1 = bitcast i64* %0 to i8*, !dbg !2120
  %2 = bitcast i8* %1 to i64*, !dbg !2121
  %3 = load i64*, i64** %__args.addr, align 8, !dbg !2122, !tbaa !1584
  %call = call dereferenceable(8) i64* @_ZSt7forwardIRKmEOT_RNSt16remove_referenceIS2_E4typeE(i64* dereferenceable(8) %3) #9, !dbg !2123
  %4 = load i64, i64* %call, align 8, !dbg !2123, !tbaa !1562
  store i64 %4, i64* %2, align 8, !dbg !2121, !tbaa !1562
  ret void, !dbg !2124
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) i64* @_ZSt7forwardIRKmEOT_RNSt16remove_referenceIS2_E4typeE(i64* dereferenceable(8) %__t) #3 comdat !dbg !2125 {
entry:
  %__t.addr = alloca i64*, align 8
  store i64* %__t, i64** %__t.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__t.addr, metadata !2135, metadata !DIExpression()), !dbg !2136
  %0 = load i64*, i64** %__t.addr, align 8, !dbg !2137, !tbaa !1584
  ret i64* %0, !dbg !2138
}

; Function Attrs: uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 %__n, i8* %__s) #5 comdat align 2 !dbg !2139 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__s.addr = alloca i8*, align 8
  %__len = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !2141, metadata !DIExpression()), !dbg !2146
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !1562
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !2143, metadata !DIExpression()), !dbg !2147
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !2144, metadata !DIExpression()), !dbg !2148
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call i64 @_ZNKSt6vectorImSaImEE8max_sizeEv(%"class.std::vector"* %this1) #9, !dbg !2149
  %call2 = call i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector"* %this1) #9, !dbg !2151
  %sub = sub i64 %call, %call2, !dbg !2152
  %0 = load i64, i64* %__n.addr, align 8, !dbg !2153, !tbaa !1562
  %cmp = icmp ult i64 %sub, %0, !dbg !2154
  br i1 %cmp, label %if.then, label %if.end, !dbg !2155

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %__s.addr, align 8, !dbg !2156, !tbaa !1584
  call void @_ZSt20__throw_length_errorPKc(i8* %1) #15, !dbg !2157
  unreachable, !dbg !2157

if.end:                                           ; preds = %entry
  %2 = bitcast i64* %__len to i8*, !dbg !2158
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #9, !dbg !2158
  call void @llvm.dbg.declare(metadata i64* %__len, metadata !2145, metadata !DIExpression()), !dbg !2159
  %call3 = call i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector"* %this1) #9, !dbg !2160
  %3 = bitcast i64* %ref.tmp to i8*, !dbg !2161
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #9, !dbg !2161
  %call4 = call i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector"* %this1) #9, !dbg !2161
  store i64 %call4, i64* %ref.tmp, align 8, !dbg !2161, !tbaa !1562
  %call5 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %ref.tmp, i64* dereferenceable(8) %__n.addr), !dbg !2162
  %4 = load i64, i64* %call5, align 8, !dbg !2162, !tbaa !1562
  %add = add i64 %call3, %4, !dbg !2163
  %5 = bitcast i64* %ref.tmp to i8*, !dbg !2160
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #9, !dbg !2160
  store i64 %add, i64* %__len, align 8, !dbg !2159, !tbaa !1562
  %6 = load i64, i64* %__len, align 8, !dbg !2164, !tbaa !1562
  %call6 = call i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector"* %this1) #9, !dbg !2165
  %cmp7 = icmp ult i64 %6, %call6, !dbg !2166
  br i1 %cmp7, label %cond.true, label %lor.lhs.false, !dbg !2167

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i64, i64* %__len, align 8, !dbg !2168, !tbaa !1562
  %call8 = call i64 @_ZNKSt6vectorImSaImEE8max_sizeEv(%"class.std::vector"* %this1) #9, !dbg !2169
  %cmp9 = icmp ugt i64 %7, %call8, !dbg !2170
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !2171

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call i64 @_ZNKSt6vectorImSaImEE8max_sizeEv(%"class.std::vector"* %this1) #9, !dbg !2172
  br label %cond.end, !dbg !2171

cond.false:                                       ; preds = %lor.lhs.false
  %8 = load i64, i64* %__len, align 8, !dbg !2173, !tbaa !1562
  br label %cond.end, !dbg !2171

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %8, %cond.false ], !dbg !2171
  %9 = bitcast i64* %__len to i8*, !dbg !2174
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #9, !dbg !2174
  ret i64 %cond, !dbg !2175
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i64 @_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #6 comdat !dbg !2176 {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, metadata !2180, metadata !DIExpression()), !dbg !2182
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, metadata !2181, metadata !DIExpression()), !dbg !2183
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8, !dbg !2184, !tbaa !1584
  %call = call dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0) #9, !dbg !2185
  %1 = load i64*, i64** %call, align 8, !dbg !2185, !tbaa !1584
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8, !dbg !2186, !tbaa !1584
  %call1 = call dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2) #9, !dbg !2187
  %3 = load i64*, i64** %call1, align 8, !dbg !2187, !tbaa !1584
  %sub.ptr.lhs.cast = ptrtoint i64* %1 to i64, !dbg !2188
  %sub.ptr.rhs.cast = ptrtoint i64* %3 to i64, !dbg !2188
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2188
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !2188
  ret i64 %sub.ptr.div, !dbg !2189
}

; Function Attrs: uwtable
define linkonce_odr dso_local i64* @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #5 comdat align 2 !dbg !2190 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !2192, metadata !DIExpression()), !dbg !2194
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !1562
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !2193, metadata !DIExpression()), !dbg !2195
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8, !dbg !2196, !tbaa !1562
  %cmp = icmp ne i64 %0, 0, !dbg !2197
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2196

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !2198
  %1 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*, !dbg !2198
  %2 = load i64, i64* %__n.addr, align 8, !dbg !2199, !tbaa !1562
  %call = call i64* @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(%"class.std::allocator"* dereferenceable(1) %1, i64 %2), !dbg !2200
  br label %cond.end, !dbg !2196

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2196

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ %call, %cond.true ], [ null, %cond.false ], !dbg !2196
  ret i64* %cond, !dbg !2201
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64* @_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_(i64* %__first, i64* %__last, i64* %__result, %"class.std::allocator"* dereferenceable(1) %__alloc) #3 comdat align 2 !dbg !46 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %__alloc.addr = alloca %"class.std::allocator"*, align 8
  %agg.tmp = alloca %"struct.std::integral_constant", align 1
  store i64* %__first, i64** %__first.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !581, metadata !DIExpression()), !dbg !2202
  store i64* %__last, i64** %__last.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !582, metadata !DIExpression()), !dbg !2203
  store i64* %__result, i64** %__result.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !583, metadata !DIExpression()), !dbg !2204
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %__alloc.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__alloc.addr, metadata !584, metadata !DIExpression()), !dbg !2205
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !2206, !tbaa !1584
  %1 = load i64*, i64** %__last.addr, align 8, !dbg !2207, !tbaa !1584
  %2 = load i64*, i64** %__result.addr, align 8, !dbg !2208, !tbaa !1584
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %__alloc.addr, align 8, !dbg !2209, !tbaa !1584
  %call = call i64* @_ZNSt6vectorImSaImEE14_S_do_relocateEPmS2_S2_RS0_St17integral_constantIbLb1EE(i64* %0, i64* %1, i64* %2, %"class.std::allocator"* dereferenceable(1) %3) #9, !dbg !2210
  ret i64* %call, !dbg !2211
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #3 comdat align 2 !dbg !2212 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %this.addr, metadata !2214, metadata !DIExpression()), !dbg !2215
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0, !dbg !2216
  ret i64** %_M_current, !dbg !2217
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorImSaImEE8max_sizeEv(%"class.std::vector"* %this) #3 comdat align 2 !dbg !2218 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !2220, metadata !DIExpression()), !dbg !2221
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2222
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %0) #9, !dbg !2222
  %call2 = call i64 @_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_(%"class.std::allocator"* dereferenceable(1) %call) #9, !dbg !2223
  ret i64 %call2, !dbg !2224
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector"* %this) #3 comdat align 2 !dbg !2225 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !2227, metadata !DIExpression()), !dbg !2228
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2229
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !2229
  %1 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !2230
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %1, i32 0, i32 1, !dbg !2231
  %2 = load i64*, i64** %_M_finish, align 8, !dbg !2231, !tbaa !1641
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2232
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0, !dbg !2232
  %4 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !2233
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %4, i32 0, i32 0, !dbg !2234
  %5 = load i64*, i64** %_M_start, align 8, !dbg !2234, !tbaa !1835
  %sub.ptr.lhs.cast = ptrtoint i64* %2 to i64, !dbg !2235
  %sub.ptr.rhs.cast = ptrtoint i64* %5 to i64, !dbg !2235
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2235
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !2235
  ret i64 %sub.ptr.div, !dbg !2236
}

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) #12

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %__a, i64* dereferenceable(8) %__b) #6 comdat !dbg !2237 {
entry:
  %retval = alloca i64*, align 8
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  store i64* %__a, i64** %__a.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__a.addr, metadata !2242, metadata !DIExpression()), !dbg !2244
  store i64* %__b, i64** %__b.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__b.addr, metadata !2243, metadata !DIExpression()), !dbg !2245
  %0 = load i64*, i64** %__a.addr, align 8, !dbg !2246, !tbaa !1584
  %1 = load i64, i64* %0, align 8, !dbg !2246, !tbaa !1562
  %2 = load i64*, i64** %__b.addr, align 8, !dbg !2248, !tbaa !1584
  %3 = load i64, i64* %2, align 8, !dbg !2248, !tbaa !1562
  %cmp = icmp ult i64 %1, %3, !dbg !2249
  br i1 %cmp, label %if.then, label %if.end, !dbg !2250

if.then:                                          ; preds = %entry
  %4 = load i64*, i64** %__b.addr, align 8, !dbg !2251, !tbaa !1584
  store i64* %4, i64** %retval, align 8, !dbg !2252
  br label %return, !dbg !2252

if.end:                                           ; preds = %entry
  %5 = load i64*, i64** %__a.addr, align 8, !dbg !2253, !tbaa !1584
  store i64* %5, i64** %retval, align 8, !dbg !2254
  br label %return, !dbg !2254

return:                                           ; preds = %if.end, %if.then
  %6 = load i64*, i64** %retval, align 8, !dbg !2255
  ret i64* %6, !dbg !2255
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_(%"class.std::allocator"* dereferenceable(1) %__a) #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2256 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__diffmax = alloca i64, align 8
  %__allocmax = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__a.addr, metadata !2258, metadata !DIExpression()), !dbg !2262
  %0 = bitcast i64* %__diffmax to i8*, !dbg !2263
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #9, !dbg !2263
  call void @llvm.dbg.declare(metadata i64* %__diffmax, metadata !2259, metadata !DIExpression()), !dbg !2264
  store i64 1152921504606846975, i64* %__diffmax, align 8, !dbg !2264, !tbaa !1562
  %1 = bitcast i64* %__allocmax to i8*, !dbg !2265
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #9, !dbg !2265
  call void @llvm.dbg.declare(metadata i64* %__allocmax, metadata !2261, metadata !DIExpression()), !dbg !2266
  %2 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !dbg !2267, !tbaa !1584
  %call = call i64 @_ZNSt16allocator_traitsISaImEE8max_sizeERKS0_(%"class.std::allocator"* dereferenceable(1) %2) #9, !dbg !2268
  store i64 %call, i64* %__allocmax, align 8, !dbg !2266, !tbaa !1562
  %call1 = invoke dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* dereferenceable(8) %__diffmax, i64* dereferenceable(8) %__allocmax)
          to label %invoke.cont unwind label %lpad, !dbg !2269

invoke.cont:                                      ; preds = %entry
  %3 = load i64, i64* %call1, align 8, !dbg !2269, !tbaa !1562
  %4 = bitcast i64* %__allocmax to i8*, !dbg !2270
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #9, !dbg !2270
  %5 = bitcast i64* %__diffmax to i8*, !dbg !2270
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #9, !dbg !2270
  ret i64 %3, !dbg !2271

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2270
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !2270
  store i8* %7, i8** %exn.slot, align 8, !dbg !2270
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !2270
  store i32 %8, i32* %ehselector.slot, align 4, !dbg !2270
  %9 = bitcast i64* %__allocmax to i8*, !dbg !2270
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #9, !dbg !2270
  %10 = bitcast i64* %__diffmax to i8*, !dbg !2270
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #9, !dbg !2270
  br label %terminate.handler, !dbg !2270

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2270
  call void @__clang_call_terminate(i8* %exn) #14, !dbg !2270
  unreachable, !dbg !2270
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #3 comdat align 2 !dbg !2272 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !2274, metadata !DIExpression()), !dbg !2276
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !2277
  %0 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*, !dbg !2278
  ret %"class.std::allocator"* %0, !dbg !2279
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt16allocator_traitsISaImEE8max_sizeERKS0_(%"class.std::allocator"* dereferenceable(1) %__a) #3 comdat align 2 !dbg !2280 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__a.addr, metadata !2282, metadata !DIExpression()), !dbg !2283
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !dbg !2284, !tbaa !1584
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*, !dbg !2284
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %1) #9, !dbg !2285
  ret i64 %call, !dbg !2286
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* dereferenceable(8) %__a, i64* dereferenceable(8) %__b) #6 comdat !dbg !2287 {
entry:
  %retval = alloca i64*, align 8
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  store i64* %__a, i64** %__a.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__a.addr, metadata !2289, metadata !DIExpression()), !dbg !2291
  store i64* %__b, i64** %__b.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__b.addr, metadata !2290, metadata !DIExpression()), !dbg !2292
  %0 = load i64*, i64** %__b.addr, align 8, !dbg !2293, !tbaa !1584
  %1 = load i64, i64* %0, align 8, !dbg !2293, !tbaa !1562
  %2 = load i64*, i64** %__a.addr, align 8, !dbg !2295, !tbaa !1584
  %3 = load i64, i64* %2, align 8, !dbg !2295, !tbaa !1562
  %cmp = icmp ult i64 %1, %3, !dbg !2296
  br i1 %cmp, label %if.then, label %if.end, !dbg !2297

if.then:                                          ; preds = %entry
  %4 = load i64*, i64** %__b.addr, align 8, !dbg !2298, !tbaa !1584
  store i64* %4, i64** %retval, align 8, !dbg !2299
  br label %return, !dbg !2299

if.end:                                           ; preds = %entry
  %5 = load i64*, i64** %__a.addr, align 8, !dbg !2300, !tbaa !1584
  store i64* %5, i64** %retval, align 8, !dbg !2301
  br label %return, !dbg !2301

return:                                           ; preds = %if.end, %if.then
  %6 = load i64*, i64** %retval, align 8, !dbg !2302
  ret i64* %6, !dbg !2302
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #3 comdat align 2 !dbg !2303 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %this.addr, metadata !2305, metadata !DIExpression()), !dbg !2307
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this1) #9, !dbg !2308
  ret i64 %call, !dbg !2309
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #3 comdat align 2 !dbg !2310 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %this.addr, metadata !2312, metadata !DIExpression()), !dbg !2313
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret i64 1152921504606846975, !dbg !2314
}

; Function Attrs: uwtable
define linkonce_odr dso_local i64* @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(%"class.std::allocator"* dereferenceable(1) %__a, i64 %__n) #5 comdat align 2 !dbg !2315 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__a.addr, metadata !2317, metadata !DIExpression()), !dbg !2319
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !1562
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !2318, metadata !DIExpression()), !dbg !2320
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !dbg !2321, !tbaa !1584
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*, !dbg !2321
  %2 = load i64, i64* %__n.addr, align 8, !dbg !2322, !tbaa !1562
  %call = call i64* @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %1, i64 %2, i8* null), !dbg !2323
  ret i64* %call, !dbg !2324
}

; Function Attrs: uwtable
define linkonce_odr dso_local i64* @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8* %0) #5 comdat align 2 !dbg !2325 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %this.addr, metadata !2327, metadata !DIExpression()), !dbg !2330
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !1562
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !2328, metadata !DIExpression()), !dbg !2331
  store i8* %0, i8** %.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !2329, metadata !DIExpression()), !dbg !2332
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8, !dbg !2333, !tbaa !1562
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this1) #9, !dbg !2335
  %cmp = icmp ugt i64 %1, %call, !dbg !2336
  br i1 %cmp, label %if.then, label %if.end, !dbg !2337

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #15, !dbg !2338
  unreachable, !dbg !2338

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8, !dbg !2339, !tbaa !1562
  %mul = mul i64 %2, 8, !dbg !2340
  %call2 = call i8* @_Znwm(i64 %mul), !dbg !2341
  %3 = bitcast i8* %call2 to i64*, !dbg !2342
  ret i64* %3, !dbg !2343
}

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #12

; Function Attrs: nobuiltin
declare !dbg !42 dso_local noalias i8* @_Znwm(i64) #13

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64* @_ZNSt6vectorImSaImEE14_S_do_relocateEPmS2_S2_RS0_St17integral_constantIbLb1EE(i64* %__first, i64* %__last, i64* %__result, %"class.std::allocator"* dereferenceable(1) %__alloc) #3 comdat align 2 !dbg !2344 {
entry:
  %0 = alloca %"struct.std::integral_constant", align 1
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %__alloc.addr = alloca %"class.std::allocator"*, align 8
  store i64* %__first, i64** %__first.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !2346, metadata !DIExpression()), !dbg !2351
  store i64* %__last, i64** %__last.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !2347, metadata !DIExpression()), !dbg !2352
  store i64* %__result, i64** %__result.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !2348, metadata !DIExpression()), !dbg !2353
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %__alloc.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__alloc.addr, metadata !2349, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.declare(metadata %"struct.std::integral_constant"* %0, metadata !2350, metadata !DIExpression()), !dbg !2355
  %1 = load i64*, i64** %__first.addr, align 8, !dbg !2356, !tbaa !1584
  %2 = load i64*, i64** %__last.addr, align 8, !dbg !2357, !tbaa !1584
  %3 = load i64*, i64** %__result.addr, align 8, !dbg !2358, !tbaa !1584
  %4 = load %"class.std::allocator"*, %"class.std::allocator"** %__alloc.addr, align 8, !dbg !2359, !tbaa !1584
  %call = call i64* @_ZSt12__relocate_aIPmS0_SaImEET0_T_S3_S2_RT1_(i64* %1, i64* %2, i64* %3, %"class.std::allocator"* dereferenceable(1) %4) #9, !dbg !2360
  ret i64* %call, !dbg !2361
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i64* @_ZSt12__relocate_aIPmS0_SaImEET0_T_S3_S2_RT1_(i64* %__first, i64* %__last, i64* %__result, %"class.std::allocator"* dereferenceable(1) %__alloc) #6 comdat !dbg !2362 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %__alloc.addr = alloca %"class.std::allocator"*, align 8
  store i64* %__first, i64** %__first.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !2367, metadata !DIExpression()), !dbg !2374
  store i64* %__last, i64** %__last.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !2368, metadata !DIExpression()), !dbg !2375
  store i64* %__result, i64** %__result.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !2369, metadata !DIExpression()), !dbg !2376
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %__alloc.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__alloc.addr, metadata !2370, metadata !DIExpression()), !dbg !2377
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !2378, !tbaa !1584
  %call = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %0) #9, !dbg !2379
  %1 = load i64*, i64** %__last.addr, align 8, !dbg !2380, !tbaa !1584
  %call1 = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %1) #9, !dbg !2381
  %2 = load i64*, i64** %__result.addr, align 8, !dbg !2382, !tbaa !1584
  %call2 = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %2) #9, !dbg !2383
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %__alloc.addr, align 8, !dbg !2384, !tbaa !1584
  %call3 = call i64* @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(i64* %call, i64* %call1, i64* %call2, %"class.std::allocator"* dereferenceable(1) %3) #9, !dbg !2385
  ret i64* %call3, !dbg !2386
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i64* @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(i64* %__first, i64* %__last, i64* %__result, %"class.std::allocator"* dereferenceable(1) %0) #6 comdat !dbg !2387 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  %__count = alloca i64, align 8
  store i64* %__first, i64** %__first.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !2396, metadata !DIExpression()), !dbg !2402
  store i64* %__last, i64** %__last.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !2397, metadata !DIExpression()), !dbg !2403
  store i64* %__result, i64** %__result.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !2398, metadata !DIExpression()), !dbg !2404
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %.addr, metadata !2399, metadata !DIExpression()), !dbg !2405
  %1 = bitcast i64* %__count to i8*, !dbg !2406
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #9, !dbg !2406
  call void @llvm.dbg.declare(metadata i64* %__count, metadata !2400, metadata !DIExpression()), !dbg !2407
  %2 = load i64*, i64** %__last.addr, align 8, !dbg !2408, !tbaa !1584
  %3 = load i64*, i64** %__first.addr, align 8, !dbg !2409, !tbaa !1584
  %sub.ptr.lhs.cast = ptrtoint i64* %2 to i64, !dbg !2410
  %sub.ptr.rhs.cast = ptrtoint i64* %3 to i64, !dbg !2410
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2410
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !2410
  store i64 %sub.ptr.div, i64* %__count, align 8, !dbg !2407, !tbaa !1562
  %4 = load i64, i64* %__count, align 8, !dbg !2411, !tbaa !1562
  %cmp = icmp sgt i64 %4, 0, !dbg !2413
  br i1 %cmp, label %if.then, label %if.end, !dbg !2414

if.then:                                          ; preds = %entry
  %5 = load i64*, i64** %__result.addr, align 8, !dbg !2415, !tbaa !1584
  %6 = bitcast i64* %5 to i8*, !dbg !2416
  %7 = load i64*, i64** %__first.addr, align 8, !dbg !2417, !tbaa !1584
  %8 = bitcast i64* %7 to i8*, !dbg !2416
  %9 = load i64, i64* %__count, align 8, !dbg !2418, !tbaa !1562
  %mul = mul i64 %9, 8, !dbg !2419
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %8, i64 %mul, i1 false), !dbg !2416
  br label %if.end, !dbg !2416

if.end:                                           ; preds = %if.then, %entry
  %10 = load i64*, i64** %__result.addr, align 8, !dbg !2420, !tbaa !1584
  %11 = load i64, i64* %__count, align 8, !dbg !2421, !tbaa !1562
  %add.ptr = getelementptr inbounds i64, i64* %10, i64 %11, !dbg !2422
  %12 = bitcast i64* %__count to i8*, !dbg !2423
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %12) #9, !dbg !2423
  ret i64* %add.ptr, !dbg !2424
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i64* @_ZSt12__niter_baseIPmET_S1_(i64* %__it) #6 comdat !dbg !2425 {
entry:
  %__it.addr = alloca i64*, align 8
  store i64* %__it, i64** %__it.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64** %__it.addr, metadata !2429, metadata !DIExpression()), !dbg !2430
  %0 = load i64*, i64** %__it.addr, align 8, !dbg !2431, !tbaa !1584
  ret i64* %0, !dbg !2432
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %this, i64** dereferenceable(8) %__i) unnamed_addr #3 comdat align 2 !dbg !2433 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__i.addr = alloca i64**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %this.addr, metadata !2435, metadata !DIExpression()), !dbg !2437
  store i64** %__i, i64*** %__i.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i64*** %__i.addr, metadata !2436, metadata !DIExpression()), !dbg !2438
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0, !dbg !2439
  %0 = load i64**, i64*** %__i.addr, align 8, !dbg !2440, !tbaa !1584
  %1 = load i64*, i64** %0, align 8, !dbg !2440, !tbaa !1584
  store i64* %1, i64** %_M_current, align 8, !dbg !2439, !tbaa !1705
  ret void, !dbg !2441
}

; Function Attrs: uwtable
define available_externally dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* %this, i32 %__state) #5 align 2 !dbg !2442 {
entry:
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  %__state.addr = alloca i32, align 4
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::basic_ios"** %this.addr, metadata !2452, metadata !DIExpression()), !dbg !2455
  store i32 %__state, i32* %__state.addr, align 4, !tbaa !2456
  call void @llvm.dbg.declare(metadata i32* %__state.addr, metadata !2454, metadata !DIExpression()), !dbg !2458
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %call = call i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(%"class.std::basic_ios"* %this1), !dbg !2459
  %0 = load i32, i32* %__state.addr, align 4, !dbg !2460, !tbaa !2456
  %call2 = call i32 @_ZStorSt12_Ios_IostateS_(i32 %call, i32 %0), !dbg !2461
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* %this1, i32 %call2), !dbg !2462
  ret void, !dbg !2463
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272), i8*, i64) #7

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %__s) #3 comdat align 2 !dbg !2464 {
entry:
  %__s.addr = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !2466, metadata !DIExpression()), !dbg !2467
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !2468, !tbaa !1584
  %call = call i64 @strlen(i8* %0) #9, !dbg !2469
  ret i64 %call, !dbg !2470
}

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"*, i32) #7

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @_ZStorSt12_Ios_IostateS_(i32 %__a, i32 %__b) #6 comdat !dbg !2471 {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, i32* %__a.addr, align 4, !tbaa !2456
  call void @llvm.dbg.declare(metadata i32* %__a.addr, metadata !2475, metadata !DIExpression()), !dbg !2477
  store i32 %__b, i32* %__b.addr, align 4, !tbaa !2456
  call void @llvm.dbg.declare(metadata i32* %__b.addr, metadata !2476, metadata !DIExpression()), !dbg !2478
  %0 = load i32, i32* %__a.addr, align 4, !dbg !2479, !tbaa !2456
  %1 = load i32, i32* %__b.addr, align 4, !dbg !2480, !tbaa !2456
  %or = or i32 %0, %1, !dbg !2481
  ret i32 %or, !dbg !2482
}

; Function Attrs: nounwind uwtable
define available_externally dso_local i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(%"class.std::basic_ios"* %this) #3 align 2 !dbg !2483 {
entry:
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::basic_ios"** %this.addr, metadata !2490, metadata !DIExpression()), !dbg !2492
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::basic_ios"* %this1 to %"class.std::ios_base"*, !dbg !2493
  %_M_streambuf_state = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %0, i32 0, i32 5, !dbg !2493
  %1 = load i32, i32* %_M_streambuf_state, align 8, !dbg !2493, !tbaa !2494
  ret i32 %1, !dbg !2499
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: inlinehint uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272) %__os) #8 !dbg !2500 {
entry:
  %__os.addr = alloca %"class.std::basic_ostream"*, align 8
  store %"class.std::basic_ostream"* %__os, %"class.std::basic_ostream"** %__os.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %__os.addr, metadata !2502, metadata !DIExpression()), !dbg !2503
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__os.addr, align 8, !dbg !2504, !tbaa !1584
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* %0), !dbg !2505
  ret %"class.std::basic_ostream"* %call, !dbg !2506
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"*, i8 signext) #7

; Function Attrs: uwtable
define available_externally dso_local signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* %this, i8 signext %__c) #5 align 2 !dbg !2507 {
entry:
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  %__c.addr = alloca i8, align 1
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::basic_ios"** %this.addr, metadata !2513, metadata !DIExpression()), !dbg !2515
  store i8 %__c, i8* %__c.addr, align 1, !tbaa !2516
  call void @llvm.dbg.declare(metadata i8* %__c.addr, metadata !2514, metadata !DIExpression()), !dbg !2517
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %_M_ctype = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %this1, i32 0, i32 5, !dbg !2518
  %0 = load %"class.std::ctype"*, %"class.std::ctype"** %_M_ctype, align 8, !dbg !2518, !tbaa !2519
  %call = call dereferenceable(576) %"class.std::ctype"* @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(%"class.std::ctype"* %0), !dbg !2522
  %1 = load i8, i8* %__c.addr, align 1, !dbg !2523, !tbaa !2516
  %call2 = call signext i8 @_ZNKSt5ctypeIcE5widenEc(%"class.std::ctype"* %call, i8 signext %1), !dbg !2524
  ret i8 %call2, !dbg !2525
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"*) #7

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local dereferenceable(576) %"class.std::ctype"* @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(%"class.std::ctype"* %__f) #8 comdat !dbg !2526 {
entry:
  %__f.addr = alloca %"class.std::ctype"*, align 8
  store %"class.std::ctype"* %__f, %"class.std::ctype"** %__f.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::ctype"** %__f.addr, metadata !2535, metadata !DIExpression()), !dbg !2538
  %0 = load %"class.std::ctype"*, %"class.std::ctype"** %__f.addr, align 8, !dbg !2539, !tbaa !1584
  %tobool = icmp ne %"class.std::ctype"* %0, null, !dbg !2539
  br i1 %tobool, label %if.end, label %if.then, !dbg !2541

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #15, !dbg !2542
  unreachable, !dbg !2542

if.end:                                           ; preds = %entry
  %1 = load %"class.std::ctype"*, %"class.std::ctype"** %__f.addr, align 8, !dbg !2543, !tbaa !1584
  ret %"class.std::ctype"* %1, !dbg !2544
}

; Function Attrs: uwtable
define linkonce_odr dso_local signext i8 @_ZNKSt5ctypeIcE5widenEc(%"class.std::ctype"* %this, i8 signext %__c) #5 comdat align 2 !dbg !2545 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca %"class.std::ctype"*, align 8
  %__c.addr = alloca i8, align 1
  store %"class.std::ctype"* %this, %"class.std::ctype"** %this.addr, align 8, !tbaa !1584
  call void @llvm.dbg.declare(metadata %"class.std::ctype"** %this.addr, metadata !2552, metadata !DIExpression()), !dbg !2554
  store i8 %__c, i8* %__c.addr, align 1, !tbaa !2516
  call void @llvm.dbg.declare(metadata i8* %__c.addr, metadata !2553, metadata !DIExpression()), !dbg !2555
  %this1 = load %"class.std::ctype"*, %"class.std::ctype"** %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this1, i32 0, i32 8, !dbg !2556
  %0 = load i8, i8* %_M_widen_ok, align 8, !dbg !2556, !tbaa !2558
  %tobool = icmp ne i8 %0, 0, !dbg !2556
  br i1 %tobool, label %if.then, label %if.end, !dbg !2560

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this1, i32 0, i32 9, !dbg !2561
  %1 = load i8, i8* %__c.addr, align 1, !dbg !2562, !tbaa !2516
  %idxprom = zext i8 %1 to i64, !dbg !2561
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %_M_widen, i64 0, i64 %idxprom, !dbg !2561
  %2 = load i8, i8* %arrayidx, align 1, !dbg !2561, !tbaa !2516
  store i8 %2, i8* %retval, align 1, !dbg !2563
  br label %return, !dbg !2563

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* %this1), !dbg !2564
  %3 = load i8, i8* %__c.addr, align 1, !dbg !2565, !tbaa !2516
  %4 = bitcast %"class.std::ctype"* %this1 to i8 (%"class.std::ctype"*, i8)***, !dbg !2566
  %vtable = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %4, align 8, !dbg !2566, !tbaa !1786
  %vfn = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable, i64 6, !dbg !2566
  %5 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn, align 8, !dbg !2566
  %call = call signext i8 %5(%"class.std::ctype"* %this1, i8 signext %3), !dbg !2566
  store i8 %call, i8* %retval, align 1, !dbg !2567
  br label %return, !dbg !2567

return:                                           ; preds = %if.end, %if.then
  %6 = load i8, i8* %retval, align 1, !dbg !2568
  ret i8 %6, !dbg !2568
}

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() #12

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"*) #7

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_pthread_vector_yes.cpp() #5 section ".text.startup" !dbg !2569 {
entry:
  call void @__cxx_global_var_init(), !dbg !2571
  ret void
}

attributes #0 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noinline noreturn nounwind }
attributes #11 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1538, !1539, !1540}
!llvm.ident = !{!1541}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "accum", scope: !2, file: !3, line: 13, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !590, imports: !614, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/pthreadrace/pthread-vector-yes.cpp", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Ios_Iostate", scope: !7, file: !6, line: 153, baseType: !8, size: 32, elements: !9, identifier: "_ZTSSt12_Ios_Iostate")
!6 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/ios_base.h", directory: "")
!7 = !DINamespace(name: "std", scope: null)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{!10, !11, !12, !13, !14, !15, !16}
!10 = !DIEnumerator(name: "_S_goodbit", value: 0)
!11 = !DIEnumerator(name: "_S_badbit", value: 1)
!12 = !DIEnumerator(name: "_S_eofbit", value: 2)
!13 = !DIEnumerator(name: "_S_failbit", value: 4)
!14 = !DIEnumerator(name: "_S_ios_iostate_end", value: 65536)
!15 = !DIEnumerator(name: "_S_ios_iostate_max", value: 2147483647)
!16 = !DIEnumerator(name: "_S_ios_iostate_min", value: -2147483648)
!17 = !{!18, !19, !26, !31, !35, !37, !39, !41, !42, !45, !378, !586, !5, !8, !588, !589}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !DISubprogram(name: "pthread_join", scope: !20, file: !20, line: 217, type: !21, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !25)
!20 = !DIFile(filename: "/usr/include/pthread.h", directory: "")
!21 = !DISubroutineType(types: !22)
!22 = !{!8, !23, !24}
!23 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!25 = !{}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !27, line: 27, baseType: !28)
!27 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !29, line: 44, baseType: !30)
!29 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!30 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!31 = !DISubprogram(name: "operator delete", linkageName: "_ZdlPv", scope: !32, file: !32, line: 130, type: !33, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !25)
!32 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/new", directory: "")
!33 = !DISubroutineType(types: !34)
!34 = !{null, !18}
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !36, line: 424, baseType: !37)
!36 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/stl_vector.h", directory: "")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !7, file: !38, line: 260, baseType: !23)
!38 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/x86_64-pc-linux-gnu/bits/c++config.h", directory: "")
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!42 = !DISubprogram(name: "operator new", linkageName: "_Znwm", scope: !32, file: !32, line: 126, type: !43, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !25)
!43 = !DISubroutineType(types: !44)
!44 = !{!18, !23}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__do_it", scope: !46, file: !36, line: 468, baseType: !585)
!46 = distinct !DISubprogram(name: "_S_relocate", linkageName: "_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_", scope: !47, file: !36, line: 465, type: !311, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !310, retainedNodes: !580)
!47 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<unsigned long, std::allocator<unsigned long> >", scope: !7, file: !36, line: 389, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !48, templateParams: !264, identifier: "_ZTSSt6vectorImSaImEE")
!48 = !{!49, !265, !284, !300, !301, !307, !310, !313, !317, !323, !326, !332, !337, !341, !344, !347, !350, !353, !358, !359, !363, !366, !369, !372, !375, !436, !442, !443, !444, !449, !454, !455, !456, !457, !458, !459, !460, !463, !464, !467, !468, !469, !470, !473, !474, !482, !489, !492, !493, !494, !497, !500, !501, !502, !505, !508, !511, !515, !516, !519, !522, !525, !528, !531, !534, !537, !538, !539, !540, !541, !544, !545, !548, !549, !550, !557, !560, !565, !568, !571, !574, !577}
!49 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !47, baseType: !50, flags: DIFlagProtected, extraData: i32 0)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<unsigned long, std::allocator<unsigned long> >", scope: !7, file: !36, line: 84, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !51, templateParams: !264, identifier: "_ZTSSt12_Vector_baseImSaImEE")
!51 = !{!52, !215, !220, !225, !229, !232, !237, !240, !243, !247, !250, !253, !256, !257, !260, !263}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_M_impl", scope: !50, file: !36, line: 340, baseType: !53, size: 192)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !50, file: !36, line: 128, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !54, identifier: "_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE")
!54 = !{!55, !170, !195, !199, !204, !208, !212}
!55 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !53, baseType: !56, extraData: i32 0)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !50, file: !36, line: 87, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !59, file: !58, line: 120, baseType: !169)
!58 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/ext/alloc_traits.h", directory: "")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<unsigned long>", scope: !60, file: !58, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !25, templateParams: !118, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaImEmE6rebindImEE")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<unsigned long>, unsigned long>", scope: !61, file: !58, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !62, templateParams: !167, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaImEmEE")
!61 = !DINamespace(name: "__gnu_cxx", scope: null)
!62 = !{!63, !153, !156, !159, !163, !164, !165, !166}
!63 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !60, baseType: !64, extraData: i32 0)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<unsigned long> >", scope: !7, file: !65, line: 407, size: 8, flags: DIFlagTypePassByValue, elements: !66, templateParams: !151, identifier: "_ZTSSt16allocator_traitsISaImEE")
!65 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/alloc_traits.h", directory: "")
!66 = !{!67, !135, !139, !142, !148}
!67 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaImEE8allocateERS0_m", scope: !64, file: !65, line: 459, type: !68, scopeLine: 459, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!68 = !DISubroutineType(types: !69)
!69 = !{!70, !71, !134}
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !64, file: !65, line: 416, baseType: !41)
!71 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !64, file: !65, line: 410, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<unsigned long>", scope: !7, file: !74, line: 116, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !75, templateParams: !118, identifier: "_ZTSSaImE")
!74 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/allocator.h", directory: "")
!75 = !{!76, !120, !124, !129, !133}
!76 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !73, baseType: !77, flags: DIFlagPublic, extraData: i32 0)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__allocator_base<unsigned long>", scope: !7, file: !78, line: 48, baseType: !79)
!78 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/x86_64-pc-linux-gnu/bits/c++allocator.h", directory: "")
!79 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "new_allocator<unsigned long>", scope: !61, file: !80, line: 55, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !81, templateParams: !118, identifier: "_ZTSN9__gnu_cxx13new_allocatorImEE")
!80 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/ext/new_allocator.h", directory: "")
!81 = !{!82, !86, !91, !92, !99, !107, !111, !114, !117}
!82 = !DISubprogram(name: "new_allocator", scope: !79, file: !80, line: 79, type: !83, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !85}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!86 = !DISubprogram(name: "new_allocator", scope: !79, file: !80, line: 82, type: !87, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !85, !89}
!89 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!91 = !DISubprogram(name: "~new_allocator", scope: !79, file: !80, line: 89, type: !83, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!92 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorImE7addressERm", scope: !79, file: !80, line: 92, type: !93, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!93 = !DISubroutineType(types: !94)
!94 = !{!95, !96, !97}
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !79, file: !80, line: 62, baseType: !41)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !79, file: !80, line: 64, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!99 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorImE7addressERKm", scope: !79, file: !80, line: 96, type: !100, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !96, !105}
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !79, file: !80, line: 63, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !79, file: !80, line: 65, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !104, size: 64)
!107 = !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv", scope: !79, file: !80, line: 103, type: !108, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!108 = !DISubroutineType(types: !109)
!109 = !{!41, !85, !110, !39}
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !80, line: 59, baseType: !37)
!111 = !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm", scope: !79, file: !80, line: 120, type: !112, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !85, !41, !110}
!114 = !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv", scope: !79, file: !80, line: 142, type: !115, scopeLine: 142, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!115 = !DISubroutineType(types: !116)
!116 = !{!110, !96}
!117 = !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv", scope: !79, file: !80, line: 185, type: !115, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!118 = !{!119}
!119 = !DITemplateTypeParameter(name: "_Tp", type: !23)
!120 = !DISubprogram(name: "allocator", scope: !73, file: !74, line: 144, type: !121, scopeLine: 144, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !123}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!124 = !DISubprogram(name: "allocator", scope: !73, file: !74, line: 147, type: !125, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !123, !127}
!127 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!129 = !DISubprogram(name: "operator=", linkageName: "_ZNSaImEaSERKS_", scope: !73, file: !74, line: 152, type: !130, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!130 = !DISubroutineType(types: !131)
!131 = !{!132, !123, !127}
!132 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !73, size: 64)
!133 = !DISubprogram(name: "~allocator", scope: !73, file: !74, line: 162, type: !121, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !65, line: 431, baseType: !37)
!135 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaImEE8allocateERS0_mPKv", scope: !64, file: !65, line: 473, type: !136, scopeLine: 473, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!136 = !DISubroutineType(types: !137)
!137 = !{!70, !71, !134, !138}
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", file: !65, line: 425, baseType: !39)
!139 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm", scope: !64, file: !65, line: 491, type: !140, scopeLine: 491, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !71, !70, !134}
!142 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaImEE8max_sizeERKS0_", scope: !64, file: !65, line: 543, type: !143, scopeLine: 543, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!143 = !DISubroutineType(types: !144)
!144 = !{!145, !146}
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !64, file: !65, line: 431, baseType: !37)
!146 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!148 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaImEE37select_on_container_copy_constructionERKS0_", scope: !64, file: !65, line: 558, type: !149, scopeLine: 558, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!149 = !DISubroutineType(types: !150)
!150 = !{!72, !146}
!151 = !{!152}
!152 = !DITemplateTypeParameter(name: "_Alloc", type: !73)
!153 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaImEmE17_S_select_on_copyERKS1_", scope: !60, file: !58, line: 97, type: !154, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!154 = !DISubroutineType(types: !155)
!155 = !{!73, !127}
!156 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaImEmE10_S_on_swapERS1_S3_", scope: !60, file: !58, line: 100, type: !157, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !132, !132}
!159 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaImEmE27_S_propagate_on_copy_assignEv", scope: !60, file: !58, line: 103, type: !160, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!160 = !DISubroutineType(types: !161)
!161 = !{!162}
!162 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!163 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaImEmE27_S_propagate_on_move_assignEv", scope: !60, file: !58, line: 106, type: !160, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!164 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaImEmE20_S_propagate_on_swapEv", scope: !60, file: !58, line: 109, type: !160, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!165 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaImEmE15_S_always_equalEv", scope: !60, file: !58, line: 112, type: !160, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!166 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaImEmE15_S_nothrow_moveEv", scope: !60, file: !58, line: 115, type: !160, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!167 = !{!152, !168}
!168 = !DITemplateTypeParameter(type: !23)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<unsigned long>", scope: !64, file: !65, line: 446, baseType: !73)
!170 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !53, baseType: !171, extraData: i32 0)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl_data", scope: !50, file: !36, line: 91, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !172, identifier: "_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE")
!172 = !{!173, !176, !177, !178, !182, !186, !191}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_M_start", scope: !171, file: !36, line: 93, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !50, file: !36, line: 89, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !60, file: !58, line: 57, baseType: !70)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_M_finish", scope: !171, file: !36, line: 94, baseType: !174, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_M_end_of_storage", scope: !171, file: !36, line: 95, baseType: !174, size: 64, offset: 128)
!178 = !DISubprogram(name: "_Vector_impl_data", scope: !171, file: !36, line: 97, type: !179, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !181}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!182 = !DISubprogram(name: "_Vector_impl_data", scope: !171, file: !36, line: 102, type: !183, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !181, !185}
!185 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !171, size: 64)
!186 = !DISubprogram(name: "_M_copy_data", linkageName: "_ZNSt12_Vector_baseImSaImEE17_Vector_impl_data12_M_copy_dataERKS2_", scope: !171, file: !36, line: 109, type: !187, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !181, !189}
!189 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!191 = !DISubprogram(name: "_M_swap_data", linkageName: "_ZNSt12_Vector_baseImSaImEE17_Vector_impl_data12_M_swap_dataERS2_", scope: !171, file: !36, line: 117, type: !192, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !181, !194}
!194 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !171, size: 64)
!195 = !DISubprogram(name: "_Vector_impl", scope: !53, file: !36, line: 131, type: !196, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!199 = !DISubprogram(name: "_Vector_impl", scope: !53, file: !36, line: 136, type: !200, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !198, !202}
!202 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!204 = !DISubprogram(name: "_Vector_impl", scope: !53, file: !36, line: 143, type: !205, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !198, !207}
!207 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !53, size: 64)
!208 = !DISubprogram(name: "_Vector_impl", scope: !53, file: !36, line: 147, type: !209, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !198, !211}
!211 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !56, size: 64)
!212 = !DISubprogram(name: "_Vector_impl", scope: !53, file: !36, line: 151, type: !213, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !198, !211, !207}
!215 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv", scope: !50, file: !36, line: 276, type: !216, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !219}
!218 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !56, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!220 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv", scope: !50, file: !36, line: 280, type: !221, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!221 = !DISubroutineType(types: !222)
!222 = !{!202, !223}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!225 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt12_Vector_baseImSaImEE13get_allocatorEv", scope: !50, file: !36, line: 284, type: !226, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !223}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !50, file: !36, line: 273, baseType: !73)
!229 = !DISubprogram(name: "_Vector_base", scope: !50, file: !36, line: 288, type: !230, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !219}
!232 = !DISubprogram(name: "_Vector_base", scope: !50, file: !36, line: 293, type: !233, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !219, !235}
!235 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!237 = !DISubprogram(name: "_Vector_base", scope: !50, file: !36, line: 298, type: !238, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !219, !37}
!240 = !DISubprogram(name: "_Vector_base", scope: !50, file: !36, line: 303, type: !241, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !219, !37, !235}
!243 = !DISubprogram(name: "_Vector_base", scope: !50, file: !36, line: 308, type: !244, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !219, !246}
!246 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !50, size: 64)
!247 = !DISubprogram(name: "_Vector_base", scope: !50, file: !36, line: 312, type: !248, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !219, !211}
!250 = !DISubprogram(name: "_Vector_base", scope: !50, file: !36, line: 315, type: !251, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !219, !246, !235}
!253 = !DISubprogram(name: "_Vector_base", scope: !50, file: !36, line: 328, type: !254, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !219, !235, !246}
!256 = !DISubprogram(name: "~_Vector_base", scope: !50, file: !36, line: 333, type: !230, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseImSaImEE11_M_allocateEm", scope: !50, file: !36, line: 343, type: !258, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!258 = !DISubroutineType(types: !259)
!259 = !{!174, !219, !37}
!260 = !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm", scope: !50, file: !36, line: 350, type: !261, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !219, !174, !37}
!263 = !DISubprogram(name: "_M_create_storage", linkageName: "_ZNSt12_Vector_baseImSaImEE17_M_create_storageEm", scope: !50, file: !36, line: 359, type: !238, scopeLine: 359, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!264 = !{!119, !152}
!265 = !DISubprogram(name: "_S_nothrow_relocate", linkageName: "_ZNSt6vectorImSaImEE19_S_nothrow_relocateESt17integral_constantIbLb1EE", scope: !47, file: !36, line: 431, type: !266, scopeLine: 431, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!266 = !DISubroutineType(types: !267)
!267 = !{!162, !268}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "true_type", scope: !7, file: !269, line: 75, baseType: !270)
!269 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/type_traits", directory: "")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !7, file: !269, line: 57, size: 8, flags: DIFlagTypePassByValue, elements: !271, templateParams: !281, identifier: "_ZTSSt17integral_constantIbLb1EE")
!271 = !{!272, !274, !280}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !270, file: !269, line: 59, baseType: !273, flags: DIFlagStaticMember, extraData: i1 true)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!274 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt17integral_constantIbLb1EEcvbEv", scope: !270, file: !269, line: 62, type: !275, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!275 = !DISubroutineType(types: !276)
!276 = !{!277, !278}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !270, file: !269, line: 60, baseType: !162)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!280 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt17integral_constantIbLb1EEclEv", scope: !270, file: !269, line: 67, type: !275, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!281 = !{!282, !283}
!282 = !DITemplateTypeParameter(name: "_Tp", type: !162)
!283 = !DITemplateValueParameter(name: "__v", type: !162, value: i8 1)
!284 = !DISubprogram(name: "_S_nothrow_relocate", linkageName: "_ZNSt6vectorImSaImEE19_S_nothrow_relocateESt17integral_constantIbLb0EE", scope: !47, file: !36, line: 440, type: !285, scopeLine: 440, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!285 = !DISubroutineType(types: !286)
!286 = !{!162, !287}
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "false_type", scope: !7, file: !269, line: 78, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !7, file: !269, line: 57, size: 8, flags: DIFlagTypePassByValue, elements: !289, templateParams: !298, identifier: "_ZTSSt17integral_constantIbLb0EE")
!289 = !{!290, !291, !297}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !288, file: !269, line: 59, baseType: !273, flags: DIFlagStaticMember, extraData: i1 false)
!291 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt17integral_constantIbLb0EEcvbEv", scope: !288, file: !269, line: 62, type: !292, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!292 = !DISubroutineType(types: !293)
!293 = !{!294, !295}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !288, file: !269, line: 60, baseType: !162)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!297 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt17integral_constantIbLb0EEclEv", scope: !288, file: !269, line: 67, type: !292, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!298 = !{!282, !299}
!299 = !DITemplateValueParameter(name: "__v", type: !162, value: i8 0)
!300 = !DISubprogram(name: "_S_use_relocate", linkageName: "_ZNSt6vectorImSaImEE15_S_use_relocateEv", scope: !47, file: !36, line: 444, type: !160, scopeLine: 444, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!301 = !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorImSaImEE14_S_do_relocateEPmS2_S2_RS0_St17integral_constantIbLb1EE", scope: !47, file: !36, line: 453, type: !302, scopeLine: 453, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!302 = !DISubroutineType(types: !303)
!303 = !{!304, !304, !304, !304, !305, !268}
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !47, file: !36, line: 415, baseType: !174)
!305 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !47, file: !36, line: 410, baseType: !56)
!307 = !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorImSaImEE14_S_do_relocateEPmS2_S2_RS0_St17integral_constantIbLb0EE", scope: !47, file: !36, line: 460, type: !308, scopeLine: 460, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!308 = !DISubroutineType(types: !309)
!309 = !{!304, !304, !304, !304, !305, !287}
!310 = !DISubprogram(name: "_S_relocate", linkageName: "_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_", scope: !47, file: !36, line: 465, type: !311, scopeLine: 465, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!311 = !DISubroutineType(types: !312)
!312 = !{!304, !304, !304, !304, !305}
!313 = !DISubprogram(name: "vector", scope: !47, file: !36, line: 487, type: !314, scopeLine: 487, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !316}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!317 = !DISubprogram(name: "vector", scope: !47, file: !36, line: 497, type: !318, scopeLine: 497, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !316, !320}
!320 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !47, file: !36, line: 426, baseType: !73)
!323 = !DISubprogram(name: "vector", scope: !47, file: !36, line: 510, type: !324, scopeLine: 510, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !316, !35, !320}
!326 = !DISubprogram(name: "vector", scope: !47, file: !36, line: 522, type: !327, scopeLine: 522, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !316, !35, !329, !320}
!329 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !47, file: !36, line: 414, baseType: !23)
!332 = !DISubprogram(name: "vector", scope: !47, file: !36, line: 553, type: !333, scopeLine: 553, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !316, !335}
!335 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!337 = !DISubprogram(name: "vector", scope: !47, file: !36, line: 572, type: !338, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !316, !340}
!340 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !47, size: 64)
!341 = !DISubprogram(name: "vector", scope: !47, file: !36, line: 575, type: !342, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !316, !335, !320}
!344 = !DISubprogram(name: "vector", scope: !47, file: !36, line: 585, type: !345, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !316, !340, !320, !268}
!347 = !DISubprogram(name: "vector", scope: !47, file: !36, line: 589, type: !348, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !316, !340, !320, !287}
!350 = !DISubprogram(name: "vector", scope: !47, file: !36, line: 607, type: !351, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !316, !340, !320}
!353 = !DISubprogram(name: "vector", scope: !47, file: !36, line: 625, type: !354, scopeLine: 625, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !316, !356, !320}
!356 = !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<unsigned long>", scope: !7, file: !357, line: 47, flags: DIFlagFwdDecl, identifier: "_ZTSSt16initializer_listImE")
!357 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/initializer_list", directory: "")
!358 = !DISubprogram(name: "~vector", scope: !47, file: !36, line: 678, type: !314, scopeLine: 678, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!359 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorImSaImEEaSERKS1_", scope: !47, file: !36, line: 695, type: !360, scopeLine: 695, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!360 = !DISubroutineType(types: !361)
!361 = !{!362, !316, !335}
!362 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !47, size: 64)
!363 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorImSaImEEaSEOS1_", scope: !47, file: !36, line: 709, type: !364, scopeLine: 709, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!364 = !DISubroutineType(types: !365)
!365 = !{!362, !316, !340}
!366 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorImSaImEEaSESt16initializer_listImE", scope: !47, file: !36, line: 730, type: !367, scopeLine: 730, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!367 = !DISubroutineType(types: !368)
!368 = !{!362, !316, !356}
!369 = !DISubprogram(name: "assign", linkageName: "_ZNSt6vectorImSaImEE6assignEmRKm", scope: !47, file: !36, line: 749, type: !370, scopeLine: 749, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !316, !35, !329}
!372 = !DISubprogram(name: "assign", linkageName: "_ZNSt6vectorImSaImEE6assignESt16initializer_listImE", scope: !47, file: !36, line: 794, type: !373, scopeLine: 794, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !316, !356}
!375 = !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorImSaImEE5beginEv", scope: !47, file: !36, line: 811, type: !376, scopeLine: 811, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!376 = !DISubroutineType(types: !377)
!377 = !{!378, !316}
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !47, file: !36, line: 419, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<unsigned long *, std::vector<unsigned long, std::allocator<unsigned long> > >", scope: !61, file: !380, line: 930, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !381, templateParams: !434, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEE")
!380 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/stl_iterator.h", directory: "")
!381 = !{!382, !383, !387, !392, !403, !408, !412, !415, !416, !417, !423, !426, !429, !430, !431}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_M_current", scope: !379, file: !380, line: 933, baseType: !41, size: 64, flags: DIFlagProtected)
!383 = !DISubprogram(name: "__normal_iterator", scope: !379, file: !380, line: 949, type: !384, scopeLine: 949, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !386}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!387 = !DISubprogram(name: "__normal_iterator", scope: !379, file: !380, line: 953, type: !388, scopeLine: 953, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !386, !390}
!390 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!392 = !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEdeEv", scope: !379, file: !380, line: 968, type: !393, scopeLine: 968, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!393 = !DISubroutineType(types: !394)
!394 = !{!395, !401}
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !379, file: !380, line: 942, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !398, file: !397, line: 216, baseType: !98)
!397 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/stl_iterator_base_types.h", directory: "")
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<unsigned long *>", scope: !7, file: !397, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !25, templateParams: !399, identifier: "_ZTSSt15iterator_traitsIPmE")
!399 = !{!400}
!400 = !DITemplateTypeParameter(name: "_Iterator", type: !41)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!403 = !DISubprogram(name: "operator->", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEptEv", scope: !379, file: !380, line: 973, type: !404, scopeLine: 973, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!404 = !DISubroutineType(types: !405)
!405 = !{!406, !401}
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !379, file: !380, line: 943, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !398, file: !397, line: 215, baseType: !41)
!408 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEppEv", scope: !379, file: !380, line: 978, type: !409, scopeLine: 978, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!409 = !DISubroutineType(types: !410)
!410 = !{!411, !386}
!411 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !379, size: 64)
!412 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEppEi", scope: !379, file: !380, line: 986, type: !413, scopeLine: 986, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!413 = !DISubroutineType(types: !414)
!414 = !{!379, !386, !8}
!415 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEmmEv", scope: !379, file: !380, line: 992, type: !409, scopeLine: 992, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!416 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEmmEi", scope: !379, file: !380, line: 1000, type: !413, scopeLine: 1000, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!417 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEixEl", scope: !379, file: !380, line: 1006, type: !418, scopeLine: 1006, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!418 = !DISubroutineType(types: !419)
!419 = !{!395, !401, !420}
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !379, file: !380, line: 941, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !398, file: !397, line: 214, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !7, file: !38, line: 261, baseType: !30)
!423 = !DISubprogram(name: "operator+=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEpLEl", scope: !379, file: !380, line: 1011, type: !424, scopeLine: 1011, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!424 = !DISubroutineType(types: !425)
!425 = !{!411, !386, !420}
!426 = !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEplEl", scope: !379, file: !380, line: 1016, type: !427, scopeLine: 1016, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!427 = !DISubroutineType(types: !428)
!428 = !{!379, !401, !420}
!429 = !DISubprogram(name: "operator-=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEmIEl", scope: !379, file: !380, line: 1021, type: !424, scopeLine: 1021, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!430 = !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEmiEl", scope: !379, file: !380, line: 1026, type: !427, scopeLine: 1026, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!431 = !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv", scope: !379, file: !380, line: 1031, type: !432, scopeLine: 1031, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!432 = !DISubroutineType(types: !433)
!433 = !{!390, !401}
!434 = !{!400, !435}
!435 = !DITemplateTypeParameter(name: "_Container", type: !47)
!436 = !DISubprogram(name: "begin", linkageName: "_ZNKSt6vectorImSaImEE5beginEv", scope: !47, file: !36, line: 820, type: !437, scopeLine: 820, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!437 = !DISubroutineType(types: !438)
!438 = !{!439, !441}
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !47, file: !36, line: 421, baseType: !440)
!440 = !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const unsigned long *, std::vector<unsigned long, std::allocator<unsigned long> > >", scope: !61, file: !380, line: 930, flags: DIFlagFwdDecl, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEE")
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!442 = !DISubprogram(name: "end", linkageName: "_ZNSt6vectorImSaImEE3endEv", scope: !47, file: !36, line: 829, type: !376, scopeLine: 829, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!443 = !DISubprogram(name: "end", linkageName: "_ZNKSt6vectorImSaImEE3endEv", scope: !47, file: !36, line: 838, type: !437, scopeLine: 838, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!444 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt6vectorImSaImEE6rbeginEv", scope: !47, file: !36, line: 847, type: !445, scopeLine: 847, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!445 = !DISubroutineType(types: !446)
!446 = !{!447, !316}
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !47, file: !36, line: 423, baseType: !448)
!448 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<unsigned long *, std::vector<unsigned long, std::allocator<unsigned long> > > >", scope: !7, file: !380, line: 125, flags: DIFlagFwdDecl, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEE")
!449 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt6vectorImSaImEE6rbeginEv", scope: !47, file: !36, line: 856, type: !450, scopeLine: 856, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!450 = !DISubroutineType(types: !451)
!451 = !{!452, !441}
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !47, file: !36, line: 422, baseType: !453)
!453 = !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const unsigned long *, std::vector<unsigned long, std::allocator<unsigned long> > > >", scope: !7, file: !380, line: 125, flags: DIFlagFwdDecl, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEE")
!454 = !DISubprogram(name: "rend", linkageName: "_ZNSt6vectorImSaImEE4rendEv", scope: !47, file: !36, line: 865, type: !445, scopeLine: 865, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!455 = !DISubprogram(name: "rend", linkageName: "_ZNKSt6vectorImSaImEE4rendEv", scope: !47, file: !36, line: 874, type: !450, scopeLine: 874, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!456 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt6vectorImSaImEE6cbeginEv", scope: !47, file: !36, line: 884, type: !437, scopeLine: 884, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!457 = !DISubprogram(name: "cend", linkageName: "_ZNKSt6vectorImSaImEE4cendEv", scope: !47, file: !36, line: 893, type: !437, scopeLine: 893, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!458 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt6vectorImSaImEE7crbeginEv", scope: !47, file: !36, line: 902, type: !450, scopeLine: 902, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!459 = !DISubprogram(name: "crend", linkageName: "_ZNKSt6vectorImSaImEE5crendEv", scope: !47, file: !36, line: 911, type: !450, scopeLine: 911, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!460 = !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorImSaImEE4sizeEv", scope: !47, file: !36, line: 918, type: !461, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!461 = !DISubroutineType(types: !462)
!462 = !{!35, !441}
!463 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorImSaImEE8max_sizeEv", scope: !47, file: !36, line: 923, type: !461, scopeLine: 923, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!464 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorImSaImEE6resizeEm", scope: !47, file: !36, line: 937, type: !465, scopeLine: 937, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !316, !35}
!467 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorImSaImEE6resizeEmRKm", scope: !47, file: !36, line: 957, type: !370, scopeLine: 957, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!468 = !DISubprogram(name: "shrink_to_fit", linkageName: "_ZNSt6vectorImSaImEE13shrink_to_fitEv", scope: !47, file: !36, line: 989, type: !314, scopeLine: 989, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!469 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt6vectorImSaImEE8capacityEv", scope: !47, file: !36, line: 998, type: !461, scopeLine: 998, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!470 = !DISubprogram(name: "empty", linkageName: "_ZNKSt6vectorImSaImEE5emptyEv", scope: !47, file: !36, line: 1007, type: !471, scopeLine: 1007, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!471 = !DISubroutineType(types: !472)
!472 = !{!162, !441}
!473 = !DISubprogram(name: "reserve", linkageName: "_ZNSt6vectorImSaImEE7reserveEm", scope: !47, file: !36, line: 1028, type: !465, scopeLine: 1028, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!474 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorImSaImEEixEm", scope: !47, file: !36, line: 1043, type: !475, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!475 = !DISubroutineType(types: !476)
!476 = !{!477, !316, !35}
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !47, file: !36, line: 417, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !60, file: !58, line: 62, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !60, file: !58, line: 56, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !64, file: !65, line: 413, baseType: !23)
!482 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt6vectorImSaImEEixEm", scope: !47, file: !36, line: 1061, type: !483, scopeLine: 1061, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!483 = !DISubroutineType(types: !484)
!484 = !{!485, !441, !35}
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !47, file: !36, line: 418, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !60, file: !58, line: 63, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!489 = !DISubprogram(name: "_M_range_check", linkageName: "_ZNKSt6vectorImSaImEE14_M_range_checkEm", scope: !47, file: !36, line: 1070, type: !490, scopeLine: 1070, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !441, !35}
!492 = !DISubprogram(name: "at", linkageName: "_ZNSt6vectorImSaImEE2atEm", scope: !47, file: !36, line: 1092, type: !475, scopeLine: 1092, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!493 = !DISubprogram(name: "at", linkageName: "_ZNKSt6vectorImSaImEE2atEm", scope: !47, file: !36, line: 1110, type: !483, scopeLine: 1110, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!494 = !DISubprogram(name: "front", linkageName: "_ZNSt6vectorImSaImEE5frontEv", scope: !47, file: !36, line: 1121, type: !495, scopeLine: 1121, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!495 = !DISubroutineType(types: !496)
!496 = !{!477, !316}
!497 = !DISubprogram(name: "front", linkageName: "_ZNKSt6vectorImSaImEE5frontEv", scope: !47, file: !36, line: 1132, type: !498, scopeLine: 1132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!498 = !DISubroutineType(types: !499)
!499 = !{!485, !441}
!500 = !DISubprogram(name: "back", linkageName: "_ZNSt6vectorImSaImEE4backEv", scope: !47, file: !36, line: 1143, type: !495, scopeLine: 1143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!501 = !DISubprogram(name: "back", linkageName: "_ZNKSt6vectorImSaImEE4backEv", scope: !47, file: !36, line: 1154, type: !498, scopeLine: 1154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!502 = !DISubprogram(name: "data", linkageName: "_ZNSt6vectorImSaImEE4dataEv", scope: !47, file: !36, line: 1168, type: !503, scopeLine: 1168, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!503 = !DISubroutineType(types: !504)
!504 = !{!41, !316}
!505 = !DISubprogram(name: "data", linkageName: "_ZNKSt6vectorImSaImEE4dataEv", scope: !47, file: !36, line: 1172, type: !506, scopeLine: 1172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!506 = !DISubroutineType(types: !507)
!507 = !{!103, !441}
!508 = !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorImSaImEE9push_backERKm", scope: !47, file: !36, line: 1187, type: !509, scopeLine: 1187, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !316, !329}
!511 = !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorImSaImEE9push_backEOm", scope: !47, file: !36, line: 1203, type: !512, scopeLine: 1203, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !316, !514}
!514 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !331, size: 64)
!515 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt6vectorImSaImEE8pop_backEv", scope: !47, file: !36, line: 1225, type: !314, scopeLine: 1225, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!516 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorImSaImEE6insertEN9__gnu_cxx17__normal_iteratorIPKmS1_EERS4_", scope: !47, file: !36, line: 1263, type: !517, scopeLine: 1263, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!517 = !DISubroutineType(types: !518)
!518 = !{!378, !316, !439, !329}
!519 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorImSaImEE6insertEN9__gnu_cxx17__normal_iteratorIPKmS1_EEOm", scope: !47, file: !36, line: 1293, type: !520, scopeLine: 1293, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!520 = !DISubroutineType(types: !521)
!521 = !{!378, !316, !439, !514}
!522 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorImSaImEE6insertEN9__gnu_cxx17__normal_iteratorIPKmS1_EESt16initializer_listImE", scope: !47, file: !36, line: 1310, type: !523, scopeLine: 1310, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!523 = !DISubroutineType(types: !524)
!524 = !{!378, !316, !439, !356}
!525 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorImSaImEE6insertEN9__gnu_cxx17__normal_iteratorIPKmS1_EEmRS4_", scope: !47, file: !36, line: 1335, type: !526, scopeLine: 1335, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!526 = !DISubroutineType(types: !527)
!527 = !{!378, !316, !439, !35, !329}
!528 = !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EE", scope: !47, file: !36, line: 1430, type: !529, scopeLine: 1430, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!529 = !DISubroutineType(types: !530)
!530 = !{!378, !316, !439}
!531 = !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_", scope: !47, file: !36, line: 1457, type: !532, scopeLine: 1457, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!532 = !DISubroutineType(types: !533)
!533 = !{!378, !316, !439, !439}
!534 = !DISubprogram(name: "swap", linkageName: "_ZNSt6vectorImSaImEE4swapERS1_", scope: !47, file: !36, line: 1480, type: !535, scopeLine: 1480, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !316, !362}
!537 = !DISubprogram(name: "clear", linkageName: "_ZNSt6vectorImSaImEE5clearEv", scope: !47, file: !36, line: 1498, type: !314, scopeLine: 1498, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!538 = !DISubprogram(name: "_M_fill_initialize", linkageName: "_ZNSt6vectorImSaImEE18_M_fill_initializeEmRKm", scope: !47, file: !36, line: 1593, type: !370, scopeLine: 1593, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!539 = !DISubprogram(name: "_M_default_initialize", linkageName: "_ZNSt6vectorImSaImEE21_M_default_initializeEm", scope: !47, file: !36, line: 1603, type: !465, scopeLine: 1603, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!540 = !DISubprogram(name: "_M_fill_assign", linkageName: "_ZNSt6vectorImSaImEE14_M_fill_assignEmRKm", scope: !47, file: !36, line: 1645, type: !370, scopeLine: 1645, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!541 = !DISubprogram(name: "_M_fill_insert", linkageName: "_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm", scope: !47, file: !36, line: 1684, type: !542, scopeLine: 1684, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !316, !378, !35, !329}
!544 = !DISubprogram(name: "_M_default_append", linkageName: "_ZNSt6vectorImSaImEE17_M_default_appendEm", scope: !47, file: !36, line: 1689, type: !465, scopeLine: 1689, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!545 = !DISubprogram(name: "_M_shrink_to_fit", linkageName: "_ZNSt6vectorImSaImEE16_M_shrink_to_fitEv", scope: !47, file: !36, line: 1692, type: !546, scopeLine: 1692, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!546 = !DISubroutineType(types: !547)
!547 = !{!162, !316}
!548 = !DISubprogram(name: "_M_insert_rval", linkageName: "_ZNSt6vectorImSaImEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKmS1_EEOm", scope: !47, file: !36, line: 1741, type: !520, scopeLine: 1741, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!549 = !DISubprogram(name: "_M_emplace_aux", linkageName: "_ZNSt6vectorImSaImEE14_M_emplace_auxEN9__gnu_cxx17__normal_iteratorIPKmS1_EEOm", scope: !47, file: !36, line: 1750, type: !520, scopeLine: 1750, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!550 = !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc", scope: !47, file: !36, line: 1756, type: !551, scopeLine: 1756, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!551 = !DISubroutineType(types: !552)
!552 = !{!553, !441, !35, !554}
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !47, file: !36, line: 424, baseType: !37)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!556 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!557 = !DISubprogram(name: "_S_check_init_len", linkageName: "_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_", scope: !47, file: !36, line: 1767, type: !558, scopeLine: 1767, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!558 = !DISubroutineType(types: !559)
!559 = !{!553, !35, !320}
!560 = !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_", scope: !47, file: !36, line: 1776, type: !561, scopeLine: 1776, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!561 = !DISubroutineType(types: !562)
!562 = !{!553, !563}
!563 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!565 = !DISubprogram(name: "_M_erase_at_end", linkageName: "_ZNSt6vectorImSaImEE15_M_erase_at_endEPm", scope: !47, file: !36, line: 1792, type: !566, scopeLine: 1792, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !316, !304}
!568 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt6vectorImSaImEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPmS1_EE", scope: !47, file: !36, line: 1804, type: !569, scopeLine: 1804, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!569 = !DISubroutineType(types: !570)
!570 = !{!378, !316, !378}
!571 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt6vectorImSaImEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPmS1_EES5_", scope: !47, file: !36, line: 1807, type: !572, scopeLine: 1807, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!572 = !DISubroutineType(types: !573)
!573 = !{!378, !316, !378, !378}
!574 = !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorImSaImEE14_M_move_assignEOS1_St17integral_constantIbLb1EE", scope: !47, file: !36, line: 1815, type: !575, scopeLine: 1815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !316, !340, !268}
!577 = !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorImSaImEE14_M_move_assignEOS1_St17integral_constantIbLb0EE", scope: !47, file: !36, line: 1826, type: !578, scopeLine: 1826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !316, !340, !287}
!580 = !{!581, !582, !583, !584}
!581 = !DILocalVariable(name: "__first", arg: 1, scope: !46, file: !36, line: 465, type: !304)
!582 = !DILocalVariable(name: "__last", arg: 2, scope: !46, file: !36, line: 465, type: !304)
!583 = !DILocalVariable(name: "__result", arg: 3, scope: !46, file: !36, line: 465, type: !304)
!584 = !DILocalVariable(name: "__alloc", arg: 4, scope: !46, file: !36, line: 466, type: !305)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__bool_constant<_S_use_relocate()>", scope: !7, file: !269, line: 81, baseType: !270)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamsize", scope: !7, file: !587, line: 98, baseType: !422)
!587 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/postypes.h", directory: "")
!588 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!589 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !7, file: !6, line: 228, flags: DIFlagFwdDecl, identifier: "_ZTSSt8ios_base")
!590 = !{!591, !0}
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !7, file: !593, line: 74, type: !594, isLocal: true, isDefinition: true)
!593 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/iostream", directory: "")
!594 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !589, file: !6, line: 603, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !595, identifier: "_ZTSNSt8ios_base4InitE")
!595 = !{!596, !599, !600, !604, !605, !610}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_S_refcount", scope: !594, file: !6, line: 616, baseType: !597, flags: DIFlagStaticMember)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Atomic_word", file: !598, line: 32, baseType: !8)
!598 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/x86_64-pc-linux-gnu/bits/atomic_word.h", directory: "")
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_S_synced_with_stdio", scope: !594, file: !6, line: 617, baseType: !162, flags: DIFlagStaticMember)
!600 = !DISubprogram(name: "Init", scope: !594, file: !6, line: 607, type: !601, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !603}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!604 = !DISubprogram(name: "~Init", scope: !594, file: !6, line: 608, type: !601, scopeLine: 608, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!605 = !DISubprogram(name: "Init", scope: !594, file: !6, line: 611, type: !606, scopeLine: 611, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !603, !608}
!608 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!610 = !DISubprogram(name: "operator=", linkageName: "_ZNSt8ios_base4InitaSERKS0_", scope: !594, file: !6, line: 612, type: !611, scopeLine: 612, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!611 = !DISubroutineType(types: !612)
!612 = !{!613, !603, !608}
!613 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !594, size: 64)
!614 = !{!615, !633, !636, !641, !702, !710, !714, !721, !725, !729, !731, !733, !737, !744, !748, !754, !760, !762, !766, !770, !774, !778, !789, !791, !795, !799, !803, !805, !810, !814, !818, !820, !822, !826, !835, !839, !843, !847, !849, !855, !857, !864, !869, !873, !877, !881, !885, !889, !891, !893, !897, !901, !905, !907, !911, !915, !917, !919, !923, !928, !933, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !1002, !1006, !1010, !1014, !1018, !1021, !1022, !1025, !1027, !1029, !1031, !1034, !1037, !1040, !1043, !1046, !1048, !1052, !1055, !1058, !1061, !1063, !1065, !1067, !1069, !1072, !1075, !1078, !1081, !1084, !1086, !1090, !1094, !1099, !1105, !1107, !1109, !1111, !1113, !1115, !1117, !1119, !1121, !1123, !1125, !1127, !1129, !1131, !1135, !1139, !1145, !1149, !1154, !1156, !1161, !1165, !1169, !1178, !1182, !1186, !1190, !1192, !1196, !1200, !1204, !1208, !1212, !1216, !1220, !1224, !1226, !1230, !1234, !1238, !1244, !1248, !1252, !1254, !1258, !1262, !1268, !1270, !1274, !1278, !1282, !1286, !1290, !1294, !1298, !1299, !1300, !1301, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1313, !1319, !1324, !1328, !1330, !1332, !1334, !1336, !1343, !1347, !1351, !1355, !1359, !1363, !1368, !1372, !1374, !1378, !1384, !1388, !1393, !1395, !1398, !1402, !1406, !1408, !1410, !1412, !1414, !1418, !1420, !1422, !1426, !1430, !1434, !1438, !1442, !1446, !1448, !1452, !1456, !1460, !1464, !1466, !1468, !1472, !1476, !1477, !1478, !1479, !1480, !1481, !1487, !1490, !1491, !1493, !1495, !1497, !1499, !1503, !1505, !1507, !1509, !1511, !1513, !1515, !1517, !1519, !1523, !1527, !1529, !1533, !1537}
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !616, file: !632, line: 64)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !617, line: 6, baseType: !618)
!617 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !619, line: 21, baseType: !620)
!619 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !619, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !621, identifier: "_ZTS11__mbstate_t")
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !620, file: !619, line: 15, baseType: !8, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !620, file: !619, line: 20, baseType: !624, size: 32, offset: 32)
!624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !620, file: !619, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !625, identifier: "_ZTSN11__mbstate_tUt_E")
!625 = !{!626, !628}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !624, file: !619, line: 18, baseType: !627, size: 32)
!627 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !624, file: !619, line: 19, baseType: !629, size: 32)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 32, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: 4)
!632 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cwchar", directory: "")
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !634, file: !632, line: 141)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !635, line: 20, baseType: !627)
!635 = !DIFile(filename: "/usr/include/bits/types/wint_t.h", directory: "")
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !637, file: !632, line: 143)
!637 = !DISubprogram(name: "btowc", scope: !638, file: !638, line: 318, type: !639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!638 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!639 = !DISubroutineType(types: !640)
!640 = !{!634, !8}
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !642, file: !632, line: 144)
!642 = !DISubprogram(name: "fgetwc", scope: !638, file: !638, line: 729, type: !643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!643 = !DISubroutineType(types: !644)
!644 = !{!634, !645}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !647, line: 5, baseType: !648)
!647 = !DIFile(filename: "/usr/include/bits/types/__FILE.h", directory: "")
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !649, line: 49, size: 1728, flags: DIFlagTypePassByValue, elements: !650, identifier: "_ZTS8_IO_FILE")
!649 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!650 = !{!651, !652, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !667, !669, !670, !671, !673, !675, !677, !681, !684, !686, !689, !692, !693, !694, !697, !698}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !648, file: !649, line: 51, baseType: !8, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !648, file: !649, line: 54, baseType: !653, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !648, file: !649, line: 55, baseType: !653, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !648, file: !649, line: 56, baseType: !653, size: 64, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !648, file: !649, line: 57, baseType: !653, size: 64, offset: 256)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !648, file: !649, line: 58, baseType: !653, size: 64, offset: 320)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !648, file: !649, line: 59, baseType: !653, size: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !648, file: !649, line: 60, baseType: !653, size: 64, offset: 448)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !648, file: !649, line: 61, baseType: !653, size: 64, offset: 512)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !648, file: !649, line: 64, baseType: !653, size: 64, offset: 576)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !648, file: !649, line: 65, baseType: !653, size: 64, offset: 640)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !648, file: !649, line: 66, baseType: !653, size: 64, offset: 704)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !648, file: !649, line: 68, baseType: !665, size: 64, offset: 768)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !649, line: 36, flags: DIFlagFwdDecl, identifier: "_ZTS10_IO_marker")
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !648, file: !649, line: 70, baseType: !668, size: 64, offset: 832)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !648, file: !649, line: 72, baseType: !8, size: 32, offset: 896)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !648, file: !649, line: 73, baseType: !8, size: 32, offset: 928)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !648, file: !649, line: 74, baseType: !672, size: 64, offset: 960)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !29, line: 152, baseType: !30)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !648, file: !649, line: 77, baseType: !674, size: 16, offset: 1024)
!674 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !648, file: !649, line: 78, baseType: !676, size: 8, offset: 1040)
!676 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !648, file: !649, line: 79, baseType: !678, size: 8, offset: 1048)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 8, elements: !679)
!679 = !{!680}
!680 = !DISubrange(count: 1)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !648, file: !649, line: 81, baseType: !682, size: 64, offset: 1088)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !649, line: 43, baseType: null)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !648, file: !649, line: 89, baseType: !685, size: 64, offset: 1152)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !29, line: 153, baseType: !30)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !648, file: !649, line: 91, baseType: !687, size: 64, offset: 1216)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !649, line: 37, flags: DIFlagFwdDecl, identifier: "_ZTS11_IO_codecvt")
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !648, file: !649, line: 92, baseType: !690, size: 64, offset: 1280)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !649, line: 38, flags: DIFlagFwdDecl, identifier: "_ZTS13_IO_wide_data")
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !648, file: !649, line: 93, baseType: !668, size: 64, offset: 1344)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !648, file: !649, line: 94, baseType: !18, size: 64, offset: 1408)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !648, file: !649, line: 95, baseType: !695, size: 64, offset: 1472)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !696, line: 46, baseType: !23)
!696 = !DIFile(filename: "OpenRace-env/install/lib/clang/10.0.1/include/stddef.h", directory: "/home/brad/Code")
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !648, file: !649, line: 96, baseType: !8, size: 32, offset: 1536)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !648, file: !649, line: 98, baseType: !699, size: 160, offset: 1568)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 160, elements: !700)
!700 = !{!701}
!701 = !DISubrange(count: 20)
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !703, file: !632, line: 145)
!703 = !DISubprogram(name: "fgetws", scope: !638, file: !638, line: 758, type: !704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!704 = !DISubroutineType(types: !705)
!705 = !{!706, !708, !8, !709}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!708 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !706)
!709 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !645)
!710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !711, file: !632, line: 146)
!711 = !DISubprogram(name: "fputwc", scope: !638, file: !638, line: 743, type: !712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!712 = !DISubroutineType(types: !713)
!713 = !{!634, !707, !645}
!714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !715, file: !632, line: 147)
!715 = !DISubprogram(name: "fputws", scope: !638, file: !638, line: 765, type: !716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!716 = !DISubroutineType(types: !717)
!717 = !{!8, !718, !709}
!718 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !722, file: !632, line: 148)
!722 = !DISubprogram(name: "fwide", scope: !638, file: !638, line: 573, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!723 = !DISubroutineType(types: !724)
!724 = !{!8, !645, !8}
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !726, file: !632, line: 149)
!726 = !DISubprogram(name: "fwprintf", scope: !638, file: !638, line: 580, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!727 = !DISubroutineType(types: !728)
!728 = !{!8, !709, !718, null}
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !730, file: !632, line: 150)
!730 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !638, file: !638, line: 642, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !732, file: !632, line: 151)
!732 = !DISubprogram(name: "getwc", scope: !638, file: !638, line: 730, type: !643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !734, file: !632, line: 152)
!734 = !DISubprogram(name: "getwchar", scope: !638, file: !638, line: 736, type: !735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!735 = !DISubroutineType(types: !736)
!736 = !{!634}
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !738, file: !632, line: 153)
!738 = !DISubprogram(name: "mbrlen", scope: !638, file: !638, line: 329, type: !739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!739 = !DISubroutineType(types: !740)
!740 = !{!695, !741, !695, !742}
!741 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !554)
!742 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !745, file: !632, line: 154)
!745 = !DISubprogram(name: "mbrtowc", scope: !638, file: !638, line: 296, type: !746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!746 = !DISubroutineType(types: !747)
!747 = !{!695, !708, !741, !695, !742}
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !749, file: !632, line: 155)
!749 = !DISubprogram(name: "mbsinit", scope: !638, file: !638, line: 292, type: !750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!750 = !DISubroutineType(types: !751)
!751 = !{!8, !752}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !755, file: !632, line: 156)
!755 = !DISubprogram(name: "mbsrtowcs", scope: !638, file: !638, line: 337, type: !756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!756 = !DISubroutineType(types: !757)
!757 = !{!695, !708, !758, !695, !742}
!758 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !761, file: !632, line: 157)
!761 = !DISubprogram(name: "putwc", scope: !638, file: !638, line: 744, type: !712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !763, file: !632, line: 158)
!763 = !DISubprogram(name: "putwchar", scope: !638, file: !638, line: 750, type: !764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!764 = !DISubroutineType(types: !765)
!765 = !{!634, !707}
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !767, file: !632, line: 160)
!767 = !DISubprogram(name: "swprintf", scope: !638, file: !638, line: 590, type: !768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!768 = !DISubroutineType(types: !769)
!769 = !{!8, !708, !695, !718, null}
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !771, file: !632, line: 162)
!771 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !638, file: !638, line: 649, type: !772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!772 = !DISubroutineType(types: !773)
!773 = !{!8, !718, !718, null}
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !775, file: !632, line: 163)
!775 = !DISubprogram(name: "ungetwc", scope: !638, file: !638, line: 773, type: !776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!776 = !DISubroutineType(types: !777)
!777 = !{!634, !634, !645}
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !779, file: !632, line: 164)
!779 = !DISubprogram(name: "vfwprintf", scope: !638, file: !638, line: 598, type: !780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!780 = !DISubroutineType(types: !781)
!781 = !{!8, !709, !718, !782}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, flags: DIFlagTypePassByValue, elements: !784, identifier: "_ZTS13__va_list_tag")
!784 = !{!785, !786, !787, !788}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !783, file: !3, baseType: !627, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !783, file: !3, baseType: !627, size: 32, offset: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !783, file: !3, baseType: !18, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !783, file: !3, baseType: !18, size: 64, offset: 128)
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !790, file: !632, line: 166)
!790 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !638, file: !638, line: 696, type: !780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !792, file: !632, line: 169)
!792 = !DISubprogram(name: "vswprintf", scope: !638, file: !638, line: 611, type: !793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!793 = !DISubroutineType(types: !794)
!794 = !{!8, !708, !695, !718, !782}
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !796, file: !632, line: 172)
!796 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !638, file: !638, line: 703, type: !797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!797 = !DISubroutineType(types: !798)
!798 = !{!8, !718, !718, !782}
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !800, file: !632, line: 174)
!800 = !DISubprogram(name: "vwprintf", scope: !638, file: !638, line: 606, type: !801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!801 = !DISubroutineType(types: !802)
!802 = !{!8, !718, !782}
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !804, file: !632, line: 176)
!804 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !638, file: !638, line: 700, type: !801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !806, file: !632, line: 178)
!806 = !DISubprogram(name: "wcrtomb", scope: !638, file: !638, line: 301, type: !807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!807 = !DISubroutineType(types: !808)
!808 = !{!695, !809, !707, !742}
!809 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !653)
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !811, file: !632, line: 179)
!811 = !DISubprogram(name: "wcscat", scope: !638, file: !638, line: 97, type: !812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!812 = !DISubroutineType(types: !813)
!813 = !{!706, !708, !718}
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !815, file: !632, line: 180)
!815 = !DISubprogram(name: "wcscmp", scope: !638, file: !638, line: 106, type: !816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!816 = !DISubroutineType(types: !817)
!817 = !{!8, !719, !719}
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !819, file: !632, line: 181)
!819 = !DISubprogram(name: "wcscoll", scope: !638, file: !638, line: 131, type: !816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !821, file: !632, line: 182)
!821 = !DISubprogram(name: "wcscpy", scope: !638, file: !638, line: 87, type: !812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !823, file: !632, line: 183)
!823 = !DISubprogram(name: "wcscspn", scope: !638, file: !638, line: 187, type: !824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!824 = !DISubroutineType(types: !825)
!825 = !{!695, !719, !719}
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !827, file: !632, line: 184)
!827 = !DISubprogram(name: "wcsftime", scope: !638, file: !638, line: 837, type: !828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!828 = !DISubroutineType(types: !829)
!829 = !{!695, !708, !695, !718, !830}
!830 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !831)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !833)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !834, line: 7, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!834 = !DIFile(filename: "/usr/include/bits/types/struct_tm.h", directory: "")
!835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !836, file: !632, line: 185)
!836 = !DISubprogram(name: "wcslen", scope: !638, file: !638, line: 222, type: !837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!837 = !DISubroutineType(types: !838)
!838 = !{!695, !719}
!839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !840, file: !632, line: 186)
!840 = !DISubprogram(name: "wcsncat", scope: !638, file: !638, line: 101, type: !841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!841 = !DISubroutineType(types: !842)
!842 = !{!706, !708, !718, !695}
!843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !844, file: !632, line: 187)
!844 = !DISubprogram(name: "wcsncmp", scope: !638, file: !638, line: 109, type: !845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!845 = !DISubroutineType(types: !846)
!846 = !{!8, !719, !719, !695}
!847 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !848, file: !632, line: 188)
!848 = !DISubprogram(name: "wcsncpy", scope: !638, file: !638, line: 92, type: !841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !850, file: !632, line: 189)
!850 = !DISubprogram(name: "wcsrtombs", scope: !638, file: !638, line: 343, type: !851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!851 = !DISubroutineType(types: !852)
!852 = !{!695, !809, !853, !695, !742}
!853 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !854)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!855 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !856, file: !632, line: 190)
!856 = !DISubprogram(name: "wcsspn", scope: !638, file: !638, line: 191, type: !824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !858, file: !632, line: 191)
!858 = !DISubprogram(name: "wcstod", scope: !638, file: !638, line: 377, type: !859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!859 = !DISubroutineType(types: !860)
!860 = !{!861, !718, !862}
!861 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!862 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !865, file: !632, line: 193)
!865 = !DISubprogram(name: "wcstof", scope: !638, file: !638, line: 382, type: !866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!866 = !DISubroutineType(types: !867)
!867 = !{!868, !718, !862}
!868 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !870, file: !632, line: 195)
!870 = !DISubprogram(name: "wcstok", scope: !638, file: !638, line: 217, type: !871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!871 = !DISubroutineType(types: !872)
!872 = !{!706, !708, !718, !862}
!873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !874, file: !632, line: 196)
!874 = !DISubprogram(name: "wcstol", scope: !638, file: !638, line: 428, type: !875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!875 = !DISubroutineType(types: !876)
!876 = !{!30, !718, !862, !8}
!877 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !878, file: !632, line: 197)
!878 = !DISubprogram(name: "wcstoul", scope: !638, file: !638, line: 433, type: !879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!879 = !DISubroutineType(types: !880)
!880 = !{!23, !718, !862, !8}
!881 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !882, file: !632, line: 198)
!882 = !DISubprogram(name: "wcsxfrm", scope: !638, file: !638, line: 135, type: !883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!883 = !DISubroutineType(types: !884)
!884 = !{!695, !708, !718, !695}
!885 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !886, file: !632, line: 199)
!886 = !DISubprogram(name: "wctob", scope: !638, file: !638, line: 324, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!887 = !DISubroutineType(types: !888)
!888 = !{!8, !634}
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !890, file: !632, line: 200)
!890 = !DISubprogram(name: "wmemcmp", scope: !638, file: !638, line: 258, type: !845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !892, file: !632, line: 201)
!892 = !DISubprogram(name: "wmemcpy", scope: !638, file: !638, line: 262, type: !841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !894, file: !632, line: 202)
!894 = !DISubprogram(name: "wmemmove", scope: !638, file: !638, line: 267, type: !895, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!895 = !DISubroutineType(types: !896)
!896 = !{!706, !706, !719, !695}
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !898, file: !632, line: 203)
!898 = !DISubprogram(name: "wmemset", scope: !638, file: !638, line: 271, type: !899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!899 = !DISubroutineType(types: !900)
!900 = !{!706, !706, !707, !695}
!901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !902, file: !632, line: 204)
!902 = !DISubprogram(name: "wprintf", scope: !638, file: !638, line: 587, type: !903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!903 = !DISubroutineType(types: !904)
!904 = !{!8, !718, null}
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !906, file: !632, line: 205)
!906 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !638, file: !638, line: 646, type: !903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !908, file: !632, line: 206)
!908 = !DISubprogram(name: "wcschr", scope: !638, file: !638, line: 164, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!909 = !DISubroutineType(types: !910)
!910 = !{!706, !719, !707}
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !912, file: !632, line: 207)
!912 = !DISubprogram(name: "wcspbrk", scope: !638, file: !638, line: 201, type: !913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!913 = !DISubroutineType(types: !914)
!914 = !{!706, !719, !719}
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !916, file: !632, line: 208)
!916 = !DISubprogram(name: "wcsrchr", scope: !638, file: !638, line: 174, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !918, file: !632, line: 209)
!918 = !DISubprogram(name: "wcsstr", scope: !638, file: !638, line: 212, type: !913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !920, file: !632, line: 210)
!920 = !DISubprogram(name: "wmemchr", scope: !638, file: !638, line: 253, type: !921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!921 = !DISubroutineType(types: !922)
!922 = !{!706, !719, !707, !695}
!923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !924, file: !632, line: 251)
!924 = !DISubprogram(name: "wcstold", scope: !638, file: !638, line: 384, type: !925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!925 = !DISubroutineType(types: !926)
!926 = !{!927, !718, !862}
!927 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !929, file: !632, line: 260)
!929 = !DISubprogram(name: "wcstoll", scope: !638, file: !638, line: 441, type: !930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!930 = !DISubroutineType(types: !931)
!931 = !{!932, !718, !862, !8}
!932 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !934, file: !632, line: 261)
!934 = !DISubprogram(name: "wcstoull", scope: !638, file: !638, line: 448, type: !935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!935 = !DISubroutineType(types: !936)
!936 = !{!937, !718, !862, !8}
!937 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !924, file: !632, line: 267)
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !929, file: !632, line: 268)
!940 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !934, file: !632, line: 269)
!941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !865, file: !632, line: 283)
!942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !790, file: !632, line: 286)
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !796, file: !632, line: 289)
!944 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !804, file: !632, line: 292)
!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !924, file: !632, line: 296)
!946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !929, file: !632, line: 297)
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !934, file: !632, line: 298)
!948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !949, file: !950, line: 58)
!949 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !951, file: !950, line: 80, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !952, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!950 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/exception_ptr.h", directory: "")
!951 = !DINamespace(name: "__exception_ptr", scope: !7)
!952 = !{!953, !954, !958, !961, !962, !967, !968, !972, !977, !981, !985, !988, !989, !992, !995}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !949, file: !950, line: 82, baseType: !18, size: 64)
!954 = !DISubprogram(name: "exception_ptr", scope: !949, file: !950, line: 84, type: !955, scopeLine: 84, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !957, !18}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!958 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !949, file: !950, line: 86, type: !959, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !957}
!961 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !949, file: !950, line: 87, type: !959, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!962 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !949, file: !950, line: 89, type: !963, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!963 = !DISubroutineType(types: !964)
!964 = !{!18, !965}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !949)
!967 = !DISubprogram(name: "exception_ptr", scope: !949, file: !950, line: 97, type: !959, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!968 = !DISubprogram(name: "exception_ptr", scope: !949, file: !950, line: 99, type: !969, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!969 = !DISubroutineType(types: !970)
!970 = !{null, !957, !971}
!971 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !966, size: 64)
!972 = !DISubprogram(name: "exception_ptr", scope: !949, file: !950, line: 102, type: !973, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !957, !975}
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !7, file: !38, line: 264, baseType: !976)
!976 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!977 = !DISubprogram(name: "exception_ptr", scope: !949, file: !950, line: 106, type: !978, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!978 = !DISubroutineType(types: !979)
!979 = !{null, !957, !980}
!980 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !949, size: 64)
!981 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !949, file: !950, line: 119, type: !982, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!982 = !DISubroutineType(types: !983)
!983 = !{!984, !957, !971}
!984 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !949, size: 64)
!985 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !949, file: !950, line: 123, type: !986, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!986 = !DISubroutineType(types: !987)
!987 = !{!984, !957, !980}
!988 = !DISubprogram(name: "~exception_ptr", scope: !949, file: !950, line: 130, type: !959, scopeLine: 130, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!989 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !949, file: !950, line: 133, type: !990, scopeLine: 133, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !957, !984}
!992 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !949, file: !950, line: 145, type: !993, scopeLine: 145, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!993 = !DISubroutineType(types: !994)
!994 = !{!162, !965}
!995 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !949, file: !950, line: 154, type: !996, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!996 = !DISubroutineType(types: !997)
!997 = !{!998, !965}
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1000)
!1000 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !7, file: !1001, line: 88, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!1001 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/typeinfo", directory: "")
!1002 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !951, entity: !1003, file: !950, line: 74)
!1003 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !7, file: !950, line: 70, type: !1004, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{null, !949}
!1006 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1007, entity: !1008, file: !1009, line: 58)
!1007 = !DINamespace(name: "__gnu_debug", scope: null)
!1008 = !DINamespace(name: "__debug", scope: !7)
!1009 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/debug/debug.h", directory: "")
!1010 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1011, file: !1013, line: 47)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !27, line: 24, baseType: !1012)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !29, line: 37, baseType: !676)
!1013 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdint", directory: "")
!1014 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1015, file: !1013, line: 48)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !27, line: 25, baseType: !1016)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !29, line: 39, baseType: !1017)
!1017 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1019, file: !1013, line: 49)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !27, line: 26, baseType: !1020)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !29, line: 41, baseType: !8)
!1021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !26, file: !1013, line: 50)
!1022 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1023, file: !1013, line: 52)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1024, line: 58, baseType: !676)
!1024 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1026, file: !1013, line: 53)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1024, line: 60, baseType: !30)
!1027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1028, file: !1013, line: 54)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1024, line: 61, baseType: !30)
!1029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1030, file: !1013, line: 55)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1024, line: 62, baseType: !30)
!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1032, file: !1013, line: 57)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1024, line: 43, baseType: !1033)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !29, line: 52, baseType: !1012)
!1034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1035, file: !1013, line: 58)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1024, line: 44, baseType: !1036)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !29, line: 54, baseType: !1016)
!1037 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1038, file: !1013, line: 59)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1024, line: 45, baseType: !1039)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !29, line: 56, baseType: !1020)
!1040 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1041, file: !1013, line: 60)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1024, line: 46, baseType: !1042)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !29, line: 58, baseType: !28)
!1043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1044, file: !1013, line: 62)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1024, line: 101, baseType: !1045)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !29, line: 72, baseType: !30)
!1046 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1047, file: !1013, line: 63)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1024, line: 87, baseType: !30)
!1048 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1049, file: !1013, line: 65)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1050, line: 24, baseType: !1051)
!1050 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "")
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !29, line: 38, baseType: !588)
!1052 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1053, file: !1013, line: 66)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1050, line: 25, baseType: !1054)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !29, line: 40, baseType: !674)
!1055 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1056, file: !1013, line: 67)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1050, line: 26, baseType: !1057)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !29, line: 42, baseType: !627)
!1058 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1059, file: !1013, line: 68)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1050, line: 27, baseType: !1060)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !29, line: 45, baseType: !23)
!1061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1062, file: !1013, line: 70)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1024, line: 71, baseType: !588)
!1063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1064, file: !1013, line: 71)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1024, line: 73, baseType: !23)
!1065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1066, file: !1013, line: 72)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1024, line: 74, baseType: !23)
!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1068, file: !1013, line: 73)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1024, line: 75, baseType: !23)
!1069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1070, file: !1013, line: 75)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1024, line: 49, baseType: !1071)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !29, line: 53, baseType: !1051)
!1072 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1073, file: !1013, line: 76)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1024, line: 50, baseType: !1074)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !29, line: 55, baseType: !1054)
!1075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1076, file: !1013, line: 77)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1024, line: 51, baseType: !1077)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !29, line: 57, baseType: !1057)
!1078 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1079, file: !1013, line: 78)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1024, line: 52, baseType: !1080)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !29, line: 59, baseType: !1060)
!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1082, file: !1013, line: 80)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1024, line: 102, baseType: !1083)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !29, line: 73, baseType: !23)
!1084 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1085, file: !1013, line: 81)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1024, line: 90, baseType: !23)
!1086 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1087, file: !1089, line: 53)
!1087 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !1088, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!1088 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!1089 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/clocale", directory: "")
!1090 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1091, file: !1089, line: 54)
!1091 = !DISubprogram(name: "setlocale", scope: !1088, file: !1088, line: 122, type: !1092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!653, !8, !554}
!1094 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1095, file: !1089, line: 55)
!1095 = !DISubprogram(name: "localeconv", scope: !1088, file: !1088, line: 125, type: !1096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!1098}
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1100, file: !1104, line: 64)
!1100 = !DISubprogram(name: "isalnum", scope: !1101, file: !1101, line: 108, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1101 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!8, !8}
!1104 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cctype", directory: "")
!1105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1106, file: !1104, line: 65)
!1106 = !DISubprogram(name: "isalpha", scope: !1101, file: !1101, line: 109, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1108, file: !1104, line: 66)
!1108 = !DISubprogram(name: "iscntrl", scope: !1101, file: !1101, line: 110, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1110, file: !1104, line: 67)
!1110 = !DISubprogram(name: "isdigit", scope: !1101, file: !1101, line: 111, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1112, file: !1104, line: 68)
!1112 = !DISubprogram(name: "isgraph", scope: !1101, file: !1101, line: 113, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1114, file: !1104, line: 69)
!1114 = !DISubprogram(name: "islower", scope: !1101, file: !1101, line: 112, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1116, file: !1104, line: 70)
!1116 = !DISubprogram(name: "isprint", scope: !1101, file: !1101, line: 114, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1118, file: !1104, line: 71)
!1118 = !DISubprogram(name: "ispunct", scope: !1101, file: !1101, line: 115, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1120, file: !1104, line: 72)
!1120 = !DISubprogram(name: "isspace", scope: !1101, file: !1101, line: 116, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1122, file: !1104, line: 73)
!1122 = !DISubprogram(name: "isupper", scope: !1101, file: !1101, line: 117, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1124, file: !1104, line: 74)
!1124 = !DISubprogram(name: "isxdigit", scope: !1101, file: !1101, line: 118, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1126, file: !1104, line: 75)
!1126 = !DISubprogram(name: "tolower", scope: !1101, file: !1101, line: 122, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1128, file: !1104, line: 76)
!1128 = !DISubprogram(name: "toupper", scope: !1101, file: !1101, line: 125, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1130, file: !1104, line: 87)
!1130 = !DISubprogram(name: "isblank", scope: !1101, file: !1101, line: 130, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1132, file: !1134, line: 52)
!1132 = !DISubprogram(name: "abs", scope: !1133, file: !1133, line: 840, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1133 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1134 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/std_abs.h", directory: "")
!1135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1136, file: !1138, line: 127)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !1133, line: 62, baseType: !1137)
!1137 = !DICompositeType(tag: DW_TAG_structure_type, file: !1133, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!1138 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdlib", directory: "")
!1139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1140, file: !1138, line: 128)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !1133, line: 70, baseType: !1141)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1133, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !1142, identifier: "_ZTS6ldiv_t")
!1142 = !{!1143, !1144}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1141, file: !1133, line: 68, baseType: !30, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1141, file: !1133, line: 69, baseType: !30, size: 64, offset: 64)
!1145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1146, file: !1138, line: 130)
!1146 = !DISubprogram(name: "abort", scope: !1133, file: !1133, line: 591, type: !1147, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{null}
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1150, file: !1138, line: 134)
!1150 = !DISubprogram(name: "atexit", scope: !1133, file: !1133, line: 595, type: !1151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!8, !1153}
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1155, file: !1138, line: 137)
!1155 = !DISubprogram(name: "at_quick_exit", scope: !1133, file: !1133, line: 600, type: !1151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1157, file: !1138, line: 140)
!1157 = !DISubprogram(name: "atof", scope: !1158, file: !1158, line: 25, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1158 = !DIFile(filename: "/usr/include/bits/stdlib-float.h", directory: "")
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!861, !554}
!1161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1162, file: !1138, line: 141)
!1162 = !DISubprogram(name: "atoi", scope: !1133, file: !1133, line: 361, type: !1163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!8, !554}
!1165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1166, file: !1138, line: 142)
!1166 = !DISubprogram(name: "atol", scope: !1133, file: !1133, line: 366, type: !1167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!30, !554}
!1169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1170, file: !1138, line: 143)
!1170 = !DISubprogram(name: "bsearch", scope: !1171, file: !1171, line: 20, type: !1172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1171 = !DIFile(filename: "/usr/include/bits/stdlib-bsearch.h", directory: "")
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!18, !39, !39, !695, !695, !1174}
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1133, line: 808, baseType: !1175)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!8, !39, !39}
!1178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1179, file: !1138, line: 144)
!1179 = !DISubprogram(name: "calloc", scope: !1133, file: !1133, line: 542, type: !1180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!18, !695, !695}
!1182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1183, file: !1138, line: 145)
!1183 = !DISubprogram(name: "div", scope: !1133, file: !1133, line: 852, type: !1184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!1136, !8, !8}
!1186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1187, file: !1138, line: 146)
!1187 = !DISubprogram(name: "exit", scope: !1133, file: !1133, line: 617, type: !1188, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{null, !8}
!1190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1191, file: !1138, line: 147)
!1191 = !DISubprogram(name: "free", scope: !1133, file: !1133, line: 565, type: !33, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1193, file: !1138, line: 148)
!1193 = !DISubprogram(name: "getenv", scope: !1133, file: !1133, line: 634, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!653, !554}
!1196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1197, file: !1138, line: 149)
!1197 = !DISubprogram(name: "labs", scope: !1133, file: !1133, line: 841, type: !1198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!30, !30}
!1200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1201, file: !1138, line: 150)
!1201 = !DISubprogram(name: "ldiv", scope: !1133, file: !1133, line: 854, type: !1202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!1140, !30, !30}
!1204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1205, file: !1138, line: 151)
!1205 = !DISubprogram(name: "malloc", scope: !1133, file: !1133, line: 539, type: !1206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!18, !695}
!1208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1209, file: !1138, line: 153)
!1209 = !DISubprogram(name: "mblen", scope: !1133, file: !1133, line: 922, type: !1210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!8, !554, !695}
!1212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1213, file: !1138, line: 154)
!1213 = !DISubprogram(name: "mbstowcs", scope: !1133, file: !1133, line: 933, type: !1214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!695, !708, !741, !695}
!1216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1217, file: !1138, line: 155)
!1217 = !DISubprogram(name: "mbtowc", scope: !1133, file: !1133, line: 925, type: !1218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!8, !708, !741, !695}
!1220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1221, file: !1138, line: 157)
!1221 = !DISubprogram(name: "qsort", scope: !1133, file: !1133, line: 830, type: !1222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{null, !18, !695, !695, !1174}
!1224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1225, file: !1138, line: 160)
!1225 = !DISubprogram(name: "quick_exit", scope: !1133, file: !1133, line: 623, type: !1188, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1227, file: !1138, line: 163)
!1227 = !DISubprogram(name: "rand", scope: !1133, file: !1133, line: 453, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!8}
!1230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1231, file: !1138, line: 164)
!1231 = !DISubprogram(name: "realloc", scope: !1133, file: !1133, line: 550, type: !1232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!18, !18, !695}
!1234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1235, file: !1138, line: 165)
!1235 = !DISubprogram(name: "srand", scope: !1133, file: !1133, line: 455, type: !1236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{null, !627}
!1238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1239, file: !1138, line: 166)
!1239 = !DISubprogram(name: "strtod", scope: !1133, file: !1133, line: 117, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!861, !741, !1242}
!1242 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1243)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!1244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1245, file: !1138, line: 167)
!1245 = !DISubprogram(name: "strtol", scope: !1133, file: !1133, line: 176, type: !1246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!30, !741, !1242, !8}
!1248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1249, file: !1138, line: 168)
!1249 = !DISubprogram(name: "strtoul", scope: !1133, file: !1133, line: 180, type: !1250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!23, !741, !1242, !8}
!1252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1253, file: !1138, line: 169)
!1253 = !DISubprogram(name: "system", scope: !1133, file: !1133, line: 784, type: !1163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1255, file: !1138, line: 171)
!1255 = !DISubprogram(name: "wcstombs", scope: !1133, file: !1133, line: 937, type: !1256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!695, !809, !718, !695}
!1258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1259, file: !1138, line: 172)
!1259 = !DISubprogram(name: "wctomb", scope: !1133, file: !1133, line: 929, type: !1260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!8, !653, !707}
!1262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1263, file: !1138, line: 200)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !1133, line: 80, baseType: !1264)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1133, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !1265, identifier: "_ZTS7lldiv_t")
!1265 = !{!1266, !1267}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1264, file: !1133, line: 78, baseType: !932, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1264, file: !1133, line: 79, baseType: !932, size: 64, offset: 64)
!1268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1269, file: !1138, line: 206)
!1269 = !DISubprogram(name: "_Exit", scope: !1133, file: !1133, line: 629, type: !1188, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1271, file: !1138, line: 210)
!1271 = !DISubprogram(name: "llabs", scope: !1133, file: !1133, line: 844, type: !1272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!932, !932}
!1274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1275, file: !1138, line: 216)
!1275 = !DISubprogram(name: "lldiv", scope: !1133, file: !1133, line: 858, type: !1276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!1263, !932, !932}
!1278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1279, file: !1138, line: 227)
!1279 = !DISubprogram(name: "atoll", scope: !1133, file: !1133, line: 373, type: !1280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!932, !554}
!1282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1283, file: !1138, line: 228)
!1283 = !DISubprogram(name: "strtoll", scope: !1133, file: !1133, line: 200, type: !1284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!932, !741, !1242, !8}
!1286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1287, file: !1138, line: 229)
!1287 = !DISubprogram(name: "strtoull", scope: !1133, file: !1133, line: 205, type: !1288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!937, !741, !1242, !8}
!1290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1291, file: !1138, line: 231)
!1291 = !DISubprogram(name: "strtof", scope: !1133, file: !1133, line: 123, type: !1292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!868, !741, !1242}
!1294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1295, file: !1138, line: 232)
!1295 = !DISubprogram(name: "strtold", scope: !1133, file: !1133, line: 126, type: !1296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!927, !741, !1242}
!1298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1263, file: !1138, line: 240)
!1299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1269, file: !1138, line: 242)
!1300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1271, file: !1138, line: 244)
!1301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1302, file: !1138, line: 245)
!1302 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !61, file: !1138, line: 213, type: !1276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1275, file: !1138, line: 246)
!1304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1279, file: !1138, line: 248)
!1305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1291, file: !1138, line: 249)
!1306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1283, file: !1138, line: 250)
!1307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1287, file: !1138, line: 251)
!1308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1295, file: !1138, line: 252)
!1309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1310, file: !1312, line: 98)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1311, line: 7, baseType: !648)
!1311 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1312 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdio", directory: "")
!1313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1314, file: !1312, line: 99)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1315, line: 84, baseType: !1316)
!1315 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !1317, line: 14, baseType: !1318)
!1317 = !DIFile(filename: "/usr/include/bits/types/__fpos_t.h", directory: "")
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !1317, line: 10, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!1319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1320, file: !1312, line: 101)
!1320 = !DISubprogram(name: "clearerr", scope: !1315, file: !1315, line: 762, type: !1321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{null, !1323}
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1325, file: !1312, line: 102)
!1325 = !DISubprogram(name: "fclose", scope: !1315, file: !1315, line: 213, type: !1326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!8, !1323}
!1328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1329, file: !1312, line: 103)
!1329 = !DISubprogram(name: "feof", scope: !1315, file: !1315, line: 764, type: !1326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1331, file: !1312, line: 104)
!1331 = !DISubprogram(name: "ferror", scope: !1315, file: !1315, line: 766, type: !1326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1333, file: !1312, line: 105)
!1333 = !DISubprogram(name: "fflush", scope: !1315, file: !1315, line: 218, type: !1326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1335, file: !1312, line: 106)
!1335 = !DISubprogram(name: "fgetc", scope: !1315, file: !1315, line: 489, type: !1326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1337, file: !1312, line: 107)
!1337 = !DISubprogram(name: "fgetpos", scope: !1315, file: !1315, line: 736, type: !1338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!8, !1340, !1341}
!1340 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1323)
!1341 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1342)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1344, file: !1312, line: 108)
!1344 = !DISubprogram(name: "fgets", scope: !1315, file: !1315, line: 568, type: !1345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!653, !809, !8, !1340}
!1347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1348, file: !1312, line: 109)
!1348 = !DISubprogram(name: "fopen", scope: !1315, file: !1315, line: 246, type: !1349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!1323, !741, !741}
!1351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1352, file: !1312, line: 110)
!1352 = !DISubprogram(name: "fprintf", scope: !1315, file: !1315, line: 326, type: !1353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!8, !1340, !741, null}
!1355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1356, file: !1312, line: 111)
!1356 = !DISubprogram(name: "fputc", scope: !1315, file: !1315, line: 525, type: !1357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!8, !8, !1323}
!1359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1360, file: !1312, line: 112)
!1360 = !DISubprogram(name: "fputs", scope: !1315, file: !1315, line: 631, type: !1361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!8, !741, !1340}
!1363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1364, file: !1312, line: 113)
!1364 = !DISubprogram(name: "fread", scope: !1315, file: !1315, line: 651, type: !1365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!695, !1367, !695, !695, !1340}
!1367 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!1368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1369, file: !1312, line: 114)
!1369 = !DISubprogram(name: "freopen", scope: !1315, file: !1315, line: 252, type: !1370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!1323, !741, !741, !1340}
!1372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1373, file: !1312, line: 115)
!1373 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !1315, file: !1315, line: 410, type: !1353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1375, file: !1312, line: 116)
!1375 = !DISubprogram(name: "fseek", scope: !1315, file: !1315, line: 689, type: !1376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!8, !1323, !30, !8}
!1378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1379, file: !1312, line: 117)
!1379 = !DISubprogram(name: "fsetpos", scope: !1315, file: !1315, line: 741, type: !1380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!8, !1323, !1382}
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1314)
!1384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1385, file: !1312, line: 118)
!1385 = !DISubprogram(name: "ftell", scope: !1315, file: !1315, line: 694, type: !1386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!30, !1323}
!1388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1389, file: !1312, line: 119)
!1389 = !DISubprogram(name: "fwrite", scope: !1315, file: !1315, line: 657, type: !1390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!695, !1392, !695, !695, !1340}
!1392 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!1393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1394, file: !1312, line: 120)
!1394 = !DISubprogram(name: "getc", scope: !1315, file: !1315, line: 490, type: !1326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1396, file: !1312, line: 121)
!1396 = !DISubprogram(name: "getchar", scope: !1397, file: !1397, line: 47, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1397 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1399, file: !1312, line: 126)
!1399 = !DISubprogram(name: "perror", scope: !1315, file: !1315, line: 780, type: !1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{null, !554}
!1402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1403, file: !1312, line: 127)
!1403 = !DISubprogram(name: "printf", scope: !1315, file: !1315, line: 332, type: !1404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!8, !741, null}
!1406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1407, file: !1312, line: 128)
!1407 = !DISubprogram(name: "putc", scope: !1315, file: !1315, line: 526, type: !1357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1409, file: !1312, line: 129)
!1409 = !DISubprogram(name: "putchar", scope: !1397, file: !1397, line: 82, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1411, file: !1312, line: 130)
!1411 = !DISubprogram(name: "puts", scope: !1315, file: !1315, line: 637, type: !1163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1413, file: !1312, line: 131)
!1413 = !DISubprogram(name: "remove", scope: !1315, file: !1315, line: 146, type: !1163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1415, file: !1312, line: 132)
!1415 = !DISubprogram(name: "rename", scope: !1315, file: !1315, line: 148, type: !1416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!8, !554, !554}
!1418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1419, file: !1312, line: 133)
!1419 = !DISubprogram(name: "rewind", scope: !1315, file: !1315, line: 699, type: !1321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1421, file: !1312, line: 134)
!1421 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !1315, file: !1315, line: 413, type: !1404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1423, file: !1312, line: 135)
!1423 = !DISubprogram(name: "setbuf", scope: !1315, file: !1315, line: 304, type: !1424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{null, !1340, !809}
!1426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1427, file: !1312, line: 136)
!1427 = !DISubprogram(name: "setvbuf", scope: !1315, file: !1315, line: 308, type: !1428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!8, !1340, !809, !8, !695}
!1430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1431, file: !1312, line: 137)
!1431 = !DISubprogram(name: "sprintf", scope: !1315, file: !1315, line: 334, type: !1432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!8, !809, !741, null}
!1434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1435, file: !1312, line: 138)
!1435 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !1315, file: !1315, line: 415, type: !1436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!8, !741, !741, null}
!1438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1439, file: !1312, line: 139)
!1439 = !DISubprogram(name: "tmpfile", scope: !1315, file: !1315, line: 173, type: !1440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!1323}
!1442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1443, file: !1312, line: 141)
!1443 = !DISubprogram(name: "tmpnam", scope: !1315, file: !1315, line: 187, type: !1444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!653, !653}
!1446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1447, file: !1312, line: 143)
!1447 = !DISubprogram(name: "ungetc", scope: !1315, file: !1315, line: 644, type: !1357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1449, file: !1312, line: 144)
!1449 = !DISubprogram(name: "vfprintf", scope: !1315, file: !1315, line: 341, type: !1450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!8, !1340, !741, !782}
!1452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1453, file: !1312, line: 145)
!1453 = !DISubprogram(name: "vprintf", scope: !1397, file: !1397, line: 39, type: !1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!8, !741, !782}
!1456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1457, file: !1312, line: 146)
!1457 = !DISubprogram(name: "vsprintf", scope: !1315, file: !1315, line: 349, type: !1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!8, !809, !741, !782}
!1460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1461, file: !1312, line: 175)
!1461 = !DISubprogram(name: "snprintf", scope: !1315, file: !1315, line: 354, type: !1462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!8, !809, !695, !741, null}
!1464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1465, file: !1312, line: 176)
!1465 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !1315, file: !1315, line: 455, type: !1450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1467, file: !1312, line: 177)
!1467 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !1315, file: !1315, line: 460, type: !1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1469, file: !1312, line: 178)
!1469 = !DISubprogram(name: "vsnprintf", scope: !1315, file: !1315, line: 358, type: !1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!8, !809, !695, !741, !782}
!1472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1473, file: !1312, line: 179)
!1473 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !1315, file: !1315, line: 463, type: !1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!8, !741, !741, !782}
!1476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1461, file: !1312, line: 185)
!1477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1465, file: !1312, line: 186)
!1478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1467, file: !1312, line: 187)
!1479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1469, file: !1312, line: 188)
!1480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1473, file: !1312, line: 189)
!1481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1482, file: !1486, line: 82)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1483, line: 48, baseType: !1484)
!1483 = !DIFile(filename: "/usr/include/wctype.h", directory: "")
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1020)
!1486 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cwctype", directory: "")
!1487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1488, file: !1486, line: 83)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1489, line: 38, baseType: !23)
!1489 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !634, file: !1486, line: 84)
!1491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1492, file: !1486, line: 86)
!1492 = !DISubprogram(name: "iswalnum", scope: !1489, file: !1489, line: 95, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1494, file: !1486, line: 87)
!1494 = !DISubprogram(name: "iswalpha", scope: !1489, file: !1489, line: 101, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1496, file: !1486, line: 89)
!1496 = !DISubprogram(name: "iswblank", scope: !1489, file: !1489, line: 146, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1498, file: !1486, line: 91)
!1498 = !DISubprogram(name: "iswcntrl", scope: !1489, file: !1489, line: 104, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1500, file: !1486, line: 92)
!1500 = !DISubprogram(name: "iswctype", scope: !1489, file: !1489, line: 159, type: !1501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!8, !634, !1488}
!1503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1504, file: !1486, line: 93)
!1504 = !DISubprogram(name: "iswdigit", scope: !1489, file: !1489, line: 108, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1506, file: !1486, line: 94)
!1506 = !DISubprogram(name: "iswgraph", scope: !1489, file: !1489, line: 112, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1508, file: !1486, line: 95)
!1508 = !DISubprogram(name: "iswlower", scope: !1489, file: !1489, line: 117, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1510, file: !1486, line: 96)
!1510 = !DISubprogram(name: "iswprint", scope: !1489, file: !1489, line: 120, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1512, file: !1486, line: 97)
!1512 = !DISubprogram(name: "iswpunct", scope: !1489, file: !1489, line: 125, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1514, file: !1486, line: 98)
!1514 = !DISubprogram(name: "iswspace", scope: !1489, file: !1489, line: 130, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1516, file: !1486, line: 99)
!1516 = !DISubprogram(name: "iswupper", scope: !1489, file: !1489, line: 135, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1518, file: !1486, line: 100)
!1518 = !DISubprogram(name: "iswxdigit", scope: !1489, file: !1489, line: 140, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1520, file: !1486, line: 101)
!1520 = !DISubprogram(name: "towctrans", scope: !1483, file: !1483, line: 55, type: !1521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!634, !634, !1482}
!1523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1524, file: !1486, line: 102)
!1524 = !DISubprogram(name: "towlower", scope: !1489, file: !1489, line: 166, type: !1525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!634, !634}
!1527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1528, file: !1486, line: 103)
!1528 = !DISubprogram(name: "towupper", scope: !1489, file: !1489, line: 169, type: !1525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1530, file: !1486, line: 104)
!1530 = !DISubprogram(name: "wctrans", scope: !1483, file: !1483, line: 52, type: !1531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!1482, !554}
!1533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1534, file: !1486, line: 105)
!1534 = !DISubprogram(name: "wctype", scope: !1489, file: !1489, line: 155, type: !1535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!1488, !554}
!1537 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !7, file: !3, line: 11)
!1538 = !{i32 7, !"Dwarf Version", i32 4}
!1539 = !{i32 2, !"Debug Info Version", i32 3}
!1540 = !{i32 1, !"wchar_size", i32 4}
!1541 = !{!"clang version 10.0.1 "}
!1542 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 21, type: !1228, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1543)
!1543 = !{!1544, !1545, !1547, !1552, !1554, !1555, !1556}
!1544 = !DILocalVariable(name: "ths", scope: !1542, file: !3, line: 22, type: !47)
!1545 = !DILocalVariable(name: "i", scope: !1546, file: !3, line: 23, type: !26)
!1546 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 23, column: 3)
!1547 = !DILocalVariable(name: "th", scope: !1548, file: !3, line: 24, type: !1550)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 23, column: 37)
!1549 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 23, column: 3)
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !1551, line: 27, baseType: !23)
!1551 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "")
!1552 = !DILocalVariable(name: "__range1", scope: !1553, type: !362, flags: DIFlagArtificial)
!1553 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 29, column: 3)
!1554 = !DILocalVariable(name: "__begin1", scope: !1553, type: !379, flags: DIFlagArtificial)
!1555 = !DILocalVariable(name: "__end1", scope: !1553, type: !379, flags: DIFlagArtificial)
!1556 = !DILocalVariable(name: "th", scope: !1557, file: !3, line: 29, type: !98)
!1557 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 29, column: 3)
!1558 = !DILocation(line: 22, column: 3, scope: !1542)
!1559 = !DILocation(line: 22, column: 21, scope: !1542)
!1560 = !DILocation(line: 23, column: 8, scope: !1546)
!1561 = !DILocation(line: 23, column: 16, scope: !1546)
!1562 = !{!1563, !1563, i64 0}
!1563 = !{!"long", !1564, i64 0}
!1564 = !{!"omnipotent char", !1565, i64 0}
!1565 = !{!"Simple C++ TBAA"}
!1566 = !DILocation(line: 23, column: 23, scope: !1549)
!1567 = !DILocation(line: 23, column: 25, scope: !1549)
!1568 = !DILocation(line: 23, column: 3, scope: !1546)
!1569 = !DILocation(line: 23, column: 3, scope: !1549)
!1570 = !DILocation(line: 24, column: 5, scope: !1548)
!1571 = !DILocation(line: 24, column: 15, scope: !1548)
!1572 = !DILocation(line: 25, column: 49, scope: !1548)
!1573 = !DILocation(line: 25, column: 42, scope: !1548)
!1574 = !DILocation(line: 25, column: 5, scope: !1548)
!1575 = !DILocation(line: 26, column: 9, scope: !1548)
!1576 = !DILocation(line: 27, column: 3, scope: !1549)
!1577 = !DILocation(line: 27, column: 3, scope: !1548)
!1578 = !DILocation(line: 23, column: 33, scope: !1549)
!1579 = distinct !{!1579, !1568, !1580}
!1580 = !DILocation(line: 27, column: 3, scope: !1546)
!1581 = !DILocation(line: 35, column: 1, scope: !1548)
!1582 = !DILocation(line: 29, column: 19, scope: !1553)
!1583 = !DILocation(line: 0, scope: !1553)
!1584 = !{!1585, !1585, i64 0}
!1585 = !{!"any pointer", !1564, i64 0}
!1586 = !DILocation(line: 29, column: 17, scope: !1553)
!1587 = !DILocation(line: 29, column: 8, scope: !1557)
!1588 = !DILocation(line: 29, column: 14, scope: !1557)
!1589 = !DILocation(line: 29, column: 17, scope: !1557)
!1590 = !DILocation(line: 30, column: 18, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 29, column: 24)
!1592 = !DILocation(line: 30, column: 5, scope: !1591)
!1593 = !DILocation(line: 31, column: 3, scope: !1553)
!1594 = !DILocation(line: 29, column: 3, scope: !1553)
!1595 = distinct !{!1595, !1594, !1593}
!1596 = !DILocation(line: 35, column: 1, scope: !1591)
!1597 = !DILocation(line: 33, column: 8, scope: !1542)
!1598 = !DILocation(line: 33, column: 25, scope: !1542)
!1599 = !{!1600, !1600, i64 0}
!1600 = !{!"int", !1564, i64 0}
!1601 = !DILocation(line: 33, column: 22, scope: !1542)
!1602 = !DILocation(line: 33, column: 31, scope: !1542)
!1603 = !DILocation(line: 34, column: 3, scope: !1542)
!1604 = !DILocation(line: 35, column: 1, scope: !1542)
!1605 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt6vectorImSaImEEC2Ev", scope: !47, file: !36, line: 487, type: !314, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !313, retainedNodes: !1606)
!1606 = !{!1607}
!1607 = !DILocalVariable(name: "this", arg: 1, scope: !1605, type: !1608, flags: DIFlagArtificial | DIFlagObjectPointer)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!1609 = !DILocation(line: 0, scope: !1605)
!1610 = !DILocation(line: 487, column: 24, scope: !1605)
!1611 = !DILocation(line: 487, column: 7, scope: !1605)
!1612 = !{!1613}
!1613 = !{i64 2, i64 3, i1 false}
!1614 = distinct !DISubprogram(name: "square", linkageName: "_ZL6squarePv", scope: !3, file: !3, line: 15, type: !1615, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1617)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!18, !18}
!1617 = !{!1618, !1619}
!1618 = !DILocalVariable(name: "x", arg: 1, scope: !1614, file: !3, line: 15, type: !18)
!1619 = !DILocalVariable(name: "k", scope: !1614, file: !3, line: 16, type: !26)
!1620 = !DILocation(line: 15, column: 27, scope: !1614)
!1621 = !DILocation(line: 16, column: 3, scope: !1614)
!1622 = !DILocation(line: 16, column: 11, scope: !1614)
!1623 = !DILocation(line: 16, column: 24, scope: !1614)
!1624 = !DILocation(line: 16, column: 15, scope: !1614)
!1625 = !DILocation(line: 17, column: 12, scope: !1614)
!1626 = !DILocation(line: 17, column: 16, scope: !1614)
!1627 = !DILocation(line: 17, column: 14, scope: !1614)
!1628 = !DILocation(line: 17, column: 9, scope: !1614)
!1629 = !DILocation(line: 19, column: 1, scope: !1614)
!1630 = !DILocation(line: 18, column: 3, scope: !1614)
!1631 = distinct !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorImSaImEE9push_backERKm", scope: !47, file: !36, line: 1187, type: !509, scopeLine: 1188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !508, retainedNodes: !1632)
!1632 = !{!1633, !1634}
!1633 = !DILocalVariable(name: "this", arg: 1, scope: !1631, type: !1608, flags: DIFlagArtificial | DIFlagObjectPointer)
!1634 = !DILocalVariable(name: "__x", arg: 2, scope: !1631, file: !36, line: 1187, type: !329)
!1635 = !DILocation(line: 0, scope: !1631)
!1636 = !DILocation(line: 1187, column: 35, scope: !1631)
!1637 = !DILocation(line: 1189, column: 12, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1631, file: !36, line: 1189, column: 6)
!1639 = !DILocation(line: 1189, column: 6, scope: !1638)
!1640 = !DILocation(line: 1189, column: 20, scope: !1638)
!1641 = !{!1642, !1585, i64 8}
!1642 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !1585, i64 0, !1585, i64 8, !1585, i64 16}
!1643 = !DILocation(line: 1189, column: 39, scope: !1638)
!1644 = !DILocation(line: 1189, column: 33, scope: !1638)
!1645 = !DILocation(line: 1189, column: 47, scope: !1638)
!1646 = !{!1642, !1585, i64 16}
!1647 = !DILocation(line: 1189, column: 30, scope: !1638)
!1648 = !DILocation(line: 1189, column: 6, scope: !1631)
!1649 = !DILocation(line: 1192, column: 37, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1638, file: !36, line: 1190, column: 4)
!1651 = !DILocation(line: 1192, column: 31, scope: !1650)
!1652 = !DILocation(line: 1192, column: 52, scope: !1650)
!1653 = !DILocation(line: 1192, column: 46, scope: !1650)
!1654 = !DILocation(line: 1192, column: 60, scope: !1650)
!1655 = !DILocation(line: 1193, column: 10, scope: !1650)
!1656 = !DILocation(line: 1192, column: 6, scope: !1650)
!1657 = !DILocation(line: 1194, column: 14, scope: !1650)
!1658 = !DILocation(line: 1194, column: 8, scope: !1650)
!1659 = !DILocation(line: 1194, column: 22, scope: !1650)
!1660 = !DILocation(line: 1194, column: 6, scope: !1650)
!1661 = !DILocation(line: 1196, column: 4, scope: !1650)
!1662 = !DILocation(line: 1198, column: 22, scope: !1638)
!1663 = !DILocation(line: 1198, column: 29, scope: !1638)
!1664 = !DILocation(line: 1198, column: 4, scope: !1638)
!1665 = !DILocation(line: 1199, column: 7, scope: !1631)
!1666 = distinct !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorImSaImEE5beginEv", scope: !47, file: !36, line: 811, type: !376, scopeLine: 812, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !375, retainedNodes: !1667)
!1667 = !{!1668}
!1668 = !DILocalVariable(name: "this", arg: 1, scope: !1666, type: !1608, flags: DIFlagArtificial | DIFlagObjectPointer)
!1669 = !DILocation(line: 0, scope: !1666)
!1670 = !DILocation(line: 812, column: 31, scope: !1666)
!1671 = !DILocation(line: 812, column: 25, scope: !1666)
!1672 = !DILocation(line: 812, column: 39, scope: !1666)
!1673 = !DILocation(line: 812, column: 16, scope: !1666)
!1674 = !DILocation(line: 812, column: 9, scope: !1666)
!1675 = distinct !DISubprogram(name: "end", linkageName: "_ZNSt6vectorImSaImEE3endEv", scope: !47, file: !36, line: 829, type: !376, scopeLine: 830, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !442, retainedNodes: !1676)
!1676 = !{!1677}
!1677 = !DILocalVariable(name: "this", arg: 1, scope: !1675, type: !1608, flags: DIFlagArtificial | DIFlagObjectPointer)
!1678 = !DILocation(line: 0, scope: !1675)
!1679 = !DILocation(line: 830, column: 31, scope: !1675)
!1680 = !DILocation(line: 830, column: 25, scope: !1675)
!1681 = !DILocation(line: 830, column: 39, scope: !1675)
!1682 = !DILocation(line: 830, column: 16, scope: !1675)
!1683 = !DILocation(line: 830, column: 9, scope: !1675)
!1684 = distinct !DISubprogram(name: "operator!=<unsigned long *, std::vector<unsigned long, std::allocator<unsigned long> > >", linkageName: "_ZN9__gnu_cxxneIPmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESA_", scope: !61, file: !380, line: 1088, type: !1685, scopeLine: 1091, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !434, retainedNodes: !1688)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!162, !1687, !1687}
!1687 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !402, size: 64)
!1688 = !{!1689, !1690}
!1689 = !DILocalVariable(name: "__lhs", arg: 1, scope: !1684, file: !380, line: 1088, type: !1687)
!1690 = !DILocalVariable(name: "__rhs", arg: 2, scope: !1684, file: !380, line: 1089, type: !1687)
!1691 = !DILocation(line: 1088, column: 64, scope: !1684)
!1692 = !DILocation(line: 1089, column: 57, scope: !1684)
!1693 = !DILocation(line: 1091, column: 14, scope: !1684)
!1694 = !DILocation(line: 1091, column: 20, scope: !1684)
!1695 = !DILocation(line: 1091, column: 30, scope: !1684)
!1696 = !DILocation(line: 1091, column: 36, scope: !1684)
!1697 = !DILocation(line: 1091, column: 27, scope: !1684)
!1698 = !DILocation(line: 1091, column: 7, scope: !1684)
!1699 = distinct !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEdeEv", scope: !379, file: !380, line: 968, type: !393, scopeLine: 969, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !392, retainedNodes: !1700)
!1700 = !{!1701}
!1701 = !DILocalVariable(name: "this", arg: 1, scope: !1699, type: !1702, flags: DIFlagArtificial | DIFlagObjectPointer)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!1703 = !DILocation(line: 0, scope: !1699)
!1704 = !DILocation(line: 969, column: 17, scope: !1699)
!1705 = !{!1706, !1585, i64 0}
!1706 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEE", !1585, i64 0}
!1707 = !DILocation(line: 969, column: 9, scope: !1699)
!1708 = distinct !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEppEv", scope: !379, file: !380, line: 978, type: !409, scopeLine: 979, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !408, retainedNodes: !1709)
!1709 = !{!1710}
!1710 = !DILocalVariable(name: "this", arg: 1, scope: !1708, type: !1711, flags: DIFlagArtificial | DIFlagObjectPointer)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!1712 = !DILocation(line: 0, scope: !1708)
!1713 = !DILocation(line: 980, column: 4, scope: !1708)
!1714 = !DILocation(line: 980, column: 2, scope: !1708)
!1715 = !DILocation(line: 981, column: 2, scope: !1708)
!1716 = distinct !DISubprogram(name: "operator<<<std::char_traits<char> >", linkageName: "_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc", scope: !7, file: !1717, line: 606, type: !1718, scopeLine: 607, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1726, retainedNodes: !1723)
!1717 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/ostream", directory: "")
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!1720, !1720, !554}
!1720 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::char_traits<char> >", scope: !7, file: !1722, line: 359, flags: DIFlagFwdDecl)
!1722 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/ostream.tcc", directory: "")
!1723 = !{!1724, !1725}
!1724 = !DILocalVariable(name: "__out", arg: 1, scope: !1716, file: !1717, line: 606, type: !1720)
!1725 = !DILocalVariable(name: "__s", arg: 2, scope: !1716, file: !1717, line: 606, type: !554)
!1726 = !{!1727}
!1727 = !DITemplateTypeParameter(name: "_Traits", type: !1728)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !7, file: !1729, line: 309, size: 8, flags: DIFlagTypePassByValue, elements: !1730, templateParams: !1778, identifier: "_ZTSSt11char_traitsIcE")
!1729 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/char_traits.h", directory: "")
!1730 = !{!1731, !1738, !1741, !1742, !1746, !1749, !1752, !1756, !1757, !1760, !1766, !1769, !1772, !1775}
!1731 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignERcRKc", scope: !1728, file: !1729, line: 321, type: !1732, scopeLine: 321, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !1734, !1736}
!1734 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1728, file: !1729, line: 311, baseType: !556)
!1736 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1735)
!1738 = !DISubprogram(name: "eq", linkageName: "_ZNSt11char_traitsIcE2eqERKcS2_", scope: !1728, file: !1729, line: 325, type: !1739, scopeLine: 325, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!162, !1736, !1736}
!1741 = !DISubprogram(name: "lt", linkageName: "_ZNSt11char_traitsIcE2ltERKcS2_", scope: !1728, file: !1729, line: 329, type: !1739, scopeLine: 329, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1742 = !DISubprogram(name: "compare", linkageName: "_ZNSt11char_traitsIcE7compareEPKcS2_m", scope: !1728, file: !1729, line: 337, type: !1743, scopeLine: 337, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!8, !1745, !1745, !37}
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1746 = !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !1728, file: !1729, line: 351, type: !1747, scopeLine: 351, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!37, !1745}
!1749 = !DISubprogram(name: "find", linkageName: "_ZNSt11char_traitsIcE4findEPKcmRS1_", scope: !1728, file: !1729, line: 361, type: !1750, scopeLine: 361, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!1745, !1745, !37, !1736}
!1752 = !DISubprogram(name: "move", linkageName: "_ZNSt11char_traitsIcE4moveEPcPKcm", scope: !1728, file: !1729, line: 375, type: !1753, scopeLine: 375, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!1755, !1755, !1745, !37}
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1756 = !DISubprogram(name: "copy", linkageName: "_ZNSt11char_traitsIcE4copyEPcPKcm", scope: !1728, file: !1729, line: 387, type: !1753, scopeLine: 387, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1757 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignEPcmc", scope: !1728, file: !1729, line: 399, type: !1758, scopeLine: 399, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!1755, !1755, !37, !1735}
!1760 = !DISubprogram(name: "to_char_type", linkageName: "_ZNSt11char_traitsIcE12to_char_typeERKi", scope: !1728, file: !1729, line: 411, type: !1761, scopeLine: 411, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!1735, !1763}
!1763 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1764, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1765)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !1728, file: !1729, line: 312, baseType: !8)
!1766 = !DISubprogram(name: "to_int_type", linkageName: "_ZNSt11char_traitsIcE11to_int_typeERKc", scope: !1728, file: !1729, line: 417, type: !1767, scopeLine: 417, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!1765, !1736}
!1769 = !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt11char_traitsIcE11eq_int_typeERKiS2_", scope: !1728, file: !1729, line: 421, type: !1770, scopeLine: 421, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!162, !1763, !1763}
!1772 = !DISubprogram(name: "eof", linkageName: "_ZNSt11char_traitsIcE3eofEv", scope: !1728, file: !1729, line: 425, type: !1773, scopeLine: 425, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!1765}
!1775 = !DISubprogram(name: "not_eof", linkageName: "_ZNSt11char_traitsIcE7not_eofERKi", scope: !1728, file: !1729, line: 429, type: !1776, scopeLine: 429, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!1765, !1763}
!1778 = !{!1779}
!1779 = !DITemplateTypeParameter(name: "_CharT", type: !556)
!1780 = !DILocation(line: 606, column: 46, scope: !1716)
!1781 = !DILocation(line: 606, column: 65, scope: !1716)
!1782 = !DILocation(line: 608, column: 12, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1716, file: !1717, line: 608, column: 11)
!1784 = !DILocation(line: 608, column: 11, scope: !1716)
!1785 = !DILocation(line: 609, column: 2, scope: !1783)
!1786 = !{!1787, !1787, i64 0}
!1787 = !{!"vtable pointer", !1565, i64 0}
!1788 = !DILocation(line: 609, column: 8, scope: !1783)
!1789 = !DILocation(line: 611, column: 19, scope: !1783)
!1790 = !DILocation(line: 611, column: 26, scope: !1783)
!1791 = !DILocation(line: 612, column: 45, scope: !1783)
!1792 = !DILocation(line: 612, column: 29, scope: !1783)
!1793 = !DILocation(line: 611, column: 2, scope: !1783)
!1794 = !DILocation(line: 613, column: 14, scope: !1716)
!1795 = !DILocation(line: 613, column: 7, scope: !1716)
!1796 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZNSolsEPFRSoS_E", scope: !1721, file: !1717, line: 108, type: !1797, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1805, retainedNodes: !1806)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!1799, !1801, !1802}
!1799 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ostream_type", scope: !1721, file: !1717, line: 71, baseType: !1721)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!1799, !1799}
!1805 = !DISubprogram(name: "operator<<", linkageName: "_ZNSolsEPFRSoS_E", scope: !1721, file: !1717, line: 108, type: !1797, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1806 = !{!1807, !1809}
!1807 = !DILocalVariable(name: "this", arg: 1, scope: !1796, type: !1808, flags: DIFlagArtificial | DIFlagObjectPointer)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1809 = !DILocalVariable(name: "__pf", arg: 2, scope: !1796, file: !1717, line: 108, type: !1802)
!1810 = !DILocation(line: 0, scope: !1796)
!1811 = !DILocation(line: 108, column: 36, scope: !1796)
!1812 = !DILocation(line: 113, column: 9, scope: !1796)
!1813 = !DILocation(line: 113, column: 2, scope: !1796)
!1814 = distinct !DISubprogram(name: "endl<char, std::char_traits<char> >", linkageName: "_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_", scope: !7, file: !1717, line: 681, type: !1815, scopeLine: 682, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1819, retainedNodes: !1817)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!1720, !1720}
!1817 = !{!1818}
!1818 = !DILocalVariable(name: "__os", arg: 1, scope: !1814, file: !1717, line: 681, type: !1720)
!1819 = !{!1779, !1727}
!1820 = !DILocation(line: 681, column: 42, scope: !1814)
!1821 = !DILocation(line: 682, column: 20, scope: !1814)
!1822 = !DILocation(line: 682, column: 29, scope: !1814)
!1823 = !DILocation(line: 682, column: 34, scope: !1814)
!1824 = !DILocation(line: 682, column: 25, scope: !1814)
!1825 = !DILocation(line: 682, column: 14, scope: !1814)
!1826 = !DILocation(line: 682, column: 7, scope: !1814)
!1827 = distinct !DISubprogram(name: "~vector", linkageName: "_ZNSt6vectorImSaImEED2Ev", scope: !47, file: !36, line: 678, type: !314, scopeLine: 679, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !358, retainedNodes: !1828)
!1828 = !{!1829}
!1829 = !DILocalVariable(name: "this", arg: 1, scope: !1827, type: !1608, flags: DIFlagArtificial | DIFlagObjectPointer)
!1830 = !DILocation(line: 0, scope: !1827)
!1831 = !DILocation(line: 680, column: 22, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1827, file: !36, line: 679, column: 7)
!1833 = !DILocation(line: 680, column: 16, scope: !1832)
!1834 = !DILocation(line: 680, column: 30, scope: !1832)
!1835 = !{!1642, !1585, i64 0}
!1836 = !DILocation(line: 680, column: 46, scope: !1832)
!1837 = !DILocation(line: 680, column: 40, scope: !1832)
!1838 = !DILocation(line: 680, column: 54, scope: !1832)
!1839 = !DILocation(line: 681, column: 9, scope: !1832)
!1840 = !DILocation(line: 680, column: 2, scope: !1832)
!1841 = !DILocation(line: 683, column: 7, scope: !1832)
!1842 = !DILocation(line: 683, column: 7, scope: !1827)
!1843 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !593, file: !593, line: 74, type: !1147, scopeLine: 74, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !25)
!1844 = !DILocation(line: 74, column: 25, scope: !1843)
!1845 = distinct !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseImSaImEEC2Ev", scope: !50, file: !36, line: 288, type: !230, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !229, retainedNodes: !1846)
!1846 = !{!1847}
!1847 = !DILocalVariable(name: "this", arg: 1, scope: !1845, type: !1848, flags: DIFlagArtificial | DIFlagObjectPointer)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!1849 = !DILocation(line: 0, scope: !1845)
!1850 = !DILocation(line: 288, column: 7, scope: !1845)
!1851 = !DILocation(line: 288, column: 30, scope: !1845)
!1852 = distinct !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseImSaImEE12_Vector_implC2Ev", scope: !53, file: !36, line: 131, type: !196, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !195, retainedNodes: !1853)
!1853 = !{!1854}
!1854 = !DILocalVariable(name: "this", arg: 1, scope: !1852, type: !1855, flags: DIFlagArtificial | DIFlagObjectPointer)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!1856 = !DILocation(line: 0, scope: !1852)
!1857 = !DILocation(line: 134, column: 2, scope: !1852)
!1858 = !DILocation(line: 133, column: 4, scope: !1852)
!1859 = !DILocation(line: 131, column: 2, scope: !1852)
!1860 = !DILocation(line: 134, column: 4, scope: !1852)
!1861 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSaImEC2Ev", scope: !73, file: !74, line: 144, type: !121, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !120, retainedNodes: !1862)
!1862 = !{!1863}
!1863 = !DILocalVariable(name: "this", arg: 1, scope: !1861, type: !1864, flags: DIFlagArtificial | DIFlagObjectPointer)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!1865 = !DILocation(line: 0, scope: !1861)
!1866 = !DILocation(line: 144, column: 36, scope: !1861)
!1867 = !DILocation(line: 144, column: 7, scope: !1861)
!1868 = !DILocation(line: 144, column: 38, scope: !1861)
!1869 = distinct !DISubprogram(name: "_Vector_impl_data", linkageName: "_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev", scope: !171, file: !36, line: 97, type: !179, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !178, retainedNodes: !1870)
!1870 = !{!1871}
!1871 = !DILocalVariable(name: "this", arg: 1, scope: !1869, type: !1872, flags: DIFlagArtificial | DIFlagObjectPointer)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!1873 = !DILocation(line: 0, scope: !1869)
!1874 = !DILocation(line: 98, column: 4, scope: !1869)
!1875 = !DILocation(line: 98, column: 16, scope: !1869)
!1876 = !DILocation(line: 98, column: 29, scope: !1869)
!1877 = !DILocation(line: 99, column: 4, scope: !1869)
!1878 = distinct !DISubprogram(name: "new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorImEC2Ev", scope: !79, file: !80, line: 79, type: !83, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !82, retainedNodes: !1879)
!1879 = !{!1880}
!1880 = !DILocalVariable(name: "this", arg: 1, scope: !1878, type: !1881, flags: DIFlagArtificial | DIFlagObjectPointer)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!1882 = !DILocation(line: 0, scope: !1878)
!1883 = !DILocation(line: 79, column: 47, scope: !1878)
!1884 = distinct !DISubprogram(name: "_Destroy<unsigned long *, unsigned long>", linkageName: "_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E", scope: !7, file: !65, line: 735, type: !1885, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1891, retainedNodes: !1887)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{null, !41, !41, !132}
!1887 = !{!1888, !1889, !1890}
!1888 = !DILocalVariable(name: "__first", arg: 1, scope: !1884, file: !65, line: 735, type: !41)
!1889 = !DILocalVariable(name: "__last", arg: 2, scope: !1884, file: !65, line: 735, type: !41)
!1890 = !DILocalVariable(arg: 3, scope: !1884, file: !65, line: 736, type: !132)
!1891 = !{!1892, !119}
!1892 = !DITemplateTypeParameter(name: "_ForwardIterator", type: !41)
!1893 = !DILocation(line: 735, column: 31, scope: !1884)
!1894 = !DILocation(line: 735, column: 57, scope: !1884)
!1895 = !DILocation(line: 736, column: 22, scope: !1884)
!1896 = !DILocation(line: 738, column: 16, scope: !1884)
!1897 = !DILocation(line: 738, column: 25, scope: !1884)
!1898 = !DILocation(line: 738, column: 7, scope: !1884)
!1899 = !DILocation(line: 739, column: 5, scope: !1884)
!1900 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv", scope: !50, file: !36, line: 276, type: !216, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !215, retainedNodes: !1901)
!1901 = !{!1902}
!1902 = !DILocalVariable(name: "this", arg: 1, scope: !1900, type: !1848, flags: DIFlagArtificial | DIFlagObjectPointer)
!1903 = !DILocation(line: 0, scope: !1900)
!1904 = !DILocation(line: 277, column: 22, scope: !1900)
!1905 = !DILocation(line: 277, column: 16, scope: !1900)
!1906 = !DILocation(line: 277, column: 9, scope: !1900)
!1907 = distinct !DISubprogram(name: "~_Vector_base", linkageName: "_ZNSt12_Vector_baseImSaImEED2Ev", scope: !50, file: !36, line: 333, type: !230, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !256, retainedNodes: !1908)
!1908 = !{!1909}
!1909 = !DILocalVariable(name: "this", arg: 1, scope: !1907, type: !1848, flags: DIFlagArtificial | DIFlagObjectPointer)
!1910 = !DILocation(line: 0, scope: !1907)
!1911 = !DILocation(line: 335, column: 16, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1907, file: !36, line: 334, column: 7)
!1913 = !DILocation(line: 335, column: 24, scope: !1912)
!1914 = !DILocation(line: 336, column: 9, scope: !1912)
!1915 = !DILocation(line: 336, column: 17, scope: !1912)
!1916 = !DILocation(line: 336, column: 37, scope: !1912)
!1917 = !DILocation(line: 336, column: 45, scope: !1912)
!1918 = !DILocation(line: 336, column: 35, scope: !1912)
!1919 = !DILocation(line: 335, column: 2, scope: !1912)
!1920 = !DILocation(line: 337, column: 7, scope: !1912)
!1921 = !DILocation(line: 337, column: 7, scope: !1907)
!1922 = distinct !DISubprogram(name: "_Destroy<unsigned long *>", linkageName: "_ZSt8_DestroyIPmEvT_S1_", scope: !7, file: !1923, line: 171, type: !1924, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1929, retainedNodes: !1926)
!1923 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/stl_construct.h", directory: "")
!1924 = !DISubroutineType(types: !1925)
!1925 = !{null, !41, !41}
!1926 = !{!1927, !1928}
!1927 = !DILocalVariable(name: "__first", arg: 1, scope: !1922, file: !1923, line: 171, type: !41)
!1928 = !DILocalVariable(name: "__last", arg: 2, scope: !1922, file: !1923, line: 171, type: !41)
!1929 = !{!1892}
!1930 = !DILocation(line: 171, column: 31, scope: !1922)
!1931 = !DILocation(line: 171, column: 57, scope: !1922)
!1932 = !DILocation(line: 185, column: 12, scope: !1922)
!1933 = !DILocation(line: 185, column: 21, scope: !1922)
!1934 = !DILocation(line: 184, column: 7, scope: !1922)
!1935 = !DILocation(line: 186, column: 5, scope: !1922)
!1936 = distinct !DISubprogram(name: "__destroy<unsigned long *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_", scope: !1937, file: !1923, line: 161, type: !1924, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1929, declaration: !1940, retainedNodes: !1941)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Destroy_aux<true>", scope: !7, file: !1923, line: 157, size: 8, flags: DIFlagTypePassByValue, elements: !25, templateParams: !1938, identifier: "_ZTSSt12_Destroy_auxILb1EE")
!1938 = !{!1939}
!1939 = !DITemplateValueParameter(type: !162, value: i8 1)
!1940 = !DISubprogram(name: "__destroy<unsigned long *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_", scope: !1937, file: !1923, line: 161, type: !1924, scopeLine: 161, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized, templateParams: !1929)
!1941 = !{!1942, !1943}
!1942 = !DILocalVariable(arg: 1, scope: !1936, file: !1923, line: 161, type: !41)
!1943 = !DILocalVariable(arg: 2, scope: !1936, file: !1923, line: 161, type: !41)
!1944 = !DILocation(line: 161, column: 35, scope: !1936)
!1945 = !DILocation(line: 161, column: 53, scope: !1936)
!1946 = !DILocation(line: 161, column: 57, scope: !1936)
!1947 = distinct !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm", scope: !50, file: !36, line: 350, type: !261, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !260, retainedNodes: !1948)
!1948 = !{!1949, !1950, !1951}
!1949 = !DILocalVariable(name: "this", arg: 1, scope: !1947, type: !1848, flags: DIFlagArtificial | DIFlagObjectPointer)
!1950 = !DILocalVariable(name: "__p", arg: 2, scope: !1947, file: !36, line: 350, type: !174)
!1951 = !DILocalVariable(name: "__n", arg: 3, scope: !1947, file: !36, line: 350, type: !37)
!1952 = !DILocation(line: 0, scope: !1947)
!1953 = !DILocation(line: 350, column: 29, scope: !1947)
!1954 = !DILocation(line: 350, column: 41, scope: !1947)
!1955 = !DILocation(line: 353, column: 6, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1947, file: !36, line: 353, column: 6)
!1957 = !DILocation(line: 353, column: 6, scope: !1947)
!1958 = !DILocation(line: 354, column: 20, scope: !1956)
!1959 = !DILocation(line: 354, column: 29, scope: !1956)
!1960 = !DILocation(line: 354, column: 34, scope: !1956)
!1961 = !DILocation(line: 354, column: 4, scope: !1956)
!1962 = !DILocation(line: 355, column: 7, scope: !1947)
!1963 = distinct !DISubprogram(name: "~new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorImED2Ev", scope: !79, file: !80, line: 89, type: !83, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !91, retainedNodes: !1964)
!1964 = !{!1965}
!1965 = !DILocalVariable(name: "this", arg: 1, scope: !1963, type: !1881, flags: DIFlagArtificial | DIFlagObjectPointer)
!1966 = !DILocation(line: 0, scope: !1963)
!1967 = !DILocation(line: 89, column: 48, scope: !1963)
!1968 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm", scope: !64, file: !65, line: 491, type: !140, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !139, retainedNodes: !1969)
!1969 = !{!1970, !1971, !1972}
!1970 = !DILocalVariable(name: "__a", arg: 1, scope: !1968, file: !65, line: 491, type: !71)
!1971 = !DILocalVariable(name: "__p", arg: 2, scope: !1968, file: !65, line: 491, type: !70)
!1972 = !DILocalVariable(name: "__n", arg: 3, scope: !1968, file: !65, line: 491, type: !134)
!1973 = !DILocation(line: 491, column: 34, scope: !1968)
!1974 = !DILocation(line: 491, column: 47, scope: !1968)
!1975 = !DILocation(line: 491, column: 62, scope: !1968)
!1976 = !DILocation(line: 492, column: 9, scope: !1968)
!1977 = !DILocation(line: 492, column: 24, scope: !1968)
!1978 = !DILocation(line: 492, column: 29, scope: !1968)
!1979 = !DILocation(line: 492, column: 13, scope: !1968)
!1980 = !DILocation(line: 492, column: 35, scope: !1968)
!1981 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm", scope: !79, file: !80, line: 120, type: !112, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !111, retainedNodes: !1982)
!1982 = !{!1983, !1984, !1985}
!1983 = !DILocalVariable(name: "this", arg: 1, scope: !1981, type: !1881, flags: DIFlagArtificial | DIFlagObjectPointer)
!1984 = !DILocalVariable(name: "__p", arg: 2, scope: !1981, file: !80, line: 120, type: !41)
!1985 = !DILocalVariable(name: "__t", arg: 3, scope: !1981, file: !80, line: 120, type: !110)
!1986 = !DILocation(line: 0, scope: !1981)
!1987 = !DILocation(line: 120, column: 23, scope: !1981)
!1988 = !DILocation(line: 120, column: 38, scope: !1981)
!1989 = !DILocation(line: 133, column: 20, scope: !1981)
!1990 = !DILocation(line: 133, column: 2, scope: !1981)
!1991 = !DILocation(line: 138, column: 7, scope: !1981)
!1992 = distinct !DISubprogram(name: "construct<unsigned long, const unsigned long &>", linkageName: "_ZNSt16allocator_traitsISaImEE9constructImJRKmEEEvRS0_PT_DpOT0_", scope: !64, file: !65, line: 507, type: !1993, scopeLine: 510, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1996, declaration: !1995, retainedNodes: !2001)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{null, !71, !41, !106}
!1995 = !DISubprogram(name: "construct<unsigned long, const unsigned long &>", linkageName: "_ZNSt16allocator_traitsISaImEE9constructImJRKmEEEvRS0_PT_DpOT0_", scope: !64, file: !65, line: 507, type: !1993, scopeLine: 507, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized, templateParams: !1996)
!1996 = !{!1997, !1998}
!1997 = !DITemplateTypeParameter(name: "_Up", type: !23)
!1998 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !1999)
!1999 = !{!2000}
!2000 = !DITemplateTypeParameter(type: !106)
!2001 = !{!2002, !2003, !2004}
!2002 = !DILocalVariable(name: "__a", arg: 1, scope: !1992, file: !65, line: 507, type: !71)
!2003 = !DILocalVariable(name: "__p", arg: 2, scope: !1992, file: !65, line: 507, type: !41)
!2004 = !DILocalVariable(name: "__args", arg: 3, scope: !1992, file: !65, line: 508, type: !106)
!2005 = !DILocation(line: 507, column: 28, scope: !1992)
!2006 = !DILocation(line: 507, column: 66, scope: !1992)
!2007 = !DILocation(line: 508, column: 16, scope: !1992)
!2008 = !DILocation(line: 512, column: 4, scope: !1992)
!2009 = !DILocation(line: 512, column: 18, scope: !1992)
!2010 = !DILocation(line: 512, column: 43, scope: !1992)
!2011 = !DILocation(line: 512, column: 23, scope: !1992)
!2012 = !DILocation(line: 512, column: 8, scope: !1992)
!2013 = !DILocation(line: 516, column: 2, scope: !1992)
!2014 = distinct !DISubprogram(name: "_M_realloc_insert<const unsigned long &>", linkageName: "_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_", scope: !47, file: !2015, line: 427, type: !2016, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !2019, declaration: !2018, retainedNodes: !2020)
!2015 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/vector.tcc", directory: "")
!2016 = !DISubroutineType(types: !2017)
!2017 = !{null, !316, !378, !106}
!2018 = !DISubprogram(name: "_M_realloc_insert<const unsigned long &>", linkageName: "_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_", scope: !47, file: !36, line: 1737, type: !2016, scopeLine: 1737, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !2019)
!2019 = !{!1998}
!2020 = !{!2021, !2022, !2023, !2024, !2026, !2027, !2028, !2029, !2030}
!2021 = !DILocalVariable(name: "this", arg: 1, scope: !2014, type: !1608, flags: DIFlagArtificial | DIFlagObjectPointer)
!2022 = !DILocalVariable(name: "__position", arg: 2, scope: !2014, file: !36, line: 1737, type: !378)
!2023 = !DILocalVariable(name: "__args", arg: 3, scope: !2014, file: !36, line: 1737, type: !106)
!2024 = !DILocalVariable(name: "__len", scope: !2014, file: !2015, line: 435, type: !2025)
!2025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!2026 = !DILocalVariable(name: "__old_start", scope: !2014, file: !2015, line: 437, type: !304)
!2027 = !DILocalVariable(name: "__old_finish", scope: !2014, file: !2015, line: 438, type: !304)
!2028 = !DILocalVariable(name: "__elems_before", scope: !2014, file: !2015, line: 439, type: !2025)
!2029 = !DILocalVariable(name: "__new_start", scope: !2014, file: !2015, line: 440, type: !304)
!2030 = !DILocalVariable(name: "__new_finish", scope: !2014, file: !2015, line: 441, type: !304)
!2031 = !DILocation(line: 0, scope: !2014)
!2032 = !DILocation(line: 1737, column: 29, scope: !2014)
!2033 = !DILocation(line: 1737, column: 52, scope: !2014)
!2034 = !DILocation(line: 435, column: 7, scope: !2014)
!2035 = !DILocation(line: 435, column: 23, scope: !2014)
!2036 = !DILocation(line: 436, column: 2, scope: !2014)
!2037 = !DILocation(line: 437, column: 7, scope: !2014)
!2038 = !DILocation(line: 437, column: 15, scope: !2014)
!2039 = !DILocation(line: 437, column: 35, scope: !2014)
!2040 = !DILocation(line: 437, column: 29, scope: !2014)
!2041 = !DILocation(line: 437, column: 43, scope: !2014)
!2042 = !DILocation(line: 438, column: 7, scope: !2014)
!2043 = !DILocation(line: 438, column: 15, scope: !2014)
!2044 = !DILocation(line: 438, column: 36, scope: !2014)
!2045 = !DILocation(line: 438, column: 30, scope: !2014)
!2046 = !DILocation(line: 438, column: 44, scope: !2014)
!2047 = !DILocation(line: 439, column: 7, scope: !2014)
!2048 = !DILocation(line: 439, column: 23, scope: !2014)
!2049 = !DILocation(line: 439, column: 53, scope: !2014)
!2050 = !DILocation(line: 439, column: 51, scope: !2014)
!2051 = !DILocation(line: 439, column: 40, scope: !2014)
!2052 = !DILocation(line: 440, column: 7, scope: !2014)
!2053 = !DILocation(line: 440, column: 15, scope: !2014)
!2054 = !DILocation(line: 440, column: 33, scope: !2014)
!2055 = !DILocation(line: 440, column: 45, scope: !2014)
!2056 = !DILocation(line: 441, column: 7, scope: !2014)
!2057 = !DILocation(line: 441, column: 15, scope: !2014)
!2058 = !DILocation(line: 441, column: 28, scope: !2014)
!2059 = !DILocation(line: 449, column: 35, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2014, file: !2015, line: 443, column: 2)
!2061 = !DILocation(line: 449, column: 29, scope: !2060)
!2062 = !DILocation(line: 450, column: 8, scope: !2060)
!2063 = !DILocation(line: 450, column: 22, scope: !2060)
!2064 = !DILocation(line: 450, column: 20, scope: !2060)
!2065 = !DILocation(line: 452, column: 28, scope: !2060)
!2066 = !DILocation(line: 452, column: 8, scope: !2060)
!2067 = !DILocation(line: 449, column: 4, scope: !2060)
!2068 = !DILocation(line: 456, column: 17, scope: !2060)
!2069 = !DILocation(line: 461, column: 35, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !2015, line: 460, column: 6)
!2071 = distinct !DILexicalBlock(scope: !2060, file: !2015, line: 459, column: 29)
!2072 = !DILocation(line: 461, column: 59, scope: !2070)
!2073 = !DILocation(line: 462, column: 7, scope: !2070)
!2074 = !DILocation(line: 462, column: 20, scope: !2070)
!2075 = !DILocation(line: 461, column: 23, scope: !2070)
!2076 = !DILocation(line: 461, column: 21, scope: !2070)
!2077 = !DILocation(line: 464, column: 8, scope: !2070)
!2078 = !DILocation(line: 466, column: 46, scope: !2070)
!2079 = !DILocation(line: 466, column: 54, scope: !2070)
!2080 = !DILocation(line: 467, column: 7, scope: !2070)
!2081 = !DILocation(line: 467, column: 21, scope: !2070)
!2082 = !DILocation(line: 466, column: 23, scope: !2070)
!2083 = !DILocation(line: 466, column: 21, scope: !2070)
!2084 = !DILocation(line: 500, column: 7, scope: !2014)
!2085 = !DILocation(line: 500, column: 21, scope: !2014)
!2086 = !DILocation(line: 501, column: 13, scope: !2014)
!2087 = !DILocation(line: 501, column: 7, scope: !2014)
!2088 = !DILocation(line: 501, column: 21, scope: !2014)
!2089 = !DILocation(line: 501, column: 41, scope: !2014)
!2090 = !DILocation(line: 501, column: 39, scope: !2014)
!2091 = !DILocation(line: 502, column: 32, scope: !2014)
!2092 = !DILocation(line: 502, column: 13, scope: !2014)
!2093 = !DILocation(line: 502, column: 7, scope: !2014)
!2094 = !DILocation(line: 502, column: 21, scope: !2014)
!2095 = !DILocation(line: 502, column: 30, scope: !2014)
!2096 = !DILocation(line: 503, column: 33, scope: !2014)
!2097 = !DILocation(line: 503, column: 13, scope: !2014)
!2098 = !DILocation(line: 503, column: 7, scope: !2014)
!2099 = !DILocation(line: 503, column: 21, scope: !2014)
!2100 = !DILocation(line: 503, column: 31, scope: !2014)
!2101 = !DILocation(line: 504, column: 41, scope: !2014)
!2102 = !DILocation(line: 504, column: 55, scope: !2014)
!2103 = !DILocation(line: 504, column: 53, scope: !2014)
!2104 = !DILocation(line: 504, column: 13, scope: !2014)
!2105 = !DILocation(line: 504, column: 7, scope: !2014)
!2106 = !DILocation(line: 504, column: 21, scope: !2014)
!2107 = !DILocation(line: 504, column: 39, scope: !2014)
!2108 = !DILocation(line: 505, column: 5, scope: !2014)
!2109 = distinct !DISubprogram(name: "construct<unsigned long, const unsigned long &>", linkageName: "_ZN9__gnu_cxx13new_allocatorImE9constructImJRKmEEEvPT_DpOT0_", scope: !79, file: !80, line: 148, type: !2110, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1996, declaration: !2112, retainedNodes: !2113)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null, !85, !41, !106}
!2112 = !DISubprogram(name: "construct<unsigned long, const unsigned long &>", linkageName: "_ZN9__gnu_cxx13new_allocatorImE9constructImJRKmEEEvPT_DpOT0_", scope: !79, file: !80, line: 148, type: !2110, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1996)
!2113 = !{!2114, !2115, !2116}
!2114 = !DILocalVariable(name: "this", arg: 1, scope: !2109, type: !1881, flags: DIFlagArtificial | DIFlagObjectPointer)
!2115 = !DILocalVariable(name: "__p", arg: 2, scope: !2109, file: !80, line: 148, type: !41)
!2116 = !DILocalVariable(name: "__args", arg: 3, scope: !2109, file: !80, line: 148, type: !106)
!2117 = !DILocation(line: 0, scope: !2109)
!2118 = !DILocation(line: 148, column: 17, scope: !2109)
!2119 = !DILocation(line: 148, column: 33, scope: !2109)
!2120 = !DILocation(line: 150, column: 18, scope: !2109)
!2121 = !DILocation(line: 150, column: 4, scope: !2109)
!2122 = !DILocation(line: 150, column: 47, scope: !2109)
!2123 = !DILocation(line: 150, column: 27, scope: !2109)
!2124 = !DILocation(line: 150, column: 60, scope: !2109)
!2125 = distinct !DISubprogram(name: "forward<const unsigned long &>", linkageName: "_ZSt7forwardIRKmEOT_RNSt16remove_referenceIS2_E4typeE", scope: !7, file: !2126, line: 76, type: !2127, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !2132, retainedNodes: !2134)
!2126 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/move.h", directory: "")
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!106, !2129}
!2129 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2131, file: !269, line: 1598, baseType: !104)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<const unsigned long &>", scope: !7, file: !269, line: 1597, size: 8, flags: DIFlagTypePassByValue, elements: !25, templateParams: !2132, identifier: "_ZTSSt16remove_referenceIRKmE")
!2132 = !{!2133}
!2133 = !DITemplateTypeParameter(name: "_Tp", type: !106)
!2134 = !{!2135}
!2135 = !DILocalVariable(name: "__t", arg: 1, scope: !2125, file: !2126, line: 76, type: !2129)
!2136 = !DILocation(line: 76, column: 56, scope: !2125)
!2137 = !DILocation(line: 77, column: 33, scope: !2125)
!2138 = !DILocation(line: 77, column: 7, scope: !2125)
!2139 = distinct !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc", scope: !47, file: !36, line: 1756, type: !551, scopeLine: 1757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !550, retainedNodes: !2140)
!2140 = !{!2141, !2143, !2144, !2145}
!2141 = !DILocalVariable(name: "this", arg: 1, scope: !2139, type: !2142, flags: DIFlagArtificial | DIFlagObjectPointer)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!2143 = !DILocalVariable(name: "__n", arg: 2, scope: !2139, file: !36, line: 1756, type: !35)
!2144 = !DILocalVariable(name: "__s", arg: 3, scope: !2139, file: !36, line: 1756, type: !554)
!2145 = !DILocalVariable(name: "__len", scope: !2139, file: !36, line: 1761, type: !2025)
!2146 = !DILocation(line: 0, scope: !2139)
!2147 = !DILocation(line: 1756, column: 30, scope: !2139)
!2148 = !DILocation(line: 1756, column: 47, scope: !2139)
!2149 = !DILocation(line: 1758, column: 6, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2139, file: !36, line: 1758, column: 6)
!2151 = !DILocation(line: 1758, column: 19, scope: !2150)
!2152 = !DILocation(line: 1758, column: 17, scope: !2150)
!2153 = !DILocation(line: 1758, column: 28, scope: !2150)
!2154 = !DILocation(line: 1758, column: 26, scope: !2150)
!2155 = !DILocation(line: 1758, column: 6, scope: !2139)
!2156 = !DILocation(line: 1759, column: 25, scope: !2150)
!2157 = !DILocation(line: 1759, column: 4, scope: !2150)
!2158 = !DILocation(line: 1761, column: 2, scope: !2139)
!2159 = !DILocation(line: 1761, column: 18, scope: !2139)
!2160 = !DILocation(line: 1761, column: 26, scope: !2139)
!2161 = !DILocation(line: 1761, column: 46, scope: !2139)
!2162 = !DILocation(line: 1761, column: 35, scope: !2139)
!2163 = !DILocation(line: 1761, column: 33, scope: !2139)
!2164 = !DILocation(line: 1762, column: 10, scope: !2139)
!2165 = !DILocation(line: 1762, column: 18, scope: !2139)
!2166 = !DILocation(line: 1762, column: 16, scope: !2139)
!2167 = !DILocation(line: 1762, column: 25, scope: !2139)
!2168 = !DILocation(line: 1762, column: 28, scope: !2139)
!2169 = !DILocation(line: 1762, column: 36, scope: !2139)
!2170 = !DILocation(line: 1762, column: 34, scope: !2139)
!2171 = !DILocation(line: 1762, column: 9, scope: !2139)
!2172 = !DILocation(line: 1762, column: 50, scope: !2139)
!2173 = !DILocation(line: 1762, column: 63, scope: !2139)
!2174 = !DILocation(line: 1763, column: 7, scope: !2139)
!2175 = !DILocation(line: 1762, column: 2, scope: !2139)
!2176 = distinct !DISubprogram(name: "operator-<unsigned long *, std::vector<unsigned long, std::allocator<unsigned long> > >", linkageName: "_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_", scope: !61, file: !380, line: 1177, type: !2177, scopeLine: 1180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !434, retainedNodes: !2179)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!420, !1687, !1687}
!2179 = !{!2180, !2181}
!2180 = !DILocalVariable(name: "__lhs", arg: 1, scope: !2176, file: !380, line: 1177, type: !1687)
!2181 = !DILocalVariable(name: "__rhs", arg: 2, scope: !2176, file: !380, line: 1178, type: !1687)
!2182 = !DILocation(line: 1177, column: 63, scope: !2176)
!2183 = !DILocation(line: 1178, column: 56, scope: !2176)
!2184 = !DILocation(line: 1180, column: 14, scope: !2176)
!2185 = !DILocation(line: 1180, column: 20, scope: !2176)
!2186 = !DILocation(line: 1180, column: 29, scope: !2176)
!2187 = !DILocation(line: 1180, column: 35, scope: !2176)
!2188 = !DILocation(line: 1180, column: 27, scope: !2176)
!2189 = !DILocation(line: 1180, column: 7, scope: !2176)
!2190 = distinct !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseImSaImEE11_M_allocateEm", scope: !50, file: !36, line: 343, type: !258, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !257, retainedNodes: !2191)
!2191 = !{!2192, !2193}
!2192 = !DILocalVariable(name: "this", arg: 1, scope: !2190, type: !1848, flags: DIFlagArtificial | DIFlagObjectPointer)
!2193 = !DILocalVariable(name: "__n", arg: 2, scope: !2190, file: !36, line: 343, type: !37)
!2194 = !DILocation(line: 0, scope: !2190)
!2195 = !DILocation(line: 343, column: 26, scope: !2190)
!2196 = !DILocation(line: 346, column: 9, scope: !2190)
!2197 = !DILocation(line: 346, column: 13, scope: !2190)
!2198 = !DILocation(line: 346, column: 34, scope: !2190)
!2199 = !DILocation(line: 346, column: 43, scope: !2190)
!2200 = !DILocation(line: 346, column: 20, scope: !2190)
!2201 = !DILocation(line: 346, column: 2, scope: !2190)
!2202 = !DILocation(line: 465, column: 27, scope: !46)
!2203 = !DILocation(line: 465, column: 44, scope: !46)
!2204 = !DILocation(line: 465, column: 60, scope: !46)
!2205 = !DILocation(line: 466, column: 21, scope: !46)
!2206 = !DILocation(line: 469, column: 24, scope: !46)
!2207 = !DILocation(line: 469, column: 33, scope: !46)
!2208 = !DILocation(line: 469, column: 41, scope: !46)
!2209 = !DILocation(line: 469, column: 51, scope: !46)
!2210 = !DILocation(line: 469, column: 9, scope: !46)
!2211 = !DILocation(line: 469, column: 2, scope: !46)
!2212 = distinct !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv", scope: !379, file: !380, line: 1031, type: !432, scopeLine: 1032, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !431, retainedNodes: !2213)
!2213 = !{!2214}
!2214 = !DILocalVariable(name: "this", arg: 1, scope: !2212, type: !1702, flags: DIFlagArtificial | DIFlagObjectPointer)
!2215 = !DILocation(line: 0, scope: !2212)
!2216 = !DILocation(line: 1032, column: 16, scope: !2212)
!2217 = !DILocation(line: 1032, column: 9, scope: !2212)
!2218 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorImSaImEE8max_sizeEv", scope: !47, file: !36, line: 923, type: !461, scopeLine: 924, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !463, retainedNodes: !2219)
!2219 = !{!2220}
!2220 = !DILocalVariable(name: "this", arg: 1, scope: !2218, type: !2142, flags: DIFlagArtificial | DIFlagObjectPointer)
!2221 = !DILocation(line: 0, scope: !2218)
!2222 = !DILocation(line: 924, column: 28, scope: !2218)
!2223 = !DILocation(line: 924, column: 16, scope: !2218)
!2224 = !DILocation(line: 924, column: 9, scope: !2218)
!2225 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorImSaImEE4sizeEv", scope: !47, file: !36, line: 918, type: !461, scopeLine: 919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !460, retainedNodes: !2226)
!2226 = !{!2227}
!2227 = !DILocalVariable(name: "this", arg: 1, scope: !2225, type: !2142, flags: DIFlagArtificial | DIFlagObjectPointer)
!2228 = !DILocation(line: 0, scope: !2225)
!2229 = !DILocation(line: 919, column: 32, scope: !2225)
!2230 = !DILocation(line: 919, column: 26, scope: !2225)
!2231 = !DILocation(line: 919, column: 40, scope: !2225)
!2232 = !DILocation(line: 919, column: 58, scope: !2225)
!2233 = !DILocation(line: 919, column: 52, scope: !2225)
!2234 = !DILocation(line: 919, column: 66, scope: !2225)
!2235 = !DILocation(line: 919, column: 50, scope: !2225)
!2236 = !DILocation(line: 919, column: 9, scope: !2225)
!2237 = distinct !DISubprogram(name: "max<unsigned long>", linkageName: "_ZSt3maxImERKT_S2_S2_", scope: !7, file: !2238, line: 254, type: !2239, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !118, retainedNodes: !2241)
!2238 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/stl_algobase.h", directory: "")
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!106, !106, !106}
!2241 = !{!2242, !2243}
!2242 = !DILocalVariable(name: "__a", arg: 1, scope: !2237, file: !2238, line: 254, type: !106)
!2243 = !DILocalVariable(name: "__b", arg: 2, scope: !2237, file: !2238, line: 254, type: !106)
!2244 = !DILocation(line: 254, column: 20, scope: !2237)
!2245 = !DILocation(line: 254, column: 36, scope: !2237)
!2246 = !DILocation(line: 259, column: 11, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2237, file: !2238, line: 259, column: 11)
!2248 = !DILocation(line: 259, column: 17, scope: !2247)
!2249 = !DILocation(line: 259, column: 15, scope: !2247)
!2250 = !DILocation(line: 259, column: 11, scope: !2237)
!2251 = !DILocation(line: 260, column: 9, scope: !2247)
!2252 = !DILocation(line: 260, column: 2, scope: !2247)
!2253 = !DILocation(line: 261, column: 14, scope: !2237)
!2254 = !DILocation(line: 261, column: 7, scope: !2237)
!2255 = !DILocation(line: 262, column: 5, scope: !2237)
!2256 = distinct !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_", scope: !47, file: !36, line: 1776, type: !561, scopeLine: 1777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !560, retainedNodes: !2257)
!2257 = !{!2258, !2259, !2261}
!2258 = !DILocalVariable(name: "__a", arg: 1, scope: !2256, file: !36, line: 1776, type: !563)
!2259 = !DILocalVariable(name: "__diffmax", scope: !2256, file: !36, line: 1781, type: !2260)
!2260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!2261 = !DILocalVariable(name: "__allocmax", scope: !2256, file: !36, line: 1783, type: !2260)
!2262 = !DILocation(line: 1776, column: 41, scope: !2256)
!2263 = !DILocation(line: 1781, column: 2, scope: !2256)
!2264 = !DILocation(line: 1781, column: 15, scope: !2256)
!2265 = !DILocation(line: 1783, column: 2, scope: !2256)
!2266 = !DILocation(line: 1783, column: 15, scope: !2256)
!2267 = !DILocation(line: 1783, column: 52, scope: !2256)
!2268 = !DILocation(line: 1783, column: 28, scope: !2256)
!2269 = !DILocation(line: 1784, column: 9, scope: !2256)
!2270 = !DILocation(line: 1785, column: 7, scope: !2256)
!2271 = !DILocation(line: 1784, column: 2, scope: !2256)
!2272 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv", scope: !50, file: !36, line: 280, type: !221, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !220, retainedNodes: !2273)
!2273 = !{!2274}
!2274 = !DILocalVariable(name: "this", arg: 1, scope: !2272, type: !2275, flags: DIFlagArtificial | DIFlagObjectPointer)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!2276 = !DILocation(line: 0, scope: !2272)
!2277 = !DILocation(line: 281, column: 22, scope: !2272)
!2278 = !DILocation(line: 281, column: 16, scope: !2272)
!2279 = !DILocation(line: 281, column: 9, scope: !2272)
!2280 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaImEE8max_sizeERKS0_", scope: !64, file: !65, line: 543, type: !143, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !142, retainedNodes: !2281)
!2281 = !{!2282}
!2282 = !DILocalVariable(name: "__a", arg: 1, scope: !2280, file: !65, line: 543, type: !146)
!2283 = !DILocation(line: 543, column: 38, scope: !2280)
!2284 = !DILocation(line: 546, column: 9, scope: !2280)
!2285 = !DILocation(line: 546, column: 13, scope: !2280)
!2286 = !DILocation(line: 546, column: 2, scope: !2280)
!2287 = distinct !DISubprogram(name: "min<unsigned long>", linkageName: "_ZSt3minImERKT_S2_S2_", scope: !7, file: !2238, line: 230, type: !2239, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !118, retainedNodes: !2288)
!2288 = !{!2289, !2290}
!2289 = !DILocalVariable(name: "__a", arg: 1, scope: !2287, file: !2238, line: 230, type: !106)
!2290 = !DILocalVariable(name: "__b", arg: 2, scope: !2287, file: !2238, line: 230, type: !106)
!2291 = !DILocation(line: 230, column: 20, scope: !2287)
!2292 = !DILocation(line: 230, column: 36, scope: !2287)
!2293 = !DILocation(line: 235, column: 11, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2287, file: !2238, line: 235, column: 11)
!2295 = !DILocation(line: 235, column: 17, scope: !2294)
!2296 = !DILocation(line: 235, column: 15, scope: !2294)
!2297 = !DILocation(line: 235, column: 11, scope: !2287)
!2298 = !DILocation(line: 236, column: 9, scope: !2294)
!2299 = !DILocation(line: 236, column: 2, scope: !2294)
!2300 = !DILocation(line: 237, column: 14, scope: !2287)
!2301 = !DILocation(line: 237, column: 7, scope: !2287)
!2302 = !DILocation(line: 238, column: 5, scope: !2287)
!2303 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv", scope: !79, file: !80, line: 142, type: !115, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !114, retainedNodes: !2304)
!2304 = !{!2305}
!2305 = !DILocalVariable(name: "this", arg: 1, scope: !2303, type: !2306, flags: DIFlagArtificial | DIFlagObjectPointer)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!2307 = !DILocation(line: 0, scope: !2303)
!2308 = !DILocation(line: 143, column: 16, scope: !2303)
!2309 = !DILocation(line: 143, column: 9, scope: !2303)
!2310 = distinct !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv", scope: !79, file: !80, line: 185, type: !115, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !117, retainedNodes: !2311)
!2311 = !{!2312}
!2312 = !DILocalVariable(name: "this", arg: 1, scope: !2310, type: !2306, flags: DIFlagArtificial | DIFlagObjectPointer)
!2313 = !DILocation(line: 0, scope: !2310)
!2314 = !DILocation(line: 188, column: 2, scope: !2310)
!2315 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaImEE8allocateERS0_m", scope: !64, file: !65, line: 459, type: !68, scopeLine: 460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !67, retainedNodes: !2316)
!2316 = !{!2317, !2318}
!2317 = !DILocalVariable(name: "__a", arg: 1, scope: !2315, file: !65, line: 459, type: !71)
!2318 = !DILocalVariable(name: "__n", arg: 2, scope: !2315, file: !65, line: 459, type: !134)
!2319 = !DILocation(line: 459, column: 32, scope: !2315)
!2320 = !DILocation(line: 459, column: 47, scope: !2315)
!2321 = !DILocation(line: 460, column: 16, scope: !2315)
!2322 = !DILocation(line: 460, column: 29, scope: !2315)
!2323 = !DILocation(line: 460, column: 20, scope: !2315)
!2324 = !DILocation(line: 460, column: 9, scope: !2315)
!2325 = distinct !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv", scope: !79, file: !80, line: 103, type: !108, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !107, retainedNodes: !2326)
!2326 = !{!2327, !2328, !2329}
!2327 = !DILocalVariable(name: "this", arg: 1, scope: !2325, type: !1881, flags: DIFlagArtificial | DIFlagObjectPointer)
!2328 = !DILocalVariable(name: "__n", arg: 2, scope: !2325, file: !80, line: 103, type: !110)
!2329 = !DILocalVariable(arg: 3, scope: !2325, file: !80, line: 103, type: !39)
!2330 = !DILocation(line: 0, scope: !2325)
!2331 = !DILocation(line: 103, column: 26, scope: !2325)
!2332 = !DILocation(line: 103, column: 43, scope: !2325)
!2333 = !DILocation(line: 105, column: 6, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2325, file: !80, line: 105, column: 6)
!2335 = !DILocation(line: 105, column: 18, scope: !2334)
!2336 = !DILocation(line: 105, column: 10, scope: !2334)
!2337 = !DILocation(line: 105, column: 6, scope: !2325)
!2338 = !DILocation(line: 106, column: 4, scope: !2334)
!2339 = !DILocation(line: 115, column: 42, scope: !2325)
!2340 = !DILocation(line: 115, column: 46, scope: !2325)
!2341 = !DILocation(line: 115, column: 27, scope: !2325)
!2342 = !DILocation(line: 115, column: 9, scope: !2325)
!2343 = !DILocation(line: 115, column: 2, scope: !2325)
!2344 = distinct !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorImSaImEE14_S_do_relocateEPmS2_S2_RS0_St17integral_constantIbLb1EE", scope: !47, file: !36, line: 453, type: !302, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !301, retainedNodes: !2345)
!2345 = !{!2346, !2347, !2348, !2349, !2350}
!2346 = !DILocalVariable(name: "__first", arg: 1, scope: !2344, file: !36, line: 453, type: !304)
!2347 = !DILocalVariable(name: "__last", arg: 2, scope: !2344, file: !36, line: 453, type: !304)
!2348 = !DILocalVariable(name: "__result", arg: 3, scope: !2344, file: !36, line: 453, type: !304)
!2349 = !DILocalVariable(name: "__alloc", arg: 4, scope: !2344, file: !36, line: 454, type: !305)
!2350 = !DILocalVariable(arg: 5, scope: !2344, file: !36, line: 454, type: !268)
!2351 = !DILocation(line: 453, column: 30, scope: !2344)
!2352 = !DILocation(line: 453, column: 47, scope: !2344)
!2353 = !DILocation(line: 453, column: 63, scope: !2344)
!2354 = !DILocation(line: 454, column: 24, scope: !2344)
!2355 = !DILocation(line: 454, column: 42, scope: !2344)
!2356 = !DILocation(line: 456, column: 27, scope: !2344)
!2357 = !DILocation(line: 456, column: 36, scope: !2344)
!2358 = !DILocation(line: 456, column: 44, scope: !2344)
!2359 = !DILocation(line: 456, column: 54, scope: !2344)
!2360 = !DILocation(line: 456, column: 9, scope: !2344)
!2361 = !DILocation(line: 456, column: 2, scope: !2344)
!2362 = distinct !DISubprogram(name: "__relocate_a<unsigned long *, unsigned long *, std::allocator<unsigned long> >", linkageName: "_ZSt12__relocate_aIPmS0_SaImEET0_T_S3_S2_RT1_", scope: !7, file: !2363, line: 1022, type: !2364, scopeLine: 1027, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !2371, retainedNodes: !2366)
!2363 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/stl_uninitialized.h", directory: "")
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!41, !41, !41, !41, !132}
!2366 = !{!2367, !2368, !2369, !2370}
!2367 = !DILocalVariable(name: "__first", arg: 1, scope: !2362, file: !2363, line: 1022, type: !41)
!2368 = !DILocalVariable(name: "__last", arg: 2, scope: !2362, file: !2363, line: 1022, type: !41)
!2369 = !DILocalVariable(name: "__result", arg: 3, scope: !2362, file: !2363, line: 1023, type: !41)
!2370 = !DILocalVariable(name: "__alloc", arg: 4, scope: !2362, file: !2363, line: 1023, type: !132)
!2371 = !{!2372, !1892, !2373}
!2372 = !DITemplateTypeParameter(name: "_InputIterator", type: !41)
!2373 = !DITemplateTypeParameter(name: "_Allocator", type: !73)
!2374 = !DILocation(line: 1022, column: 33, scope: !2362)
!2375 = !DILocation(line: 1022, column: 57, scope: !2362)
!2376 = !DILocation(line: 1023, column: 21, scope: !2362)
!2377 = !DILocation(line: 1023, column: 43, scope: !2362)
!2378 = !DILocation(line: 1028, column: 47, scope: !2362)
!2379 = !DILocation(line: 1028, column: 29, scope: !2362)
!2380 = !DILocation(line: 1029, column: 26, scope: !2362)
!2381 = !DILocation(line: 1029, column: 8, scope: !2362)
!2382 = !DILocation(line: 1030, column: 26, scope: !2362)
!2383 = !DILocation(line: 1030, column: 8, scope: !2362)
!2384 = !DILocation(line: 1030, column: 37, scope: !2362)
!2385 = !DILocation(line: 1028, column: 14, scope: !2362)
!2386 = !DILocation(line: 1028, column: 7, scope: !2362)
!2387 = distinct !DISubprogram(name: "__relocate_a_1<unsigned long, unsigned long>", linkageName: "_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E", scope: !7, file: !2363, line: 988, type: !2388, scopeLine: 990, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !2401, retainedNodes: !2395)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!2390, !41, !41, !41, !132}
!2390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__enable_if_t<std::__is_bitwise_relocatable<unsigned long>::value, unsigned long *>", scope: !7, file: !269, line: 2192, baseType: !2391)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2392, file: !269, line: 2188, baseType: !41)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enable_if<true, unsigned long *>", scope: !7, file: !269, line: 2187, size: 8, flags: DIFlagTypePassByValue, elements: !25, templateParams: !2393, identifier: "_ZTSSt9enable_ifILb1EPmE")
!2393 = !{!1939, !2394}
!2394 = !DITemplateTypeParameter(name: "_Tp", type: !41)
!2395 = !{!2396, !2397, !2398, !2399, !2400}
!2396 = !DILocalVariable(name: "__first", arg: 1, scope: !2387, file: !2363, line: 988, type: !41)
!2397 = !DILocalVariable(name: "__last", arg: 2, scope: !2387, file: !2363, line: 988, type: !41)
!2398 = !DILocalVariable(name: "__result", arg: 3, scope: !2387, file: !2363, line: 989, type: !41)
!2399 = !DILocalVariable(arg: 4, scope: !2387, file: !2363, line: 989, type: !132)
!2400 = !DILocalVariable(name: "__count", scope: !2387, file: !2363, line: 991, type: !422)
!2401 = !{!119, !1997}
!2402 = !DILocation(line: 988, column: 25, scope: !2387)
!2403 = !DILocation(line: 988, column: 39, scope: !2387)
!2404 = !DILocation(line: 989, column: 11, scope: !2387)
!2405 = !DILocation(line: 989, column: 36, scope: !2387)
!2406 = !DILocation(line: 991, column: 7, scope: !2387)
!2407 = !DILocation(line: 991, column: 17, scope: !2387)
!2408 = !DILocation(line: 991, column: 27, scope: !2387)
!2409 = !DILocation(line: 991, column: 36, scope: !2387)
!2410 = !DILocation(line: 991, column: 34, scope: !2387)
!2411 = !DILocation(line: 992, column: 11, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2387, file: !2363, line: 992, column: 11)
!2413 = !DILocation(line: 992, column: 19, scope: !2412)
!2414 = !DILocation(line: 992, column: 11, scope: !2387)
!2415 = !DILocation(line: 993, column: 20, scope: !2412)
!2416 = !DILocation(line: 993, column: 2, scope: !2412)
!2417 = !DILocation(line: 993, column: 30, scope: !2412)
!2418 = !DILocation(line: 993, column: 39, scope: !2412)
!2419 = !DILocation(line: 993, column: 47, scope: !2412)
!2420 = !DILocation(line: 994, column: 14, scope: !2387)
!2421 = !DILocation(line: 994, column: 25, scope: !2387)
!2422 = !DILocation(line: 994, column: 23, scope: !2387)
!2423 = !DILocation(line: 995, column: 5, scope: !2387)
!2424 = !DILocation(line: 994, column: 7, scope: !2387)
!2425 = distinct !DISubprogram(name: "__niter_base<unsigned long *>", linkageName: "_ZSt12__niter_baseIPmET_S1_", scope: !7, file: !2238, line: 313, type: !2426, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !399, retainedNodes: !2428)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!41, !41}
!2428 = !{!2429}
!2429 = !DILocalVariable(name: "__it", arg: 1, scope: !2425, file: !2238, line: 313, type: !41)
!2430 = !DILocation(line: 313, column: 28, scope: !2425)
!2431 = !DILocation(line: 315, column: 14, scope: !2425)
!2432 = !DILocation(line: 315, column: 7, scope: !2425)
!2433 = distinct !DISubprogram(name: "__normal_iterator", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC2ERKS1_", scope: !379, file: !380, line: 953, type: !388, scopeLine: 954, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !387, retainedNodes: !2434)
!2434 = !{!2435, !2436}
!2435 = !DILocalVariable(name: "this", arg: 1, scope: !2433, type: !1711, flags: DIFlagArtificial | DIFlagObjectPointer)
!2436 = !DILocalVariable(name: "__i", arg: 2, scope: !2433, file: !380, line: 953, type: !390)
!2437 = !DILocation(line: 0, scope: !2433)
!2438 = !DILocation(line: 953, column: 42, scope: !2433)
!2439 = !DILocation(line: 954, column: 9, scope: !2433)
!2440 = !DILocation(line: 954, column: 20, scope: !2433)
!2441 = !DILocation(line: 954, column: 27, scope: !2433)
!2442 = distinct !DISubprogram(name: "setstate", linkageName: "_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate", scope: !2444, file: !2443, line: 157, type: !2446, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !2450, retainedNodes: !2451)
!2443 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/basic_ios.h", directory: "")
!2444 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ios<char, std::char_traits<char> >", scope: !7, file: !2445, line: 178, flags: DIFlagFwdDecl)
!2445 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/basic_ios.tcc", directory: "")
!2446 = !DISubroutineType(types: !2447)
!2447 = !{null, !2448, !2449}
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2449 = !DIDerivedType(tag: DW_TAG_typedef, name: "iostate", scope: !589, file: !6, line: 398, baseType: !5)
!2450 = !DISubprogram(name: "setstate", linkageName: "_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate", scope: !2444, file: !2443, line: 157, type: !2446, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2451 = !{!2452, !2454}
!2452 = !DILocalVariable(name: "this", arg: 1, scope: !2442, type: !2453, flags: DIFlagArtificial | DIFlagObjectPointer)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2454 = !DILocalVariable(name: "__state", arg: 2, scope: !2442, file: !2443, line: 157, type: !2449)
!2455 = !DILocation(line: 0, scope: !2442)
!2456 = !{!2457, !2457, i64 0}
!2457 = !{!"_ZTSSt12_Ios_Iostate", !1564, i64 0}
!2458 = !DILocation(line: 157, column: 24, scope: !2442)
!2459 = !DILocation(line: 158, column: 27, scope: !2442)
!2460 = !DILocation(line: 158, column: 39, scope: !2442)
!2461 = !DILocation(line: 158, column: 37, scope: !2442)
!2462 = !DILocation(line: 158, column: 15, scope: !2442)
!2463 = !DILocation(line: 158, column: 49, scope: !2442)
!2464 = distinct !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !1728, file: !1729, line: 351, type: !1747, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1746, retainedNodes: !2465)
!2465 = !{!2466}
!2466 = !DILocalVariable(name: "__s", arg: 1, scope: !2464, file: !1729, line: 351, type: !1745)
!2467 = !DILocation(line: 351, column: 31, scope: !2464)
!2468 = !DILocation(line: 357, column: 26, scope: !2464)
!2469 = !DILocation(line: 357, column: 9, scope: !2464)
!2470 = !DILocation(line: 357, column: 2, scope: !2464)
!2471 = distinct !DISubprogram(name: "operator|", linkageName: "_ZStorSt12_Ios_IostateS_", scope: !7, file: !6, line: 169, type: !2472, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2474)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!5, !5, !5}
!2474 = !{!2475, !2476}
!2475 = !DILocalVariable(name: "__a", arg: 1, scope: !2471, file: !6, line: 169, type: !5)
!2476 = !DILocalVariable(name: "__b", arg: 2, scope: !2471, file: !6, line: 169, type: !5)
!2477 = !DILocation(line: 169, column: 26, scope: !2471)
!2478 = !DILocation(line: 169, column: 44, scope: !2471)
!2479 = !DILocation(line: 170, column: 42, scope: !2471)
!2480 = !DILocation(line: 170, column: 66, scope: !2471)
!2481 = !DILocation(line: 170, column: 47, scope: !2471)
!2482 = !DILocation(line: 170, column: 5, scope: !2471)
!2483 = distinct !DISubprogram(name: "rdstate", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv", scope: !2444, file: !2443, line: 137, type: !2484, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !2488, retainedNodes: !2489)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!2449, !2486}
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2444)
!2488 = !DISubprogram(name: "rdstate", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv", scope: !2444, file: !2443, line: 137, type: !2484, scopeLine: 137, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2489 = !{!2490}
!2490 = !DILocalVariable(name: "this", arg: 1, scope: !2483, type: !2491, flags: DIFlagArtificial | DIFlagObjectPointer)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2492 = !DILocation(line: 0, scope: !2483)
!2493 = !DILocation(line: 138, column: 16, scope: !2483)
!2494 = !{!2495, !2457, i64 32}
!2495 = !{!"_ZTSSt8ios_base", !1563, i64 8, !1563, i64 16, !2496, i64 24, !2457, i64 28, !2457, i64 32, !1585, i64 40, !2497, i64 48, !1564, i64 64, !1600, i64 192, !1585, i64 200, !2498, i64 208}
!2496 = !{!"_ZTSSt13_Ios_Fmtflags", !1564, i64 0}
!2497 = !{!"_ZTSNSt8ios_base6_WordsE", !1585, i64 0, !1563, i64 8}
!2498 = !{!"_ZTSSt6locale", !1585, i64 0}
!2499 = !DILocation(line: 138, column: 9, scope: !2483)
!2500 = distinct !DISubprogram(name: "flush<char, std::char_traits<char> >", linkageName: "_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_", scope: !7, file: !1717, line: 703, type: !1815, scopeLine: 704, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1819, retainedNodes: !2501)
!2501 = !{!2502}
!2502 = !DILocalVariable(name: "__os", arg: 1, scope: !2500, file: !1717, line: 703, type: !1720)
!2503 = !DILocation(line: 703, column: 43, scope: !2500)
!2504 = !DILocation(line: 704, column: 14, scope: !2500)
!2505 = !DILocation(line: 704, column: 19, scope: !2500)
!2506 = !DILocation(line: 704, column: 7, scope: !2500)
!2507 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc", scope: !2444, file: !2443, line: 449, type: !2508, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !2511, retainedNodes: !2512)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!2510, !2486, !556}
!2510 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !2444, file: !2443, line: 76, baseType: !556)
!2511 = !DISubprogram(name: "widen", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc", scope: !2444, file: !2443, line: 449, type: !2508, scopeLine: 449, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2512 = !{!2513, !2514}
!2513 = !DILocalVariable(name: "this", arg: 1, scope: !2507, type: !2491, flags: DIFlagArtificial | DIFlagObjectPointer)
!2514 = !DILocalVariable(name: "__c", arg: 2, scope: !2507, file: !2443, line: 449, type: !556)
!2515 = !DILocation(line: 0, scope: !2507)
!2516 = !{!1564, !1564, i64 0}
!2517 = !DILocation(line: 449, column: 18, scope: !2507)
!2518 = !DILocation(line: 450, column: 30, scope: !2507)
!2519 = !{!2520, !1585, i64 240}
!2520 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !1585, i64 216, !1564, i64 224, !2521, i64 225, !1585, i64 232, !1585, i64 240, !1585, i64 248, !1585, i64 256}
!2521 = !{!"bool", !1564, i64 0}
!2522 = !DILocation(line: 450, column: 16, scope: !2507)
!2523 = !DILocation(line: 450, column: 46, scope: !2507)
!2524 = !DILocation(line: 450, column: 40, scope: !2507)
!2525 = !DILocation(line: 450, column: 9, scope: !2507)
!2526 = distinct !DISubprogram(name: "__check_facet<std::ctype<char> >", linkageName: "_ZSt13__check_facetISt5ctypeIcEERKT_PS3_", scope: !7, file: !2443, line: 47, type: !2527, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !2536, retainedNodes: !2534)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!2529, !2533}
!2529 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2530, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2531)
!2531 = !DICompositeType(tag: DW_TAG_class_type, name: "ctype<char>", scope: !7, file: !2532, line: 681, flags: DIFlagFwdDecl, identifier: "_ZTSSt5ctypeIcE")
!2532 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/locale_facets.h", directory: "")
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2534 = !{!2535}
!2535 = !DILocalVariable(name: "__f", arg: 1, scope: !2526, file: !2443, line: 47, type: !2533)
!2536 = !{!2537}
!2537 = !DITemplateTypeParameter(name: "_Facet", type: !2531)
!2538 = !DILocation(line: 47, column: 33, scope: !2526)
!2539 = !DILocation(line: 49, column: 12, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2526, file: !2443, line: 49, column: 11)
!2541 = !DILocation(line: 49, column: 11, scope: !2526)
!2542 = !DILocation(line: 50, column: 2, scope: !2540)
!2543 = !DILocation(line: 51, column: 15, scope: !2526)
!2544 = !DILocation(line: 51, column: 7, scope: !2526)
!2545 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt5ctypeIcE5widenEc", scope: !2531, file: !2532, line: 872, type: !2546, scopeLine: 873, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !2550, retainedNodes: !2551)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!2548, !2549, !556}
!2548 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !2531, file: !2532, line: 686, baseType: !556)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2550 = !DISubprogram(name: "widen", linkageName: "_ZNKSt5ctypeIcE5widenEc", scope: !2531, file: !2532, line: 872, type: !2546, scopeLine: 872, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2551 = !{!2552, !2553}
!2552 = !DILocalVariable(name: "this", arg: 1, scope: !2545, type: !2533, flags: DIFlagArtificial | DIFlagObjectPointer)
!2553 = !DILocalVariable(name: "__c", arg: 2, scope: !2545, file: !2532, line: 872, type: !556)
!2554 = !DILocation(line: 0, scope: !2545)
!2555 = !DILocation(line: 872, column: 18, scope: !2545)
!2556 = !DILocation(line: 874, column: 6, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2545, file: !2532, line: 874, column: 6)
!2558 = !{!2559, !1564, i64 56}
!2559 = !{!"_ZTSSt5ctypeIcE", !1585, i64 16, !2521, i64 24, !1585, i64 32, !1585, i64 40, !1585, i64 48, !1564, i64 56, !1564, i64 57, !1564, i64 313, !1564, i64 569}
!2560 = !DILocation(line: 874, column: 6, scope: !2545)
!2561 = !DILocation(line: 875, column: 11, scope: !2557)
!2562 = !DILocation(line: 875, column: 47, scope: !2557)
!2563 = !DILocation(line: 875, column: 4, scope: !2557)
!2564 = !DILocation(line: 876, column: 8, scope: !2545)
!2565 = !DILocation(line: 877, column: 24, scope: !2545)
!2566 = !DILocation(line: 877, column: 15, scope: !2545)
!2567 = !DILocation(line: 877, column: 2, scope: !2545)
!2568 = !DILocation(line: 878, column: 7, scope: !2545)
!2569 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_pthread_vector_yes.cpp", scope: !3, file: !3, type: !2570, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !25)
!2570 = !DISubroutineType(types: !25)
!2571 = !DILocation(line: 0, scope: !2569)
