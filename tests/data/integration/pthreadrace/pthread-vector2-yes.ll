; ModuleID = 'integration/pthreadrace/pthread-vector2-yes.cpp'
source_filename = "integration/pthreadrace/pthread-vector2-yes.cpp"
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
@count = dso_local global i32 0, align 4, !dbg !614
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_pthread_vector2_yes.cpp, i8* null }]

; Function Attrs: norecurse uwtable
define dso_local i32 @main() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1544 {
entry:
  %retval = alloca i32, align 4
  %ths = alloca %"class.std::vector", align 8
  %i = alloca i32, align 4
  %th = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %__range1 = alloca %"class.std::vector"*, align 8
  %__begin1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__end1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %th9 = alloca i64*, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast %"class.std::vector"* %ths to i8*, !dbg !1560
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %0) #9, !dbg !1560
  call void @llvm.dbg.declare(metadata %"class.std::vector"* %ths, metadata !1546, metadata !DIExpression()), !dbg !1561
  call void @_ZNSt6vectorImSaImEEC2Ev(%"class.std::vector"* %ths) #9, !dbg !1561
  %1 = bitcast i32* %i to i8*, !dbg !1562
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #9, !dbg !1562
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1547, metadata !DIExpression()), !dbg !1563
  store i32 1, i32* %i, align 4, !dbg !1563, !tbaa !1564
  br label %for.cond, !dbg !1562

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !1568, !tbaa !1564
  %cmp = icmp sle i32 %2, 20, !dbg !1569
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1570

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*, !dbg !1571
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #9, !dbg !1571
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast i64* %th to i8*, !dbg !1572
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #9, !dbg !1572
  call void @llvm.dbg.declare(metadata i64* %th, metadata !1549, metadata !DIExpression()), !dbg !1573
  invoke void @_ZL14increase_countv()
          to label %invoke.cont unwind label %lpad, !dbg !1574

invoke.cont:                                      ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !1575, !tbaa !1564
  %conv = sext i32 %5 to i64, !dbg !1575
  invoke void @_ZL16my_create_threadPml(i64* %th, i64 %conv)
          to label %invoke.cont1 unwind label %lpad, !dbg !1576

invoke.cont1:                                     ; preds = %invoke.cont
  invoke void @_ZNSt6vectorImSaImEE9push_backERKm(%"class.std::vector"* %ths, i64* dereferenceable(8) %th)
          to label %invoke.cont2 unwind label %lpad, !dbg !1577

invoke.cont2:                                     ; preds = %invoke.cont1
  %6 = bitcast i64* %th to i8*, !dbg !1578
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #9, !dbg !1578
  br label %for.inc, !dbg !1579

for.inc:                                          ; preds = %invoke.cont2
  %7 = load i32, i32* %i, align 4, !dbg !1580, !tbaa !1564
  %inc = add nsw i32 %7, 1, !dbg !1580
  store i32 %inc, i32* %i, align 4, !dbg !1580, !tbaa !1564
  br label %for.cond, !dbg !1571, !llvm.loop !1581

lpad:                                             ; preds = %invoke.cont1, %invoke.cont, %for.body
  %8 = landingpad { i8*, i32 }
          cleanup, !dbg !1583
  %9 = extractvalue { i8*, i32 } %8, 0, !dbg !1583
  store i8* %9, i8** %exn.slot, align 8, !dbg !1583
  %10 = extractvalue { i8*, i32 } %8, 1, !dbg !1583
  store i32 %10, i32* %ehselector.slot, align 4, !dbg !1583
  %11 = bitcast i64* %th to i8*, !dbg !1578
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #9, !dbg !1578
  %12 = bitcast i32* %i to i8*, !dbg !1571
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #9, !dbg !1571
  br label %ehcleanup, !dbg !1571

for.end:                                          ; preds = %for.cond.cleanup
  %13 = bitcast %"class.std::vector"** %__range1 to i8*, !dbg !1584
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #9, !dbg !1584
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %__range1, metadata !1554, metadata !DIExpression()), !dbg !1585
  store %"class.std::vector"* %ths, %"class.std::vector"** %__range1, align 8, !dbg !1584, !tbaa !1586
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__begin1 to i8*, !dbg !1588
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #9, !dbg !1588
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__begin1, metadata !1556, metadata !DIExpression()), !dbg !1585
  %15 = load %"class.std::vector"*, %"class.std::vector"** %__range1, align 8, !dbg !1588, !tbaa !1586
  %call = call i64* @_ZNSt6vectorImSaImEE5beginEv(%"class.std::vector"* %15) #9, !dbg !1588
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__begin1, i32 0, i32 0, !dbg !1588
  store i64* %call, i64** %coerce.dive, align 8, !dbg !1588
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__end1 to i8*, !dbg !1588
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16) #9, !dbg !1588
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__end1, metadata !1557, metadata !DIExpression()), !dbg !1585
  %17 = load %"class.std::vector"*, %"class.std::vector"** %__range1, align 8, !dbg !1588, !tbaa !1586
  %call3 = call i64* @_ZNSt6vectorImSaImEE3endEv(%"class.std::vector"* %17) #9, !dbg !1588
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__end1, i32 0, i32 0, !dbg !1588
  store i64* %call3, i64** %coerce.dive4, align 8, !dbg !1588
  br label %for.cond5, !dbg !1588

for.cond5:                                        ; preds = %for.inc14, %for.end
  %call6 = call zeroext i1 @_ZN9__gnu_cxxneIPmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__begin1, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__end1) #9, !dbg !1588
  br i1 %call6, label %for.body8, label %for.cond.cleanup7, !dbg !1588

for.cond.cleanup7:                                ; preds = %for.cond5
  %18 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__end1 to i8*, !dbg !1588
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %18) #9, !dbg !1588
  %19 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__begin1 to i8*, !dbg !1588
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %19) #9, !dbg !1588
  %20 = bitcast %"class.std::vector"** %__range1 to i8*, !dbg !1588
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #9, !dbg !1588
  br label %for.end16

for.body8:                                        ; preds = %for.cond5
  %21 = bitcast i64** %th9 to i8*, !dbg !1589
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %21) #9, !dbg !1589
  call void @llvm.dbg.declare(metadata i64** %th9, metadata !1558, metadata !DIExpression()), !dbg !1590
  %call10 = call dereferenceable(8) i64* @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__begin1) #9, !dbg !1591
  store i64* %call10, i64** %th9, align 8, !dbg !1590, !tbaa !1586
  %22 = load i64*, i64** %th9, align 8, !dbg !1592, !tbaa !1586
  %23 = load i64, i64* %22, align 8, !dbg !1592, !tbaa !1594
  %call13 = invoke i32 @pthread_join(i64 %23, i8** null)
          to label %invoke.cont12 unwind label %lpad11, !dbg !1596

invoke.cont12:                                    ; preds = %for.body8
  %24 = bitcast i64** %th9 to i8*, !dbg !1597
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %24) #9, !dbg !1597
  br label %for.inc14, !dbg !1598

for.inc14:                                        ; preds = %invoke.cont12
  %call15 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__begin1) #9, !dbg !1588
  br label %for.cond5, !dbg !1588, !llvm.loop !1599

lpad11:                                           ; preds = %for.body8
  %25 = landingpad { i8*, i32 }
          cleanup, !dbg !1600
  %26 = extractvalue { i8*, i32 } %25, 0, !dbg !1600
  store i8* %26, i8** %exn.slot, align 8, !dbg !1600
  %27 = extractvalue { i8*, i32 } %25, 1, !dbg !1600
  store i32 %27, i32* %ehselector.slot, align 4, !dbg !1600
  %28 = bitcast i64** %th9 to i8*, !dbg !1597
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %28) #9, !dbg !1597
  %29 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__end1 to i8*, !dbg !1588
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %29) #9, !dbg !1588
  %30 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__begin1 to i8*, !dbg !1588
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %30) #9, !dbg !1588
  %31 = bitcast %"class.std::vector"** %__range1 to i8*, !dbg !1588
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %31) #9, !dbg !1588
  br label %ehcleanup, !dbg !1588

for.end16:                                        ; preds = %for.cond.cleanup7
  %call19 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
          to label %invoke.cont18 unwind label %lpad17, !dbg !1601

invoke.cont18:                                    ; preds = %for.end16
  %32 = load i32, i32* @accum, align 4, !dbg !1602, !tbaa !1564
  %call21 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call19, i32 %32)
          to label %invoke.cont20 unwind label %lpad17, !dbg !1603

invoke.cont20:                                    ; preds = %invoke.cont18
  %call23 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call21, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %invoke.cont22 unwind label %lpad17, !dbg !1604

invoke.cont22:                                    ; preds = %invoke.cont20
  store i32 0, i32* %retval, align 4, !dbg !1605
  call void @_ZNSt6vectorImSaImEED2Ev(%"class.std::vector"* %ths) #9, !dbg !1606
  %33 = bitcast %"class.std::vector"* %ths to i8*, !dbg !1606
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %33) #9, !dbg !1606
  %34 = load i32, i32* %retval, align 4, !dbg !1606
  ret i32 %34, !dbg !1606

lpad17:                                           ; preds = %invoke.cont20, %invoke.cont18, %for.end16
  %35 = landingpad { i8*, i32 }
          cleanup, !dbg !1606
  %36 = extractvalue { i8*, i32 } %35, 0, !dbg !1606
  store i8* %36, i8** %exn.slot, align 8, !dbg !1606
  %37 = extractvalue { i8*, i32 } %35, 1, !dbg !1606
  store i32 %37, i32* %ehselector.slot, align 4, !dbg !1606
  br label %ehcleanup, !dbg !1606

ehcleanup:                                        ; preds = %lpad17, %lpad11, %lpad
  call void @_ZNSt6vectorImSaImEED2Ev(%"class.std::vector"* %ths) #9, !dbg !1606
  %38 = bitcast %"class.std::vector"* %ths to i8*, !dbg !1606
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %38) #9, !dbg !1606
  br label %eh.resume, !dbg !1606

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1606
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1606
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !1606
  %lpad.val25 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1606
  resume { i8*, i32 } %lpad.val25, !dbg !1606
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorImSaImEEC2Ev(%"class.std::vector"* %this) unnamed_addr #3 comdat align 2 !dbg !1607 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !1609, metadata !DIExpression()), !dbg !1611
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !1612
  call void @_ZNSt12_Vector_baseImSaImEEC2Ev(%"struct.std::_Vector_base"* %0) #9, !dbg !1613
  ret void, !dbg !1612
}

; Function Attrs: nounwind uwtable
define internal void @_ZL14increase_countv() #3 !dbg !1614 {
entry:
  %0 = load i32, i32* @count, align 4, !dbg !1615, !tbaa !1564
  %inc = add nsw i32 %0, 1, !dbg !1615
  store i32 %inc, i32* @count, align 4, !dbg !1615, !tbaa !1564
  ret void, !dbg !1616
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind uwtable
define internal void @_ZL16my_create_threadPml(i64* %th, i64 %x) #3 !dbg !1617 {
entry:
  %th.addr = alloca i64*, align 8
  %x.addr = alloca i64, align 8
  store i64* %th, i64** %th.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %th.addr, metadata !1622, metadata !DIExpression()), !dbg !1624
  store i64 %x, i64* %x.addr, align 8, !tbaa !1594
  call void @llvm.dbg.declare(metadata i64* %x.addr, metadata !1623, metadata !DIExpression()), !dbg !1625
  %0 = load i64*, i64** %th.addr, align 8, !dbg !1626, !tbaa !1586
  %1 = load i64, i64* %x.addr, align 8, !dbg !1627, !tbaa !1594
  %2 = inttoptr i64 %1 to i8*, !dbg !1628
  %call = call i32 @pthread_create(i64* %0, %union.pthread_attr_t* null, i8* (i8*)* @_ZL6squarePv, i8* %2) #9, !dbg !1629
  ret void, !dbg !1630
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt6vectorImSaImEE9push_backERKm(%"class.std::vector"* %this, i64* dereferenceable(8) %__x) #4 comdat align 2 !dbg !1631 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__x.addr = alloca i64*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !1633, metadata !DIExpression()), !dbg !1635
  store i64* %__x, i64** %__x.addr, align 8, !tbaa !1586
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
  %11 = load i64*, i64** %__x.addr, align 8, !dbg !1655, !tbaa !1586
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
  %15 = load i64*, i64** %__x.addr, align 8, !dbg !1663, !tbaa !1586
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0, !dbg !1664
  %16 = load i64*, i64** %coerce.dive8, align 8, !dbg !1664
  call void @_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_(%"class.std::vector"* %this1, i64* %16, i64* dereferenceable(8) %15), !dbg !1664
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1665
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64* @_ZNSt6vectorImSaImEE5beginEv(%"class.std::vector"* %this) #3 comdat align 2 !dbg !1666 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !1586
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
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !1586
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
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxxneIPmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #5 comdat !dbg !1684 {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, metadata !1689, metadata !DIExpression()), !dbg !1691
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, metadata !1690, metadata !DIExpression()), !dbg !1692
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8, !dbg !1693, !tbaa !1586
  %call = call dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0) #9, !dbg !1694
  %1 = load i64*, i64** %call, align 8, !dbg !1694, !tbaa !1586
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8, !dbg !1695, !tbaa !1586
  %call1 = call dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2) #9, !dbg !1696
  %3 = load i64*, i64** %call1, align 8, !dbg !1696, !tbaa !1586
  %cmp = icmp ne i64* %1, %3, !dbg !1697
  ret i1 %cmp, !dbg !1698
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) i64* @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %this) #3 comdat align 2 !dbg !1699 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %this.addr, metadata !1701, metadata !DIExpression()), !dbg !1703
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0, !dbg !1704
  %0 = load i64*, i64** %_M_current, align 8, !dbg !1704, !tbaa !1705
  ret i64* %0, !dbg !1707
}

declare !dbg !18 dso_local i32 @pthread_join(i64, i8**) #6

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEppEv(%"class.__gnu_cxx::__normal_iterator"* %this) #3 comdat align 2 !dbg !1708 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %this.addr, metadata !1710, metadata !DIExpression()), !dbg !1712
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0, !dbg !1713
  %0 = load i64*, i64** %_M_current, align 8, !dbg !1714, !tbaa !1705
  %incdec.ptr = getelementptr inbounds i64, i64* %0, i32 1, !dbg !1714
  store i64* %incdec.ptr, i64** %_M_current, align 8, !dbg !1714, !tbaa !1705
  ret %"class.__gnu_cxx::__normal_iterator"* %this1, !dbg !1715
}

; Function Attrs: inlinehint uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %__out, i8* %__s) #7 !dbg !1716 {
entry:
  %__out.addr = alloca %"class.std::basic_ostream"*, align 8
  %__s.addr = alloca i8*, align 8
  store %"class.std::basic_ostream"* %__out, %"class.std::basic_ostream"** %__out.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %__out.addr, metadata !1724, metadata !DIExpression()), !dbg !1780
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !1725, metadata !DIExpression()), !dbg !1781
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !1782, !tbaa !1586
  %tobool = icmp ne i8* %0, null, !dbg !1782
  br i1 %tobool, label %if.else, label %if.then, !dbg !1784

if.then:                                          ; preds = %entry
  %1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__out.addr, align 8, !dbg !1785, !tbaa !1586
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
  %6 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__out.addr, align 8, !dbg !1789, !tbaa !1586
  %7 = load i8*, i8** %__s.addr, align 8, !dbg !1790, !tbaa !1586
  %8 = load i8*, i8** %__s.addr, align 8, !dbg !1791, !tbaa !1586
  %call = call i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %8), !dbg !1792
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272) %6, i8* %7, i64 %call), !dbg !1793
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__out.addr, align 8, !dbg !1794, !tbaa !1586
  ret %"class.std::basic_ostream"* %9, !dbg !1795
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #6

; Function Attrs: uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %this, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* %__pf) #4 align 2 !dbg !1796 {
entry:
  %this.addr = alloca %"class.std::basic_ostream"*, align 8
  %__pf.addr = alloca %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*, align 8
  store %"class.std::basic_ostream"* %this, %"class.std::basic_ostream"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %this.addr, metadata !1807, metadata !DIExpression()), !dbg !1810
  store %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* %__pf, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)** %__pf.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)** %__pf.addr, metadata !1809, metadata !DIExpression()), !dbg !1811
  %this1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %this.addr, align 8
  %0 = load %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)** %__pf.addr, align 8, !dbg !1812, !tbaa !1586
  %call = call dereferenceable(272) %"class.std::basic_ostream"* %0(%"class.std::basic_ostream"* dereferenceable(272) %this1), !dbg !1812
  ret %"class.std::basic_ostream"* %call, !dbg !1813
}

; Function Attrs: inlinehint uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272) %__os) #7 !dbg !1814 {
entry:
  %__os.addr = alloca %"class.std::basic_ostream"*, align 8
  store %"class.std::basic_ostream"* %__os, %"class.std::basic_ostream"** %__os.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %__os.addr, metadata !1818, metadata !DIExpression()), !dbg !1820
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__os.addr, align 8, !dbg !1821, !tbaa !1586
  %1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__os.addr, align 8, !dbg !1822, !tbaa !1586
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
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !1586
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
define internal void @__cxx_global_var_init() #4 section ".text.startup" !dbg !1843 {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !dbg !1844
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #9, !dbg !1844
  ret void, !dbg !1844
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #6

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #8

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #9

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseImSaImEEC2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #3 comdat align 2 !dbg !1845 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8, !tbaa !1586
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
  store %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this, %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"** %this.addr, align 8, !tbaa !1586
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
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8, !tbaa !1586
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
  store %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %this, %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"** %this.addr, align 8, !tbaa !1586
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
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %this.addr, metadata !1880, metadata !DIExpression()), !dbg !1882
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void, !dbg !1883
}

; Function Attrs: nounwind
declare !callback !1884 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #8

; Function Attrs: nounwind uwtable
define internal i8* @_ZL6squarePv(i8* %x) #3 !dbg !1886 {
entry:
  %x.addr = alloca i8*, align 8
  %k = alloca i64, align 8
  store i8* %x, i8** %x.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i8** %x.addr, metadata !1890, metadata !DIExpression()), !dbg !1892
  %0 = bitcast i64* %k to i8*, !dbg !1893
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #9, !dbg !1893
  call void @llvm.dbg.declare(metadata i64* %k, metadata !1891, metadata !DIExpression()), !dbg !1894
  %1 = load i8*, i8** %x.addr, align 8, !dbg !1895, !tbaa !1586
  %2 = ptrtoint i8* %1 to i64, !dbg !1896
  store i64 %2, i64* %k, align 8, !dbg !1894, !tbaa !1594
  %3 = load i64, i64* %k, align 8, !dbg !1897, !tbaa !1594
  %4 = load i64, i64* %k, align 8, !dbg !1898, !tbaa !1594
  %mul = mul nsw i64 %3, %4, !dbg !1899
  %5 = load i32, i32* @accum, align 4, !dbg !1900, !tbaa !1564
  %conv = sext i32 %5 to i64, !dbg !1900
  %add = add nsw i64 %conv, %mul, !dbg !1900
  %conv1 = trunc i64 %add to i32, !dbg !1900
  store i32 %conv1, i32* @accum, align 4, !dbg !1900, !tbaa !1564
  %6 = bitcast i64* %k to i8*, !dbg !1901
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #9, !dbg !1901
  ret i8* null, !dbg !1902
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E(i64* %__first, i64* %__last, %"class.std::allocator"* dereferenceable(1) %0) #7 comdat !dbg !1903 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store i64* %__first, i64** %__first.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !1907, metadata !DIExpression()), !dbg !1912
  store i64* %__last, i64** %__last.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !1908, metadata !DIExpression()), !dbg !1913
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %.addr, metadata !1909, metadata !DIExpression()), !dbg !1914
  %1 = load i64*, i64** %__first.addr, align 8, !dbg !1915, !tbaa !1586
  %2 = load i64*, i64** %__last.addr, align 8, !dbg !1916, !tbaa !1586
  call void @_ZSt8_DestroyIPmEvT_S1_(i64* %1, i64* %2), !dbg !1917
  ret void, !dbg !1918
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #3 comdat align 2 !dbg !1919 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !1921, metadata !DIExpression()), !dbg !1922
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !1923
  %0 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*, !dbg !1924
  ret %"class.std::allocator"* %0, !dbg !1925
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseImSaImEED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1926 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !1928, metadata !DIExpression()), !dbg !1929
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !1930
  %0 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !1930
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %0, i32 0, i32 0, !dbg !1932
  %1 = load i64*, i64** %_M_start, align 8, !dbg !1932, !tbaa !1835
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !1933
  %2 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !1933
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %2, i32 0, i32 2, !dbg !1934
  %3 = load i64*, i64** %_M_end_of_storage, align 8, !dbg !1934, !tbaa !1646
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !1935
  %4 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl3 to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !1935
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %4, i32 0, i32 0, !dbg !1936
  %5 = load i64*, i64** %_M_start4, align 8, !dbg !1936, !tbaa !1835
  %sub.ptr.lhs.cast = ptrtoint i64* %3 to i64, !dbg !1937
  %sub.ptr.rhs.cast = ptrtoint i64* %5 to i64, !dbg !1937
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1937
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !1937
  invoke void @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%"struct.std::_Vector_base"* %this1, i64* %1, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad, !dbg !1938

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !1939
  call void bitcast (void (%"class.__gnu_cxx::new_allocator"*)* @_ZN9__gnu_cxx13new_allocatorImED2Ev to void (%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"*)*)(%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl5) #9, !dbg !1939
  ret void, !dbg !1940

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null, !dbg !1939
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !1939
  store i8* %7, i8** %exn.slot, align 8, !dbg !1939
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !1939
  store i32 %8, i32* %ehselector.slot, align 4, !dbg !1939
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !1939
  call void bitcast (void (%"class.__gnu_cxx::new_allocator"*)* @_ZN9__gnu_cxx13new_allocatorImED2Ev to void (%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"*)*)(%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl6) #9, !dbg !1939
  br label %terminate.handler, !dbg !1939

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1939
  call void @__clang_call_terminate(i8* %exn) #14, !dbg !1939
  unreachable, !dbg !1939
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
define linkonce_odr dso_local void @_ZSt8_DestroyIPmEvT_S1_(i64* %__first, i64* %__last) #7 comdat !dbg !1941 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !1946, metadata !DIExpression()), !dbg !1949
  store i64* %__last, i64** %__last.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !1947, metadata !DIExpression()), !dbg !1950
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !1951, !tbaa !1586
  %1 = load i64*, i64** %__last.addr, align 8, !dbg !1952, !tbaa !1586
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_(i64* %0, i64* %1), !dbg !1953
  ret void, !dbg !1954
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_(i64* %0, i64* %1) #3 comdat align 2 !dbg !1955 {
entry:
  %.addr = alloca i64*, align 8
  %.addr1 = alloca i64*, align 8
  store i64* %0, i64** %.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %.addr, metadata !1961, metadata !DIExpression()), !dbg !1963
  store i64* %1, i64** %.addr1, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %.addr1, metadata !1962, metadata !DIExpression()), !dbg !1964
  ret void, !dbg !1965
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%"struct.std::_Vector_base"* %this, i64* %__p, i64 %__n) #4 comdat align 2 !dbg !1966 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__p.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !1968, metadata !DIExpression()), !dbg !1971
  store i64* %__p, i64** %__p.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__p.addr, metadata !1969, metadata !DIExpression()), !dbg !1972
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !1594
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !1970, metadata !DIExpression()), !dbg !1973
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64*, i64** %__p.addr, align 8, !dbg !1974, !tbaa !1586
  %tobool = icmp ne i64* %0, null, !dbg !1974
  br i1 %tobool, label %if.then, label %if.end, !dbg !1976

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !1977
  %1 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*, !dbg !1977
  %2 = load i64*, i64** %__p.addr, align 8, !dbg !1978, !tbaa !1586
  %3 = load i64, i64* %__n.addr, align 8, !dbg !1979, !tbaa !1594
  call void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(%"class.std::allocator"* dereferenceable(1) %1, i64* %2, i64 %3), !dbg !1980
  br label %if.end, !dbg !1980

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1981
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorImED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #3 comdat align 2 !dbg !1982 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %this.addr, metadata !1984, metadata !DIExpression()), !dbg !1985
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void, !dbg !1986
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(%"class.std::allocator"* dereferenceable(1) %__a, i64* %__p, i64 %__n) #4 comdat align 2 !dbg !1987 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__a.addr, metadata !1989, metadata !DIExpression()), !dbg !1992
  store i64* %__p, i64** %__p.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__p.addr, metadata !1990, metadata !DIExpression()), !dbg !1993
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !1594
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !1991, metadata !DIExpression()), !dbg !1994
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !dbg !1995, !tbaa !1586
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*, !dbg !1995
  %2 = load i64*, i64** %__p.addr, align 8, !dbg !1996, !tbaa !1586
  %3 = load i64, i64* %__n.addr, align 8, !dbg !1997, !tbaa !1594
  call void @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%"class.__gnu_cxx::new_allocator"* %1, i64* %2, i64 %3), !dbg !1998
  ret void, !dbg !1999
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%"class.__gnu_cxx::new_allocator"* %this, i64* %__p, i64 %__t) #3 comdat align 2 !dbg !2000 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca i64*, align 8
  %__t.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %this.addr, metadata !2002, metadata !DIExpression()), !dbg !2005
  store i64* %__p, i64** %__p.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__p.addr, metadata !2003, metadata !DIExpression()), !dbg !2006
  store i64 %__t, i64* %__t.addr, align 8, !tbaa !1594
  call void @llvm.dbg.declare(metadata i64* %__t.addr, metadata !2004, metadata !DIExpression()), !dbg !2007
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %0 = load i64*, i64** %__p.addr, align 8, !dbg !2008, !tbaa !1586
  %1 = bitcast i64* %0 to i8*, !dbg !2008
  call void @_ZdlPv(i8* %1) #9, !dbg !2009
  ret void, !dbg !2010
}

; Function Attrs: nobuiltin nounwind
declare !dbg !31 dso_local void @_ZdlPv(i8*) #11

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaImEE9constructImJRKmEEEvRS0_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %__a, i64* %__p, i64* dereferenceable(8) %__args) #3 comdat align 2 !dbg !2011 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca i64*, align 8
  %__args.addr = alloca i64*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__a.addr, metadata !2021, metadata !DIExpression()), !dbg !2024
  store i64* %__p, i64** %__p.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__p.addr, metadata !2022, metadata !DIExpression()), !dbg !2025
  store i64* %__args, i64** %__args.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__args.addr, metadata !2023, metadata !DIExpression()), !dbg !2026
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !dbg !2027, !tbaa !1586
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*, !dbg !2027
  %2 = load i64*, i64** %__p.addr, align 8, !dbg !2028, !tbaa !1586
  %3 = load i64*, i64** %__args.addr, align 8, !dbg !2029, !tbaa !1586
  %call = call dereferenceable(8) i64* @_ZSt7forwardIRKmEOT_RNSt16remove_referenceIS2_E4typeE(i64* dereferenceable(8) %3) #9, !dbg !2030
  call void @_ZN9__gnu_cxx13new_allocatorImE9constructImJRKmEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %1, i64* %2, i64* dereferenceable(8) %call) #9, !dbg !2031
  ret void, !dbg !2032
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_(%"class.std::vector"* %this, i64* %__position.coerce, i64* dereferenceable(8) %__args) #4 comdat align 2 !dbg !2033 {
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
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !2040, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"* %__position, metadata !2041, metadata !DIExpression()), !dbg !2051
  store i64* %__args, i64** %__args.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__args.addr, metadata !2042, metadata !DIExpression()), !dbg !2052
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast i64* %__len to i8*, !dbg !2053
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #9, !dbg !2053
  call void @llvm.dbg.declare(metadata i64* %__len, metadata !2043, metadata !DIExpression()), !dbg !2054
  %call = call i64 @_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc(%"class.std::vector"* %this1, i64 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)), !dbg !2055
  store i64 %call, i64* %__len, align 8, !dbg !2054, !tbaa !1594
  %1 = bitcast i64** %__old_start to i8*, !dbg !2056
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #9, !dbg !2056
  call void @llvm.dbg.declare(metadata i64** %__old_start, metadata !2045, metadata !DIExpression()), !dbg !2057
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2058
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0, !dbg !2058
  %3 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !2059
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %3, i32 0, i32 0, !dbg !2060
  %4 = load i64*, i64** %_M_start, align 8, !dbg !2060, !tbaa !1835
  store i64* %4, i64** %__old_start, align 8, !dbg !2057, !tbaa !1586
  %5 = bitcast i64** %__old_finish to i8*, !dbg !2061
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #9, !dbg !2061
  call void @llvm.dbg.declare(metadata i64** %__old_finish, metadata !2046, metadata !DIExpression()), !dbg !2062
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2063
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0, !dbg !2063
  %7 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !2064
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %7, i32 0, i32 1, !dbg !2065
  %8 = load i64*, i64** %_M_finish, align 8, !dbg !2065, !tbaa !1641
  store i64* %8, i64** %__old_finish, align 8, !dbg !2062, !tbaa !1586
  %9 = bitcast i64* %__elems_before to i8*, !dbg !2066
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #9, !dbg !2066
  call void @llvm.dbg.declare(metadata i64* %__elems_before, metadata !2047, metadata !DIExpression()), !dbg !2067
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %ref.tmp to i8*, !dbg !2068
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #9, !dbg !2068
  %call3 = call i64* @_ZNSt6vectorImSaImEE5beginEv(%"class.std::vector"* %this1) #9, !dbg !2068
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp, i32 0, i32 0, !dbg !2068
  store i64* %call3, i64** %coerce.dive4, align 8, !dbg !2068
  %call5 = call i64 @_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ref.tmp) #9, !dbg !2069
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator"* %ref.tmp to i8*, !dbg !2070
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #9, !dbg !2070
  store i64 %call5, i64* %__elems_before, align 8, !dbg !2067, !tbaa !1594
  %12 = bitcast i64** %__new_start to i8*, !dbg !2071
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #9, !dbg !2071
  call void @llvm.dbg.declare(metadata i64** %__new_start, metadata !2048, metadata !DIExpression()), !dbg !2072
  %13 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2073
  %14 = load i64, i64* %__len, align 8, !dbg !2074, !tbaa !1594
  %call6 = call i64* @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%"struct.std::_Vector_base"* %13, i64 %14), !dbg !2073
  store i64* %call6, i64** %__new_start, align 8, !dbg !2072, !tbaa !1586
  %15 = bitcast i64** %__new_finish to i8*, !dbg !2075
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #9, !dbg !2075
  call void @llvm.dbg.declare(metadata i64** %__new_finish, metadata !2049, metadata !DIExpression()), !dbg !2076
  %16 = load i64*, i64** %__new_start, align 8, !dbg !2077, !tbaa !1586
  store i64* %16, i64** %__new_finish, align 8, !dbg !2076, !tbaa !1586
  %17 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2078
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %17, i32 0, i32 0, !dbg !2078
  %18 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl7 to %"class.std::allocator"*, !dbg !2080
  %19 = load i64*, i64** %__new_start, align 8, !dbg !2081, !tbaa !1586
  %20 = load i64, i64* %__elems_before, align 8, !dbg !2082, !tbaa !1594
  %add.ptr = getelementptr inbounds i64, i64* %19, i64 %20, !dbg !2083
  %21 = load i64*, i64** %__args.addr, align 8, !dbg !2084, !tbaa !1586
  %call8 = call dereferenceable(8) i64* @_ZSt7forwardIRKmEOT_RNSt16remove_referenceIS2_E4typeE(i64* dereferenceable(8) %21) #9, !dbg !2085
  call void @_ZNSt16allocator_traitsISaImEE9constructImJRKmEEEvRS0_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %18, i64* %add.ptr, i64* dereferenceable(8) %call8) #9, !dbg !2086
  store i64* null, i64** %__new_finish, align 8, !dbg !2087, !tbaa !1586
  %22 = load i64*, i64** %__old_start, align 8, !dbg !2088, !tbaa !1586
  %call9 = call dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position) #9, !dbg !2091
  %23 = load i64*, i64** %call9, align 8, !dbg !2091, !tbaa !1586
  %24 = load i64*, i64** %__new_start, align 8, !dbg !2092, !tbaa !1586
  %25 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2093
  %call10 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %25) #9, !dbg !2093
  %call11 = call i64* @_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_(i64* %22, i64* %23, i64* %24, %"class.std::allocator"* dereferenceable(1) %call10) #9, !dbg !2094
  store i64* %call11, i64** %__new_finish, align 8, !dbg !2095, !tbaa !1586
  %26 = load i64*, i64** %__new_finish, align 8, !dbg !2096, !tbaa !1586
  %incdec.ptr = getelementptr inbounds i64, i64* %26, i32 1, !dbg !2096
  store i64* %incdec.ptr, i64** %__new_finish, align 8, !dbg !2096, !tbaa !1586
  %call12 = call dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position) #9, !dbg !2097
  %27 = load i64*, i64** %call12, align 8, !dbg !2097, !tbaa !1586
  %28 = load i64*, i64** %__old_finish, align 8, !dbg !2098, !tbaa !1586
  %29 = load i64*, i64** %__new_finish, align 8, !dbg !2099, !tbaa !1586
  %30 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2100
  %call13 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %30) #9, !dbg !2100
  %call14 = call i64* @_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_(i64* %27, i64* %28, i64* %29, %"class.std::allocator"* dereferenceable(1) %call13) #9, !dbg !2101
  store i64* %call14, i64** %__new_finish, align 8, !dbg !2102, !tbaa !1586
  %31 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2103
  %32 = load i64*, i64** %__old_start, align 8, !dbg !2104, !tbaa !1586
  %33 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2105
  %_M_impl15 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %33, i32 0, i32 0, !dbg !2105
  %34 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl15 to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !2106
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %34, i32 0, i32 2, !dbg !2107
  %35 = load i64*, i64** %_M_end_of_storage, align 8, !dbg !2107, !tbaa !1646
  %36 = load i64*, i64** %__old_start, align 8, !dbg !2108, !tbaa !1586
  %sub.ptr.lhs.cast = ptrtoint i64* %35 to i64, !dbg !2109
  %sub.ptr.rhs.cast = ptrtoint i64* %36 to i64, !dbg !2109
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2109
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !2109
  call void @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%"struct.std::_Vector_base"* %31, i64* %32, i64 %sub.ptr.div), !dbg !2103
  %37 = load i64*, i64** %__new_start, align 8, !dbg !2110, !tbaa !1586
  %38 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2111
  %_M_impl16 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %38, i32 0, i32 0, !dbg !2111
  %39 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl16 to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !2112
  %_M_start17 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %39, i32 0, i32 0, !dbg !2113
  store i64* %37, i64** %_M_start17, align 8, !dbg !2114, !tbaa !1835
  %40 = load i64*, i64** %__new_finish, align 8, !dbg !2115, !tbaa !1586
  %41 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2116
  %_M_impl18 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %41, i32 0, i32 0, !dbg !2116
  %42 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl18 to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !2117
  %_M_finish19 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %42, i32 0, i32 1, !dbg !2118
  store i64* %40, i64** %_M_finish19, align 8, !dbg !2119, !tbaa !1641
  %43 = load i64*, i64** %__new_start, align 8, !dbg !2120, !tbaa !1586
  %44 = load i64, i64* %__len, align 8, !dbg !2121, !tbaa !1594
  %add.ptr20 = getelementptr inbounds i64, i64* %43, i64 %44, !dbg !2122
  %45 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2123
  %_M_impl21 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %45, i32 0, i32 0, !dbg !2123
  %46 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl21 to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !2124
  %_M_end_of_storage22 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %46, i32 0, i32 2, !dbg !2125
  store i64* %add.ptr20, i64** %_M_end_of_storage22, align 8, !dbg !2126, !tbaa !1646
  %47 = bitcast i64** %__new_finish to i8*, !dbg !2127
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %47) #9, !dbg !2127
  %48 = bitcast i64** %__new_start to i8*, !dbg !2127
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %48) #9, !dbg !2127
  %49 = bitcast i64* %__elems_before to i8*, !dbg !2127
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %49) #9, !dbg !2127
  %50 = bitcast i64** %__old_finish to i8*, !dbg !2127
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %50) #9, !dbg !2127
  %51 = bitcast i64** %__old_start to i8*, !dbg !2127
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %51) #9, !dbg !2127
  %52 = bitcast i64* %__len to i8*, !dbg !2127
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %52) #9, !dbg !2127
  ret void, !dbg !2127
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorImE9constructImJRKmEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %this, i64* %__p, i64* dereferenceable(8) %__args) #3 comdat align 2 !dbg !2128 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca i64*, align 8
  %__args.addr = alloca i64*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %this.addr, metadata !2133, metadata !DIExpression()), !dbg !2136
  store i64* %__p, i64** %__p.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__p.addr, metadata !2134, metadata !DIExpression()), !dbg !2137
  store i64* %__args, i64** %__args.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__args.addr, metadata !2135, metadata !DIExpression()), !dbg !2138
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %0 = load i64*, i64** %__p.addr, align 8, !dbg !2139, !tbaa !1586
  %1 = bitcast i64* %0 to i8*, !dbg !2139
  %2 = bitcast i8* %1 to i64*, !dbg !2140
  %3 = load i64*, i64** %__args.addr, align 8, !dbg !2141, !tbaa !1586
  %call = call dereferenceable(8) i64* @_ZSt7forwardIRKmEOT_RNSt16remove_referenceIS2_E4typeE(i64* dereferenceable(8) %3) #9, !dbg !2142
  %4 = load i64, i64* %call, align 8, !dbg !2142, !tbaa !1594
  store i64 %4, i64* %2, align 8, !dbg !2140, !tbaa !1594
  ret void, !dbg !2143
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) i64* @_ZSt7forwardIRKmEOT_RNSt16remove_referenceIS2_E4typeE(i64* dereferenceable(8) %__t) #3 comdat !dbg !2144 {
entry:
  %__t.addr = alloca i64*, align 8
  store i64* %__t, i64** %__t.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__t.addr, metadata !2154, metadata !DIExpression()), !dbg !2155
  %0 = load i64*, i64** %__t.addr, align 8, !dbg !2156, !tbaa !1586
  ret i64* %0, !dbg !2157
}

; Function Attrs: uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 %__n, i8* %__s) #4 comdat align 2 !dbg !2158 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__s.addr = alloca i8*, align 8
  %__len = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !2160, metadata !DIExpression()), !dbg !2165
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !1594
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !2162, metadata !DIExpression()), !dbg !2166
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !2163, metadata !DIExpression()), !dbg !2167
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call i64 @_ZNKSt6vectorImSaImEE8max_sizeEv(%"class.std::vector"* %this1) #9, !dbg !2168
  %call2 = call i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector"* %this1) #9, !dbg !2170
  %sub = sub i64 %call, %call2, !dbg !2171
  %0 = load i64, i64* %__n.addr, align 8, !dbg !2172, !tbaa !1594
  %cmp = icmp ult i64 %sub, %0, !dbg !2173
  br i1 %cmp, label %if.then, label %if.end, !dbg !2174

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %__s.addr, align 8, !dbg !2175, !tbaa !1586
  call void @_ZSt20__throw_length_errorPKc(i8* %1) #15, !dbg !2176
  unreachable, !dbg !2176

if.end:                                           ; preds = %entry
  %2 = bitcast i64* %__len to i8*, !dbg !2177
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #9, !dbg !2177
  call void @llvm.dbg.declare(metadata i64* %__len, metadata !2164, metadata !DIExpression()), !dbg !2178
  %call3 = call i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector"* %this1) #9, !dbg !2179
  %3 = bitcast i64* %ref.tmp to i8*, !dbg !2180
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #9, !dbg !2180
  %call4 = call i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector"* %this1) #9, !dbg !2180
  store i64 %call4, i64* %ref.tmp, align 8, !dbg !2180, !tbaa !1594
  %call5 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %ref.tmp, i64* dereferenceable(8) %__n.addr), !dbg !2181
  %4 = load i64, i64* %call5, align 8, !dbg !2181, !tbaa !1594
  %add = add i64 %call3, %4, !dbg !2182
  %5 = bitcast i64* %ref.tmp to i8*, !dbg !2179
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #9, !dbg !2179
  store i64 %add, i64* %__len, align 8, !dbg !2178, !tbaa !1594
  %6 = load i64, i64* %__len, align 8, !dbg !2183, !tbaa !1594
  %call6 = call i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector"* %this1) #9, !dbg !2184
  %cmp7 = icmp ult i64 %6, %call6, !dbg !2185
  br i1 %cmp7, label %cond.true, label %lor.lhs.false, !dbg !2186

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i64, i64* %__len, align 8, !dbg !2187, !tbaa !1594
  %call8 = call i64 @_ZNKSt6vectorImSaImEE8max_sizeEv(%"class.std::vector"* %this1) #9, !dbg !2188
  %cmp9 = icmp ugt i64 %7, %call8, !dbg !2189
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !2190

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call i64 @_ZNKSt6vectorImSaImEE8max_sizeEv(%"class.std::vector"* %this1) #9, !dbg !2191
  br label %cond.end, !dbg !2190

cond.false:                                       ; preds = %lor.lhs.false
  %8 = load i64, i64* %__len, align 8, !dbg !2192, !tbaa !1594
  br label %cond.end, !dbg !2190

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %8, %cond.false ], !dbg !2190
  %9 = bitcast i64* %__len to i8*, !dbg !2193
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #9, !dbg !2193
  ret i64 %cond, !dbg !2194
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i64 @_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #5 comdat !dbg !2195 {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, metadata !2199, metadata !DIExpression()), !dbg !2201
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, metadata !2200, metadata !DIExpression()), !dbg !2202
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8, !dbg !2203, !tbaa !1586
  %call = call dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0) #9, !dbg !2204
  %1 = load i64*, i64** %call, align 8, !dbg !2204, !tbaa !1586
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8, !dbg !2205, !tbaa !1586
  %call1 = call dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2) #9, !dbg !2206
  %3 = load i64*, i64** %call1, align 8, !dbg !2206, !tbaa !1586
  %sub.ptr.lhs.cast = ptrtoint i64* %1 to i64, !dbg !2207
  %sub.ptr.rhs.cast = ptrtoint i64* %3 to i64, !dbg !2207
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2207
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !2207
  ret i64 %sub.ptr.div, !dbg !2208
}

; Function Attrs: uwtable
define linkonce_odr dso_local i64* @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #4 comdat align 2 !dbg !2209 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !2211, metadata !DIExpression()), !dbg !2213
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !1594
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !2212, metadata !DIExpression()), !dbg !2214
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8, !dbg !2215, !tbaa !1594
  %cmp = icmp ne i64 %0, 0, !dbg !2216
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2215

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !2217
  %1 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*, !dbg !2217
  %2 = load i64, i64* %__n.addr, align 8, !dbg !2218, !tbaa !1594
  %call = call i64* @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(%"class.std::allocator"* dereferenceable(1) %1, i64 %2), !dbg !2219
  br label %cond.end, !dbg !2215

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2215

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ %call, %cond.true ], [ null, %cond.false ], !dbg !2215
  ret i64* %cond, !dbg !2220
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64* @_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_(i64* %__first, i64* %__last, i64* %__result, %"class.std::allocator"* dereferenceable(1) %__alloc) #3 comdat align 2 !dbg !46 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %__alloc.addr = alloca %"class.std::allocator"*, align 8
  %agg.tmp = alloca %"struct.std::integral_constant", align 1
  store i64* %__first, i64** %__first.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !581, metadata !DIExpression()), !dbg !2221
  store i64* %__last, i64** %__last.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !582, metadata !DIExpression()), !dbg !2222
  store i64* %__result, i64** %__result.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !583, metadata !DIExpression()), !dbg !2223
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %__alloc.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__alloc.addr, metadata !584, metadata !DIExpression()), !dbg !2224
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !2225, !tbaa !1586
  %1 = load i64*, i64** %__last.addr, align 8, !dbg !2226, !tbaa !1586
  %2 = load i64*, i64** %__result.addr, align 8, !dbg !2227, !tbaa !1586
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %__alloc.addr, align 8, !dbg !2228, !tbaa !1586
  %call = call i64* @_ZNSt6vectorImSaImEE14_S_do_relocateEPmS2_S2_RS0_St17integral_constantIbLb1EE(i64* %0, i64* %1, i64* %2, %"class.std::allocator"* dereferenceable(1) %3) #9, !dbg !2229
  ret i64* %call, !dbg !2230
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #3 comdat align 2 !dbg !2231 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %this.addr, metadata !2233, metadata !DIExpression()), !dbg !2234
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0, !dbg !2235
  ret i64** %_M_current, !dbg !2236
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorImSaImEE8max_sizeEv(%"class.std::vector"* %this) #3 comdat align 2 !dbg !2237 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !2239, metadata !DIExpression()), !dbg !2240
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2241
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %0) #9, !dbg !2241
  %call2 = call i64 @_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_(%"class.std::allocator"* dereferenceable(1) %call) #9, !dbg !2242
  ret i64 %call2, !dbg !2243
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector"* %this) #3 comdat align 2 !dbg !2244 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::vector"** %this.addr, metadata !2246, metadata !DIExpression()), !dbg !2247
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2248
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0, !dbg !2248
  %1 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !2249
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %1, i32 0, i32 1, !dbg !2250
  %2 = load i64*, i64** %_M_finish, align 8, !dbg !2250, !tbaa !1641
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*, !dbg !2251
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0, !dbg !2251
  %4 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl2 to %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"*, !dbg !2252
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl_data"* %4, i32 0, i32 0, !dbg !2253
  %5 = load i64*, i64** %_M_start, align 8, !dbg !2253, !tbaa !1835
  %sub.ptr.lhs.cast = ptrtoint i64* %2 to i64, !dbg !2254
  %sub.ptr.rhs.cast = ptrtoint i64* %5 to i64, !dbg !2254
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2254
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !2254
  ret i64 %sub.ptr.div, !dbg !2255
}

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) #12

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %__a, i64* dereferenceable(8) %__b) #5 comdat !dbg !2256 {
entry:
  %retval = alloca i64*, align 8
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  store i64* %__a, i64** %__a.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__a.addr, metadata !2261, metadata !DIExpression()), !dbg !2263
  store i64* %__b, i64** %__b.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__b.addr, metadata !2262, metadata !DIExpression()), !dbg !2264
  %0 = load i64*, i64** %__a.addr, align 8, !dbg !2265, !tbaa !1586
  %1 = load i64, i64* %0, align 8, !dbg !2265, !tbaa !1594
  %2 = load i64*, i64** %__b.addr, align 8, !dbg !2267, !tbaa !1586
  %3 = load i64, i64* %2, align 8, !dbg !2267, !tbaa !1594
  %cmp = icmp ult i64 %1, %3, !dbg !2268
  br i1 %cmp, label %if.then, label %if.end, !dbg !2269

if.then:                                          ; preds = %entry
  %4 = load i64*, i64** %__b.addr, align 8, !dbg !2270, !tbaa !1586
  store i64* %4, i64** %retval, align 8, !dbg !2271
  br label %return, !dbg !2271

if.end:                                           ; preds = %entry
  %5 = load i64*, i64** %__a.addr, align 8, !dbg !2272, !tbaa !1586
  store i64* %5, i64** %retval, align 8, !dbg !2273
  br label %return, !dbg !2273

return:                                           ; preds = %if.end, %if.then
  %6 = load i64*, i64** %retval, align 8, !dbg !2274
  ret i64* %6, !dbg !2274
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_(%"class.std::allocator"* dereferenceable(1) %__a) #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2275 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__diffmax = alloca i64, align 8
  %__allocmax = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__a.addr, metadata !2277, metadata !DIExpression()), !dbg !2281
  %0 = bitcast i64* %__diffmax to i8*, !dbg !2282
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #9, !dbg !2282
  call void @llvm.dbg.declare(metadata i64* %__diffmax, metadata !2278, metadata !DIExpression()), !dbg !2283
  store i64 1152921504606846975, i64* %__diffmax, align 8, !dbg !2283, !tbaa !1594
  %1 = bitcast i64* %__allocmax to i8*, !dbg !2284
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #9, !dbg !2284
  call void @llvm.dbg.declare(metadata i64* %__allocmax, metadata !2280, metadata !DIExpression()), !dbg !2285
  %2 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !dbg !2286, !tbaa !1586
  %call = call i64 @_ZNSt16allocator_traitsISaImEE8max_sizeERKS0_(%"class.std::allocator"* dereferenceable(1) %2) #9, !dbg !2287
  store i64 %call, i64* %__allocmax, align 8, !dbg !2285, !tbaa !1594
  %call1 = invoke dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* dereferenceable(8) %__diffmax, i64* dereferenceable(8) %__allocmax)
          to label %invoke.cont unwind label %lpad, !dbg !2288

invoke.cont:                                      ; preds = %entry
  %3 = load i64, i64* %call1, align 8, !dbg !2288, !tbaa !1594
  %4 = bitcast i64* %__allocmax to i8*, !dbg !2289
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #9, !dbg !2289
  %5 = bitcast i64* %__diffmax to i8*, !dbg !2289
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #9, !dbg !2289
  ret i64 %3, !dbg !2290

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2289
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !2289
  store i8* %7, i8** %exn.slot, align 8, !dbg !2289
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !2289
  store i32 %8, i32* %ehselector.slot, align 4, !dbg !2289
  %9 = bitcast i64* %__allocmax to i8*, !dbg !2289
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #9, !dbg !2289
  %10 = bitcast i64* %__diffmax to i8*, !dbg !2289
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #9, !dbg !2289
  br label %terminate.handler, !dbg !2289

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2289
  call void @__clang_call_terminate(i8* %exn) #14, !dbg !2289
  unreachable, !dbg !2289
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #3 comdat align 2 !dbg !2291 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"struct.std::_Vector_base"** %this.addr, metadata !2293, metadata !DIExpression()), !dbg !2295
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0, !dbg !2296
  %0 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*, !dbg !2297
  ret %"class.std::allocator"* %0, !dbg !2298
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt16allocator_traitsISaImEE8max_sizeERKS0_(%"class.std::allocator"* dereferenceable(1) %__a) #3 comdat align 2 !dbg !2299 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__a.addr, metadata !2301, metadata !DIExpression()), !dbg !2302
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !dbg !2303, !tbaa !1586
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*, !dbg !2303
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %1) #9, !dbg !2304
  ret i64 %call, !dbg !2305
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* dereferenceable(8) %__a, i64* dereferenceable(8) %__b) #5 comdat !dbg !2306 {
entry:
  %retval = alloca i64*, align 8
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  store i64* %__a, i64** %__a.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__a.addr, metadata !2308, metadata !DIExpression()), !dbg !2310
  store i64* %__b, i64** %__b.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__b.addr, metadata !2309, metadata !DIExpression()), !dbg !2311
  %0 = load i64*, i64** %__b.addr, align 8, !dbg !2312, !tbaa !1586
  %1 = load i64, i64* %0, align 8, !dbg !2312, !tbaa !1594
  %2 = load i64*, i64** %__a.addr, align 8, !dbg !2314, !tbaa !1586
  %3 = load i64, i64* %2, align 8, !dbg !2314, !tbaa !1594
  %cmp = icmp ult i64 %1, %3, !dbg !2315
  br i1 %cmp, label %if.then, label %if.end, !dbg !2316

if.then:                                          ; preds = %entry
  %4 = load i64*, i64** %__b.addr, align 8, !dbg !2317, !tbaa !1586
  store i64* %4, i64** %retval, align 8, !dbg !2318
  br label %return, !dbg !2318

if.end:                                           ; preds = %entry
  %5 = load i64*, i64** %__a.addr, align 8, !dbg !2319, !tbaa !1586
  store i64* %5, i64** %retval, align 8, !dbg !2320
  br label %return, !dbg !2320

return:                                           ; preds = %if.end, %if.then
  %6 = load i64*, i64** %retval, align 8, !dbg !2321
  ret i64* %6, !dbg !2321
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #3 comdat align 2 !dbg !2322 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %this.addr, metadata !2324, metadata !DIExpression()), !dbg !2326
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this1) #9, !dbg !2327
  ret i64 %call, !dbg !2328
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #3 comdat align 2 !dbg !2329 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %this.addr, metadata !2331, metadata !DIExpression()), !dbg !2332
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret i64 1152921504606846975, !dbg !2333
}

; Function Attrs: uwtable
define linkonce_odr dso_local i64* @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(%"class.std::allocator"* dereferenceable(1) %__a, i64 %__n) #4 comdat align 2 !dbg !2334 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__a.addr, metadata !2336, metadata !DIExpression()), !dbg !2338
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !1594
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !2337, metadata !DIExpression()), !dbg !2339
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !dbg !2340, !tbaa !1586
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*, !dbg !2340
  %2 = load i64, i64* %__n.addr, align 8, !dbg !2341, !tbaa !1594
  %call = call i64* @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %1, i64 %2, i8* null), !dbg !2342
  ret i64* %call, !dbg !2343
}

; Function Attrs: uwtable
define linkonce_odr dso_local i64* @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8* %0) #4 comdat align 2 !dbg !2344 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %this.addr, metadata !2346, metadata !DIExpression()), !dbg !2349
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !1594
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !2347, metadata !DIExpression()), !dbg !2350
  store i8* %0, i8** %.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !2348, metadata !DIExpression()), !dbg !2351
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8, !dbg !2352, !tbaa !1594
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this1) #9, !dbg !2354
  %cmp = icmp ugt i64 %1, %call, !dbg !2355
  br i1 %cmp, label %if.then, label %if.end, !dbg !2356

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #15, !dbg !2357
  unreachable, !dbg !2357

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8, !dbg !2358, !tbaa !1594
  %mul = mul i64 %2, 8, !dbg !2359
  %call2 = call i8* @_Znwm(i64 %mul), !dbg !2360
  %3 = bitcast i8* %call2 to i64*, !dbg !2361
  ret i64* %3, !dbg !2362
}

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #12

; Function Attrs: nobuiltin
declare !dbg !42 dso_local noalias i8* @_Znwm(i64) #13

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64* @_ZNSt6vectorImSaImEE14_S_do_relocateEPmS2_S2_RS0_St17integral_constantIbLb1EE(i64* %__first, i64* %__last, i64* %__result, %"class.std::allocator"* dereferenceable(1) %__alloc) #3 comdat align 2 !dbg !2363 {
entry:
  %0 = alloca %"struct.std::integral_constant", align 1
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %__alloc.addr = alloca %"class.std::allocator"*, align 8
  store i64* %__first, i64** %__first.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !2365, metadata !DIExpression()), !dbg !2370
  store i64* %__last, i64** %__last.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !2366, metadata !DIExpression()), !dbg !2371
  store i64* %__result, i64** %__result.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !2367, metadata !DIExpression()), !dbg !2372
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %__alloc.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__alloc.addr, metadata !2368, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.declare(metadata %"struct.std::integral_constant"* %0, metadata !2369, metadata !DIExpression()), !dbg !2374
  %1 = load i64*, i64** %__first.addr, align 8, !dbg !2375, !tbaa !1586
  %2 = load i64*, i64** %__last.addr, align 8, !dbg !2376, !tbaa !1586
  %3 = load i64*, i64** %__result.addr, align 8, !dbg !2377, !tbaa !1586
  %4 = load %"class.std::allocator"*, %"class.std::allocator"** %__alloc.addr, align 8, !dbg !2378, !tbaa !1586
  %call = call i64* @_ZSt12__relocate_aIPmS0_SaImEET0_T_S3_S2_RT1_(i64* %1, i64* %2, i64* %3, %"class.std::allocator"* dereferenceable(1) %4) #9, !dbg !2379
  ret i64* %call, !dbg !2380
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i64* @_ZSt12__relocate_aIPmS0_SaImEET0_T_S3_S2_RT1_(i64* %__first, i64* %__last, i64* %__result, %"class.std::allocator"* dereferenceable(1) %__alloc) #5 comdat !dbg !2381 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %__alloc.addr = alloca %"class.std::allocator"*, align 8
  store i64* %__first, i64** %__first.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !2386, metadata !DIExpression()), !dbg !2393
  store i64* %__last, i64** %__last.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !2387, metadata !DIExpression()), !dbg !2394
  store i64* %__result, i64** %__result.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !2388, metadata !DIExpression()), !dbg !2395
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %__alloc.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__alloc.addr, metadata !2389, metadata !DIExpression()), !dbg !2396
  %0 = load i64*, i64** %__first.addr, align 8, !dbg !2397, !tbaa !1586
  %call = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %0) #9, !dbg !2398
  %1 = load i64*, i64** %__last.addr, align 8, !dbg !2399, !tbaa !1586
  %call1 = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %1) #9, !dbg !2400
  %2 = load i64*, i64** %__result.addr, align 8, !dbg !2401, !tbaa !1586
  %call2 = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %2) #9, !dbg !2402
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %__alloc.addr, align 8, !dbg !2403, !tbaa !1586
  %call3 = call i64* @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(i64* %call, i64* %call1, i64* %call2, %"class.std::allocator"* dereferenceable(1) %3) #9, !dbg !2404
  ret i64* %call3, !dbg !2405
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i64* @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(i64* %__first, i64* %__last, i64* %__result, %"class.std::allocator"* dereferenceable(1) %0) #5 comdat !dbg !2406 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  %__count = alloca i64, align 8
  store i64* %__first, i64** %__first.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__first.addr, metadata !2415, metadata !DIExpression()), !dbg !2421
  store i64* %__last, i64** %__last.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__last.addr, metadata !2416, metadata !DIExpression()), !dbg !2422
  store i64* %__result, i64** %__result.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__result.addr, metadata !2417, metadata !DIExpression()), !dbg !2423
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %.addr, metadata !2418, metadata !DIExpression()), !dbg !2424
  %1 = bitcast i64* %__count to i8*, !dbg !2425
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #9, !dbg !2425
  call void @llvm.dbg.declare(metadata i64* %__count, metadata !2419, metadata !DIExpression()), !dbg !2426
  %2 = load i64*, i64** %__last.addr, align 8, !dbg !2427, !tbaa !1586
  %3 = load i64*, i64** %__first.addr, align 8, !dbg !2428, !tbaa !1586
  %sub.ptr.lhs.cast = ptrtoint i64* %2 to i64, !dbg !2429
  %sub.ptr.rhs.cast = ptrtoint i64* %3 to i64, !dbg !2429
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2429
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !2429
  store i64 %sub.ptr.div, i64* %__count, align 8, !dbg !2426, !tbaa !1594
  %4 = load i64, i64* %__count, align 8, !dbg !2430, !tbaa !1594
  %cmp = icmp sgt i64 %4, 0, !dbg !2432
  br i1 %cmp, label %if.then, label %if.end, !dbg !2433

if.then:                                          ; preds = %entry
  %5 = load i64*, i64** %__result.addr, align 8, !dbg !2434, !tbaa !1586
  %6 = bitcast i64* %5 to i8*, !dbg !2435
  %7 = load i64*, i64** %__first.addr, align 8, !dbg !2436, !tbaa !1586
  %8 = bitcast i64* %7 to i8*, !dbg !2435
  %9 = load i64, i64* %__count, align 8, !dbg !2437, !tbaa !1594
  %mul = mul i64 %9, 8, !dbg !2438
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %8, i64 %mul, i1 false), !dbg !2435
  br label %if.end, !dbg !2435

if.end:                                           ; preds = %if.then, %entry
  %10 = load i64*, i64** %__result.addr, align 8, !dbg !2439, !tbaa !1586
  %11 = load i64, i64* %__count, align 8, !dbg !2440, !tbaa !1594
  %add.ptr = getelementptr inbounds i64, i64* %10, i64 %11, !dbg !2441
  %12 = bitcast i64* %__count to i8*, !dbg !2442
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %12) #9, !dbg !2442
  ret i64* %add.ptr, !dbg !2443
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i64* @_ZSt12__niter_baseIPmET_S1_(i64* %__it) #5 comdat !dbg !2444 {
entry:
  %__it.addr = alloca i64*, align 8
  store i64* %__it, i64** %__it.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64** %__it.addr, metadata !2448, metadata !DIExpression()), !dbg !2449
  %0 = load i64*, i64** %__it.addr, align 8, !dbg !2450, !tbaa !1586
  ret i64* %0, !dbg !2451
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %this, i64** dereferenceable(8) %__i) unnamed_addr #3 comdat align 2 !dbg !2452 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__i.addr = alloca i64**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::__normal_iterator"** %this.addr, metadata !2454, metadata !DIExpression()), !dbg !2456
  store i64** %__i, i64*** %__i.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i64*** %__i.addr, metadata !2455, metadata !DIExpression()), !dbg !2457
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0, !dbg !2458
  %0 = load i64**, i64*** %__i.addr, align 8, !dbg !2459, !tbaa !1586
  %1 = load i64*, i64** %0, align 8, !dbg !2459, !tbaa !1586
  store i64* %1, i64** %_M_current, align 8, !dbg !2458, !tbaa !1705
  ret void, !dbg !2460
}

; Function Attrs: uwtable
define available_externally dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* %this, i32 %__state) #4 align 2 !dbg !2461 {
entry:
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  %__state.addr = alloca i32, align 4
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::basic_ios"** %this.addr, metadata !2471, metadata !DIExpression()), !dbg !2474
  store i32 %__state, i32* %__state.addr, align 4, !tbaa !2475
  call void @llvm.dbg.declare(metadata i32* %__state.addr, metadata !2473, metadata !DIExpression()), !dbg !2477
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %call = call i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(%"class.std::basic_ios"* %this1), !dbg !2478
  %0 = load i32, i32* %__state.addr, align 4, !dbg !2479, !tbaa !2475
  %call2 = call i32 @_ZStorSt12_Ios_IostateS_(i32 %call, i32 %0), !dbg !2480
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* %this1, i32 %call2), !dbg !2481
  ret void, !dbg !2482
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272), i8*, i64) #6

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %__s) #3 comdat align 2 !dbg !2483 {
entry:
  %__s.addr = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !2485, metadata !DIExpression()), !dbg !2486
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !2487, !tbaa !1586
  %call = call i64 @strlen(i8* %0) #9, !dbg !2488
  ret i64 %call, !dbg !2489
}

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"*, i32) #6

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @_ZStorSt12_Ios_IostateS_(i32 %__a, i32 %__b) #5 comdat !dbg !2490 {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, i32* %__a.addr, align 4, !tbaa !2475
  call void @llvm.dbg.declare(metadata i32* %__a.addr, metadata !2494, metadata !DIExpression()), !dbg !2496
  store i32 %__b, i32* %__b.addr, align 4, !tbaa !2475
  call void @llvm.dbg.declare(metadata i32* %__b.addr, metadata !2495, metadata !DIExpression()), !dbg !2497
  %0 = load i32, i32* %__a.addr, align 4, !dbg !2498, !tbaa !2475
  %1 = load i32, i32* %__b.addr, align 4, !dbg !2499, !tbaa !2475
  %or = or i32 %0, %1, !dbg !2500
  ret i32 %or, !dbg !2501
}

; Function Attrs: nounwind uwtable
define available_externally dso_local i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(%"class.std::basic_ios"* %this) #3 align 2 !dbg !2502 {
entry:
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::basic_ios"** %this.addr, metadata !2509, metadata !DIExpression()), !dbg !2511
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::basic_ios"* %this1 to %"class.std::ios_base"*, !dbg !2512
  %_M_streambuf_state = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %0, i32 0, i32 5, !dbg !2512
  %1 = load i32, i32* %_M_streambuf_state, align 8, !dbg !2512, !tbaa !2513
  ret i32 %1, !dbg !2518
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8*) #8

; Function Attrs: inlinehint uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272) %__os) #7 !dbg !2519 {
entry:
  %__os.addr = alloca %"class.std::basic_ostream"*, align 8
  store %"class.std::basic_ostream"* %__os, %"class.std::basic_ostream"** %__os.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %__os.addr, metadata !2521, metadata !DIExpression()), !dbg !2522
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__os.addr, align 8, !dbg !2523, !tbaa !1586
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* %0), !dbg !2524
  ret %"class.std::basic_ostream"* %call, !dbg !2525
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"*, i8 signext) #6

; Function Attrs: uwtable
define available_externally dso_local signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* %this, i8 signext %__c) #4 align 2 !dbg !2526 {
entry:
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  %__c.addr = alloca i8, align 1
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::basic_ios"** %this.addr, metadata !2532, metadata !DIExpression()), !dbg !2534
  store i8 %__c, i8* %__c.addr, align 1, !tbaa !2535
  call void @llvm.dbg.declare(metadata i8* %__c.addr, metadata !2533, metadata !DIExpression()), !dbg !2536
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %_M_ctype = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %this1, i32 0, i32 5, !dbg !2537
  %0 = load %"class.std::ctype"*, %"class.std::ctype"** %_M_ctype, align 8, !dbg !2537, !tbaa !2538
  %call = call dereferenceable(576) %"class.std::ctype"* @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(%"class.std::ctype"* %0), !dbg !2541
  %1 = load i8, i8* %__c.addr, align 1, !dbg !2542, !tbaa !2535
  %call2 = call signext i8 @_ZNKSt5ctypeIcE5widenEc(%"class.std::ctype"* %call, i8 signext %1), !dbg !2543
  ret i8 %call2, !dbg !2544
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"*) #6

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local dereferenceable(576) %"class.std::ctype"* @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(%"class.std::ctype"* %__f) #7 comdat !dbg !2545 {
entry:
  %__f.addr = alloca %"class.std::ctype"*, align 8
  store %"class.std::ctype"* %__f, %"class.std::ctype"** %__f.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::ctype"** %__f.addr, metadata !2554, metadata !DIExpression()), !dbg !2557
  %0 = load %"class.std::ctype"*, %"class.std::ctype"** %__f.addr, align 8, !dbg !2558, !tbaa !1586
  %tobool = icmp ne %"class.std::ctype"* %0, null, !dbg !2558
  br i1 %tobool, label %if.end, label %if.then, !dbg !2560

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #15, !dbg !2561
  unreachable, !dbg !2561

if.end:                                           ; preds = %entry
  %1 = load %"class.std::ctype"*, %"class.std::ctype"** %__f.addr, align 8, !dbg !2562, !tbaa !1586
  ret %"class.std::ctype"* %1, !dbg !2563
}

; Function Attrs: uwtable
define linkonce_odr dso_local signext i8 @_ZNKSt5ctypeIcE5widenEc(%"class.std::ctype"* %this, i8 signext %__c) #4 comdat align 2 !dbg !2564 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca %"class.std::ctype"*, align 8
  %__c.addr = alloca i8, align 1
  store %"class.std::ctype"* %this, %"class.std::ctype"** %this.addr, align 8, !tbaa !1586
  call void @llvm.dbg.declare(metadata %"class.std::ctype"** %this.addr, metadata !2571, metadata !DIExpression()), !dbg !2573
  store i8 %__c, i8* %__c.addr, align 1, !tbaa !2535
  call void @llvm.dbg.declare(metadata i8* %__c.addr, metadata !2572, metadata !DIExpression()), !dbg !2574
  %this1 = load %"class.std::ctype"*, %"class.std::ctype"** %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this1, i32 0, i32 8, !dbg !2575
  %0 = load i8, i8* %_M_widen_ok, align 8, !dbg !2575, !tbaa !2577
  %tobool = icmp ne i8 %0, 0, !dbg !2575
  br i1 %tobool, label %if.then, label %if.end, !dbg !2579

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this1, i32 0, i32 9, !dbg !2580
  %1 = load i8, i8* %__c.addr, align 1, !dbg !2581, !tbaa !2535
  %idxprom = zext i8 %1 to i64, !dbg !2580
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %_M_widen, i64 0, i64 %idxprom, !dbg !2580
  %2 = load i8, i8* %arrayidx, align 1, !dbg !2580, !tbaa !2535
  store i8 %2, i8* %retval, align 1, !dbg !2582
  br label %return, !dbg !2582

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* %this1), !dbg !2583
  %3 = load i8, i8* %__c.addr, align 1, !dbg !2584, !tbaa !2535
  %4 = bitcast %"class.std::ctype"* %this1 to i8 (%"class.std::ctype"*, i8)***, !dbg !2585
  %vtable = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %4, align 8, !dbg !2585, !tbaa !1786
  %vfn = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable, i64 6, !dbg !2585
  %5 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn, align 8, !dbg !2585
  %call = call signext i8 %5(%"class.std::ctype"* %this1, i8 signext %3), !dbg !2585
  store i8 %call, i8* %retval, align 1, !dbg !2586
  br label %return, !dbg !2586

return:                                           ; preds = %if.end, %if.then
  %6 = load i8, i8* %retval, align 1, !dbg !2587
  ret i8 %6, !dbg !2587
}

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() #12

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"*) #6

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_pthread_vector2_yes.cpp() #4 section ".text.startup" !dbg !2588 {
entry:
  call void @__cxx_global_var_init(), !dbg !2590
  ret void
}

attributes #0 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noinline noreturn nounwind }
attributes #11 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1540, !1541, !1542}
!llvm.ident = !{!1543}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "accum", scope: !2, file: !3, line: 13, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !590, imports: !616, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/pthreadrace/pthread-vector2-yes.cpp", directory: "/home/brad/Code/OpenRace/tests/data")
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
!17 = !{!18, !24, !26, !31, !35, !37, !39, !41, !42, !45, !378, !586, !5, !8, !588, !589}
!18 = !DISubprogram(name: "pthread_join", scope: !19, file: !19, line: 217, type: !20, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !25)
!19 = !DIFile(filename: "/usr/include/pthread.h", directory: "")
!20 = !DISubroutineType(types: !21)
!21 = !{!8, !22, !23}
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !{}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !27, line: 27, baseType: !28)
!27 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !29, line: 44, baseType: !30)
!29 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!30 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!31 = !DISubprogram(name: "operator delete", linkageName: "_ZdlPv", scope: !32, file: !32, line: 130, type: !33, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !25)
!32 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/new", directory: "")
!33 = !DISubroutineType(types: !34)
!34 = !{null, !24}
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !36, line: 424, baseType: !37)
!36 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/stl_vector.h", directory: "")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !7, file: !38, line: 260, baseType: !22)
!38 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/x86_64-pc-linux-gnu/bits/c++config.h", directory: "")
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!42 = !DISubprogram(name: "operator new", linkageName: "_Znwm", scope: !32, file: !32, line: 126, type: !43, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !25)
!43 = !DISubroutineType(types: !44)
!44 = !{!24, !22}
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
!98 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !22, size: 64)
!99 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorImE7addressERKm", scope: !79, file: !80, line: 96, type: !100, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !96, !105}
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !79, file: !80, line: 63, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
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
!119 = !DITemplateTypeParameter(name: "_Tp", type: !22)
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
!168 = !DITemplateTypeParameter(type: !22)
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
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !47, file: !36, line: 414, baseType: !22)
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
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !64, file: !65, line: 413, baseType: !22)
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
!590 = !{!591, !0, !614}
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
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(name: "count", scope: !2, file: !3, line: 14, type: !8, isLocal: false, isDefinition: true)
!616 = !{!617, !635, !638, !643, !704, !712, !716, !723, !727, !731, !733, !735, !739, !746, !750, !756, !762, !764, !768, !772, !776, !780, !791, !793, !797, !801, !805, !807, !812, !816, !820, !822, !824, !828, !837, !841, !845, !849, !851, !857, !859, !866, !871, !875, !879, !883, !887, !891, !893, !895, !899, !903, !907, !909, !913, !917, !919, !921, !925, !930, !935, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !1004, !1008, !1012, !1016, !1020, !1023, !1024, !1027, !1029, !1031, !1033, !1036, !1039, !1042, !1045, !1048, !1050, !1054, !1057, !1060, !1063, !1065, !1067, !1069, !1071, !1074, !1077, !1080, !1083, !1086, !1088, !1092, !1096, !1101, !1107, !1109, !1111, !1113, !1115, !1117, !1119, !1121, !1123, !1125, !1127, !1129, !1131, !1133, !1137, !1141, !1147, !1151, !1156, !1158, !1163, !1167, !1171, !1180, !1184, !1188, !1192, !1194, !1198, !1202, !1206, !1210, !1214, !1218, !1222, !1226, !1228, !1232, !1236, !1240, !1246, !1250, !1254, !1256, !1260, !1264, !1270, !1272, !1276, !1280, !1284, !1288, !1292, !1296, !1300, !1301, !1302, !1303, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1315, !1321, !1326, !1330, !1332, !1334, !1336, !1338, !1345, !1349, !1353, !1357, !1361, !1365, !1370, !1374, !1376, !1380, !1386, !1390, !1395, !1397, !1400, !1404, !1408, !1410, !1412, !1414, !1416, !1420, !1422, !1424, !1428, !1432, !1436, !1440, !1444, !1448, !1450, !1454, !1458, !1462, !1466, !1468, !1470, !1474, !1478, !1479, !1480, !1481, !1482, !1483, !1489, !1492, !1493, !1495, !1497, !1499, !1501, !1505, !1507, !1509, !1511, !1513, !1515, !1517, !1519, !1521, !1525, !1529, !1531, !1535, !1539}
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !618, file: !634, line: 64)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !619, line: 6, baseType: !620)
!619 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !621, line: 21, baseType: !622)
!621 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !621, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !623, identifier: "_ZTS11__mbstate_t")
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !622, file: !621, line: 15, baseType: !8, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !622, file: !621, line: 20, baseType: !626, size: 32, offset: 32)
!626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !622, file: !621, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !627, identifier: "_ZTSN11__mbstate_tUt_E")
!627 = !{!628, !630}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !626, file: !621, line: 18, baseType: !629, size: 32)
!629 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !626, file: !621, line: 19, baseType: !631, size: 32)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 32, elements: !632)
!632 = !{!633}
!633 = !DISubrange(count: 4)
!634 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cwchar", directory: "")
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !636, file: !634, line: 141)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !637, line: 20, baseType: !629)
!637 = !DIFile(filename: "/usr/include/bits/types/wint_t.h", directory: "")
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !639, file: !634, line: 143)
!639 = !DISubprogram(name: "btowc", scope: !640, file: !640, line: 318, type: !641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!640 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!641 = !DISubroutineType(types: !642)
!642 = !{!636, !8}
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !644, file: !634, line: 144)
!644 = !DISubprogram(name: "fgetwc", scope: !640, file: !640, line: 729, type: !645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!645 = !DISubroutineType(types: !646)
!646 = !{!636, !647}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !649, line: 5, baseType: !650)
!649 = !DIFile(filename: "/usr/include/bits/types/__FILE.h", directory: "")
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !651, line: 49, size: 1728, flags: DIFlagTypePassByValue, elements: !652, identifier: "_ZTS8_IO_FILE")
!651 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!652 = !{!653, !654, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !669, !671, !672, !673, !675, !677, !679, !683, !686, !688, !691, !694, !695, !696, !699, !700}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !650, file: !651, line: 51, baseType: !8, size: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !650, file: !651, line: 54, baseType: !655, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !650, file: !651, line: 55, baseType: !655, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !650, file: !651, line: 56, baseType: !655, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !650, file: !651, line: 57, baseType: !655, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !650, file: !651, line: 58, baseType: !655, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !650, file: !651, line: 59, baseType: !655, size: 64, offset: 384)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !650, file: !651, line: 60, baseType: !655, size: 64, offset: 448)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !650, file: !651, line: 61, baseType: !655, size: 64, offset: 512)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !650, file: !651, line: 64, baseType: !655, size: 64, offset: 576)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !650, file: !651, line: 65, baseType: !655, size: 64, offset: 640)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !650, file: !651, line: 66, baseType: !655, size: 64, offset: 704)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !650, file: !651, line: 68, baseType: !667, size: 64, offset: 768)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !651, line: 36, flags: DIFlagFwdDecl, identifier: "_ZTS10_IO_marker")
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !650, file: !651, line: 70, baseType: !670, size: 64, offset: 832)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !650, file: !651, line: 72, baseType: !8, size: 32, offset: 896)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !650, file: !651, line: 73, baseType: !8, size: 32, offset: 928)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !650, file: !651, line: 74, baseType: !674, size: 64, offset: 960)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !29, line: 152, baseType: !30)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !650, file: !651, line: 77, baseType: !676, size: 16, offset: 1024)
!676 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !650, file: !651, line: 78, baseType: !678, size: 8, offset: 1040)
!678 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !650, file: !651, line: 79, baseType: !680, size: 8, offset: 1048)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 8, elements: !681)
!681 = !{!682}
!682 = !DISubrange(count: 1)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !650, file: !651, line: 81, baseType: !684, size: 64, offset: 1088)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !651, line: 43, baseType: null)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !650, file: !651, line: 89, baseType: !687, size: 64, offset: 1152)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !29, line: 153, baseType: !30)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !650, file: !651, line: 91, baseType: !689, size: 64, offset: 1216)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !651, line: 37, flags: DIFlagFwdDecl, identifier: "_ZTS11_IO_codecvt")
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !650, file: !651, line: 92, baseType: !692, size: 64, offset: 1280)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !651, line: 38, flags: DIFlagFwdDecl, identifier: "_ZTS13_IO_wide_data")
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !650, file: !651, line: 93, baseType: !670, size: 64, offset: 1344)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !650, file: !651, line: 94, baseType: !24, size: 64, offset: 1408)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !650, file: !651, line: 95, baseType: !697, size: 64, offset: 1472)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !698, line: 46, baseType: !22)
!698 = !DIFile(filename: "OpenRace-env/install/lib/clang/10.0.1/include/stddef.h", directory: "/home/brad/Code")
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !650, file: !651, line: 96, baseType: !8, size: 32, offset: 1536)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !650, file: !651, line: 98, baseType: !701, size: 160, offset: 1568)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 160, elements: !702)
!702 = !{!703}
!703 = !DISubrange(count: 20)
!704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !705, file: !634, line: 145)
!705 = !DISubprogram(name: "fgetws", scope: !640, file: !640, line: 758, type: !706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!706 = !DISubroutineType(types: !707)
!707 = !{!708, !710, !8, !711}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!710 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !708)
!711 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !647)
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !713, file: !634, line: 146)
!713 = !DISubprogram(name: "fputwc", scope: !640, file: !640, line: 743, type: !714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!714 = !DISubroutineType(types: !715)
!715 = !{!636, !709, !647}
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !717, file: !634, line: 147)
!717 = !DISubprogram(name: "fputws", scope: !640, file: !640, line: 765, type: !718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!718 = !DISubroutineType(types: !719)
!719 = !{!8, !720, !711}
!720 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !724, file: !634, line: 148)
!724 = !DISubprogram(name: "fwide", scope: !640, file: !640, line: 573, type: !725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!725 = !DISubroutineType(types: !726)
!726 = !{!8, !647, !8}
!727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !728, file: !634, line: 149)
!728 = !DISubprogram(name: "fwprintf", scope: !640, file: !640, line: 580, type: !729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!729 = !DISubroutineType(types: !730)
!730 = !{!8, !711, !720, null}
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !732, file: !634, line: 150)
!732 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !640, file: !640, line: 642, type: !729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !734, file: !634, line: 151)
!734 = !DISubprogram(name: "getwc", scope: !640, file: !640, line: 730, type: !645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !736, file: !634, line: 152)
!736 = !DISubprogram(name: "getwchar", scope: !640, file: !640, line: 736, type: !737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!737 = !DISubroutineType(types: !738)
!738 = !{!636}
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !740, file: !634, line: 153)
!740 = !DISubprogram(name: "mbrlen", scope: !640, file: !640, line: 329, type: !741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!741 = !DISubroutineType(types: !742)
!742 = !{!697, !743, !697, !744}
!743 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !554)
!744 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !745)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !747, file: !634, line: 154)
!747 = !DISubprogram(name: "mbrtowc", scope: !640, file: !640, line: 296, type: !748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!748 = !DISubroutineType(types: !749)
!749 = !{!697, !710, !743, !697, !744}
!750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !751, file: !634, line: 155)
!751 = !DISubprogram(name: "mbsinit", scope: !640, file: !640, line: 292, type: !752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!752 = !DISubroutineType(types: !753)
!753 = !{!8, !754}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !757, file: !634, line: 156)
!757 = !DISubprogram(name: "mbsrtowcs", scope: !640, file: !640, line: 337, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!758 = !DISubroutineType(types: !759)
!759 = !{!697, !710, !760, !697, !744}
!760 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !763, file: !634, line: 157)
!763 = !DISubprogram(name: "putwc", scope: !640, file: !640, line: 744, type: !714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !765, file: !634, line: 158)
!765 = !DISubprogram(name: "putwchar", scope: !640, file: !640, line: 750, type: !766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!766 = !DISubroutineType(types: !767)
!767 = !{!636, !709}
!768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !769, file: !634, line: 160)
!769 = !DISubprogram(name: "swprintf", scope: !640, file: !640, line: 590, type: !770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!770 = !DISubroutineType(types: !771)
!771 = !{!8, !710, !697, !720, null}
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !773, file: !634, line: 162)
!773 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !640, file: !640, line: 649, type: !774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!774 = !DISubroutineType(types: !775)
!775 = !{!8, !720, !720, null}
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !777, file: !634, line: 163)
!777 = !DISubprogram(name: "ungetwc", scope: !640, file: !640, line: 773, type: !778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!778 = !DISubroutineType(types: !779)
!779 = !{!636, !636, !647}
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !781, file: !634, line: 164)
!781 = !DISubprogram(name: "vfwprintf", scope: !640, file: !640, line: 598, type: !782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!782 = !DISubroutineType(types: !783)
!783 = !{!8, !711, !720, !784}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, flags: DIFlagTypePassByValue, elements: !786, identifier: "_ZTS13__va_list_tag")
!786 = !{!787, !788, !789, !790}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !785, file: !3, baseType: !629, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !785, file: !3, baseType: !629, size: 32, offset: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !785, file: !3, baseType: !24, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !785, file: !3, baseType: !24, size: 64, offset: 128)
!791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !792, file: !634, line: 166)
!792 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !640, file: !640, line: 696, type: !782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !794, file: !634, line: 169)
!794 = !DISubprogram(name: "vswprintf", scope: !640, file: !640, line: 611, type: !795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!795 = !DISubroutineType(types: !796)
!796 = !{!8, !710, !697, !720, !784}
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !798, file: !634, line: 172)
!798 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !640, file: !640, line: 703, type: !799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!799 = !DISubroutineType(types: !800)
!800 = !{!8, !720, !720, !784}
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !802, file: !634, line: 174)
!802 = !DISubprogram(name: "vwprintf", scope: !640, file: !640, line: 606, type: !803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!803 = !DISubroutineType(types: !804)
!804 = !{!8, !720, !784}
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !806, file: !634, line: 176)
!806 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !640, file: !640, line: 700, type: !803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !808, file: !634, line: 178)
!808 = !DISubprogram(name: "wcrtomb", scope: !640, file: !640, line: 301, type: !809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!809 = !DISubroutineType(types: !810)
!810 = !{!697, !811, !709, !744}
!811 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !655)
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !813, file: !634, line: 179)
!813 = !DISubprogram(name: "wcscat", scope: !640, file: !640, line: 97, type: !814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!814 = !DISubroutineType(types: !815)
!815 = !{!708, !710, !720}
!816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !817, file: !634, line: 180)
!817 = !DISubprogram(name: "wcscmp", scope: !640, file: !640, line: 106, type: !818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!818 = !DISubroutineType(types: !819)
!819 = !{!8, !721, !721}
!820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !821, file: !634, line: 181)
!821 = !DISubprogram(name: "wcscoll", scope: !640, file: !640, line: 131, type: !818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !823, file: !634, line: 182)
!823 = !DISubprogram(name: "wcscpy", scope: !640, file: !640, line: 87, type: !814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !825, file: !634, line: 183)
!825 = !DISubprogram(name: "wcscspn", scope: !640, file: !640, line: 187, type: !826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!826 = !DISubroutineType(types: !827)
!827 = !{!697, !721, !721}
!828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !829, file: !634, line: 184)
!829 = !DISubprogram(name: "wcsftime", scope: !640, file: !640, line: 837, type: !830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!830 = !DISubroutineType(types: !831)
!831 = !{!697, !710, !697, !720, !832}
!832 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !833)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !835)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !836, line: 7, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!836 = !DIFile(filename: "/usr/include/bits/types/struct_tm.h", directory: "")
!837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !838, file: !634, line: 185)
!838 = !DISubprogram(name: "wcslen", scope: !640, file: !640, line: 222, type: !839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!839 = !DISubroutineType(types: !840)
!840 = !{!697, !721}
!841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !842, file: !634, line: 186)
!842 = !DISubprogram(name: "wcsncat", scope: !640, file: !640, line: 101, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!843 = !DISubroutineType(types: !844)
!844 = !{!708, !710, !720, !697}
!845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !846, file: !634, line: 187)
!846 = !DISubprogram(name: "wcsncmp", scope: !640, file: !640, line: 109, type: !847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!847 = !DISubroutineType(types: !848)
!848 = !{!8, !721, !721, !697}
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !850, file: !634, line: 188)
!850 = !DISubprogram(name: "wcsncpy", scope: !640, file: !640, line: 92, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!851 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !852, file: !634, line: 189)
!852 = !DISubprogram(name: "wcsrtombs", scope: !640, file: !640, line: 343, type: !853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!853 = !DISubroutineType(types: !854)
!854 = !{!697, !811, !855, !697, !744}
!855 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !856)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !858, file: !634, line: 190)
!858 = !DISubprogram(name: "wcsspn", scope: !640, file: !640, line: 191, type: !826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!859 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !860, file: !634, line: 191)
!860 = !DISubprogram(name: "wcstod", scope: !640, file: !640, line: 377, type: !861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!861 = !DISubroutineType(types: !862)
!862 = !{!863, !720, !864}
!863 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!864 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !865)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !867, file: !634, line: 193)
!867 = !DISubprogram(name: "wcstof", scope: !640, file: !640, line: 382, type: !868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!868 = !DISubroutineType(types: !869)
!869 = !{!870, !720, !864}
!870 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !872, file: !634, line: 195)
!872 = !DISubprogram(name: "wcstok", scope: !640, file: !640, line: 217, type: !873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!873 = !DISubroutineType(types: !874)
!874 = !{!708, !710, !720, !864}
!875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !876, file: !634, line: 196)
!876 = !DISubprogram(name: "wcstol", scope: !640, file: !640, line: 428, type: !877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!877 = !DISubroutineType(types: !878)
!878 = !{!30, !720, !864, !8}
!879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !880, file: !634, line: 197)
!880 = !DISubprogram(name: "wcstoul", scope: !640, file: !640, line: 433, type: !881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!881 = !DISubroutineType(types: !882)
!882 = !{!22, !720, !864, !8}
!883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !884, file: !634, line: 198)
!884 = !DISubprogram(name: "wcsxfrm", scope: !640, file: !640, line: 135, type: !885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!885 = !DISubroutineType(types: !886)
!886 = !{!697, !710, !720, !697}
!887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !888, file: !634, line: 199)
!888 = !DISubprogram(name: "wctob", scope: !640, file: !640, line: 324, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!889 = !DISubroutineType(types: !890)
!890 = !{!8, !636}
!891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !892, file: !634, line: 200)
!892 = !DISubprogram(name: "wmemcmp", scope: !640, file: !640, line: 258, type: !847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !894, file: !634, line: 201)
!894 = !DISubprogram(name: "wmemcpy", scope: !640, file: !640, line: 262, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !896, file: !634, line: 202)
!896 = !DISubprogram(name: "wmemmove", scope: !640, file: !640, line: 267, type: !897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!897 = !DISubroutineType(types: !898)
!898 = !{!708, !708, !721, !697}
!899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !900, file: !634, line: 203)
!900 = !DISubprogram(name: "wmemset", scope: !640, file: !640, line: 271, type: !901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!901 = !DISubroutineType(types: !902)
!902 = !{!708, !708, !709, !697}
!903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !904, file: !634, line: 204)
!904 = !DISubprogram(name: "wprintf", scope: !640, file: !640, line: 587, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!905 = !DISubroutineType(types: !906)
!906 = !{!8, !720, null}
!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !908, file: !634, line: 205)
!908 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !640, file: !640, line: 646, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !910, file: !634, line: 206)
!910 = !DISubprogram(name: "wcschr", scope: !640, file: !640, line: 164, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!911 = !DISubroutineType(types: !912)
!912 = !{!708, !721, !709}
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !914, file: !634, line: 207)
!914 = !DISubprogram(name: "wcspbrk", scope: !640, file: !640, line: 201, type: !915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!915 = !DISubroutineType(types: !916)
!916 = !{!708, !721, !721}
!917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !918, file: !634, line: 208)
!918 = !DISubprogram(name: "wcsrchr", scope: !640, file: !640, line: 174, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !920, file: !634, line: 209)
!920 = !DISubprogram(name: "wcsstr", scope: !640, file: !640, line: 212, type: !915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !922, file: !634, line: 210)
!922 = !DISubprogram(name: "wmemchr", scope: !640, file: !640, line: 253, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!923 = !DISubroutineType(types: !924)
!924 = !{!708, !721, !709, !697}
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !926, file: !634, line: 251)
!926 = !DISubprogram(name: "wcstold", scope: !640, file: !640, line: 384, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!927 = !DISubroutineType(types: !928)
!928 = !{!929, !720, !864}
!929 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !931, file: !634, line: 260)
!931 = !DISubprogram(name: "wcstoll", scope: !640, file: !640, line: 441, type: !932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!932 = !DISubroutineType(types: !933)
!933 = !{!934, !720, !864, !8}
!934 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !936, file: !634, line: 261)
!936 = !DISubprogram(name: "wcstoull", scope: !640, file: !640, line: 448, type: !937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!937 = !DISubroutineType(types: !938)
!938 = !{!939, !720, !864, !8}
!939 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!940 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !926, file: !634, line: 267)
!941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !931, file: !634, line: 268)
!942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !936, file: !634, line: 269)
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !867, file: !634, line: 283)
!944 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !792, file: !634, line: 286)
!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !798, file: !634, line: 289)
!946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !806, file: !634, line: 292)
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !926, file: !634, line: 296)
!948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !931, file: !634, line: 297)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !936, file: !634, line: 298)
!950 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !951, file: !952, line: 58)
!951 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !953, file: !952, line: 80, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !954, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!952 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/exception_ptr.h", directory: "")
!953 = !DINamespace(name: "__exception_ptr", scope: !7)
!954 = !{!955, !956, !960, !963, !964, !969, !970, !974, !979, !983, !987, !990, !991, !994, !997}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !951, file: !952, line: 82, baseType: !24, size: 64)
!956 = !DISubprogram(name: "exception_ptr", scope: !951, file: !952, line: 84, type: !957, scopeLine: 84, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!957 = !DISubroutineType(types: !958)
!958 = !{null, !959, !24}
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!960 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !951, file: !952, line: 86, type: !961, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!961 = !DISubroutineType(types: !962)
!962 = !{null, !959}
!963 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !951, file: !952, line: 87, type: !961, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!964 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !951, file: !952, line: 89, type: !965, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!965 = !DISubroutineType(types: !966)
!966 = !{!24, !967}
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !951)
!969 = !DISubprogram(name: "exception_ptr", scope: !951, file: !952, line: 97, type: !961, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!970 = !DISubprogram(name: "exception_ptr", scope: !951, file: !952, line: 99, type: !971, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !959, !973}
!973 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !968, size: 64)
!974 = !DISubprogram(name: "exception_ptr", scope: !951, file: !952, line: 102, type: !975, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!975 = !DISubroutineType(types: !976)
!976 = !{null, !959, !977}
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !7, file: !38, line: 264, baseType: !978)
!978 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!979 = !DISubprogram(name: "exception_ptr", scope: !951, file: !952, line: 106, type: !980, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!980 = !DISubroutineType(types: !981)
!981 = !{null, !959, !982}
!982 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !951, size: 64)
!983 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !951, file: !952, line: 119, type: !984, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!984 = !DISubroutineType(types: !985)
!985 = !{!986, !959, !973}
!986 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !951, size: 64)
!987 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !951, file: !952, line: 123, type: !988, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!988 = !DISubroutineType(types: !989)
!989 = !{!986, !959, !982}
!990 = !DISubprogram(name: "~exception_ptr", scope: !951, file: !952, line: 130, type: !961, scopeLine: 130, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!991 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !951, file: !952, line: 133, type: !992, scopeLine: 133, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!992 = !DISubroutineType(types: !993)
!993 = !{null, !959, !986}
!994 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !951, file: !952, line: 145, type: !995, scopeLine: 145, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!995 = !DISubroutineType(types: !996)
!996 = !{!162, !967}
!997 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !951, file: !952, line: 154, type: !998, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!998 = !DISubroutineType(types: !999)
!999 = !{!1000, !967}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1002)
!1002 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !7, file: !1003, line: 88, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!1003 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/typeinfo", directory: "")
!1004 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !953, entity: !1005, file: !952, line: 74)
!1005 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !7, file: !952, line: 70, type: !1006, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{null, !951}
!1008 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1009, entity: !1010, file: !1011, line: 58)
!1009 = !DINamespace(name: "__gnu_debug", scope: null)
!1010 = !DINamespace(name: "__debug", scope: !7)
!1011 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/debug/debug.h", directory: "")
!1012 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1013, file: !1015, line: 47)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !27, line: 24, baseType: !1014)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !29, line: 37, baseType: !678)
!1015 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdint", directory: "")
!1016 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1017, file: !1015, line: 48)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !27, line: 25, baseType: !1018)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !29, line: 39, baseType: !1019)
!1019 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1020 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1021, file: !1015, line: 49)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !27, line: 26, baseType: !1022)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !29, line: 41, baseType: !8)
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !26, file: !1015, line: 50)
!1024 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1025, file: !1015, line: 52)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1026, line: 58, baseType: !678)
!1026 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1028, file: !1015, line: 53)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1026, line: 60, baseType: !30)
!1029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1030, file: !1015, line: 54)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1026, line: 61, baseType: !30)
!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1032, file: !1015, line: 55)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1026, line: 62, baseType: !30)
!1033 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1034, file: !1015, line: 57)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1026, line: 43, baseType: !1035)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !29, line: 52, baseType: !1014)
!1036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1037, file: !1015, line: 58)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1026, line: 44, baseType: !1038)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !29, line: 54, baseType: !1018)
!1039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1040, file: !1015, line: 59)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1026, line: 45, baseType: !1041)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !29, line: 56, baseType: !1022)
!1042 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1043, file: !1015, line: 60)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1026, line: 46, baseType: !1044)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !29, line: 58, baseType: !28)
!1045 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1046, file: !1015, line: 62)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1026, line: 101, baseType: !1047)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !29, line: 72, baseType: !30)
!1048 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1049, file: !1015, line: 63)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1026, line: 87, baseType: !30)
!1050 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1051, file: !1015, line: 65)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1052, line: 24, baseType: !1053)
!1052 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "")
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !29, line: 38, baseType: !588)
!1054 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1055, file: !1015, line: 66)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1052, line: 25, baseType: !1056)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !29, line: 40, baseType: !676)
!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1058, file: !1015, line: 67)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1052, line: 26, baseType: !1059)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !29, line: 42, baseType: !629)
!1060 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1061, file: !1015, line: 68)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1052, line: 27, baseType: !1062)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !29, line: 45, baseType: !22)
!1063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1064, file: !1015, line: 70)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1026, line: 71, baseType: !588)
!1065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1066, file: !1015, line: 71)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1026, line: 73, baseType: !22)
!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1068, file: !1015, line: 72)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1026, line: 74, baseType: !22)
!1069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1070, file: !1015, line: 73)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1026, line: 75, baseType: !22)
!1071 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1072, file: !1015, line: 75)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1026, line: 49, baseType: !1073)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !29, line: 53, baseType: !1053)
!1074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1075, file: !1015, line: 76)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1026, line: 50, baseType: !1076)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !29, line: 55, baseType: !1056)
!1077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1078, file: !1015, line: 77)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1026, line: 51, baseType: !1079)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !29, line: 57, baseType: !1059)
!1080 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1081, file: !1015, line: 78)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1026, line: 52, baseType: !1082)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !29, line: 59, baseType: !1062)
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1084, file: !1015, line: 80)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1026, line: 102, baseType: !1085)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !29, line: 73, baseType: !22)
!1086 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1087, file: !1015, line: 81)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1026, line: 90, baseType: !22)
!1088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1089, file: !1091, line: 53)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !1090, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!1090 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!1091 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/clocale", directory: "")
!1092 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1093, file: !1091, line: 54)
!1093 = !DISubprogram(name: "setlocale", scope: !1090, file: !1090, line: 122, type: !1094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!655, !8, !554}
!1096 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1097, file: !1091, line: 55)
!1097 = !DISubprogram(name: "localeconv", scope: !1090, file: !1090, line: 125, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!1100}
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1102, file: !1106, line: 64)
!1102 = !DISubprogram(name: "isalnum", scope: !1103, file: !1103, line: 108, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1103 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!8, !8}
!1106 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cctype", directory: "")
!1107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1108, file: !1106, line: 65)
!1108 = !DISubprogram(name: "isalpha", scope: !1103, file: !1103, line: 109, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1110, file: !1106, line: 66)
!1110 = !DISubprogram(name: "iscntrl", scope: !1103, file: !1103, line: 110, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1112, file: !1106, line: 67)
!1112 = !DISubprogram(name: "isdigit", scope: !1103, file: !1103, line: 111, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1114, file: !1106, line: 68)
!1114 = !DISubprogram(name: "isgraph", scope: !1103, file: !1103, line: 113, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1116, file: !1106, line: 69)
!1116 = !DISubprogram(name: "islower", scope: !1103, file: !1103, line: 112, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1118, file: !1106, line: 70)
!1118 = !DISubprogram(name: "isprint", scope: !1103, file: !1103, line: 114, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1120, file: !1106, line: 71)
!1120 = !DISubprogram(name: "ispunct", scope: !1103, file: !1103, line: 115, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1122, file: !1106, line: 72)
!1122 = !DISubprogram(name: "isspace", scope: !1103, file: !1103, line: 116, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1124, file: !1106, line: 73)
!1124 = !DISubprogram(name: "isupper", scope: !1103, file: !1103, line: 117, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1126, file: !1106, line: 74)
!1126 = !DISubprogram(name: "isxdigit", scope: !1103, file: !1103, line: 118, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1128, file: !1106, line: 75)
!1128 = !DISubprogram(name: "tolower", scope: !1103, file: !1103, line: 122, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1130, file: !1106, line: 76)
!1130 = !DISubprogram(name: "toupper", scope: !1103, file: !1103, line: 125, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1132, file: !1106, line: 87)
!1132 = !DISubprogram(name: "isblank", scope: !1103, file: !1103, line: 130, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1134, file: !1136, line: 52)
!1134 = !DISubprogram(name: "abs", scope: !1135, file: !1135, line: 840, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1135 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1136 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/std_abs.h", directory: "")
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1138, file: !1140, line: 127)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !1135, line: 62, baseType: !1139)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, file: !1135, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!1140 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdlib", directory: "")
!1141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1142, file: !1140, line: 128)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !1135, line: 70, baseType: !1143)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1135, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !1144, identifier: "_ZTS6ldiv_t")
!1144 = !{!1145, !1146}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1143, file: !1135, line: 68, baseType: !30, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1143, file: !1135, line: 69, baseType: !30, size: 64, offset: 64)
!1147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1148, file: !1140, line: 130)
!1148 = !DISubprogram(name: "abort", scope: !1135, file: !1135, line: 591, type: !1149, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{null}
!1151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1152, file: !1140, line: 134)
!1152 = !DISubprogram(name: "atexit", scope: !1135, file: !1135, line: 595, type: !1153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!8, !1155}
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1157, file: !1140, line: 137)
!1157 = !DISubprogram(name: "at_quick_exit", scope: !1135, file: !1135, line: 600, type: !1153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1159, file: !1140, line: 140)
!1159 = !DISubprogram(name: "atof", scope: !1160, file: !1160, line: 25, type: !1161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1160 = !DIFile(filename: "/usr/include/bits/stdlib-float.h", directory: "")
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!863, !554}
!1163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1164, file: !1140, line: 141)
!1164 = !DISubprogram(name: "atoi", scope: !1135, file: !1135, line: 361, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!8, !554}
!1167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1168, file: !1140, line: 142)
!1168 = !DISubprogram(name: "atol", scope: !1135, file: !1135, line: 366, type: !1169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!30, !554}
!1171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1172, file: !1140, line: 143)
!1172 = !DISubprogram(name: "bsearch", scope: !1173, file: !1173, line: 20, type: !1174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1173 = !DIFile(filename: "/usr/include/bits/stdlib-bsearch.h", directory: "")
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!24, !39, !39, !697, !697, !1176}
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1135, line: 808, baseType: !1177)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!8, !39, !39}
!1180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1181, file: !1140, line: 144)
!1181 = !DISubprogram(name: "calloc", scope: !1135, file: !1135, line: 542, type: !1182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!24, !697, !697}
!1184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1185, file: !1140, line: 145)
!1185 = !DISubprogram(name: "div", scope: !1135, file: !1135, line: 852, type: !1186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!1138, !8, !8}
!1188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1189, file: !1140, line: 146)
!1189 = !DISubprogram(name: "exit", scope: !1135, file: !1135, line: 617, type: !1190, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{null, !8}
!1192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1193, file: !1140, line: 147)
!1193 = !DISubprogram(name: "free", scope: !1135, file: !1135, line: 565, type: !33, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1195, file: !1140, line: 148)
!1195 = !DISubprogram(name: "getenv", scope: !1135, file: !1135, line: 634, type: !1196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!655, !554}
!1198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1199, file: !1140, line: 149)
!1199 = !DISubprogram(name: "labs", scope: !1135, file: !1135, line: 841, type: !1200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!30, !30}
!1202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1203, file: !1140, line: 150)
!1203 = !DISubprogram(name: "ldiv", scope: !1135, file: !1135, line: 854, type: !1204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!1142, !30, !30}
!1206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1207, file: !1140, line: 151)
!1207 = !DISubprogram(name: "malloc", scope: !1135, file: !1135, line: 539, type: !1208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!24, !697}
!1210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1211, file: !1140, line: 153)
!1211 = !DISubprogram(name: "mblen", scope: !1135, file: !1135, line: 922, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!8, !554, !697}
!1214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1215, file: !1140, line: 154)
!1215 = !DISubprogram(name: "mbstowcs", scope: !1135, file: !1135, line: 933, type: !1216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!697, !710, !743, !697}
!1218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1219, file: !1140, line: 155)
!1219 = !DISubprogram(name: "mbtowc", scope: !1135, file: !1135, line: 925, type: !1220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!8, !710, !743, !697}
!1222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1223, file: !1140, line: 157)
!1223 = !DISubprogram(name: "qsort", scope: !1135, file: !1135, line: 830, type: !1224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !24, !697, !697, !1176}
!1226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1227, file: !1140, line: 160)
!1227 = !DISubprogram(name: "quick_exit", scope: !1135, file: !1135, line: 623, type: !1190, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1229, file: !1140, line: 163)
!1229 = !DISubprogram(name: "rand", scope: !1135, file: !1135, line: 453, type: !1230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!8}
!1232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1233, file: !1140, line: 164)
!1233 = !DISubprogram(name: "realloc", scope: !1135, file: !1135, line: 550, type: !1234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!24, !24, !697}
!1236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1237, file: !1140, line: 165)
!1237 = !DISubprogram(name: "srand", scope: !1135, file: !1135, line: 455, type: !1238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !629}
!1240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1241, file: !1140, line: 166)
!1241 = !DISubprogram(name: "strtod", scope: !1135, file: !1135, line: 117, type: !1242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!863, !743, !1244}
!1244 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1245)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!1246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1247, file: !1140, line: 167)
!1247 = !DISubprogram(name: "strtol", scope: !1135, file: !1135, line: 176, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!30, !743, !1244, !8}
!1250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1251, file: !1140, line: 168)
!1251 = !DISubprogram(name: "strtoul", scope: !1135, file: !1135, line: 180, type: !1252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!22, !743, !1244, !8}
!1254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1255, file: !1140, line: 169)
!1255 = !DISubprogram(name: "system", scope: !1135, file: !1135, line: 784, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1257, file: !1140, line: 171)
!1257 = !DISubprogram(name: "wcstombs", scope: !1135, file: !1135, line: 937, type: !1258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!697, !811, !720, !697}
!1260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1261, file: !1140, line: 172)
!1261 = !DISubprogram(name: "wctomb", scope: !1135, file: !1135, line: 929, type: !1262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!8, !655, !709}
!1264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1265, file: !1140, line: 200)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !1135, line: 80, baseType: !1266)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1135, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !1267, identifier: "_ZTS7lldiv_t")
!1267 = !{!1268, !1269}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1266, file: !1135, line: 78, baseType: !934, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1266, file: !1135, line: 79, baseType: !934, size: 64, offset: 64)
!1270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1271, file: !1140, line: 206)
!1271 = !DISubprogram(name: "_Exit", scope: !1135, file: !1135, line: 629, type: !1190, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1273, file: !1140, line: 210)
!1273 = !DISubprogram(name: "llabs", scope: !1135, file: !1135, line: 844, type: !1274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!934, !934}
!1276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1277, file: !1140, line: 216)
!1277 = !DISubprogram(name: "lldiv", scope: !1135, file: !1135, line: 858, type: !1278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!1265, !934, !934}
!1280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1281, file: !1140, line: 227)
!1281 = !DISubprogram(name: "atoll", scope: !1135, file: !1135, line: 373, type: !1282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!934, !554}
!1284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1285, file: !1140, line: 228)
!1285 = !DISubprogram(name: "strtoll", scope: !1135, file: !1135, line: 200, type: !1286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!934, !743, !1244, !8}
!1288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1289, file: !1140, line: 229)
!1289 = !DISubprogram(name: "strtoull", scope: !1135, file: !1135, line: 205, type: !1290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!939, !743, !1244, !8}
!1292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1293, file: !1140, line: 231)
!1293 = !DISubprogram(name: "strtof", scope: !1135, file: !1135, line: 123, type: !1294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!870, !743, !1244}
!1296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1297, file: !1140, line: 232)
!1297 = !DISubprogram(name: "strtold", scope: !1135, file: !1135, line: 126, type: !1298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!929, !743, !1244}
!1300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1265, file: !1140, line: 240)
!1301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1271, file: !1140, line: 242)
!1302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1273, file: !1140, line: 244)
!1303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1304, file: !1140, line: 245)
!1304 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !61, file: !1140, line: 213, type: !1278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1277, file: !1140, line: 246)
!1306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1281, file: !1140, line: 248)
!1307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1293, file: !1140, line: 249)
!1308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1285, file: !1140, line: 250)
!1309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1289, file: !1140, line: 251)
!1310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1297, file: !1140, line: 252)
!1311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1312, file: !1314, line: 98)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1313, line: 7, baseType: !650)
!1313 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1314 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdio", directory: "")
!1315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1316, file: !1314, line: 99)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1317, line: 84, baseType: !1318)
!1317 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !1319, line: 14, baseType: !1320)
!1319 = !DIFile(filename: "/usr/include/bits/types/__fpos_t.h", directory: "")
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !1319, line: 10, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!1321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1322, file: !1314, line: 101)
!1322 = !DISubprogram(name: "clearerr", scope: !1317, file: !1317, line: 762, type: !1323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{null, !1325}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1327, file: !1314, line: 102)
!1327 = !DISubprogram(name: "fclose", scope: !1317, file: !1317, line: 213, type: !1328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!8, !1325}
!1330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1331, file: !1314, line: 103)
!1331 = !DISubprogram(name: "feof", scope: !1317, file: !1317, line: 764, type: !1328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1333, file: !1314, line: 104)
!1333 = !DISubprogram(name: "ferror", scope: !1317, file: !1317, line: 766, type: !1328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1335, file: !1314, line: 105)
!1335 = !DISubprogram(name: "fflush", scope: !1317, file: !1317, line: 218, type: !1328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1337, file: !1314, line: 106)
!1337 = !DISubprogram(name: "fgetc", scope: !1317, file: !1317, line: 489, type: !1328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1339, file: !1314, line: 107)
!1339 = !DISubprogram(name: "fgetpos", scope: !1317, file: !1317, line: 736, type: !1340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!8, !1342, !1343}
!1342 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1325)
!1343 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1344)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1346, file: !1314, line: 108)
!1346 = !DISubprogram(name: "fgets", scope: !1317, file: !1317, line: 568, type: !1347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!655, !811, !8, !1342}
!1349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1350, file: !1314, line: 109)
!1350 = !DISubprogram(name: "fopen", scope: !1317, file: !1317, line: 246, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!1325, !743, !743}
!1353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1354, file: !1314, line: 110)
!1354 = !DISubprogram(name: "fprintf", scope: !1317, file: !1317, line: 326, type: !1355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!8, !1342, !743, null}
!1357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1358, file: !1314, line: 111)
!1358 = !DISubprogram(name: "fputc", scope: !1317, file: !1317, line: 525, type: !1359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!8, !8, !1325}
!1361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1362, file: !1314, line: 112)
!1362 = !DISubprogram(name: "fputs", scope: !1317, file: !1317, line: 631, type: !1363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!8, !743, !1342}
!1365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1366, file: !1314, line: 113)
!1366 = !DISubprogram(name: "fread", scope: !1317, file: !1317, line: 651, type: !1367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!697, !1369, !697, !697, !1342}
!1369 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!1370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1371, file: !1314, line: 114)
!1371 = !DISubprogram(name: "freopen", scope: !1317, file: !1317, line: 252, type: !1372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!1325, !743, !743, !1342}
!1374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1375, file: !1314, line: 115)
!1375 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !1317, file: !1317, line: 410, type: !1355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1377, file: !1314, line: 116)
!1377 = !DISubprogram(name: "fseek", scope: !1317, file: !1317, line: 689, type: !1378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!8, !1325, !30, !8}
!1380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1381, file: !1314, line: 117)
!1381 = !DISubprogram(name: "fsetpos", scope: !1317, file: !1317, line: 741, type: !1382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!8, !1325, !1384}
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1316)
!1386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1387, file: !1314, line: 118)
!1387 = !DISubprogram(name: "ftell", scope: !1317, file: !1317, line: 694, type: !1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!30, !1325}
!1390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1391, file: !1314, line: 119)
!1391 = !DISubprogram(name: "fwrite", scope: !1317, file: !1317, line: 657, type: !1392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!697, !1394, !697, !697, !1342}
!1394 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!1395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1396, file: !1314, line: 120)
!1396 = !DISubprogram(name: "getc", scope: !1317, file: !1317, line: 490, type: !1328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1398, file: !1314, line: 121)
!1398 = !DISubprogram(name: "getchar", scope: !1399, file: !1399, line: 47, type: !1230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1399 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1401, file: !1314, line: 126)
!1401 = !DISubprogram(name: "perror", scope: !1317, file: !1317, line: 780, type: !1402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{null, !554}
!1404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1405, file: !1314, line: 127)
!1405 = !DISubprogram(name: "printf", scope: !1317, file: !1317, line: 332, type: !1406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!8, !743, null}
!1408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1409, file: !1314, line: 128)
!1409 = !DISubprogram(name: "putc", scope: !1317, file: !1317, line: 526, type: !1359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1411, file: !1314, line: 129)
!1411 = !DISubprogram(name: "putchar", scope: !1399, file: !1399, line: 82, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1413, file: !1314, line: 130)
!1413 = !DISubprogram(name: "puts", scope: !1317, file: !1317, line: 637, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1415, file: !1314, line: 131)
!1415 = !DISubprogram(name: "remove", scope: !1317, file: !1317, line: 146, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1417, file: !1314, line: 132)
!1417 = !DISubprogram(name: "rename", scope: !1317, file: !1317, line: 148, type: !1418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!8, !554, !554}
!1420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1421, file: !1314, line: 133)
!1421 = !DISubprogram(name: "rewind", scope: !1317, file: !1317, line: 699, type: !1323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1423, file: !1314, line: 134)
!1423 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !1317, file: !1317, line: 413, type: !1406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1425, file: !1314, line: 135)
!1425 = !DISubprogram(name: "setbuf", scope: !1317, file: !1317, line: 304, type: !1426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{null, !1342, !811}
!1428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1429, file: !1314, line: 136)
!1429 = !DISubprogram(name: "setvbuf", scope: !1317, file: !1317, line: 308, type: !1430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!8, !1342, !811, !8, !697}
!1432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1433, file: !1314, line: 137)
!1433 = !DISubprogram(name: "sprintf", scope: !1317, file: !1317, line: 334, type: !1434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!8, !811, !743, null}
!1436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1437, file: !1314, line: 138)
!1437 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !1317, file: !1317, line: 415, type: !1438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!8, !743, !743, null}
!1440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1441, file: !1314, line: 139)
!1441 = !DISubprogram(name: "tmpfile", scope: !1317, file: !1317, line: 173, type: !1442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!1325}
!1444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1445, file: !1314, line: 141)
!1445 = !DISubprogram(name: "tmpnam", scope: !1317, file: !1317, line: 187, type: !1446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!655, !655}
!1448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1449, file: !1314, line: 143)
!1449 = !DISubprogram(name: "ungetc", scope: !1317, file: !1317, line: 644, type: !1359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1451, file: !1314, line: 144)
!1451 = !DISubprogram(name: "vfprintf", scope: !1317, file: !1317, line: 341, type: !1452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!8, !1342, !743, !784}
!1454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1455, file: !1314, line: 145)
!1455 = !DISubprogram(name: "vprintf", scope: !1399, file: !1399, line: 39, type: !1456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!8, !743, !784}
!1458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1459, file: !1314, line: 146)
!1459 = !DISubprogram(name: "vsprintf", scope: !1317, file: !1317, line: 349, type: !1460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!8, !811, !743, !784}
!1462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1463, file: !1314, line: 175)
!1463 = !DISubprogram(name: "snprintf", scope: !1317, file: !1317, line: 354, type: !1464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!8, !811, !697, !743, null}
!1466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1467, file: !1314, line: 176)
!1467 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !1317, file: !1317, line: 455, type: !1452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1469, file: !1314, line: 177)
!1469 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !1317, file: !1317, line: 460, type: !1456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1471, file: !1314, line: 178)
!1471 = !DISubprogram(name: "vsnprintf", scope: !1317, file: !1317, line: 358, type: !1472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!8, !811, !697, !743, !784}
!1474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !1475, file: !1314, line: 179)
!1475 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !1317, file: !1317, line: 463, type: !1476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!8, !743, !743, !784}
!1478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1463, file: !1314, line: 185)
!1479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1467, file: !1314, line: 186)
!1480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1469, file: !1314, line: 187)
!1481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1471, file: !1314, line: 188)
!1482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1475, file: !1314, line: 189)
!1483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1484, file: !1488, line: 82)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1485, line: 48, baseType: !1486)
!1485 = !DIFile(filename: "/usr/include/wctype.h", directory: "")
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1022)
!1488 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cwctype", directory: "")
!1489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1490, file: !1488, line: 83)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1491, line: 38, baseType: !22)
!1491 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !636, file: !1488, line: 84)
!1493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1494, file: !1488, line: 86)
!1494 = !DISubprogram(name: "iswalnum", scope: !1491, file: !1491, line: 95, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1496, file: !1488, line: 87)
!1496 = !DISubprogram(name: "iswalpha", scope: !1491, file: !1491, line: 101, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1498, file: !1488, line: 89)
!1498 = !DISubprogram(name: "iswblank", scope: !1491, file: !1491, line: 146, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1500, file: !1488, line: 91)
!1500 = !DISubprogram(name: "iswcntrl", scope: !1491, file: !1491, line: 104, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1502, file: !1488, line: 92)
!1502 = !DISubprogram(name: "iswctype", scope: !1491, file: !1491, line: 159, type: !1503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!8, !636, !1490}
!1505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1506, file: !1488, line: 93)
!1506 = !DISubprogram(name: "iswdigit", scope: !1491, file: !1491, line: 108, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1508, file: !1488, line: 94)
!1508 = !DISubprogram(name: "iswgraph", scope: !1491, file: !1491, line: 112, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1510, file: !1488, line: 95)
!1510 = !DISubprogram(name: "iswlower", scope: !1491, file: !1491, line: 117, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1512, file: !1488, line: 96)
!1512 = !DISubprogram(name: "iswprint", scope: !1491, file: !1491, line: 120, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1514, file: !1488, line: 97)
!1514 = !DISubprogram(name: "iswpunct", scope: !1491, file: !1491, line: 125, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1516, file: !1488, line: 98)
!1516 = !DISubprogram(name: "iswspace", scope: !1491, file: !1491, line: 130, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1518, file: !1488, line: 99)
!1518 = !DISubprogram(name: "iswupper", scope: !1491, file: !1491, line: 135, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1520, file: !1488, line: 100)
!1520 = !DISubprogram(name: "iswxdigit", scope: !1491, file: !1491, line: 140, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1522, file: !1488, line: 101)
!1522 = !DISubprogram(name: "towctrans", scope: !1485, file: !1485, line: 55, type: !1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!636, !636, !1484}
!1525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1526, file: !1488, line: 102)
!1526 = !DISubprogram(name: "towlower", scope: !1491, file: !1491, line: 166, type: !1527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!636, !636}
!1529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1530, file: !1488, line: 103)
!1530 = !DISubprogram(name: "towupper", scope: !1491, file: !1491, line: 169, type: !1527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1532, file: !1488, line: 104)
!1532 = !DISubprogram(name: "wctrans", scope: !1485, file: !1485, line: 52, type: !1533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!1484, !554}
!1535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1536, file: !1488, line: 105)
!1536 = !DISubprogram(name: "wctype", scope: !1491, file: !1491, line: 155, type: !1537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!1490, !554}
!1539 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !7, file: !3, line: 11)
!1540 = !{i32 7, !"Dwarf Version", i32 4}
!1541 = !{i32 2, !"Debug Info Version", i32 3}
!1542 = !{i32 1, !"wchar_size", i32 4}
!1543 = !{!"clang version 10.0.1 "}
!1544 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 26, type: !1230, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1545)
!1545 = !{!1546, !1547, !1549, !1554, !1556, !1557, !1558}
!1546 = !DILocalVariable(name: "ths", scope: !1544, file: !3, line: 27, type: !47)
!1547 = !DILocalVariable(name: "i", scope: !1548, file: !3, line: 28, type: !8)
!1548 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 28, column: 3)
!1549 = !DILocalVariable(name: "th", scope: !1550, file: !3, line: 29, type: !1552)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 28, column: 33)
!1551 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 28, column: 3)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !1553, line: 27, baseType: !22)
!1553 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "")
!1554 = !DILocalVariable(name: "__range1", scope: !1555, type: !362, flags: DIFlagArtificial)
!1555 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 35, column: 3)
!1556 = !DILocalVariable(name: "__begin1", scope: !1555, type: !379, flags: DIFlagArtificial)
!1557 = !DILocalVariable(name: "__end1", scope: !1555, type: !379, flags: DIFlagArtificial)
!1558 = !DILocalVariable(name: "th", scope: !1559, file: !3, line: 35, type: !98)
!1559 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 35, column: 3)
!1560 = !DILocation(line: 27, column: 3, scope: !1544)
!1561 = !DILocation(line: 27, column: 21, scope: !1544)
!1562 = !DILocation(line: 28, column: 8, scope: !1548)
!1563 = !DILocation(line: 28, column: 12, scope: !1548)
!1564 = !{!1565, !1565, i64 0}
!1565 = !{!"int", !1566, i64 0}
!1566 = !{!"omnipotent char", !1567, i64 0}
!1567 = !{!"Simple C++ TBAA"}
!1568 = !DILocation(line: 28, column: 19, scope: !1551)
!1569 = !DILocation(line: 28, column: 21, scope: !1551)
!1570 = !DILocation(line: 28, column: 3, scope: !1548)
!1571 = !DILocation(line: 28, column: 3, scope: !1551)
!1572 = !DILocation(line: 29, column: 5, scope: !1550)
!1573 = !DILocation(line: 29, column: 15, scope: !1550)
!1574 = !DILocation(line: 30, column: 5, scope: !1550)
!1575 = !DILocation(line: 31, column: 27, scope: !1550)
!1576 = !DILocation(line: 31, column: 5, scope: !1550)
!1577 = !DILocation(line: 32, column: 9, scope: !1550)
!1578 = !DILocation(line: 33, column: 3, scope: !1551)
!1579 = !DILocation(line: 33, column: 3, scope: !1550)
!1580 = !DILocation(line: 28, column: 29, scope: !1551)
!1581 = distinct !{!1581, !1570, !1582}
!1582 = !DILocation(line: 33, column: 3, scope: !1548)
!1583 = !DILocation(line: 41, column: 1, scope: !1550)
!1584 = !DILocation(line: 35, column: 19, scope: !1555)
!1585 = !DILocation(line: 0, scope: !1555)
!1586 = !{!1587, !1587, i64 0}
!1587 = !{!"any pointer", !1566, i64 0}
!1588 = !DILocation(line: 35, column: 17, scope: !1555)
!1589 = !DILocation(line: 35, column: 8, scope: !1559)
!1590 = !DILocation(line: 35, column: 14, scope: !1559)
!1591 = !DILocation(line: 35, column: 17, scope: !1559)
!1592 = !DILocation(line: 36, column: 18, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 35, column: 24)
!1594 = !{!1595, !1595, i64 0}
!1595 = !{!"long", !1566, i64 0}
!1596 = !DILocation(line: 36, column: 5, scope: !1593)
!1597 = !DILocation(line: 37, column: 3, scope: !1555)
!1598 = !DILocation(line: 35, column: 3, scope: !1555)
!1599 = distinct !{!1599, !1598, !1597}
!1600 = !DILocation(line: 41, column: 1, scope: !1593)
!1601 = !DILocation(line: 39, column: 8, scope: !1544)
!1602 = !DILocation(line: 39, column: 25, scope: !1544)
!1603 = !DILocation(line: 39, column: 22, scope: !1544)
!1604 = !DILocation(line: 39, column: 31, scope: !1544)
!1605 = !DILocation(line: 40, column: 3, scope: !1544)
!1606 = !DILocation(line: 41, column: 1, scope: !1544)
!1607 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt6vectorImSaImEEC2Ev", scope: !47, file: !36, line: 487, type: !314, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !313, retainedNodes: !1608)
!1608 = !{!1609}
!1609 = !DILocalVariable(name: "this", arg: 1, scope: !1607, type: !1610, flags: DIFlagArtificial | DIFlagObjectPointer)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!1611 = !DILocation(line: 0, scope: !1607)
!1612 = !DILocation(line: 487, column: 24, scope: !1607)
!1613 = !DILocation(line: 487, column: 7, scope: !1607)
!1614 = distinct !DISubprogram(name: "increase_count", linkageName: "_ZL14increase_countv", scope: !3, file: !3, line: 24, type: !1149, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !25)
!1615 = !DILocation(line: 24, column: 37, scope: !1614)
!1616 = !DILocation(line: 24, column: 41, scope: !1614)
!1617 = distinct !DISubprogram(name: "my_create_thread", linkageName: "_ZL16my_create_threadPml", scope: !3, file: !3, line: 22, type: !1618, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1621)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{null, !1620, !26}
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1621 = !{!1622, !1623}
!1622 = !DILocalVariable(name: "th", arg: 1, scope: !1617, file: !3, line: 22, type: !1620)
!1623 = !DILocalVariable(name: "x", arg: 2, scope: !1617, file: !3, line: 22, type: !26)
!1624 = !DILocation(line: 22, column: 41, scope: !1617)
!1625 = !DILocation(line: 22, column: 53, scope: !1617)
!1626 = !DILocation(line: 22, column: 73, scope: !1617)
!1627 = !DILocation(line: 22, column: 101, scope: !1617)
!1628 = !DILocation(line: 22, column: 94, scope: !1617)
!1629 = !DILocation(line: 22, column: 58, scope: !1617)
!1630 = !DILocation(line: 22, column: 105, scope: !1617)
!1631 = distinct !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorImSaImEE9push_backERKm", scope: !47, file: !36, line: 1187, type: !509, scopeLine: 1188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !508, retainedNodes: !1632)
!1632 = !{!1633, !1634}
!1633 = !DILocalVariable(name: "this", arg: 1, scope: !1631, type: !1610, flags: DIFlagArtificial | DIFlagObjectPointer)
!1634 = !DILocalVariable(name: "__x", arg: 2, scope: !1631, file: !36, line: 1187, type: !329)
!1635 = !DILocation(line: 0, scope: !1631)
!1636 = !DILocation(line: 1187, column: 35, scope: !1631)
!1637 = !DILocation(line: 1189, column: 12, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1631, file: !36, line: 1189, column: 6)
!1639 = !DILocation(line: 1189, column: 6, scope: !1638)
!1640 = !DILocation(line: 1189, column: 20, scope: !1638)
!1641 = !{!1642, !1587, i64 8}
!1642 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !1587, i64 0, !1587, i64 8, !1587, i64 16}
!1643 = !DILocation(line: 1189, column: 39, scope: !1638)
!1644 = !DILocation(line: 1189, column: 33, scope: !1638)
!1645 = !DILocation(line: 1189, column: 47, scope: !1638)
!1646 = !{!1642, !1587, i64 16}
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
!1668 = !DILocalVariable(name: "this", arg: 1, scope: !1666, type: !1610, flags: DIFlagArtificial | DIFlagObjectPointer)
!1669 = !DILocation(line: 0, scope: !1666)
!1670 = !DILocation(line: 812, column: 31, scope: !1666)
!1671 = !DILocation(line: 812, column: 25, scope: !1666)
!1672 = !DILocation(line: 812, column: 39, scope: !1666)
!1673 = !DILocation(line: 812, column: 16, scope: !1666)
!1674 = !DILocation(line: 812, column: 9, scope: !1666)
!1675 = distinct !DISubprogram(name: "end", linkageName: "_ZNSt6vectorImSaImEE3endEv", scope: !47, file: !36, line: 829, type: !376, scopeLine: 830, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !442, retainedNodes: !1676)
!1676 = !{!1677}
!1677 = !DILocalVariable(name: "this", arg: 1, scope: !1675, type: !1610, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!1705 = !{!1706, !1587, i64 0}
!1706 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEE", !1587, i64 0}
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
!1787 = !{!"vtable pointer", !1567, i64 0}
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
!1829 = !DILocalVariable(name: "this", arg: 1, scope: !1827, type: !1610, flags: DIFlagArtificial | DIFlagObjectPointer)
!1830 = !DILocation(line: 0, scope: !1827)
!1831 = !DILocation(line: 680, column: 22, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1827, file: !36, line: 679, column: 7)
!1833 = !DILocation(line: 680, column: 16, scope: !1832)
!1834 = !DILocation(line: 680, column: 30, scope: !1832)
!1835 = !{!1642, !1587, i64 0}
!1836 = !DILocation(line: 680, column: 46, scope: !1832)
!1837 = !DILocation(line: 680, column: 40, scope: !1832)
!1838 = !DILocation(line: 680, column: 54, scope: !1832)
!1839 = !DILocation(line: 681, column: 9, scope: !1832)
!1840 = !DILocation(line: 680, column: 2, scope: !1832)
!1841 = !DILocation(line: 683, column: 7, scope: !1832)
!1842 = !DILocation(line: 683, column: 7, scope: !1827)
!1843 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !593, file: !593, line: 74, type: !1149, scopeLine: 74, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !25)
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
!1884 = !{!1885}
!1885 = !{i64 2, i64 3, i1 false}
!1886 = distinct !DISubprogram(name: "square", linkageName: "_ZL6squarePv", scope: !3, file: !3, line: 16, type: !1887, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1889)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!24, !24}
!1889 = !{!1890, !1891}
!1890 = !DILocalVariable(name: "x", arg: 1, scope: !1886, file: !3, line: 16, type: !24)
!1891 = !DILocalVariable(name: "k", scope: !1886, file: !3, line: 17, type: !26)
!1892 = !DILocation(line: 16, column: 27, scope: !1886)
!1893 = !DILocation(line: 17, column: 3, scope: !1886)
!1894 = !DILocation(line: 17, column: 11, scope: !1886)
!1895 = !DILocation(line: 17, column: 24, scope: !1886)
!1896 = !DILocation(line: 17, column: 15, scope: !1886)
!1897 = !DILocation(line: 18, column: 12, scope: !1886)
!1898 = !DILocation(line: 18, column: 16, scope: !1886)
!1899 = !DILocation(line: 18, column: 14, scope: !1886)
!1900 = !DILocation(line: 18, column: 9, scope: !1886)
!1901 = !DILocation(line: 20, column: 1, scope: !1886)
!1902 = !DILocation(line: 19, column: 3, scope: !1886)
!1903 = distinct !DISubprogram(name: "_Destroy<unsigned long *, unsigned long>", linkageName: "_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E", scope: !7, file: !65, line: 735, type: !1904, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1910, retainedNodes: !1906)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{null, !41, !41, !132}
!1906 = !{!1907, !1908, !1909}
!1907 = !DILocalVariable(name: "__first", arg: 1, scope: !1903, file: !65, line: 735, type: !41)
!1908 = !DILocalVariable(name: "__last", arg: 2, scope: !1903, file: !65, line: 735, type: !41)
!1909 = !DILocalVariable(arg: 3, scope: !1903, file: !65, line: 736, type: !132)
!1910 = !{!1911, !119}
!1911 = !DITemplateTypeParameter(name: "_ForwardIterator", type: !41)
!1912 = !DILocation(line: 735, column: 31, scope: !1903)
!1913 = !DILocation(line: 735, column: 57, scope: !1903)
!1914 = !DILocation(line: 736, column: 22, scope: !1903)
!1915 = !DILocation(line: 738, column: 16, scope: !1903)
!1916 = !DILocation(line: 738, column: 25, scope: !1903)
!1917 = !DILocation(line: 738, column: 7, scope: !1903)
!1918 = !DILocation(line: 739, column: 5, scope: !1903)
!1919 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv", scope: !50, file: !36, line: 276, type: !216, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !215, retainedNodes: !1920)
!1920 = !{!1921}
!1921 = !DILocalVariable(name: "this", arg: 1, scope: !1919, type: !1848, flags: DIFlagArtificial | DIFlagObjectPointer)
!1922 = !DILocation(line: 0, scope: !1919)
!1923 = !DILocation(line: 277, column: 22, scope: !1919)
!1924 = !DILocation(line: 277, column: 16, scope: !1919)
!1925 = !DILocation(line: 277, column: 9, scope: !1919)
!1926 = distinct !DISubprogram(name: "~_Vector_base", linkageName: "_ZNSt12_Vector_baseImSaImEED2Ev", scope: !50, file: !36, line: 333, type: !230, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !256, retainedNodes: !1927)
!1927 = !{!1928}
!1928 = !DILocalVariable(name: "this", arg: 1, scope: !1926, type: !1848, flags: DIFlagArtificial | DIFlagObjectPointer)
!1929 = !DILocation(line: 0, scope: !1926)
!1930 = !DILocation(line: 335, column: 16, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1926, file: !36, line: 334, column: 7)
!1932 = !DILocation(line: 335, column: 24, scope: !1931)
!1933 = !DILocation(line: 336, column: 9, scope: !1931)
!1934 = !DILocation(line: 336, column: 17, scope: !1931)
!1935 = !DILocation(line: 336, column: 37, scope: !1931)
!1936 = !DILocation(line: 336, column: 45, scope: !1931)
!1937 = !DILocation(line: 336, column: 35, scope: !1931)
!1938 = !DILocation(line: 335, column: 2, scope: !1931)
!1939 = !DILocation(line: 337, column: 7, scope: !1931)
!1940 = !DILocation(line: 337, column: 7, scope: !1926)
!1941 = distinct !DISubprogram(name: "_Destroy<unsigned long *>", linkageName: "_ZSt8_DestroyIPmEvT_S1_", scope: !7, file: !1942, line: 171, type: !1943, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1948, retainedNodes: !1945)
!1942 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/stl_construct.h", directory: "")
!1943 = !DISubroutineType(types: !1944)
!1944 = !{null, !41, !41}
!1945 = !{!1946, !1947}
!1946 = !DILocalVariable(name: "__first", arg: 1, scope: !1941, file: !1942, line: 171, type: !41)
!1947 = !DILocalVariable(name: "__last", arg: 2, scope: !1941, file: !1942, line: 171, type: !41)
!1948 = !{!1911}
!1949 = !DILocation(line: 171, column: 31, scope: !1941)
!1950 = !DILocation(line: 171, column: 57, scope: !1941)
!1951 = !DILocation(line: 185, column: 12, scope: !1941)
!1952 = !DILocation(line: 185, column: 21, scope: !1941)
!1953 = !DILocation(line: 184, column: 7, scope: !1941)
!1954 = !DILocation(line: 186, column: 5, scope: !1941)
!1955 = distinct !DISubprogram(name: "__destroy<unsigned long *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_", scope: !1956, file: !1942, line: 161, type: !1943, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1948, declaration: !1959, retainedNodes: !1960)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Destroy_aux<true>", scope: !7, file: !1942, line: 157, size: 8, flags: DIFlagTypePassByValue, elements: !25, templateParams: !1957, identifier: "_ZTSSt12_Destroy_auxILb1EE")
!1957 = !{!1958}
!1958 = !DITemplateValueParameter(type: !162, value: i8 1)
!1959 = !DISubprogram(name: "__destroy<unsigned long *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_", scope: !1956, file: !1942, line: 161, type: !1943, scopeLine: 161, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized, templateParams: !1948)
!1960 = !{!1961, !1962}
!1961 = !DILocalVariable(arg: 1, scope: !1955, file: !1942, line: 161, type: !41)
!1962 = !DILocalVariable(arg: 2, scope: !1955, file: !1942, line: 161, type: !41)
!1963 = !DILocation(line: 161, column: 35, scope: !1955)
!1964 = !DILocation(line: 161, column: 53, scope: !1955)
!1965 = !DILocation(line: 161, column: 57, scope: !1955)
!1966 = distinct !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm", scope: !50, file: !36, line: 350, type: !261, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !260, retainedNodes: !1967)
!1967 = !{!1968, !1969, !1970}
!1968 = !DILocalVariable(name: "this", arg: 1, scope: !1966, type: !1848, flags: DIFlagArtificial | DIFlagObjectPointer)
!1969 = !DILocalVariable(name: "__p", arg: 2, scope: !1966, file: !36, line: 350, type: !174)
!1970 = !DILocalVariable(name: "__n", arg: 3, scope: !1966, file: !36, line: 350, type: !37)
!1971 = !DILocation(line: 0, scope: !1966)
!1972 = !DILocation(line: 350, column: 29, scope: !1966)
!1973 = !DILocation(line: 350, column: 41, scope: !1966)
!1974 = !DILocation(line: 353, column: 6, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1966, file: !36, line: 353, column: 6)
!1976 = !DILocation(line: 353, column: 6, scope: !1966)
!1977 = !DILocation(line: 354, column: 20, scope: !1975)
!1978 = !DILocation(line: 354, column: 29, scope: !1975)
!1979 = !DILocation(line: 354, column: 34, scope: !1975)
!1980 = !DILocation(line: 354, column: 4, scope: !1975)
!1981 = !DILocation(line: 355, column: 7, scope: !1966)
!1982 = distinct !DISubprogram(name: "~new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorImED2Ev", scope: !79, file: !80, line: 89, type: !83, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !91, retainedNodes: !1983)
!1983 = !{!1984}
!1984 = !DILocalVariable(name: "this", arg: 1, scope: !1982, type: !1881, flags: DIFlagArtificial | DIFlagObjectPointer)
!1985 = !DILocation(line: 0, scope: !1982)
!1986 = !DILocation(line: 89, column: 48, scope: !1982)
!1987 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm", scope: !64, file: !65, line: 491, type: !140, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !139, retainedNodes: !1988)
!1988 = !{!1989, !1990, !1991}
!1989 = !DILocalVariable(name: "__a", arg: 1, scope: !1987, file: !65, line: 491, type: !71)
!1990 = !DILocalVariable(name: "__p", arg: 2, scope: !1987, file: !65, line: 491, type: !70)
!1991 = !DILocalVariable(name: "__n", arg: 3, scope: !1987, file: !65, line: 491, type: !134)
!1992 = !DILocation(line: 491, column: 34, scope: !1987)
!1993 = !DILocation(line: 491, column: 47, scope: !1987)
!1994 = !DILocation(line: 491, column: 62, scope: !1987)
!1995 = !DILocation(line: 492, column: 9, scope: !1987)
!1996 = !DILocation(line: 492, column: 24, scope: !1987)
!1997 = !DILocation(line: 492, column: 29, scope: !1987)
!1998 = !DILocation(line: 492, column: 13, scope: !1987)
!1999 = !DILocation(line: 492, column: 35, scope: !1987)
!2000 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm", scope: !79, file: !80, line: 120, type: !112, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !111, retainedNodes: !2001)
!2001 = !{!2002, !2003, !2004}
!2002 = !DILocalVariable(name: "this", arg: 1, scope: !2000, type: !1881, flags: DIFlagArtificial | DIFlagObjectPointer)
!2003 = !DILocalVariable(name: "__p", arg: 2, scope: !2000, file: !80, line: 120, type: !41)
!2004 = !DILocalVariable(name: "__t", arg: 3, scope: !2000, file: !80, line: 120, type: !110)
!2005 = !DILocation(line: 0, scope: !2000)
!2006 = !DILocation(line: 120, column: 23, scope: !2000)
!2007 = !DILocation(line: 120, column: 38, scope: !2000)
!2008 = !DILocation(line: 133, column: 20, scope: !2000)
!2009 = !DILocation(line: 133, column: 2, scope: !2000)
!2010 = !DILocation(line: 138, column: 7, scope: !2000)
!2011 = distinct !DISubprogram(name: "construct<unsigned long, const unsigned long &>", linkageName: "_ZNSt16allocator_traitsISaImEE9constructImJRKmEEEvRS0_PT_DpOT0_", scope: !64, file: !65, line: 507, type: !2012, scopeLine: 510, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !2015, declaration: !2014, retainedNodes: !2020)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{null, !71, !41, !106}
!2014 = !DISubprogram(name: "construct<unsigned long, const unsigned long &>", linkageName: "_ZNSt16allocator_traitsISaImEE9constructImJRKmEEEvRS0_PT_DpOT0_", scope: !64, file: !65, line: 507, type: !2012, scopeLine: 507, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized, templateParams: !2015)
!2015 = !{!2016, !2017}
!2016 = !DITemplateTypeParameter(name: "_Up", type: !22)
!2017 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !2018)
!2018 = !{!2019}
!2019 = !DITemplateTypeParameter(type: !106)
!2020 = !{!2021, !2022, !2023}
!2021 = !DILocalVariable(name: "__a", arg: 1, scope: !2011, file: !65, line: 507, type: !71)
!2022 = !DILocalVariable(name: "__p", arg: 2, scope: !2011, file: !65, line: 507, type: !41)
!2023 = !DILocalVariable(name: "__args", arg: 3, scope: !2011, file: !65, line: 508, type: !106)
!2024 = !DILocation(line: 507, column: 28, scope: !2011)
!2025 = !DILocation(line: 507, column: 66, scope: !2011)
!2026 = !DILocation(line: 508, column: 16, scope: !2011)
!2027 = !DILocation(line: 512, column: 4, scope: !2011)
!2028 = !DILocation(line: 512, column: 18, scope: !2011)
!2029 = !DILocation(line: 512, column: 43, scope: !2011)
!2030 = !DILocation(line: 512, column: 23, scope: !2011)
!2031 = !DILocation(line: 512, column: 8, scope: !2011)
!2032 = !DILocation(line: 516, column: 2, scope: !2011)
!2033 = distinct !DISubprogram(name: "_M_realloc_insert<const unsigned long &>", linkageName: "_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_", scope: !47, file: !2034, line: 427, type: !2035, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !2038, declaration: !2037, retainedNodes: !2039)
!2034 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/vector.tcc", directory: "")
!2035 = !DISubroutineType(types: !2036)
!2036 = !{null, !316, !378, !106}
!2037 = !DISubprogram(name: "_M_realloc_insert<const unsigned long &>", linkageName: "_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_", scope: !47, file: !36, line: 1737, type: !2035, scopeLine: 1737, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !2038)
!2038 = !{!2017}
!2039 = !{!2040, !2041, !2042, !2043, !2045, !2046, !2047, !2048, !2049}
!2040 = !DILocalVariable(name: "this", arg: 1, scope: !2033, type: !1610, flags: DIFlagArtificial | DIFlagObjectPointer)
!2041 = !DILocalVariable(name: "__position", arg: 2, scope: !2033, file: !36, line: 1737, type: !378)
!2042 = !DILocalVariable(name: "__args", arg: 3, scope: !2033, file: !36, line: 1737, type: !106)
!2043 = !DILocalVariable(name: "__len", scope: !2033, file: !2034, line: 435, type: !2044)
!2044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!2045 = !DILocalVariable(name: "__old_start", scope: !2033, file: !2034, line: 437, type: !304)
!2046 = !DILocalVariable(name: "__old_finish", scope: !2033, file: !2034, line: 438, type: !304)
!2047 = !DILocalVariable(name: "__elems_before", scope: !2033, file: !2034, line: 439, type: !2044)
!2048 = !DILocalVariable(name: "__new_start", scope: !2033, file: !2034, line: 440, type: !304)
!2049 = !DILocalVariable(name: "__new_finish", scope: !2033, file: !2034, line: 441, type: !304)
!2050 = !DILocation(line: 0, scope: !2033)
!2051 = !DILocation(line: 1737, column: 29, scope: !2033)
!2052 = !DILocation(line: 1737, column: 52, scope: !2033)
!2053 = !DILocation(line: 435, column: 7, scope: !2033)
!2054 = !DILocation(line: 435, column: 23, scope: !2033)
!2055 = !DILocation(line: 436, column: 2, scope: !2033)
!2056 = !DILocation(line: 437, column: 7, scope: !2033)
!2057 = !DILocation(line: 437, column: 15, scope: !2033)
!2058 = !DILocation(line: 437, column: 35, scope: !2033)
!2059 = !DILocation(line: 437, column: 29, scope: !2033)
!2060 = !DILocation(line: 437, column: 43, scope: !2033)
!2061 = !DILocation(line: 438, column: 7, scope: !2033)
!2062 = !DILocation(line: 438, column: 15, scope: !2033)
!2063 = !DILocation(line: 438, column: 36, scope: !2033)
!2064 = !DILocation(line: 438, column: 30, scope: !2033)
!2065 = !DILocation(line: 438, column: 44, scope: !2033)
!2066 = !DILocation(line: 439, column: 7, scope: !2033)
!2067 = !DILocation(line: 439, column: 23, scope: !2033)
!2068 = !DILocation(line: 439, column: 53, scope: !2033)
!2069 = !DILocation(line: 439, column: 51, scope: !2033)
!2070 = !DILocation(line: 439, column: 40, scope: !2033)
!2071 = !DILocation(line: 440, column: 7, scope: !2033)
!2072 = !DILocation(line: 440, column: 15, scope: !2033)
!2073 = !DILocation(line: 440, column: 33, scope: !2033)
!2074 = !DILocation(line: 440, column: 45, scope: !2033)
!2075 = !DILocation(line: 441, column: 7, scope: !2033)
!2076 = !DILocation(line: 441, column: 15, scope: !2033)
!2077 = !DILocation(line: 441, column: 28, scope: !2033)
!2078 = !DILocation(line: 449, column: 35, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2033, file: !2034, line: 443, column: 2)
!2080 = !DILocation(line: 449, column: 29, scope: !2079)
!2081 = !DILocation(line: 450, column: 8, scope: !2079)
!2082 = !DILocation(line: 450, column: 22, scope: !2079)
!2083 = !DILocation(line: 450, column: 20, scope: !2079)
!2084 = !DILocation(line: 452, column: 28, scope: !2079)
!2085 = !DILocation(line: 452, column: 8, scope: !2079)
!2086 = !DILocation(line: 449, column: 4, scope: !2079)
!2087 = !DILocation(line: 456, column: 17, scope: !2079)
!2088 = !DILocation(line: 461, column: 35, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !2034, line: 460, column: 6)
!2090 = distinct !DILexicalBlock(scope: !2079, file: !2034, line: 459, column: 29)
!2091 = !DILocation(line: 461, column: 59, scope: !2089)
!2092 = !DILocation(line: 462, column: 7, scope: !2089)
!2093 = !DILocation(line: 462, column: 20, scope: !2089)
!2094 = !DILocation(line: 461, column: 23, scope: !2089)
!2095 = !DILocation(line: 461, column: 21, scope: !2089)
!2096 = !DILocation(line: 464, column: 8, scope: !2089)
!2097 = !DILocation(line: 466, column: 46, scope: !2089)
!2098 = !DILocation(line: 466, column: 54, scope: !2089)
!2099 = !DILocation(line: 467, column: 7, scope: !2089)
!2100 = !DILocation(line: 467, column: 21, scope: !2089)
!2101 = !DILocation(line: 466, column: 23, scope: !2089)
!2102 = !DILocation(line: 466, column: 21, scope: !2089)
!2103 = !DILocation(line: 500, column: 7, scope: !2033)
!2104 = !DILocation(line: 500, column: 21, scope: !2033)
!2105 = !DILocation(line: 501, column: 13, scope: !2033)
!2106 = !DILocation(line: 501, column: 7, scope: !2033)
!2107 = !DILocation(line: 501, column: 21, scope: !2033)
!2108 = !DILocation(line: 501, column: 41, scope: !2033)
!2109 = !DILocation(line: 501, column: 39, scope: !2033)
!2110 = !DILocation(line: 502, column: 32, scope: !2033)
!2111 = !DILocation(line: 502, column: 13, scope: !2033)
!2112 = !DILocation(line: 502, column: 7, scope: !2033)
!2113 = !DILocation(line: 502, column: 21, scope: !2033)
!2114 = !DILocation(line: 502, column: 30, scope: !2033)
!2115 = !DILocation(line: 503, column: 33, scope: !2033)
!2116 = !DILocation(line: 503, column: 13, scope: !2033)
!2117 = !DILocation(line: 503, column: 7, scope: !2033)
!2118 = !DILocation(line: 503, column: 21, scope: !2033)
!2119 = !DILocation(line: 503, column: 31, scope: !2033)
!2120 = !DILocation(line: 504, column: 41, scope: !2033)
!2121 = !DILocation(line: 504, column: 55, scope: !2033)
!2122 = !DILocation(line: 504, column: 53, scope: !2033)
!2123 = !DILocation(line: 504, column: 13, scope: !2033)
!2124 = !DILocation(line: 504, column: 7, scope: !2033)
!2125 = !DILocation(line: 504, column: 21, scope: !2033)
!2126 = !DILocation(line: 504, column: 39, scope: !2033)
!2127 = !DILocation(line: 505, column: 5, scope: !2033)
!2128 = distinct !DISubprogram(name: "construct<unsigned long, const unsigned long &>", linkageName: "_ZN9__gnu_cxx13new_allocatorImE9constructImJRKmEEEvPT_DpOT0_", scope: !79, file: !80, line: 148, type: !2129, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !2015, declaration: !2131, retainedNodes: !2132)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{null, !85, !41, !106}
!2131 = !DISubprogram(name: "construct<unsigned long, const unsigned long &>", linkageName: "_ZN9__gnu_cxx13new_allocatorImE9constructImJRKmEEEvPT_DpOT0_", scope: !79, file: !80, line: 148, type: !2129, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !2015)
!2132 = !{!2133, !2134, !2135}
!2133 = !DILocalVariable(name: "this", arg: 1, scope: !2128, type: !1881, flags: DIFlagArtificial | DIFlagObjectPointer)
!2134 = !DILocalVariable(name: "__p", arg: 2, scope: !2128, file: !80, line: 148, type: !41)
!2135 = !DILocalVariable(name: "__args", arg: 3, scope: !2128, file: !80, line: 148, type: !106)
!2136 = !DILocation(line: 0, scope: !2128)
!2137 = !DILocation(line: 148, column: 17, scope: !2128)
!2138 = !DILocation(line: 148, column: 33, scope: !2128)
!2139 = !DILocation(line: 150, column: 18, scope: !2128)
!2140 = !DILocation(line: 150, column: 4, scope: !2128)
!2141 = !DILocation(line: 150, column: 47, scope: !2128)
!2142 = !DILocation(line: 150, column: 27, scope: !2128)
!2143 = !DILocation(line: 150, column: 60, scope: !2128)
!2144 = distinct !DISubprogram(name: "forward<const unsigned long &>", linkageName: "_ZSt7forwardIRKmEOT_RNSt16remove_referenceIS2_E4typeE", scope: !7, file: !2145, line: 76, type: !2146, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !2151, retainedNodes: !2153)
!2145 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/move.h", directory: "")
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!106, !2148}
!2148 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2150, file: !269, line: 1598, baseType: !104)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<const unsigned long &>", scope: !7, file: !269, line: 1597, size: 8, flags: DIFlagTypePassByValue, elements: !25, templateParams: !2151, identifier: "_ZTSSt16remove_referenceIRKmE")
!2151 = !{!2152}
!2152 = !DITemplateTypeParameter(name: "_Tp", type: !106)
!2153 = !{!2154}
!2154 = !DILocalVariable(name: "__t", arg: 1, scope: !2144, file: !2145, line: 76, type: !2148)
!2155 = !DILocation(line: 76, column: 56, scope: !2144)
!2156 = !DILocation(line: 77, column: 33, scope: !2144)
!2157 = !DILocation(line: 77, column: 7, scope: !2144)
!2158 = distinct !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc", scope: !47, file: !36, line: 1756, type: !551, scopeLine: 1757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !550, retainedNodes: !2159)
!2159 = !{!2160, !2162, !2163, !2164}
!2160 = !DILocalVariable(name: "this", arg: 1, scope: !2158, type: !2161, flags: DIFlagArtificial | DIFlagObjectPointer)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!2162 = !DILocalVariable(name: "__n", arg: 2, scope: !2158, file: !36, line: 1756, type: !35)
!2163 = !DILocalVariable(name: "__s", arg: 3, scope: !2158, file: !36, line: 1756, type: !554)
!2164 = !DILocalVariable(name: "__len", scope: !2158, file: !36, line: 1761, type: !2044)
!2165 = !DILocation(line: 0, scope: !2158)
!2166 = !DILocation(line: 1756, column: 30, scope: !2158)
!2167 = !DILocation(line: 1756, column: 47, scope: !2158)
!2168 = !DILocation(line: 1758, column: 6, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2158, file: !36, line: 1758, column: 6)
!2170 = !DILocation(line: 1758, column: 19, scope: !2169)
!2171 = !DILocation(line: 1758, column: 17, scope: !2169)
!2172 = !DILocation(line: 1758, column: 28, scope: !2169)
!2173 = !DILocation(line: 1758, column: 26, scope: !2169)
!2174 = !DILocation(line: 1758, column: 6, scope: !2158)
!2175 = !DILocation(line: 1759, column: 25, scope: !2169)
!2176 = !DILocation(line: 1759, column: 4, scope: !2169)
!2177 = !DILocation(line: 1761, column: 2, scope: !2158)
!2178 = !DILocation(line: 1761, column: 18, scope: !2158)
!2179 = !DILocation(line: 1761, column: 26, scope: !2158)
!2180 = !DILocation(line: 1761, column: 46, scope: !2158)
!2181 = !DILocation(line: 1761, column: 35, scope: !2158)
!2182 = !DILocation(line: 1761, column: 33, scope: !2158)
!2183 = !DILocation(line: 1762, column: 10, scope: !2158)
!2184 = !DILocation(line: 1762, column: 18, scope: !2158)
!2185 = !DILocation(line: 1762, column: 16, scope: !2158)
!2186 = !DILocation(line: 1762, column: 25, scope: !2158)
!2187 = !DILocation(line: 1762, column: 28, scope: !2158)
!2188 = !DILocation(line: 1762, column: 36, scope: !2158)
!2189 = !DILocation(line: 1762, column: 34, scope: !2158)
!2190 = !DILocation(line: 1762, column: 9, scope: !2158)
!2191 = !DILocation(line: 1762, column: 50, scope: !2158)
!2192 = !DILocation(line: 1762, column: 63, scope: !2158)
!2193 = !DILocation(line: 1763, column: 7, scope: !2158)
!2194 = !DILocation(line: 1762, column: 2, scope: !2158)
!2195 = distinct !DISubprogram(name: "operator-<unsigned long *, std::vector<unsigned long, std::allocator<unsigned long> > >", linkageName: "_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_", scope: !61, file: !380, line: 1177, type: !2196, scopeLine: 1180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !434, retainedNodes: !2198)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!420, !1687, !1687}
!2198 = !{!2199, !2200}
!2199 = !DILocalVariable(name: "__lhs", arg: 1, scope: !2195, file: !380, line: 1177, type: !1687)
!2200 = !DILocalVariable(name: "__rhs", arg: 2, scope: !2195, file: !380, line: 1178, type: !1687)
!2201 = !DILocation(line: 1177, column: 63, scope: !2195)
!2202 = !DILocation(line: 1178, column: 56, scope: !2195)
!2203 = !DILocation(line: 1180, column: 14, scope: !2195)
!2204 = !DILocation(line: 1180, column: 20, scope: !2195)
!2205 = !DILocation(line: 1180, column: 29, scope: !2195)
!2206 = !DILocation(line: 1180, column: 35, scope: !2195)
!2207 = !DILocation(line: 1180, column: 27, scope: !2195)
!2208 = !DILocation(line: 1180, column: 7, scope: !2195)
!2209 = distinct !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseImSaImEE11_M_allocateEm", scope: !50, file: !36, line: 343, type: !258, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !257, retainedNodes: !2210)
!2210 = !{!2211, !2212}
!2211 = !DILocalVariable(name: "this", arg: 1, scope: !2209, type: !1848, flags: DIFlagArtificial | DIFlagObjectPointer)
!2212 = !DILocalVariable(name: "__n", arg: 2, scope: !2209, file: !36, line: 343, type: !37)
!2213 = !DILocation(line: 0, scope: !2209)
!2214 = !DILocation(line: 343, column: 26, scope: !2209)
!2215 = !DILocation(line: 346, column: 9, scope: !2209)
!2216 = !DILocation(line: 346, column: 13, scope: !2209)
!2217 = !DILocation(line: 346, column: 34, scope: !2209)
!2218 = !DILocation(line: 346, column: 43, scope: !2209)
!2219 = !DILocation(line: 346, column: 20, scope: !2209)
!2220 = !DILocation(line: 346, column: 2, scope: !2209)
!2221 = !DILocation(line: 465, column: 27, scope: !46)
!2222 = !DILocation(line: 465, column: 44, scope: !46)
!2223 = !DILocation(line: 465, column: 60, scope: !46)
!2224 = !DILocation(line: 466, column: 21, scope: !46)
!2225 = !DILocation(line: 469, column: 24, scope: !46)
!2226 = !DILocation(line: 469, column: 33, scope: !46)
!2227 = !DILocation(line: 469, column: 41, scope: !46)
!2228 = !DILocation(line: 469, column: 51, scope: !46)
!2229 = !DILocation(line: 469, column: 9, scope: !46)
!2230 = !DILocation(line: 469, column: 2, scope: !46)
!2231 = distinct !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv", scope: !379, file: !380, line: 1031, type: !432, scopeLine: 1032, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !431, retainedNodes: !2232)
!2232 = !{!2233}
!2233 = !DILocalVariable(name: "this", arg: 1, scope: !2231, type: !1702, flags: DIFlagArtificial | DIFlagObjectPointer)
!2234 = !DILocation(line: 0, scope: !2231)
!2235 = !DILocation(line: 1032, column: 16, scope: !2231)
!2236 = !DILocation(line: 1032, column: 9, scope: !2231)
!2237 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorImSaImEE8max_sizeEv", scope: !47, file: !36, line: 923, type: !461, scopeLine: 924, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !463, retainedNodes: !2238)
!2238 = !{!2239}
!2239 = !DILocalVariable(name: "this", arg: 1, scope: !2237, type: !2161, flags: DIFlagArtificial | DIFlagObjectPointer)
!2240 = !DILocation(line: 0, scope: !2237)
!2241 = !DILocation(line: 924, column: 28, scope: !2237)
!2242 = !DILocation(line: 924, column: 16, scope: !2237)
!2243 = !DILocation(line: 924, column: 9, scope: !2237)
!2244 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorImSaImEE4sizeEv", scope: !47, file: !36, line: 918, type: !461, scopeLine: 919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !460, retainedNodes: !2245)
!2245 = !{!2246}
!2246 = !DILocalVariable(name: "this", arg: 1, scope: !2244, type: !2161, flags: DIFlagArtificial | DIFlagObjectPointer)
!2247 = !DILocation(line: 0, scope: !2244)
!2248 = !DILocation(line: 919, column: 32, scope: !2244)
!2249 = !DILocation(line: 919, column: 26, scope: !2244)
!2250 = !DILocation(line: 919, column: 40, scope: !2244)
!2251 = !DILocation(line: 919, column: 58, scope: !2244)
!2252 = !DILocation(line: 919, column: 52, scope: !2244)
!2253 = !DILocation(line: 919, column: 66, scope: !2244)
!2254 = !DILocation(line: 919, column: 50, scope: !2244)
!2255 = !DILocation(line: 919, column: 9, scope: !2244)
!2256 = distinct !DISubprogram(name: "max<unsigned long>", linkageName: "_ZSt3maxImERKT_S2_S2_", scope: !7, file: !2257, line: 254, type: !2258, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !118, retainedNodes: !2260)
!2257 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/stl_algobase.h", directory: "")
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!106, !106, !106}
!2260 = !{!2261, !2262}
!2261 = !DILocalVariable(name: "__a", arg: 1, scope: !2256, file: !2257, line: 254, type: !106)
!2262 = !DILocalVariable(name: "__b", arg: 2, scope: !2256, file: !2257, line: 254, type: !106)
!2263 = !DILocation(line: 254, column: 20, scope: !2256)
!2264 = !DILocation(line: 254, column: 36, scope: !2256)
!2265 = !DILocation(line: 259, column: 11, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2256, file: !2257, line: 259, column: 11)
!2267 = !DILocation(line: 259, column: 17, scope: !2266)
!2268 = !DILocation(line: 259, column: 15, scope: !2266)
!2269 = !DILocation(line: 259, column: 11, scope: !2256)
!2270 = !DILocation(line: 260, column: 9, scope: !2266)
!2271 = !DILocation(line: 260, column: 2, scope: !2266)
!2272 = !DILocation(line: 261, column: 14, scope: !2256)
!2273 = !DILocation(line: 261, column: 7, scope: !2256)
!2274 = !DILocation(line: 262, column: 5, scope: !2256)
!2275 = distinct !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_", scope: !47, file: !36, line: 1776, type: !561, scopeLine: 1777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !560, retainedNodes: !2276)
!2276 = !{!2277, !2278, !2280}
!2277 = !DILocalVariable(name: "__a", arg: 1, scope: !2275, file: !36, line: 1776, type: !563)
!2278 = !DILocalVariable(name: "__diffmax", scope: !2275, file: !36, line: 1781, type: !2279)
!2279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!2280 = !DILocalVariable(name: "__allocmax", scope: !2275, file: !36, line: 1783, type: !2279)
!2281 = !DILocation(line: 1776, column: 41, scope: !2275)
!2282 = !DILocation(line: 1781, column: 2, scope: !2275)
!2283 = !DILocation(line: 1781, column: 15, scope: !2275)
!2284 = !DILocation(line: 1783, column: 2, scope: !2275)
!2285 = !DILocation(line: 1783, column: 15, scope: !2275)
!2286 = !DILocation(line: 1783, column: 52, scope: !2275)
!2287 = !DILocation(line: 1783, column: 28, scope: !2275)
!2288 = !DILocation(line: 1784, column: 9, scope: !2275)
!2289 = !DILocation(line: 1785, column: 7, scope: !2275)
!2290 = !DILocation(line: 1784, column: 2, scope: !2275)
!2291 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv", scope: !50, file: !36, line: 280, type: !221, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !220, retainedNodes: !2292)
!2292 = !{!2293}
!2293 = !DILocalVariable(name: "this", arg: 1, scope: !2291, type: !2294, flags: DIFlagArtificial | DIFlagObjectPointer)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!2295 = !DILocation(line: 0, scope: !2291)
!2296 = !DILocation(line: 281, column: 22, scope: !2291)
!2297 = !DILocation(line: 281, column: 16, scope: !2291)
!2298 = !DILocation(line: 281, column: 9, scope: !2291)
!2299 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaImEE8max_sizeERKS0_", scope: !64, file: !65, line: 543, type: !143, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !142, retainedNodes: !2300)
!2300 = !{!2301}
!2301 = !DILocalVariable(name: "__a", arg: 1, scope: !2299, file: !65, line: 543, type: !146)
!2302 = !DILocation(line: 543, column: 38, scope: !2299)
!2303 = !DILocation(line: 546, column: 9, scope: !2299)
!2304 = !DILocation(line: 546, column: 13, scope: !2299)
!2305 = !DILocation(line: 546, column: 2, scope: !2299)
!2306 = distinct !DISubprogram(name: "min<unsigned long>", linkageName: "_ZSt3minImERKT_S2_S2_", scope: !7, file: !2257, line: 230, type: !2258, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !118, retainedNodes: !2307)
!2307 = !{!2308, !2309}
!2308 = !DILocalVariable(name: "__a", arg: 1, scope: !2306, file: !2257, line: 230, type: !106)
!2309 = !DILocalVariable(name: "__b", arg: 2, scope: !2306, file: !2257, line: 230, type: !106)
!2310 = !DILocation(line: 230, column: 20, scope: !2306)
!2311 = !DILocation(line: 230, column: 36, scope: !2306)
!2312 = !DILocation(line: 235, column: 11, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2306, file: !2257, line: 235, column: 11)
!2314 = !DILocation(line: 235, column: 17, scope: !2313)
!2315 = !DILocation(line: 235, column: 15, scope: !2313)
!2316 = !DILocation(line: 235, column: 11, scope: !2306)
!2317 = !DILocation(line: 236, column: 9, scope: !2313)
!2318 = !DILocation(line: 236, column: 2, scope: !2313)
!2319 = !DILocation(line: 237, column: 14, scope: !2306)
!2320 = !DILocation(line: 237, column: 7, scope: !2306)
!2321 = !DILocation(line: 238, column: 5, scope: !2306)
!2322 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv", scope: !79, file: !80, line: 142, type: !115, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !114, retainedNodes: !2323)
!2323 = !{!2324}
!2324 = !DILocalVariable(name: "this", arg: 1, scope: !2322, type: !2325, flags: DIFlagArtificial | DIFlagObjectPointer)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!2326 = !DILocation(line: 0, scope: !2322)
!2327 = !DILocation(line: 143, column: 16, scope: !2322)
!2328 = !DILocation(line: 143, column: 9, scope: !2322)
!2329 = distinct !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv", scope: !79, file: !80, line: 185, type: !115, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !117, retainedNodes: !2330)
!2330 = !{!2331}
!2331 = !DILocalVariable(name: "this", arg: 1, scope: !2329, type: !2325, flags: DIFlagArtificial | DIFlagObjectPointer)
!2332 = !DILocation(line: 0, scope: !2329)
!2333 = !DILocation(line: 188, column: 2, scope: !2329)
!2334 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaImEE8allocateERS0_m", scope: !64, file: !65, line: 459, type: !68, scopeLine: 460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !67, retainedNodes: !2335)
!2335 = !{!2336, !2337}
!2336 = !DILocalVariable(name: "__a", arg: 1, scope: !2334, file: !65, line: 459, type: !71)
!2337 = !DILocalVariable(name: "__n", arg: 2, scope: !2334, file: !65, line: 459, type: !134)
!2338 = !DILocation(line: 459, column: 32, scope: !2334)
!2339 = !DILocation(line: 459, column: 47, scope: !2334)
!2340 = !DILocation(line: 460, column: 16, scope: !2334)
!2341 = !DILocation(line: 460, column: 29, scope: !2334)
!2342 = !DILocation(line: 460, column: 20, scope: !2334)
!2343 = !DILocation(line: 460, column: 9, scope: !2334)
!2344 = distinct !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv", scope: !79, file: !80, line: 103, type: !108, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !107, retainedNodes: !2345)
!2345 = !{!2346, !2347, !2348}
!2346 = !DILocalVariable(name: "this", arg: 1, scope: !2344, type: !1881, flags: DIFlagArtificial | DIFlagObjectPointer)
!2347 = !DILocalVariable(name: "__n", arg: 2, scope: !2344, file: !80, line: 103, type: !110)
!2348 = !DILocalVariable(arg: 3, scope: !2344, file: !80, line: 103, type: !39)
!2349 = !DILocation(line: 0, scope: !2344)
!2350 = !DILocation(line: 103, column: 26, scope: !2344)
!2351 = !DILocation(line: 103, column: 43, scope: !2344)
!2352 = !DILocation(line: 105, column: 6, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2344, file: !80, line: 105, column: 6)
!2354 = !DILocation(line: 105, column: 18, scope: !2353)
!2355 = !DILocation(line: 105, column: 10, scope: !2353)
!2356 = !DILocation(line: 105, column: 6, scope: !2344)
!2357 = !DILocation(line: 106, column: 4, scope: !2353)
!2358 = !DILocation(line: 115, column: 42, scope: !2344)
!2359 = !DILocation(line: 115, column: 46, scope: !2344)
!2360 = !DILocation(line: 115, column: 27, scope: !2344)
!2361 = !DILocation(line: 115, column: 9, scope: !2344)
!2362 = !DILocation(line: 115, column: 2, scope: !2344)
!2363 = distinct !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorImSaImEE14_S_do_relocateEPmS2_S2_RS0_St17integral_constantIbLb1EE", scope: !47, file: !36, line: 453, type: !302, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !301, retainedNodes: !2364)
!2364 = !{!2365, !2366, !2367, !2368, !2369}
!2365 = !DILocalVariable(name: "__first", arg: 1, scope: !2363, file: !36, line: 453, type: !304)
!2366 = !DILocalVariable(name: "__last", arg: 2, scope: !2363, file: !36, line: 453, type: !304)
!2367 = !DILocalVariable(name: "__result", arg: 3, scope: !2363, file: !36, line: 453, type: !304)
!2368 = !DILocalVariable(name: "__alloc", arg: 4, scope: !2363, file: !36, line: 454, type: !305)
!2369 = !DILocalVariable(arg: 5, scope: !2363, file: !36, line: 454, type: !268)
!2370 = !DILocation(line: 453, column: 30, scope: !2363)
!2371 = !DILocation(line: 453, column: 47, scope: !2363)
!2372 = !DILocation(line: 453, column: 63, scope: !2363)
!2373 = !DILocation(line: 454, column: 24, scope: !2363)
!2374 = !DILocation(line: 454, column: 42, scope: !2363)
!2375 = !DILocation(line: 456, column: 27, scope: !2363)
!2376 = !DILocation(line: 456, column: 36, scope: !2363)
!2377 = !DILocation(line: 456, column: 44, scope: !2363)
!2378 = !DILocation(line: 456, column: 54, scope: !2363)
!2379 = !DILocation(line: 456, column: 9, scope: !2363)
!2380 = !DILocation(line: 456, column: 2, scope: !2363)
!2381 = distinct !DISubprogram(name: "__relocate_a<unsigned long *, unsigned long *, std::allocator<unsigned long> >", linkageName: "_ZSt12__relocate_aIPmS0_SaImEET0_T_S3_S2_RT1_", scope: !7, file: !2382, line: 1022, type: !2383, scopeLine: 1027, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !2390, retainedNodes: !2385)
!2382 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/stl_uninitialized.h", directory: "")
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!41, !41, !41, !41, !132}
!2385 = !{!2386, !2387, !2388, !2389}
!2386 = !DILocalVariable(name: "__first", arg: 1, scope: !2381, file: !2382, line: 1022, type: !41)
!2387 = !DILocalVariable(name: "__last", arg: 2, scope: !2381, file: !2382, line: 1022, type: !41)
!2388 = !DILocalVariable(name: "__result", arg: 3, scope: !2381, file: !2382, line: 1023, type: !41)
!2389 = !DILocalVariable(name: "__alloc", arg: 4, scope: !2381, file: !2382, line: 1023, type: !132)
!2390 = !{!2391, !1911, !2392}
!2391 = !DITemplateTypeParameter(name: "_InputIterator", type: !41)
!2392 = !DITemplateTypeParameter(name: "_Allocator", type: !73)
!2393 = !DILocation(line: 1022, column: 33, scope: !2381)
!2394 = !DILocation(line: 1022, column: 57, scope: !2381)
!2395 = !DILocation(line: 1023, column: 21, scope: !2381)
!2396 = !DILocation(line: 1023, column: 43, scope: !2381)
!2397 = !DILocation(line: 1028, column: 47, scope: !2381)
!2398 = !DILocation(line: 1028, column: 29, scope: !2381)
!2399 = !DILocation(line: 1029, column: 26, scope: !2381)
!2400 = !DILocation(line: 1029, column: 8, scope: !2381)
!2401 = !DILocation(line: 1030, column: 26, scope: !2381)
!2402 = !DILocation(line: 1030, column: 8, scope: !2381)
!2403 = !DILocation(line: 1030, column: 37, scope: !2381)
!2404 = !DILocation(line: 1028, column: 14, scope: !2381)
!2405 = !DILocation(line: 1028, column: 7, scope: !2381)
!2406 = distinct !DISubprogram(name: "__relocate_a_1<unsigned long, unsigned long>", linkageName: "_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E", scope: !7, file: !2382, line: 988, type: !2407, scopeLine: 990, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !2420, retainedNodes: !2414)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!2409, !41, !41, !41, !132}
!2409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__enable_if_t<std::__is_bitwise_relocatable<unsigned long>::value, unsigned long *>", scope: !7, file: !269, line: 2192, baseType: !2410)
!2410 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2411, file: !269, line: 2188, baseType: !41)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enable_if<true, unsigned long *>", scope: !7, file: !269, line: 2187, size: 8, flags: DIFlagTypePassByValue, elements: !25, templateParams: !2412, identifier: "_ZTSSt9enable_ifILb1EPmE")
!2412 = !{!1958, !2413}
!2413 = !DITemplateTypeParameter(name: "_Tp", type: !41)
!2414 = !{!2415, !2416, !2417, !2418, !2419}
!2415 = !DILocalVariable(name: "__first", arg: 1, scope: !2406, file: !2382, line: 988, type: !41)
!2416 = !DILocalVariable(name: "__last", arg: 2, scope: !2406, file: !2382, line: 988, type: !41)
!2417 = !DILocalVariable(name: "__result", arg: 3, scope: !2406, file: !2382, line: 989, type: !41)
!2418 = !DILocalVariable(arg: 4, scope: !2406, file: !2382, line: 989, type: !132)
!2419 = !DILocalVariable(name: "__count", scope: !2406, file: !2382, line: 991, type: !422)
!2420 = !{!119, !2016}
!2421 = !DILocation(line: 988, column: 25, scope: !2406)
!2422 = !DILocation(line: 988, column: 39, scope: !2406)
!2423 = !DILocation(line: 989, column: 11, scope: !2406)
!2424 = !DILocation(line: 989, column: 36, scope: !2406)
!2425 = !DILocation(line: 991, column: 7, scope: !2406)
!2426 = !DILocation(line: 991, column: 17, scope: !2406)
!2427 = !DILocation(line: 991, column: 27, scope: !2406)
!2428 = !DILocation(line: 991, column: 36, scope: !2406)
!2429 = !DILocation(line: 991, column: 34, scope: !2406)
!2430 = !DILocation(line: 992, column: 11, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2406, file: !2382, line: 992, column: 11)
!2432 = !DILocation(line: 992, column: 19, scope: !2431)
!2433 = !DILocation(line: 992, column: 11, scope: !2406)
!2434 = !DILocation(line: 993, column: 20, scope: !2431)
!2435 = !DILocation(line: 993, column: 2, scope: !2431)
!2436 = !DILocation(line: 993, column: 30, scope: !2431)
!2437 = !DILocation(line: 993, column: 39, scope: !2431)
!2438 = !DILocation(line: 993, column: 47, scope: !2431)
!2439 = !DILocation(line: 994, column: 14, scope: !2406)
!2440 = !DILocation(line: 994, column: 25, scope: !2406)
!2441 = !DILocation(line: 994, column: 23, scope: !2406)
!2442 = !DILocation(line: 995, column: 5, scope: !2406)
!2443 = !DILocation(line: 994, column: 7, scope: !2406)
!2444 = distinct !DISubprogram(name: "__niter_base<unsigned long *>", linkageName: "_ZSt12__niter_baseIPmET_S1_", scope: !7, file: !2257, line: 313, type: !2445, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !399, retainedNodes: !2447)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!41, !41}
!2447 = !{!2448}
!2448 = !DILocalVariable(name: "__it", arg: 1, scope: !2444, file: !2257, line: 313, type: !41)
!2449 = !DILocation(line: 313, column: 28, scope: !2444)
!2450 = !DILocation(line: 315, column: 14, scope: !2444)
!2451 = !DILocation(line: 315, column: 7, scope: !2444)
!2452 = distinct !DISubprogram(name: "__normal_iterator", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC2ERKS1_", scope: !379, file: !380, line: 953, type: !388, scopeLine: 954, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !387, retainedNodes: !2453)
!2453 = !{!2454, !2455}
!2454 = !DILocalVariable(name: "this", arg: 1, scope: !2452, type: !1711, flags: DIFlagArtificial | DIFlagObjectPointer)
!2455 = !DILocalVariable(name: "__i", arg: 2, scope: !2452, file: !380, line: 953, type: !390)
!2456 = !DILocation(line: 0, scope: !2452)
!2457 = !DILocation(line: 953, column: 42, scope: !2452)
!2458 = !DILocation(line: 954, column: 9, scope: !2452)
!2459 = !DILocation(line: 954, column: 20, scope: !2452)
!2460 = !DILocation(line: 954, column: 27, scope: !2452)
!2461 = distinct !DISubprogram(name: "setstate", linkageName: "_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate", scope: !2463, file: !2462, line: 157, type: !2465, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !2469, retainedNodes: !2470)
!2462 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/basic_ios.h", directory: "")
!2463 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ios<char, std::char_traits<char> >", scope: !7, file: !2464, line: 178, flags: DIFlagFwdDecl)
!2464 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/basic_ios.tcc", directory: "")
!2465 = !DISubroutineType(types: !2466)
!2466 = !{null, !2467, !2468}
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2468 = !DIDerivedType(tag: DW_TAG_typedef, name: "iostate", scope: !589, file: !6, line: 398, baseType: !5)
!2469 = !DISubprogram(name: "setstate", linkageName: "_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate", scope: !2463, file: !2462, line: 157, type: !2465, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2470 = !{!2471, !2473}
!2471 = !DILocalVariable(name: "this", arg: 1, scope: !2461, type: !2472, flags: DIFlagArtificial | DIFlagObjectPointer)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2473 = !DILocalVariable(name: "__state", arg: 2, scope: !2461, file: !2462, line: 157, type: !2468)
!2474 = !DILocation(line: 0, scope: !2461)
!2475 = !{!2476, !2476, i64 0}
!2476 = !{!"_ZTSSt12_Ios_Iostate", !1566, i64 0}
!2477 = !DILocation(line: 157, column: 24, scope: !2461)
!2478 = !DILocation(line: 158, column: 27, scope: !2461)
!2479 = !DILocation(line: 158, column: 39, scope: !2461)
!2480 = !DILocation(line: 158, column: 37, scope: !2461)
!2481 = !DILocation(line: 158, column: 15, scope: !2461)
!2482 = !DILocation(line: 158, column: 49, scope: !2461)
!2483 = distinct !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !1728, file: !1729, line: 351, type: !1747, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1746, retainedNodes: !2484)
!2484 = !{!2485}
!2485 = !DILocalVariable(name: "__s", arg: 1, scope: !2483, file: !1729, line: 351, type: !1745)
!2486 = !DILocation(line: 351, column: 31, scope: !2483)
!2487 = !DILocation(line: 357, column: 26, scope: !2483)
!2488 = !DILocation(line: 357, column: 9, scope: !2483)
!2489 = !DILocation(line: 357, column: 2, scope: !2483)
!2490 = distinct !DISubprogram(name: "operator|", linkageName: "_ZStorSt12_Ios_IostateS_", scope: !7, file: !6, line: 169, type: !2491, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2493)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!5, !5, !5}
!2493 = !{!2494, !2495}
!2494 = !DILocalVariable(name: "__a", arg: 1, scope: !2490, file: !6, line: 169, type: !5)
!2495 = !DILocalVariable(name: "__b", arg: 2, scope: !2490, file: !6, line: 169, type: !5)
!2496 = !DILocation(line: 169, column: 26, scope: !2490)
!2497 = !DILocation(line: 169, column: 44, scope: !2490)
!2498 = !DILocation(line: 170, column: 42, scope: !2490)
!2499 = !DILocation(line: 170, column: 66, scope: !2490)
!2500 = !DILocation(line: 170, column: 47, scope: !2490)
!2501 = !DILocation(line: 170, column: 5, scope: !2490)
!2502 = distinct !DISubprogram(name: "rdstate", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv", scope: !2463, file: !2462, line: 137, type: !2503, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !2507, retainedNodes: !2508)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!2468, !2505}
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2463)
!2507 = !DISubprogram(name: "rdstate", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv", scope: !2463, file: !2462, line: 137, type: !2503, scopeLine: 137, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2508 = !{!2509}
!2509 = !DILocalVariable(name: "this", arg: 1, scope: !2502, type: !2510, flags: DIFlagArtificial | DIFlagObjectPointer)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2511 = !DILocation(line: 0, scope: !2502)
!2512 = !DILocation(line: 138, column: 16, scope: !2502)
!2513 = !{!2514, !2476, i64 32}
!2514 = !{!"_ZTSSt8ios_base", !1595, i64 8, !1595, i64 16, !2515, i64 24, !2476, i64 28, !2476, i64 32, !1587, i64 40, !2516, i64 48, !1566, i64 64, !1565, i64 192, !1587, i64 200, !2517, i64 208}
!2515 = !{!"_ZTSSt13_Ios_Fmtflags", !1566, i64 0}
!2516 = !{!"_ZTSNSt8ios_base6_WordsE", !1587, i64 0, !1595, i64 8}
!2517 = !{!"_ZTSSt6locale", !1587, i64 0}
!2518 = !DILocation(line: 138, column: 9, scope: !2502)
!2519 = distinct !DISubprogram(name: "flush<char, std::char_traits<char> >", linkageName: "_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_", scope: !7, file: !1717, line: 703, type: !1815, scopeLine: 704, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1819, retainedNodes: !2520)
!2520 = !{!2521}
!2521 = !DILocalVariable(name: "__os", arg: 1, scope: !2519, file: !1717, line: 703, type: !1720)
!2522 = !DILocation(line: 703, column: 43, scope: !2519)
!2523 = !DILocation(line: 704, column: 14, scope: !2519)
!2524 = !DILocation(line: 704, column: 19, scope: !2519)
!2525 = !DILocation(line: 704, column: 7, scope: !2519)
!2526 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc", scope: !2463, file: !2462, line: 449, type: !2527, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !2530, retainedNodes: !2531)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!2529, !2505, !556}
!2529 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !2463, file: !2462, line: 76, baseType: !556)
!2530 = !DISubprogram(name: "widen", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc", scope: !2463, file: !2462, line: 449, type: !2527, scopeLine: 449, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2531 = !{!2532, !2533}
!2532 = !DILocalVariable(name: "this", arg: 1, scope: !2526, type: !2510, flags: DIFlagArtificial | DIFlagObjectPointer)
!2533 = !DILocalVariable(name: "__c", arg: 2, scope: !2526, file: !2462, line: 449, type: !556)
!2534 = !DILocation(line: 0, scope: !2526)
!2535 = !{!1566, !1566, i64 0}
!2536 = !DILocation(line: 449, column: 18, scope: !2526)
!2537 = !DILocation(line: 450, column: 30, scope: !2526)
!2538 = !{!2539, !1587, i64 240}
!2539 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !1587, i64 216, !1566, i64 224, !2540, i64 225, !1587, i64 232, !1587, i64 240, !1587, i64 248, !1587, i64 256}
!2540 = !{!"bool", !1566, i64 0}
!2541 = !DILocation(line: 450, column: 16, scope: !2526)
!2542 = !DILocation(line: 450, column: 46, scope: !2526)
!2543 = !DILocation(line: 450, column: 40, scope: !2526)
!2544 = !DILocation(line: 450, column: 9, scope: !2526)
!2545 = distinct !DISubprogram(name: "__check_facet<std::ctype<char> >", linkageName: "_ZSt13__check_facetISt5ctypeIcEERKT_PS3_", scope: !7, file: !2462, line: 47, type: !2546, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !2555, retainedNodes: !2553)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!2548, !2552}
!2548 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2550)
!2550 = !DICompositeType(tag: DW_TAG_class_type, name: "ctype<char>", scope: !7, file: !2551, line: 681, flags: DIFlagFwdDecl, identifier: "_ZTSSt5ctypeIcE")
!2551 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/locale_facets.h", directory: "")
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2553 = !{!2554}
!2554 = !DILocalVariable(name: "__f", arg: 1, scope: !2545, file: !2462, line: 47, type: !2552)
!2555 = !{!2556}
!2556 = !DITemplateTypeParameter(name: "_Facet", type: !2550)
!2557 = !DILocation(line: 47, column: 33, scope: !2545)
!2558 = !DILocation(line: 49, column: 12, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2545, file: !2462, line: 49, column: 11)
!2560 = !DILocation(line: 49, column: 11, scope: !2545)
!2561 = !DILocation(line: 50, column: 2, scope: !2559)
!2562 = !DILocation(line: 51, column: 15, scope: !2545)
!2563 = !DILocation(line: 51, column: 7, scope: !2545)
!2564 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt5ctypeIcE5widenEc", scope: !2550, file: !2551, line: 872, type: !2565, scopeLine: 873, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !2569, retainedNodes: !2570)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!2567, !2568, !556}
!2567 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !2550, file: !2551, line: 686, baseType: !556)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2569 = !DISubprogram(name: "widen", linkageName: "_ZNKSt5ctypeIcE5widenEc", scope: !2550, file: !2551, line: 872, type: !2565, scopeLine: 872, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2570 = !{!2571, !2572}
!2571 = !DILocalVariable(name: "this", arg: 1, scope: !2564, type: !2552, flags: DIFlagArtificial | DIFlagObjectPointer)
!2572 = !DILocalVariable(name: "__c", arg: 2, scope: !2564, file: !2551, line: 872, type: !556)
!2573 = !DILocation(line: 0, scope: !2564)
!2574 = !DILocation(line: 872, column: 18, scope: !2564)
!2575 = !DILocation(line: 874, column: 6, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2564, file: !2551, line: 874, column: 6)
!2577 = !{!2578, !1566, i64 56}
!2578 = !{!"_ZTSSt5ctypeIcE", !1587, i64 16, !2540, i64 24, !1587, i64 32, !1587, i64 40, !1587, i64 48, !1566, i64 56, !1566, i64 57, !1566, i64 313, !1566, i64 569}
!2579 = !DILocation(line: 874, column: 6, scope: !2564)
!2580 = !DILocation(line: 875, column: 11, scope: !2576)
!2581 = !DILocation(line: 875, column: 47, scope: !2576)
!2582 = !DILocation(line: 875, column: 4, scope: !2576)
!2583 = !DILocation(line: 876, column: 8, scope: !2564)
!2584 = !DILocation(line: 877, column: 24, scope: !2564)
!2585 = !DILocation(line: 877, column: 15, scope: !2564)
!2586 = !DILocation(line: 877, column: 2, scope: !2564)
!2587 = !DILocation(line: 878, column: 7, scope: !2564)
!2588 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_pthread_vector2_yes.cpp", scope: !3, file: !3, type: !2589, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !25)
!2589 = !DISubroutineType(types: !25)
!2590 = !DILocation(line: 0, scope: !2588)
