; ModuleID = 'pthread-rwlock-no.cpp'
source_filename = "pthread-rwlock-no.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
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
%class.BulletinRWLock = type { %union.pthread_rwlock_t, %"class.std::__cxx11::basic_string" }
%union.pthread_rwlock_t = type { %struct.__pthread_rwlock_arch_t }
%struct.__pthread_rwlock_arch_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, [7 x i8], i64, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%union.pthread_attr_t = type { i64, [48 x i8] }
%"class.std::allocator" = type { i8 }
%union.pthread_rwlockattr_t = type { i64 }

$_ZN14BulletinRWLockC2Ev = comdat any

$_ZN14BulletinRWLockD2Ev = comdat any

$_ZN14BulletinRWLock6UpdateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN14BulletinRWLock4ReadB5cxx11Ev = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [37 x i8] c"Failed to create the producer thread\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to create the consumer thread\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"no message\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"hell world \00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_pthread_rwlock_no.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !978 {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !dbg !979
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3, !dbg !979
  ret void, !dbg !979
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main() #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !980 {
entry:
  %bulletin = alloca %class.BulletinRWLock, align 8
  %rc = alloca i32, align 4
  %res = alloca i8*, align 8
  %thr_editor = alloca i64, align 8
  %thr_reader = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @llvm.dbg.declare(metadata %class.BulletinRWLock* %bulletin, metadata !981, metadata !DIExpression()), !dbg !982
  call void @_ZN14BulletinRWLockC2Ev(%class.BulletinRWLock* %bulletin), !dbg !982
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !983, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.declare(metadata i8** %res, metadata !985, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.declare(metadata i64* %thr_editor, metadata !987, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.declare(metadata i64* %thr_reader, metadata !990, metadata !DIExpression()), !dbg !991
  %0 = bitcast %class.BulletinRWLock* %bulletin to i8*, !dbg !992
  %call = call i32 @pthread_create(i64* %thr_editor, %union.pthread_attr_t* null, i8* (i8*)* @_ZL6EditorPv, i8* %0) #3, !dbg !993
  store i32 %call, i32* %rc, align 4, !dbg !994
  %1 = load i32, i32* %rc, align 4, !dbg !995
  %tobool = icmp ne i32 %1, 0, !dbg !995
  br i1 %tobool, label %if.then, label %if.end, !dbg !997

if.then:                                          ; preds = %entry
  invoke void @perror(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
          to label %invoke.cont unwind label %lpad, !dbg !998

invoke.cont:                                      ; preds = %if.then
  call void @exit(i32 -1) #9, !dbg !1000
  unreachable, !dbg !1000

lpad:                                             ; preds = %invoke.cont6, %if.end5, %if.then3, %if.then
  %2 = landingpad { i8*, i32 }
          cleanup, !dbg !1001
  %3 = extractvalue { i8*, i32 } %2, 0, !dbg !1001
  store i8* %3, i8** %exn.slot, align 8, !dbg !1001
  %4 = extractvalue { i8*, i32 } %2, 1, !dbg !1001
  store i32 %4, i32* %ehselector.slot, align 4, !dbg !1001
  call void @_ZN14BulletinRWLockD2Ev(%class.BulletinRWLock* %bulletin) #3, !dbg !1002
  br label %eh.resume, !dbg !1002

if.end:                                           ; preds = %entry
  %5 = bitcast %class.BulletinRWLock* %bulletin to i8*, !dbg !1003
  %call1 = call i32 @pthread_create(i64* %thr_reader, %union.pthread_attr_t* null, i8* (i8*)* @_ZL6ReaderPv, i8* %5) #3, !dbg !1004
  store i32 %call1, i32* %rc, align 4, !dbg !1005
  %6 = load i32, i32* %rc, align 4, !dbg !1006
  %tobool2 = icmp ne i32 %6, 0, !dbg !1006
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !1008

if.then3:                                         ; preds = %if.end
  invoke void @perror(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
          to label %invoke.cont4 unwind label %lpad, !dbg !1009

invoke.cont4:                                     ; preds = %if.then3
  call void @exit(i32 -1) #9, !dbg !1011
  unreachable, !dbg !1011

if.end5:                                          ; preds = %if.end
  %7 = load i64, i64* %thr_editor, align 8, !dbg !1012
  %call7 = invoke i32 @pthread_join(i64 %7, i8** %res)
          to label %invoke.cont6 unwind label %lpad, !dbg !1013

invoke.cont6:                                     ; preds = %if.end5
  %8 = load i64, i64* %thr_reader, align 8, !dbg !1014
  %call9 = invoke i32 @pthread_join(i64 %8, i8** %res)
          to label %invoke.cont8 unwind label %lpad, !dbg !1015

invoke.cont8:                                     ; preds = %invoke.cont6
  call void @_ZN14BulletinRWLockD2Ev(%class.BulletinRWLock* %bulletin) #3, !dbg !1002
  ret i32 0, !dbg !1002

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1002
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1002
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !1002
  %lpad.val10 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1002
  resume { i8*, i32 } %lpad.val10, !dbg !1002
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN14BulletinRWLockC2Ev(%class.BulletinRWLock* %this) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1016 {
entry:
  %this.addr = alloca %class.BulletinRWLock*, align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %class.BulletinRWLock* %this, %class.BulletinRWLock** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.BulletinRWLock** %this.addr, metadata !1017, metadata !DIExpression()), !dbg !1018
  %this1 = load %class.BulletinRWLock*, %class.BulletinRWLock** %this.addr, align 8
  %rwlock_ = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 0, !dbg !1019
  %message_ = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 1, !dbg !1020
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp) #3, !dbg !1020
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %message_, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !dbg !1020

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp) #3, !dbg !1020
  %rwlock_2 = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 0, !dbg !1021
  %call = call i32 @pthread_rwlock_init(%union.pthread_rwlock_t* %rwlock_2, %union.pthread_rwlockattr_t* null) #3, !dbg !1023
  ret void, !dbg !1024

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          cleanup, !dbg !1024
  %1 = extractvalue { i8*, i32 } %0, 0, !dbg !1024
  store i8* %1, i8** %exn.slot, align 8, !dbg !1024
  %2 = extractvalue { i8*, i32 } %0, 1, !dbg !1024
  store i32 %2, i32* %ehselector.slot, align 4, !dbg !1024
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp) #3, !dbg !1020
  br label %eh.resume, !dbg !1020

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1020
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1020
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !1020
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1020
  resume { i8*, i32 } %lpad.val3, !dbg !1020
}

; Function Attrs: nounwind
declare !callback !1025 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

; Function Attrs: noinline optnone uwtable
define internal i8* @_ZL6EditorPv(i8* %rbuf) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1027 {
entry:
  %rbuf.addr = alloca i8*, align 8
  %rbuf_ptr = alloca %class.BulletinRWLock*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i8* %rbuf, i8** %rbuf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %rbuf.addr, metadata !1030, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.declare(metadata %class.BulletinRWLock** %rbuf_ptr, metadata !1032, metadata !DIExpression()), !dbg !1033
  %0 = load i8*, i8** %rbuf.addr, align 8, !dbg !1034
  %1 = bitcast i8* %0 to %class.BulletinRWLock*, !dbg !1035
  store %class.BulletinRWLock* %1, %class.BulletinRWLock** %rbuf_ptr, align 8, !dbg !1033
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1036, metadata !DIExpression()), !dbg !1037
  store i32 0, i32* %i, align 4, !dbg !1037
  br label %while.body, !dbg !1038

while.body:                                       ; preds = %entry, %invoke.cont2
  %2 = load %class.BulletinRWLock*, %class.BulletinRWLock** %rbuf_ptr, align 8, !dbg !1039
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp) #3, !dbg !1041
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !dbg !1041

invoke.cont:                                      ; preds = %while.body
  invoke void @_ZN14BulletinRWLock6UpdateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.BulletinRWLock* %2, %"class.std::__cxx11::basic_string"* %agg.tmp)
          to label %invoke.cont2 unwind label %lpad1, !dbg !1042

invoke.cont2:                                     ; preds = %invoke.cont
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp) #3, !dbg !1039
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp) #3, !dbg !1039
  %3 = load i32, i32* %i, align 4, !dbg !1043
  %inc = add nsw i32 %3, 1, !dbg !1043
  store i32 %inc, i32* %i, align 4, !dbg !1043
  %call = call i32 @sleep(i32 1), !dbg !1044
  br label %while.body, !dbg !1038, !llvm.loop !1045

lpad:                                             ; preds = %while.body
  %4 = landingpad { i8*, i32 }
          cleanup, !dbg !1047
  %5 = extractvalue { i8*, i32 } %4, 0, !dbg !1047
  store i8* %5, i8** %exn.slot, align 8, !dbg !1047
  %6 = extractvalue { i8*, i32 } %4, 1, !dbg !1047
  store i32 %6, i32* %ehselector.slot, align 4, !dbg !1047
  br label %ehcleanup, !dbg !1047

lpad1:                                            ; preds = %invoke.cont
  %7 = landingpad { i8*, i32 }
          cleanup, !dbg !1047
  %8 = extractvalue { i8*, i32 } %7, 0, !dbg !1047
  store i8* %8, i8** %exn.slot, align 8, !dbg !1047
  %9 = extractvalue { i8*, i32 } %7, 1, !dbg !1047
  store i32 %9, i32* %ehselector.slot, align 4, !dbg !1047
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp) #3, !dbg !1039
  br label %ehcleanup, !dbg !1039

ehcleanup:                                        ; preds = %lpad1, %lpad
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp) #3, !dbg !1039
  br label %eh.resume, !dbg !1039

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1039
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1039
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !1039
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1039
  resume { i8*, i32 } %lpad.val3, !dbg !1039
}

declare dso_local void @perror(i8*) #1

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #7

; Function Attrs: noinline optnone uwtable
define internal i8* @_ZL6ReaderPv(i8* %rbuf) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1048 {
entry:
  %rbuf.addr = alloca i8*, align 8
  %rbuf_ptr = alloca %class.BulletinRWLock*, align 8
  %i = alloca i32, align 4
  %msg = alloca %"class.std::__cxx11::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i8* %rbuf, i8** %rbuf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %rbuf.addr, metadata !1049, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.declare(metadata %class.BulletinRWLock** %rbuf_ptr, metadata !1051, metadata !DIExpression()), !dbg !1052
  %0 = load i8*, i8** %rbuf.addr, align 8, !dbg !1053
  %1 = bitcast i8* %0 to %class.BulletinRWLock*, !dbg !1054
  store %class.BulletinRWLock* %1, %class.BulletinRWLock** %rbuf_ptr, align 8, !dbg !1052
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1055, metadata !DIExpression()), !dbg !1056
  store i32 0, i32* %i, align 4, !dbg !1056
  br label %while.body, !dbg !1057

while.body:                                       ; preds = %entry, %invoke.cont1
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"* %msg, metadata !1058, metadata !DIExpression()), !dbg !1060
  %2 = load %class.BulletinRWLock*, %class.BulletinRWLock** %rbuf_ptr, align 8, !dbg !1061
  call void @_ZN14BulletinRWLock4ReadB5cxx11Ev(%"class.std::__cxx11::basic_string"* sret %msg, %class.BulletinRWLock* %2), !dbg !1062
  %call = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, %"class.std::__cxx11::basic_string"* dereferenceable(32) %msg)
          to label %invoke.cont unwind label %lpad, !dbg !1063

invoke.cont:                                      ; preds = %while.body
  %call2 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %invoke.cont1 unwind label %lpad, !dbg !1064

invoke.cont1:                                     ; preds = %invoke.cont
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %msg) #3, !dbg !1065
  br label %while.body, !dbg !1057, !llvm.loop !1066

lpad:                                             ; preds = %invoke.cont, %while.body
  %3 = landingpad { i8*, i32 }
          cleanup, !dbg !1067
  %4 = extractvalue { i8*, i32 } %3, 0, !dbg !1067
  store i8* %4, i8** %exn.slot, align 8, !dbg !1067
  %5 = extractvalue { i8*, i32 } %3, 1, !dbg !1067
  store i32 %5, i32* %ehselector.slot, align 4, !dbg !1067
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %msg) #3, !dbg !1065
  br label %eh.resume, !dbg !1065

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1065
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1065
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !1065
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1065
  resume { i8*, i32 } %lpad.val3, !dbg !1065
}

declare dso_local i32 @pthread_join(i64, i8**) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN14BulletinRWLockD2Ev(%class.BulletinRWLock* %this) unnamed_addr #8 comdat align 2 !dbg !1068 {
entry:
  %this.addr = alloca %class.BulletinRWLock*, align 8
  store %class.BulletinRWLock* %this, %class.BulletinRWLock** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.BulletinRWLock** %this.addr, metadata !1069, metadata !DIExpression()), !dbg !1070
  %this1 = load %class.BulletinRWLock*, %class.BulletinRWLock** %this.addr, align 8
  %message_ = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 1, !dbg !1071
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %message_) #3, !dbg !1071
  ret void, !dbg !1073
}

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcEC1Ev(%"class.std::allocator"*) unnamed_addr #2

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"*, i8*, %"class.std::allocator"* dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcED1Ev(%"class.std::allocator"*) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_rwlock_init(%union.pthread_rwlock_t*, %union.pthread_rwlockattr_t*) #2

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN14BulletinRWLock6UpdateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.BulletinRWLock* %this, %"class.std::__cxx11::basic_string"* %message) #6 comdat align 2 !dbg !1074 {
entry:
  %this.addr = alloca %class.BulletinRWLock*, align 8
  store %class.BulletinRWLock* %this, %class.BulletinRWLock** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.BulletinRWLock** %this.addr, metadata !1075, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"* %message, metadata !1077, metadata !DIExpression()), !dbg !1078
  %this1 = load %class.BulletinRWLock*, %class.BulletinRWLock** %this.addr, align 8
  %rwlock_ = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 0, !dbg !1079
  %call = call i32 @pthread_rwlock_wrlock(%union.pthread_rwlock_t* %rwlock_) #3, !dbg !1080
  %message_ = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 1, !dbg !1081
  %call2 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %message_, %"class.std::__cxx11::basic_string"* dereferenceable(32) %message), !dbg !1082
  %rwlock_3 = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 0, !dbg !1083
  %call4 = call i32 @pthread_rwlock_unlock(%union.pthread_rwlock_t* %rwlock_3) #3, !dbg !1084
  ret void, !dbg !1085
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"*) unnamed_addr #2

declare dso_local i32 @sleep(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_rwlock_wrlock(%union.pthread_rwlock_t*) #2

declare dso_local dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* dereferenceable(32)) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_rwlock_unlock(%union.pthread_rwlock_t*) #2

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN14BulletinRWLock4ReadB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %class.BulletinRWLock* %this) #6 comdat align 2 !dbg !1086 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %class.BulletinRWLock*, align 8
  %nrvo = alloca i1, align 1
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %class.BulletinRWLock* %this, %class.BulletinRWLock** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.BulletinRWLock** %this.addr, metadata !1087, metadata !DIExpression()), !dbg !1088
  %this1 = load %class.BulletinRWLock*, %class.BulletinRWLock** %this.addr, align 8
  %rwlock_ = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 0, !dbg !1089
  %call = call i32 @pthread_rwlock_rdlock(%union.pthread_rwlock_t* %rwlock_) #3, !dbg !1090
  store i1 false, i1* %nrvo, align 1, !dbg !1091
  call void @llvm.dbg.declare(metadata i8** %result.ptr, metadata !1092, metadata !DIExpression(DW_OP_deref)), !dbg !1093
  %message_ = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 1, !dbg !1094
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* %agg.result, %"class.std::__cxx11::basic_string"* dereferenceable(32) %message_), !dbg !1094
  %rwlock_2 = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 0, !dbg !1095
  %call3 = call i32 @pthread_rwlock_unlock(%union.pthread_rwlock_t* %rwlock_2) #3, !dbg !1096
  store i1 true, i1* %nrvo, align 1, !dbg !1097
  %nrvo.val = load i1, i1* %nrvo, align 1, !dbg !1098
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused, !dbg !1098

nrvo.unused:                                      ; preds = %entry
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.result) #3, !dbg !1098
  br label %nrvo.skipdtor, !dbg !1098

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %entry
  ret void, !dbg !1098
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* dereferenceable(272), %"class.std::__cxx11::basic_string"* dereferenceable(32)) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_rwlock_rdlock(%union.pthread_rwlock_t*) #2

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* dereferenceable(32)) unnamed_addr #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_pthread_rwlock_no.cpp() #0 section ".text.startup" !dbg !1099 {
entry:
  call void @__cxx_global_var_init(), !dbg !1101
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable willreturn }
attributes #6 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind }

!llvm.dbg.cu = !{!28}
!llvm.module.flags = !{!974, !975, !976}
!llvm.ident = !{!977}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/iostream", directory: "")
!4 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 603, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !7, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/ios_base.h", directory: "")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, flags: DIFlagFwdDecl)
!7 = !{!8, !12, !14, !18, !19, !24}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "_S_refcount", scope: !4, file: !5, line: 616, baseType: !9, flags: DIFlagStaticMember)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Atomic_word", file: !10, line: 32, baseType: !11)
!10 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/x86_64-pc-linux-gnu/bits/atomic_word.h", directory: "")
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_S_synced_with_stdio", scope: !4, file: !5, line: 617, baseType: !13, flags: DIFlagStaticMember)
!13 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!14 = !DISubprogram(name: "Init", scope: !4, file: !5, line: 607, type: !15, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!18 = !DISubprogram(name: "~Init", scope: !4, file: !5, line: 608, type: !15, scopeLine: 608, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!19 = !DISubprogram(name: "Init", scope: !4, file: !5, line: 611, type: !20, scopeLine: 611, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !17, !22}
!22 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!24 = !DISubprogram(name: "operator=", linkageName: "_ZNSt8ios_base4InitaSERKS0_", scope: !4, file: !5, line: 612, type: !25, scopeLine: 612, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !17, !22}
!27 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!28 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !29, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !31, globals: !89, imports: !90, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "pthread-rwlock-no.cpp", directory: "/home/yanze/code/OpenRace/tests/data/integration/pthreadrace")
!30 = !{}
!31 = !{!32, !33}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "BulletinRWLock", file: !29, line: 13, size: 704, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !35, identifier: "_ZTS14BulletinRWLock")
!35 = !{!36, !71, !77, !81, !82, !85}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "rwlock_", scope: !34, file: !29, line: 15, baseType: !37, size: 448)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_rwlock_t", file: !38, line: 91, baseType: !39)
!38 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "")
!39 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !38, line: 86, size: 448, flags: DIFlagTypePassByValue, elements: !40, identifier: "_ZTS16pthread_rwlock_t")
!40 = !{!41, !64, !69}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !39, file: !38, line: 88, baseType: !42, size: 448)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_rwlock_arch_t", file: !43, line: 23, size: 448, flags: DIFlagTypePassByValue, elements: !44, identifier: "_ZTS23__pthread_rwlock_arch_t")
!43 = !DIFile(filename: "/usr/include/bits/struct_rwlock.h", directory: "")
!44 = !{!45, !47, !48, !49, !50, !51, !52, !53, !54, !56, !61, !63}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "__readers", scope: !42, file: !43, line: 25, baseType: !46, size: 32)
!46 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "__writers", scope: !42, file: !43, line: 26, baseType: !46, size: 32, offset: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "__wrphase_futex", scope: !42, file: !43, line: 27, baseType: !46, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "__writers_futex", scope: !42, file: !43, line: 28, baseType: !46, size: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !42, file: !43, line: 29, baseType: !46, size: 32, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !42, file: !43, line: 30, baseType: !46, size: 32, offset: 160)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "__cur_writer", scope: !42, file: !43, line: 32, baseType: !11, size: 32, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__shared", scope: !42, file: !43, line: 33, baseType: !11, size: 32, offset: 224)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "__rwelision", scope: !42, file: !43, line: 34, baseType: !55, size: 8, offset: 256)
!55 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !42, file: !43, line: 39, baseType: !57, size: 56, offset: 264)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 56, elements: !59)
!58 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!59 = !{!60}
!60 = !DISubrange(count: 7)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !42, file: !43, line: 42, baseType: !62, size: 64, offset: 320)
!62 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__flags", scope: !42, file: !43, line: 45, baseType: !46, size: 32, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !39, file: !38, line: 89, baseType: !65, size: 448)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 448, elements: !67)
!66 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!67 = !{!68}
!68 = !DISubrange(count: 56)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !39, file: !38, line: 90, baseType: !70, size: 64)
!70 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "message_", scope: !34, file: !29, line: 16, baseType: !72, size: 256, offset: 448)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !2, file: !73, line: 79, baseType: !74)
!73 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/stringfwd.h", directory: "")
!74 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::char_traits<char>, std::allocator<char> >", scope: !76, file: !75, line: 1618, flags: DIFlagFwdDecl, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE")
!75 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/basic_string.tcc", directory: "")
!76 = !DINamespace(name: "__cxx11", scope: !2, exportSymbols: true)
!77 = !DISubprogram(name: "BulletinRWLock", scope: !34, file: !29, line: 19, type: !78, scopeLine: 19, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!81 = !DISubprogram(name: "~BulletinRWLock", scope: !34, file: !29, line: 21, type: !78, scopeLine: 21, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!82 = !DISubprogram(name: "Read", linkageName: "_ZN14BulletinRWLock4ReadB5cxx11Ev", scope: !34, file: !29, line: 23, type: !83, scopeLine: 23, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!83 = !DISubroutineType(types: !84)
!84 = !{!72, !80}
!85 = !DISubprogram(name: "Update", linkageName: "_ZN14BulletinRWLock6UpdateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", scope: !34, file: !29, line: 30, type: !86, scopeLine: 30, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !80, !88}
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!89 = !{!0}
!90 = !{!91, !108, !111, !116, !124, !132, !136, !143, !147, !151, !153, !155, !159, !170, !174, !180, !186, !188, !192, !196, !200, !204, !215, !217, !221, !225, !229, !231, !237, !241, !245, !247, !249, !253, !262, !266, !270, !274, !276, !282, !284, !291, !296, !300, !304, !308, !312, !316, !318, !320, !324, !328, !332, !334, !338, !342, !344, !346, !350, !356, !361, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !431, !435, !439, !445, !449, !452, !455, !458, !460, !462, !464, !467, !470, !473, !476, !479, !483, !487, !491, !494, !497, !499, !501, !503, !505, !508, !511, !514, !517, !520, !522, !526, !530, !535, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !571, !575, !581, !585, !590, !592, !596, !600, !604, !614, !618, !622, !626, !630, !634, !638, !642, !646, !650, !654, !658, !662, !664, !668, !672, !676, !682, !686, !690, !692, !696, !700, !706, !708, !712, !716, !720, !724, !728, !732, !736, !737, !738, !739, !741, !742, !743, !744, !745, !746, !747, !751, !757, !762, !766, !768, !770, !772, !774, !781, !785, !789, !793, !797, !801, !806, !810, !812, !816, !822, !826, !831, !833, !835, !839, !843, !845, !847, !849, !851, !855, !857, !859, !863, !867, !871, !875, !879, !883, !885, !889, !893, !897, !901, !903, !905, !909, !913, !914, !915, !916, !917, !918, !924, !927, !928, !930, !932, !934, !936, !940, !942, !944, !946, !948, !950, !952, !954, !956, !960, !964, !966, !970}
!91 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !92, file: !107, line: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !93, line: 6, baseType: !94)
!93 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !95, line: 21, baseType: !96)
!95 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !97, identifier: "_ZTS11__mbstate_t")
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !96, file: !95, line: 15, baseType: !11, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !96, file: !95, line: 20, baseType: !100, size: 32, offset: 32)
!100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !96, file: !95, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !101, identifier: "_ZTSN11__mbstate_tUt_E")
!101 = !{!102, !103}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !100, file: !95, line: 18, baseType: !46, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !100, file: !95, line: 19, baseType: !104, size: 32)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 32, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 4)
!107 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cwchar", directory: "")
!108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !109, file: !107, line: 141)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !110, line: 20, baseType: !46)
!110 = !DIFile(filename: "/usr/include/bits/types/wint_t.h", directory: "")
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !112, file: !107, line: 143)
!112 = !DISubprogram(name: "btowc", scope: !113, file: !113, line: 284, type: !114, flags: DIFlagPrototyped, spFlags: 0)
!113 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!114 = !DISubroutineType(types: !115)
!115 = !{!109, !11}
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !117, file: !107, line: 144)
!117 = !DISubprogram(name: "fgetwc", scope: !113, file: !113, line: 729, type: !118, flags: DIFlagPrototyped, spFlags: 0)
!118 = !DISubroutineType(types: !119)
!119 = !{!109, !120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !122, line: 5, baseType: !123)
!122 = !DIFile(filename: "/usr/include/bits/types/__FILE.h", directory: "")
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !122, line: 4, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !125, file: !107, line: 145)
!125 = !DISubprogram(name: "fgetws", scope: !113, file: !113, line: 758, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!126 = !DISubroutineType(types: !127)
!127 = !{!128, !130, !11, !131}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!130 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !128)
!131 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !120)
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !133, file: !107, line: 146)
!133 = !DISubprogram(name: "fputwc", scope: !113, file: !113, line: 743, type: !134, flags: DIFlagPrototyped, spFlags: 0)
!134 = !DISubroutineType(types: !135)
!135 = !{!109, !129, !120}
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !137, file: !107, line: 147)
!137 = !DISubprogram(name: "fputws", scope: !113, file: !113, line: 765, type: !138, flags: DIFlagPrototyped, spFlags: 0)
!138 = !DISubroutineType(types: !139)
!139 = !{!11, !140, !131}
!140 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !144, file: !107, line: 148)
!144 = !DISubprogram(name: "fwide", scope: !113, file: !113, line: 573, type: !145, flags: DIFlagPrototyped, spFlags: 0)
!145 = !DISubroutineType(types: !146)
!146 = !{!11, !120, !11}
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !148, file: !107, line: 149)
!148 = !DISubprogram(name: "fwprintf", scope: !113, file: !113, line: 580, type: !149, flags: DIFlagPrototyped, spFlags: 0)
!149 = !DISubroutineType(types: !150)
!150 = !{!11, !131, !140, null}
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !152, file: !107, line: 150)
!152 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !113, file: !113, line: 642, type: !149, flags: DIFlagPrototyped, spFlags: 0)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !154, file: !107, line: 151)
!154 = !DISubprogram(name: "getwc", scope: !113, file: !113, line: 730, type: !118, flags: DIFlagPrototyped, spFlags: 0)
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !156, file: !107, line: 152)
!156 = !DISubprogram(name: "getwchar", scope: !113, file: !113, line: 736, type: !157, flags: DIFlagPrototyped, spFlags: 0)
!157 = !DISubroutineType(types: !158)
!158 = !{!109}
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !160, file: !107, line: 153)
!160 = !DISubprogram(name: "mbrlen", scope: !113, file: !113, line: 307, type: !161, flags: DIFlagPrototyped, spFlags: 0)
!161 = !DISubroutineType(types: !162)
!162 = !{!163, !165, !163, !168}
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !164, line: 46, baseType: !62)
!164 = !DIFile(filename: "llvm-project/build/lib/clang/10.0.1/include/stddef.h", directory: "/home/yanze/code")
!165 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!168 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !171, file: !107, line: 154)
!171 = !DISubprogram(name: "mbrtowc", scope: !113, file: !113, line: 296, type: !172, flags: DIFlagPrototyped, spFlags: 0)
!172 = !DISubroutineType(types: !173)
!173 = !{!163, !130, !165, !163, !168}
!174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !175, file: !107, line: 155)
!175 = !DISubprogram(name: "mbsinit", scope: !113, file: !113, line: 292, type: !176, flags: DIFlagPrototyped, spFlags: 0)
!176 = !DISubroutineType(types: !177)
!177 = !{!11, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !181, file: !107, line: 156)
!181 = !DISubprogram(name: "mbsrtowcs", scope: !113, file: !113, line: 337, type: !182, flags: DIFlagPrototyped, spFlags: 0)
!182 = !DISubroutineType(types: !183)
!183 = !{!163, !130, !184, !163, !168}
!184 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !187, file: !107, line: 157)
!187 = !DISubprogram(name: "putwc", scope: !113, file: !113, line: 744, type: !134, flags: DIFlagPrototyped, spFlags: 0)
!188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !189, file: !107, line: 158)
!189 = !DISubprogram(name: "putwchar", scope: !113, file: !113, line: 750, type: !190, flags: DIFlagPrototyped, spFlags: 0)
!190 = !DISubroutineType(types: !191)
!191 = !{!109, !129}
!192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !193, file: !107, line: 160)
!193 = !DISubprogram(name: "swprintf", scope: !113, file: !113, line: 590, type: !194, flags: DIFlagPrototyped, spFlags: 0)
!194 = !DISubroutineType(types: !195)
!195 = !{!11, !130, !163, !140, null}
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !197, file: !107, line: 162)
!197 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !113, file: !113, line: 649, type: !198, flags: DIFlagPrototyped, spFlags: 0)
!198 = !DISubroutineType(types: !199)
!199 = !{!11, !140, !140, null}
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !201, file: !107, line: 163)
!201 = !DISubprogram(name: "ungetwc", scope: !113, file: !113, line: 773, type: !202, flags: DIFlagPrototyped, spFlags: 0)
!202 = !DISubroutineType(types: !203)
!203 = !{!109, !109, !120}
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !205, file: !107, line: 164)
!205 = !DISubprogram(name: "vfwprintf", scope: !113, file: !113, line: 598, type: !206, flags: DIFlagPrototyped, spFlags: 0)
!206 = !DISubroutineType(types: !207)
!207 = !{!11, !131, !140, !208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !29, size: 192, flags: DIFlagTypePassByValue, elements: !210, identifier: "_ZTS13__va_list_tag")
!210 = !{!211, !212, !213, !214}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !209, file: !29, baseType: !46, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !209, file: !29, baseType: !46, size: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !209, file: !29, baseType: !32, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !209, file: !29, baseType: !32, size: 64, offset: 128)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !216, file: !107, line: 166)
!216 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !113, file: !113, line: 696, type: !206, flags: DIFlagPrototyped, spFlags: 0)
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !218, file: !107, line: 169)
!218 = !DISubprogram(name: "vswprintf", scope: !113, file: !113, line: 611, type: !219, flags: DIFlagPrototyped, spFlags: 0)
!219 = !DISubroutineType(types: !220)
!220 = !{!11, !130, !163, !140, !208}
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !222, file: !107, line: 172)
!222 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !113, file: !113, line: 703, type: !223, flags: DIFlagPrototyped, spFlags: 0)
!223 = !DISubroutineType(types: !224)
!224 = !{!11, !140, !140, !208}
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !226, file: !107, line: 174)
!226 = !DISubprogram(name: "vwprintf", scope: !113, file: !113, line: 606, type: !227, flags: DIFlagPrototyped, spFlags: 0)
!227 = !DISubroutineType(types: !228)
!228 = !{!11, !140, !208}
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !230, file: !107, line: 176)
!230 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !113, file: !113, line: 700, type: !227, flags: DIFlagPrototyped, spFlags: 0)
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !232, file: !107, line: 178)
!232 = !DISubprogram(name: "wcrtomb", scope: !113, file: !113, line: 301, type: !233, flags: DIFlagPrototyped, spFlags: 0)
!233 = !DISubroutineType(types: !234)
!234 = !{!163, !235, !129, !168}
!235 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !238, file: !107, line: 179)
!238 = !DISubprogram(name: "wcscat", scope: !113, file: !113, line: 97, type: !239, flags: DIFlagPrototyped, spFlags: 0)
!239 = !DISubroutineType(types: !240)
!240 = !{!128, !130, !140}
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !242, file: !107, line: 180)
!242 = !DISubprogram(name: "wcscmp", scope: !113, file: !113, line: 106, type: !243, flags: DIFlagPrototyped, spFlags: 0)
!243 = !DISubroutineType(types: !244)
!244 = !{!11, !141, !141}
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !246, file: !107, line: 181)
!246 = !DISubprogram(name: "wcscoll", scope: !113, file: !113, line: 131, type: !243, flags: DIFlagPrototyped, spFlags: 0)
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !248, file: !107, line: 182)
!248 = !DISubprogram(name: "wcscpy", scope: !113, file: !113, line: 87, type: !239, flags: DIFlagPrototyped, spFlags: 0)
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !250, file: !107, line: 183)
!250 = !DISubprogram(name: "wcscspn", scope: !113, file: !113, line: 187, type: !251, flags: DIFlagPrototyped, spFlags: 0)
!251 = !DISubroutineType(types: !252)
!252 = !{!163, !141, !141}
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !254, file: !107, line: 184)
!254 = !DISubprogram(name: "wcsftime", scope: !113, file: !113, line: 837, type: !255, flags: DIFlagPrototyped, spFlags: 0)
!255 = !DISubroutineType(types: !256)
!256 = !{!163, !130, !163, !140, !257}
!257 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !261, line: 7, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!261 = !DIFile(filename: "/usr/include/bits/types/struct_tm.h", directory: "")
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !263, file: !107, line: 185)
!263 = !DISubprogram(name: "wcslen", scope: !113, file: !113, line: 222, type: !264, flags: DIFlagPrototyped, spFlags: 0)
!264 = !DISubroutineType(types: !265)
!265 = !{!163, !141}
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !267, file: !107, line: 186)
!267 = !DISubprogram(name: "wcsncat", scope: !113, file: !113, line: 101, type: !268, flags: DIFlagPrototyped, spFlags: 0)
!268 = !DISubroutineType(types: !269)
!269 = !{!128, !130, !140, !163}
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !271, file: !107, line: 187)
!271 = !DISubprogram(name: "wcsncmp", scope: !113, file: !113, line: 109, type: !272, flags: DIFlagPrototyped, spFlags: 0)
!272 = !DISubroutineType(types: !273)
!273 = !{!11, !141, !141, !163}
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !275, file: !107, line: 188)
!275 = !DISubprogram(name: "wcsncpy", scope: !113, file: !113, line: 92, type: !268, flags: DIFlagPrototyped, spFlags: 0)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !277, file: !107, line: 189)
!277 = !DISubprogram(name: "wcsrtombs", scope: !113, file: !113, line: 343, type: !278, flags: DIFlagPrototyped, spFlags: 0)
!278 = !DISubroutineType(types: !279)
!279 = !{!163, !235, !280, !163, !168}
!280 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !283, file: !107, line: 190)
!283 = !DISubprogram(name: "wcsspn", scope: !113, file: !113, line: 191, type: !251, flags: DIFlagPrototyped, spFlags: 0)
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !285, file: !107, line: 191)
!285 = !DISubprogram(name: "wcstod", scope: !113, file: !113, line: 377, type: !286, flags: DIFlagPrototyped, spFlags: 0)
!286 = !DISubroutineType(types: !287)
!287 = !{!288, !140, !289}
!288 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!289 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !292, file: !107, line: 193)
!292 = !DISubprogram(name: "wcstof", scope: !113, file: !113, line: 382, type: !293, flags: DIFlagPrototyped, spFlags: 0)
!293 = !DISubroutineType(types: !294)
!294 = !{!295, !140, !289}
!295 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !297, file: !107, line: 195)
!297 = !DISubprogram(name: "wcstok", scope: !113, file: !113, line: 217, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!298 = !DISubroutineType(types: !299)
!299 = !{!128, !130, !140, !289}
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !301, file: !107, line: 196)
!301 = !DISubprogram(name: "wcstol", scope: !113, file: !113, line: 428, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!302 = !DISubroutineType(types: !303)
!303 = !{!70, !140, !289, !11}
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !305, file: !107, line: 197)
!305 = !DISubprogram(name: "wcstoul", scope: !113, file: !113, line: 433, type: !306, flags: DIFlagPrototyped, spFlags: 0)
!306 = !DISubroutineType(types: !307)
!307 = !{!62, !140, !289, !11}
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !309, file: !107, line: 198)
!309 = !DISubprogram(name: "wcsxfrm", scope: !113, file: !113, line: 135, type: !310, flags: DIFlagPrototyped, spFlags: 0)
!310 = !DISubroutineType(types: !311)
!311 = !{!163, !130, !140, !163}
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !313, file: !107, line: 199)
!313 = !DISubprogram(name: "wctob", scope: !113, file: !113, line: 288, type: !314, flags: DIFlagPrototyped, spFlags: 0)
!314 = !DISubroutineType(types: !315)
!315 = !{!11, !109}
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !317, file: !107, line: 200)
!317 = !DISubprogram(name: "wmemcmp", scope: !113, file: !113, line: 258, type: !272, flags: DIFlagPrototyped, spFlags: 0)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !319, file: !107, line: 201)
!319 = !DISubprogram(name: "wmemcpy", scope: !113, file: !113, line: 262, type: !268, flags: DIFlagPrototyped, spFlags: 0)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !321, file: !107, line: 202)
!321 = !DISubprogram(name: "wmemmove", scope: !113, file: !113, line: 267, type: !322, flags: DIFlagPrototyped, spFlags: 0)
!322 = !DISubroutineType(types: !323)
!323 = !{!128, !128, !141, !163}
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !325, file: !107, line: 203)
!325 = !DISubprogram(name: "wmemset", scope: !113, file: !113, line: 271, type: !326, flags: DIFlagPrototyped, spFlags: 0)
!326 = !DISubroutineType(types: !327)
!327 = !{!128, !128, !129, !163}
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !329, file: !107, line: 204)
!329 = !DISubprogram(name: "wprintf", scope: !113, file: !113, line: 587, type: !330, flags: DIFlagPrototyped, spFlags: 0)
!330 = !DISubroutineType(types: !331)
!331 = !{!11, !140, null}
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !333, file: !107, line: 205)
!333 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !113, file: !113, line: 646, type: !330, flags: DIFlagPrototyped, spFlags: 0)
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !335, file: !107, line: 206)
!335 = !DISubprogram(name: "wcschr", scope: !113, file: !113, line: 164, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!336 = !DISubroutineType(types: !337)
!337 = !{!128, !141, !129}
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !339, file: !107, line: 207)
!339 = !DISubprogram(name: "wcspbrk", scope: !113, file: !113, line: 201, type: !340, flags: DIFlagPrototyped, spFlags: 0)
!340 = !DISubroutineType(types: !341)
!341 = !{!128, !141, !141}
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !343, file: !107, line: 208)
!343 = !DISubprogram(name: "wcsrchr", scope: !113, file: !113, line: 174, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !345, file: !107, line: 209)
!345 = !DISubprogram(name: "wcsstr", scope: !113, file: !113, line: 212, type: !340, flags: DIFlagPrototyped, spFlags: 0)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !347, file: !107, line: 210)
!347 = !DISubprogram(name: "wmemchr", scope: !113, file: !113, line: 253, type: !348, flags: DIFlagPrototyped, spFlags: 0)
!348 = !DISubroutineType(types: !349)
!349 = !{!128, !141, !129, !163}
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !351, entity: !352, file: !107, line: 251)
!351 = !DINamespace(name: "__gnu_cxx", scope: null)
!352 = !DISubprogram(name: "wcstold", scope: !113, file: !113, line: 384, type: !353, flags: DIFlagPrototyped, spFlags: 0)
!353 = !DISubroutineType(types: !354)
!354 = !{!355, !140, !289}
!355 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !351, entity: !357, file: !107, line: 260)
!357 = !DISubprogram(name: "wcstoll", scope: !113, file: !113, line: 441, type: !358, flags: DIFlagPrototyped, spFlags: 0)
!358 = !DISubroutineType(types: !359)
!359 = !{!360, !140, !289, !11}
!360 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !351, entity: !362, file: !107, line: 261)
!362 = !DISubprogram(name: "wcstoull", scope: !113, file: !113, line: 448, type: !363, flags: DIFlagPrototyped, spFlags: 0)
!363 = !DISubroutineType(types: !364)
!364 = !{!365, !140, !289, !11}
!365 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !352, file: !107, line: 267)
!367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !357, file: !107, line: 268)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !362, file: !107, line: 269)
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !292, file: !107, line: 283)
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !216, file: !107, line: 286)
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !222, file: !107, line: 289)
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !230, file: !107, line: 292)
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !352, file: !107, line: 296)
!374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !357, file: !107, line: 297)
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !362, file: !107, line: 298)
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !377, file: !378, line: 58)
!377 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !379, file: !378, line: 80, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !380, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!378 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/exception_ptr.h", directory: "")
!379 = !DINamespace(name: "__exception_ptr", scope: !2)
!380 = !{!381, !382, !386, !389, !390, !395, !396, !400, !406, !410, !414, !417, !418, !421, !424}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !377, file: !378, line: 82, baseType: !32, size: 64)
!382 = !DISubprogram(name: "exception_ptr", scope: !377, file: !378, line: 84, type: !383, scopeLine: 84, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !385, !32}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!386 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !377, file: !378, line: 86, type: !387, scopeLine: 86, flags: DIFlagPrototyped, spFlags: 0)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !385}
!389 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !377, file: !378, line: 87, type: !387, scopeLine: 87, flags: DIFlagPrototyped, spFlags: 0)
!390 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !377, file: !378, line: 89, type: !391, scopeLine: 89, flags: DIFlagPrototyped, spFlags: 0)
!391 = !DISubroutineType(types: !392)
!392 = !{!32, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!395 = !DISubprogram(name: "exception_ptr", scope: !377, file: !378, line: 97, type: !387, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!396 = !DISubprogram(name: "exception_ptr", scope: !377, file: !378, line: 99, type: !397, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !385, !399}
!399 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !394, size: 64)
!400 = !DISubprogram(name: "exception_ptr", scope: !377, file: !378, line: 102, type: !401, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !385, !403}
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !2, file: !404, line: 264, baseType: !405)
!404 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/x86_64-pc-linux-gnu/bits/c++config.h", directory: "")
!405 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!406 = !DISubprogram(name: "exception_ptr", scope: !377, file: !378, line: 106, type: !407, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !385, !409}
!409 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !377, size: 64)
!410 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !377, file: !378, line: 119, type: !411, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!411 = !DISubroutineType(types: !412)
!412 = !{!413, !385, !399}
!413 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !377, size: 64)
!414 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !377, file: !378, line: 123, type: !415, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!415 = !DISubroutineType(types: !416)
!416 = !{!413, !385, !409}
!417 = !DISubprogram(name: "~exception_ptr", scope: !377, file: !378, line: 130, type: !387, scopeLine: 130, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!418 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !377, file: !378, line: 133, type: !419, scopeLine: 133, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !385, !413}
!421 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !377, file: !378, line: 145, type: !422, scopeLine: 145, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!422 = !DISubroutineType(types: !423)
!423 = !{!13, !393}
!424 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !377, file: !378, line: 154, type: !425, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!425 = !DISubroutineType(types: !426)
!426 = !{!427, !393}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!429 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !2, file: !430, line: 88, flags: DIFlagFwdDecl)
!430 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/typeinfo", directory: "")
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !379, entity: !432, file: !378, line: 74)
!432 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !378, line: 70, type: !433, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !377}
!435 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !436, entity: !437, file: !438, line: 58)
!436 = !DINamespace(name: "__gnu_debug", scope: null)
!437 = !DINamespace(name: "__debug", scope: !2)
!438 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/debug/debug.h", directory: "")
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !440, file: !444, line: 47)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !441, line: 24, baseType: !442)
!441 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "")
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !443, line: 37, baseType: !55)
!443 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!444 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdint", directory: "")
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !446, file: !444, line: 48)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !441, line: 25, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !443, line: 39, baseType: !448)
!448 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !450, file: !444, line: 49)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !441, line: 26, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !443, line: 41, baseType: !11)
!452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !453, file: !444, line: 50)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !441, line: 27, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !443, line: 44, baseType: !70)
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !456, file: !444, line: 52)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !457, line: 58, baseType: !55)
!457 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !459, file: !444, line: 53)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !457, line: 60, baseType: !70)
!460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !461, file: !444, line: 54)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !457, line: 61, baseType: !70)
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !463, file: !444, line: 55)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !457, line: 62, baseType: !70)
!464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !465, file: !444, line: 57)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !457, line: 43, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !443, line: 52, baseType: !442)
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !468, file: !444, line: 58)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !457, line: 44, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !443, line: 54, baseType: !447)
!470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !471, file: !444, line: 59)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !457, line: 45, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !443, line: 56, baseType: !451)
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !474, file: !444, line: 60)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !457, line: 46, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !443, line: 58, baseType: !454)
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !477, file: !444, line: 62)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !457, line: 101, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !443, line: 72, baseType: !70)
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !480, file: !444, line: 63)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !481, line: 267, baseType: !482)
!481 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !443, line: 207, baseType: !70)
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !484, file: !444, line: 65)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !485, line: 24, baseType: !486)
!485 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "")
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !443, line: 38, baseType: !58)
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !488, file: !444, line: 66)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !485, line: 25, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !443, line: 40, baseType: !490)
!490 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !492, file: !444, line: 67)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !485, line: 26, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !443, line: 42, baseType: !46)
!494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !495, file: !444, line: 68)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !485, line: 27, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !443, line: 45, baseType: !62)
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !498, file: !444, line: 70)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !457, line: 71, baseType: !58)
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !500, file: !444, line: 71)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !457, line: 73, baseType: !62)
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !502, file: !444, line: 72)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !457, line: 74, baseType: !62)
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !504, file: !444, line: 73)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !457, line: 75, baseType: !62)
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !506, file: !444, line: 75)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !457, line: 49, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !443, line: 53, baseType: !486)
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !509, file: !444, line: 76)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !457, line: 50, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !443, line: 55, baseType: !489)
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !512, file: !444, line: 77)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !457, line: 51, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !443, line: 57, baseType: !493)
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !515, file: !444, line: 78)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !457, line: 52, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !443, line: 59, baseType: !496)
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !518, file: !444, line: 80)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !457, line: 102, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !443, line: 73, baseType: !62)
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !521, file: !444, line: 81)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !457, line: 90, baseType: !62)
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !523, file: !525, line: 53)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !524, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!524 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!525 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/clocale", directory: "")
!526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !527, file: !525, line: 54)
!527 = !DISubprogram(name: "setlocale", scope: !524, file: !524, line: 122, type: !528, flags: DIFlagPrototyped, spFlags: 0)
!528 = !DISubroutineType(types: !529)
!529 = !{!236, !11, !166}
!530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !531, file: !525, line: 55)
!531 = !DISubprogram(name: "localeconv", scope: !524, file: !524, line: 125, type: !532, flags: DIFlagPrototyped, spFlags: 0)
!532 = !DISubroutineType(types: !533)
!533 = !{!534}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !536, file: !540, line: 64)
!536 = !DISubprogram(name: "isalnum", scope: !537, file: !537, line: 108, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!537 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!538 = !DISubroutineType(types: !539)
!539 = !{!11, !11}
!540 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cctype", directory: "")
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !542, file: !540, line: 65)
!542 = !DISubprogram(name: "isalpha", scope: !537, file: !537, line: 109, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !544, file: !540, line: 66)
!544 = !DISubprogram(name: "iscntrl", scope: !537, file: !537, line: 110, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !546, file: !540, line: 67)
!546 = !DISubprogram(name: "isdigit", scope: !537, file: !537, line: 111, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !548, file: !540, line: 68)
!548 = !DISubprogram(name: "isgraph", scope: !537, file: !537, line: 113, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !550, file: !540, line: 69)
!550 = !DISubprogram(name: "islower", scope: !537, file: !537, line: 112, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !552, file: !540, line: 70)
!552 = !DISubprogram(name: "isprint", scope: !537, file: !537, line: 114, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !554, file: !540, line: 71)
!554 = !DISubprogram(name: "ispunct", scope: !537, file: !537, line: 115, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !556, file: !540, line: 72)
!556 = !DISubprogram(name: "isspace", scope: !537, file: !537, line: 116, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !558, file: !540, line: 73)
!558 = !DISubprogram(name: "isupper", scope: !537, file: !537, line: 117, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !560, file: !540, line: 74)
!560 = !DISubprogram(name: "isxdigit", scope: !537, file: !537, line: 118, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !562, file: !540, line: 75)
!562 = !DISubprogram(name: "tolower", scope: !537, file: !537, line: 122, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !564, file: !540, line: 76)
!564 = !DISubprogram(name: "toupper", scope: !537, file: !537, line: 125, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !566, file: !540, line: 87)
!566 = !DISubprogram(name: "isblank", scope: !537, file: !537, line: 130, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !568, file: !570, line: 52)
!568 = !DISubprogram(name: "abs", scope: !569, file: !569, line: 840, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!569 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!570 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/std_abs.h", directory: "")
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !572, file: !574, line: 127)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !569, line: 62, baseType: !573)
!573 = !DICompositeType(tag: DW_TAG_structure_type, file: !569, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!574 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdlib", directory: "")
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !576, file: !574, line: 128)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !569, line: 70, baseType: !577)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !569, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !578, identifier: "_ZTS6ldiv_t")
!578 = !{!579, !580}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !577, file: !569, line: 68, baseType: !70, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !577, file: !569, line: 69, baseType: !70, size: 64, offset: 64)
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !582, file: !574, line: 130)
!582 = !DISubprogram(name: "abort", scope: !569, file: !569, line: 591, type: !583, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!583 = !DISubroutineType(types: !584)
!584 = !{null}
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !586, file: !574, line: 134)
!586 = !DISubprogram(name: "atexit", scope: !569, file: !569, line: 595, type: !587, flags: DIFlagPrototyped, spFlags: 0)
!587 = !DISubroutineType(types: !588)
!588 = !{!11, !589}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !591, file: !574, line: 137)
!591 = !DISubprogram(name: "at_quick_exit", scope: !569, file: !569, line: 600, type: !587, flags: DIFlagPrototyped, spFlags: 0)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !593, file: !574, line: 140)
!593 = !DISubprogram(name: "atof", scope: !569, file: !569, line: 101, type: !594, flags: DIFlagPrototyped, spFlags: 0)
!594 = !DISubroutineType(types: !595)
!595 = !{!288, !166}
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !597, file: !574, line: 141)
!597 = !DISubprogram(name: "atoi", scope: !569, file: !569, line: 104, type: !598, flags: DIFlagPrototyped, spFlags: 0)
!598 = !DISubroutineType(types: !599)
!599 = !{!11, !166}
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !601, file: !574, line: 142)
!601 = !DISubprogram(name: "atol", scope: !569, file: !569, line: 107, type: !602, flags: DIFlagPrototyped, spFlags: 0)
!602 = !DISubroutineType(types: !603)
!603 = !{!70, !166}
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !605, file: !574, line: 143)
!605 = !DISubprogram(name: "bsearch", scope: !569, file: !569, line: 820, type: !606, flags: DIFlagPrototyped, spFlags: 0)
!606 = !DISubroutineType(types: !607)
!607 = !{!32, !608, !608, !163, !163, !610}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !569, line: 808, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!11, !608, !608}
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !615, file: !574, line: 144)
!615 = !DISubprogram(name: "calloc", scope: !569, file: !569, line: 542, type: !616, flags: DIFlagPrototyped, spFlags: 0)
!616 = !DISubroutineType(types: !617)
!617 = !{!32, !163, !163}
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !619, file: !574, line: 145)
!619 = !DISubprogram(name: "div", scope: !569, file: !569, line: 852, type: !620, flags: DIFlagPrototyped, spFlags: 0)
!620 = !DISubroutineType(types: !621)
!621 = !{!572, !11, !11}
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !623, file: !574, line: 146)
!623 = !DISubprogram(name: "exit", scope: !569, file: !569, line: 617, type: !624, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !11}
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !627, file: !574, line: 147)
!627 = !DISubprogram(name: "free", scope: !569, file: !569, line: 565, type: !628, flags: DIFlagPrototyped, spFlags: 0)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !32}
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !631, file: !574, line: 148)
!631 = !DISubprogram(name: "getenv", scope: !569, file: !569, line: 634, type: !632, flags: DIFlagPrototyped, spFlags: 0)
!632 = !DISubroutineType(types: !633)
!633 = !{!236, !166}
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !635, file: !574, line: 149)
!635 = !DISubprogram(name: "labs", scope: !569, file: !569, line: 841, type: !636, flags: DIFlagPrototyped, spFlags: 0)
!636 = !DISubroutineType(types: !637)
!637 = !{!70, !70}
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !639, file: !574, line: 150)
!639 = !DISubprogram(name: "ldiv", scope: !569, file: !569, line: 854, type: !640, flags: DIFlagPrototyped, spFlags: 0)
!640 = !DISubroutineType(types: !641)
!641 = !{!576, !70, !70}
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !643, file: !574, line: 151)
!643 = !DISubprogram(name: "malloc", scope: !569, file: !569, line: 539, type: !644, flags: DIFlagPrototyped, spFlags: 0)
!644 = !DISubroutineType(types: !645)
!645 = !{!32, !163}
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !647, file: !574, line: 153)
!647 = !DISubprogram(name: "mblen", scope: !569, file: !569, line: 922, type: !648, flags: DIFlagPrototyped, spFlags: 0)
!648 = !DISubroutineType(types: !649)
!649 = !{!11, !166, !163}
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !651, file: !574, line: 154)
!651 = !DISubprogram(name: "mbstowcs", scope: !569, file: !569, line: 933, type: !652, flags: DIFlagPrototyped, spFlags: 0)
!652 = !DISubroutineType(types: !653)
!653 = !{!163, !130, !165, !163}
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !655, file: !574, line: 155)
!655 = !DISubprogram(name: "mbtowc", scope: !569, file: !569, line: 925, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!656 = !DISubroutineType(types: !657)
!657 = !{!11, !130, !165, !163}
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !659, file: !574, line: 157)
!659 = !DISubprogram(name: "qsort", scope: !569, file: !569, line: 830, type: !660, flags: DIFlagPrototyped, spFlags: 0)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !32, !163, !163, !610}
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !663, file: !574, line: 160)
!663 = !DISubprogram(name: "quick_exit", scope: !569, file: !569, line: 623, type: !624, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !665, file: !574, line: 163)
!665 = !DISubprogram(name: "rand", scope: !569, file: !569, line: 453, type: !666, flags: DIFlagPrototyped, spFlags: 0)
!666 = !DISubroutineType(types: !667)
!667 = !{!11}
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !669, file: !574, line: 164)
!669 = !DISubprogram(name: "realloc", scope: !569, file: !569, line: 550, type: !670, flags: DIFlagPrototyped, spFlags: 0)
!670 = !DISubroutineType(types: !671)
!671 = !{!32, !32, !163}
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !673, file: !574, line: 165)
!673 = !DISubprogram(name: "srand", scope: !569, file: !569, line: 455, type: !674, flags: DIFlagPrototyped, spFlags: 0)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !46}
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !677, file: !574, line: 166)
!677 = !DISubprogram(name: "strtod", scope: !569, file: !569, line: 117, type: !678, flags: DIFlagPrototyped, spFlags: 0)
!678 = !DISubroutineType(types: !679)
!679 = !{!288, !165, !680}
!680 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !683, file: !574, line: 167)
!683 = !DISubprogram(name: "strtol", scope: !569, file: !569, line: 176, type: !684, flags: DIFlagPrototyped, spFlags: 0)
!684 = !DISubroutineType(types: !685)
!685 = !{!70, !165, !680, !11}
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !687, file: !574, line: 168)
!687 = !DISubprogram(name: "strtoul", scope: !569, file: !569, line: 180, type: !688, flags: DIFlagPrototyped, spFlags: 0)
!688 = !DISubroutineType(types: !689)
!689 = !{!62, !165, !680, !11}
!690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !691, file: !574, line: 169)
!691 = !DISubprogram(name: "system", scope: !569, file: !569, line: 784, type: !598, flags: DIFlagPrototyped, spFlags: 0)
!692 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !693, file: !574, line: 171)
!693 = !DISubprogram(name: "wcstombs", scope: !569, file: !569, line: 937, type: !694, flags: DIFlagPrototyped, spFlags: 0)
!694 = !DISubroutineType(types: !695)
!695 = !{!163, !235, !140, !163}
!696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !697, file: !574, line: 172)
!697 = !DISubprogram(name: "wctomb", scope: !569, file: !569, line: 929, type: !698, flags: DIFlagPrototyped, spFlags: 0)
!698 = !DISubroutineType(types: !699)
!699 = !{!11, !236, !129}
!700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !351, entity: !701, file: !574, line: 200)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !569, line: 80, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !569, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !703, identifier: "_ZTS7lldiv_t")
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !702, file: !569, line: 78, baseType: !360, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !702, file: !569, line: 79, baseType: !360, size: 64, offset: 64)
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !351, entity: !707, file: !574, line: 206)
!707 = !DISubprogram(name: "_Exit", scope: !569, file: !569, line: 629, type: !624, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !351, entity: !709, file: !574, line: 210)
!709 = !DISubprogram(name: "llabs", scope: !569, file: !569, line: 844, type: !710, flags: DIFlagPrototyped, spFlags: 0)
!710 = !DISubroutineType(types: !711)
!711 = !{!360, !360}
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !351, entity: !713, file: !574, line: 216)
!713 = !DISubprogram(name: "lldiv", scope: !569, file: !569, line: 858, type: !714, flags: DIFlagPrototyped, spFlags: 0)
!714 = !DISubroutineType(types: !715)
!715 = !{!701, !360, !360}
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !351, entity: !717, file: !574, line: 227)
!717 = !DISubprogram(name: "atoll", scope: !569, file: !569, line: 112, type: !718, flags: DIFlagPrototyped, spFlags: 0)
!718 = !DISubroutineType(types: !719)
!719 = !{!360, !166}
!720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !351, entity: !721, file: !574, line: 228)
!721 = !DISubprogram(name: "strtoll", scope: !569, file: !569, line: 200, type: !722, flags: DIFlagPrototyped, spFlags: 0)
!722 = !DISubroutineType(types: !723)
!723 = !{!360, !165, !680, !11}
!724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !351, entity: !725, file: !574, line: 229)
!725 = !DISubprogram(name: "strtoull", scope: !569, file: !569, line: 205, type: !726, flags: DIFlagPrototyped, spFlags: 0)
!726 = !DISubroutineType(types: !727)
!727 = !{!365, !165, !680, !11}
!728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !351, entity: !729, file: !574, line: 231)
!729 = !DISubprogram(name: "strtof", scope: !569, file: !569, line: 123, type: !730, flags: DIFlagPrototyped, spFlags: 0)
!730 = !DISubroutineType(types: !731)
!731 = !{!295, !165, !680}
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !351, entity: !733, file: !574, line: 232)
!733 = !DISubprogram(name: "strtold", scope: !569, file: !569, line: 126, type: !734, flags: DIFlagPrototyped, spFlags: 0)
!734 = !DISubroutineType(types: !735)
!735 = !{!355, !165, !680}
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !701, file: !574, line: 240)
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !707, file: !574, line: 242)
!738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !709, file: !574, line: 244)
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !740, file: !574, line: 245)
!740 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !351, file: !574, line: 213, type: !714, flags: DIFlagPrototyped, spFlags: 0)
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !713, file: !574, line: 246)
!742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !717, file: !574, line: 248)
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !729, file: !574, line: 249)
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !721, file: !574, line: 250)
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !725, file: !574, line: 251)
!746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !733, file: !574, line: 252)
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !748, file: !750, line: 98)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !749, line: 7, baseType: !123)
!749 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!750 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdio", directory: "")
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !752, file: !750, line: 99)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !753, line: 84, baseType: !754)
!753 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !755, line: 14, baseType: !756)
!755 = !DIFile(filename: "/usr/include/bits/types/__fpos_t.h", directory: "")
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !755, line: 10, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !758, file: !750, line: 101)
!758 = !DISubprogram(name: "clearerr", scope: !753, file: !753, line: 762, type: !759, flags: DIFlagPrototyped, spFlags: 0)
!759 = !DISubroutineType(types: !760)
!760 = !{null, !761}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !763, file: !750, line: 102)
!763 = !DISubprogram(name: "fclose", scope: !753, file: !753, line: 213, type: !764, flags: DIFlagPrototyped, spFlags: 0)
!764 = !DISubroutineType(types: !765)
!765 = !{!11, !761}
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !767, file: !750, line: 103)
!767 = !DISubprogram(name: "feof", scope: !753, file: !753, line: 764, type: !764, flags: DIFlagPrototyped, spFlags: 0)
!768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !769, file: !750, line: 104)
!769 = !DISubprogram(name: "ferror", scope: !753, file: !753, line: 766, type: !764, flags: DIFlagPrototyped, spFlags: 0)
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !771, file: !750, line: 105)
!771 = !DISubprogram(name: "fflush", scope: !753, file: !753, line: 218, type: !764, flags: DIFlagPrototyped, spFlags: 0)
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !773, file: !750, line: 106)
!773 = !DISubprogram(name: "fgetc", scope: !753, file: !753, line: 489, type: !764, flags: DIFlagPrototyped, spFlags: 0)
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !775, file: !750, line: 107)
!775 = !DISubprogram(name: "fgetpos", scope: !753, file: !753, line: 736, type: !776, flags: DIFlagPrototyped, spFlags: 0)
!776 = !DISubroutineType(types: !777)
!777 = !{!11, !778, !779}
!778 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !761)
!779 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !782, file: !750, line: 108)
!782 = !DISubprogram(name: "fgets", scope: !753, file: !753, line: 568, type: !783, flags: DIFlagPrototyped, spFlags: 0)
!783 = !DISubroutineType(types: !784)
!784 = !{!236, !235, !11, !778}
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !786, file: !750, line: 109)
!786 = !DISubprogram(name: "fopen", scope: !753, file: !753, line: 246, type: !787, flags: DIFlagPrototyped, spFlags: 0)
!787 = !DISubroutineType(types: !788)
!788 = !{!761, !165, !165}
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !790, file: !750, line: 110)
!790 = !DISubprogram(name: "fprintf", scope: !753, file: !753, line: 326, type: !791, flags: DIFlagPrototyped, spFlags: 0)
!791 = !DISubroutineType(types: !792)
!792 = !{!11, !778, !165, null}
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !794, file: !750, line: 111)
!794 = !DISubprogram(name: "fputc", scope: !753, file: !753, line: 525, type: !795, flags: DIFlagPrototyped, spFlags: 0)
!795 = !DISubroutineType(types: !796)
!796 = !{!11, !11, !761}
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !798, file: !750, line: 112)
!798 = !DISubprogram(name: "fputs", scope: !753, file: !753, line: 631, type: !799, flags: DIFlagPrototyped, spFlags: 0)
!799 = !DISubroutineType(types: !800)
!800 = !{!11, !165, !778}
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !802, file: !750, line: 113)
!802 = !DISubprogram(name: "fread", scope: !753, file: !753, line: 651, type: !803, flags: DIFlagPrototyped, spFlags: 0)
!803 = !DISubroutineType(types: !804)
!804 = !{!163, !805, !163, !163, !778}
!805 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !807, file: !750, line: 114)
!807 = !DISubprogram(name: "freopen", scope: !753, file: !753, line: 252, type: !808, flags: DIFlagPrototyped, spFlags: 0)
!808 = !DISubroutineType(types: !809)
!809 = !{!761, !165, !165, !778}
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !811, file: !750, line: 115)
!811 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !753, file: !753, line: 410, type: !791, flags: DIFlagPrototyped, spFlags: 0)
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !813, file: !750, line: 116)
!813 = !DISubprogram(name: "fseek", scope: !753, file: !753, line: 689, type: !814, flags: DIFlagPrototyped, spFlags: 0)
!814 = !DISubroutineType(types: !815)
!815 = !{!11, !761, !70, !11}
!816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !817, file: !750, line: 117)
!817 = !DISubprogram(name: "fsetpos", scope: !753, file: !753, line: 741, type: !818, flags: DIFlagPrototyped, spFlags: 0)
!818 = !DISubroutineType(types: !819)
!819 = !{!11, !761, !820}
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !752)
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !823, file: !750, line: 118)
!823 = !DISubprogram(name: "ftell", scope: !753, file: !753, line: 694, type: !824, flags: DIFlagPrototyped, spFlags: 0)
!824 = !DISubroutineType(types: !825)
!825 = !{!70, !761}
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !827, file: !750, line: 119)
!827 = !DISubprogram(name: "fwrite", scope: !753, file: !753, line: 657, type: !828, flags: DIFlagPrototyped, spFlags: 0)
!828 = !DISubroutineType(types: !829)
!829 = !{!163, !830, !163, !163, !778}
!830 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !608)
!831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !832, file: !750, line: 120)
!832 = !DISubprogram(name: "getc", scope: !753, file: !753, line: 490, type: !764, flags: DIFlagPrototyped, spFlags: 0)
!833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !834, file: !750, line: 121)
!834 = !DISubprogram(name: "getchar", scope: !753, file: !753, line: 496, type: !666, flags: DIFlagPrototyped, spFlags: 0)
!835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !836, file: !750, line: 126)
!836 = !DISubprogram(name: "perror", scope: !753, file: !753, line: 780, type: !837, flags: DIFlagPrototyped, spFlags: 0)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !166}
!839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !840, file: !750, line: 127)
!840 = !DISubprogram(name: "printf", scope: !753, file: !753, line: 332, type: !841, flags: DIFlagPrototyped, spFlags: 0)
!841 = !DISubroutineType(types: !842)
!842 = !{!11, !165, null}
!843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !844, file: !750, line: 128)
!844 = !DISubprogram(name: "putc", scope: !753, file: !753, line: 526, type: !795, flags: DIFlagPrototyped, spFlags: 0)
!845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !846, file: !750, line: 129)
!846 = !DISubprogram(name: "putchar", scope: !753, file: !753, line: 532, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!847 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !848, file: !750, line: 130)
!848 = !DISubprogram(name: "puts", scope: !753, file: !753, line: 637, type: !598, flags: DIFlagPrototyped, spFlags: 0)
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !850, file: !750, line: 131)
!850 = !DISubprogram(name: "remove", scope: !753, file: !753, line: 146, type: !598, flags: DIFlagPrototyped, spFlags: 0)
!851 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !852, file: !750, line: 132)
!852 = !DISubprogram(name: "rename", scope: !753, file: !753, line: 148, type: !853, flags: DIFlagPrototyped, spFlags: 0)
!853 = !DISubroutineType(types: !854)
!854 = !{!11, !166, !166}
!855 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !856, file: !750, line: 133)
!856 = !DISubprogram(name: "rewind", scope: !753, file: !753, line: 699, type: !759, flags: DIFlagPrototyped, spFlags: 0)
!857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !858, file: !750, line: 134)
!858 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !753, file: !753, line: 413, type: !841, flags: DIFlagPrototyped, spFlags: 0)
!859 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !860, file: !750, line: 135)
!860 = !DISubprogram(name: "setbuf", scope: !753, file: !753, line: 304, type: !861, flags: DIFlagPrototyped, spFlags: 0)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !778, !235}
!863 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !864, file: !750, line: 136)
!864 = !DISubprogram(name: "setvbuf", scope: !753, file: !753, line: 308, type: !865, flags: DIFlagPrototyped, spFlags: 0)
!865 = !DISubroutineType(types: !866)
!866 = !{!11, !778, !235, !11, !163}
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !868, file: !750, line: 137)
!868 = !DISubprogram(name: "sprintf", scope: !753, file: !753, line: 334, type: !869, flags: DIFlagPrototyped, spFlags: 0)
!869 = !DISubroutineType(types: !870)
!870 = !{!11, !235, !165, null}
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !872, file: !750, line: 138)
!872 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !753, file: !753, line: 415, type: !873, flags: DIFlagPrototyped, spFlags: 0)
!873 = !DISubroutineType(types: !874)
!874 = !{!11, !165, !165, null}
!875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !876, file: !750, line: 139)
!876 = !DISubprogram(name: "tmpfile", scope: !753, file: !753, line: 173, type: !877, flags: DIFlagPrototyped, spFlags: 0)
!877 = !DISubroutineType(types: !878)
!878 = !{!761}
!879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !880, file: !750, line: 141)
!880 = !DISubprogram(name: "tmpnam", scope: !753, file: !753, line: 187, type: !881, flags: DIFlagPrototyped, spFlags: 0)
!881 = !DISubroutineType(types: !882)
!882 = !{!236, !236}
!883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !884, file: !750, line: 143)
!884 = !DISubprogram(name: "ungetc", scope: !753, file: !753, line: 644, type: !795, flags: DIFlagPrototyped, spFlags: 0)
!885 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !886, file: !750, line: 144)
!886 = !DISubprogram(name: "vfprintf", scope: !753, file: !753, line: 341, type: !887, flags: DIFlagPrototyped, spFlags: 0)
!887 = !DISubroutineType(types: !888)
!888 = !{!11, !778, !165, !208}
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !890, file: !750, line: 145)
!890 = !DISubprogram(name: "vprintf", scope: !753, file: !753, line: 347, type: !891, flags: DIFlagPrototyped, spFlags: 0)
!891 = !DISubroutineType(types: !892)
!892 = !{!11, !165, !208}
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !894, file: !750, line: 146)
!894 = !DISubprogram(name: "vsprintf", scope: !753, file: !753, line: 349, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!895 = !DISubroutineType(types: !896)
!896 = !{!11, !235, !165, !208}
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !351, entity: !898, file: !750, line: 175)
!898 = !DISubprogram(name: "snprintf", scope: !753, file: !753, line: 354, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!899 = !DISubroutineType(types: !900)
!900 = !{!11, !235, !163, !165, null}
!901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !351, entity: !902, file: !750, line: 176)
!902 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !753, file: !753, line: 455, type: !887, flags: DIFlagPrototyped, spFlags: 0)
!903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !351, entity: !904, file: !750, line: 177)
!904 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !753, file: !753, line: 460, type: !891, flags: DIFlagPrototyped, spFlags: 0)
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !351, entity: !906, file: !750, line: 178)
!906 = !DISubprogram(name: "vsnprintf", scope: !753, file: !753, line: 358, type: !907, flags: DIFlagPrototyped, spFlags: 0)
!907 = !DISubroutineType(types: !908)
!908 = !{!11, !235, !163, !165, !208}
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !351, entity: !910, file: !750, line: 179)
!910 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !753, file: !753, line: 463, type: !911, flags: DIFlagPrototyped, spFlags: 0)
!911 = !DISubroutineType(types: !912)
!912 = !{!11, !165, !165, !208}
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !898, file: !750, line: 185)
!914 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !902, file: !750, line: 186)
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !904, file: !750, line: 187)
!916 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !906, file: !750, line: 188)
!917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !910, file: !750, line: 189)
!918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !919, file: !923, line: 82)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !920, line: 48, baseType: !921)
!920 = !DIFile(filename: "/usr/include/wctype.h", directory: "")
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !451)
!923 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cwctype", directory: "")
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !925, file: !923, line: 83)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !926, line: 38, baseType: !62)
!926 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !109, file: !923, line: 84)
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !929, file: !923, line: 86)
!929 = !DISubprogram(name: "iswalnum", scope: !926, file: !926, line: 95, type: !314, flags: DIFlagPrototyped, spFlags: 0)
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !931, file: !923, line: 87)
!931 = !DISubprogram(name: "iswalpha", scope: !926, file: !926, line: 101, type: !314, flags: DIFlagPrototyped, spFlags: 0)
!932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !933, file: !923, line: 89)
!933 = !DISubprogram(name: "iswblank", scope: !926, file: !926, line: 146, type: !314, flags: DIFlagPrototyped, spFlags: 0)
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !935, file: !923, line: 91)
!935 = !DISubprogram(name: "iswcntrl", scope: !926, file: !926, line: 104, type: !314, flags: DIFlagPrototyped, spFlags: 0)
!936 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !937, file: !923, line: 92)
!937 = !DISubprogram(name: "iswctype", scope: !926, file: !926, line: 159, type: !938, flags: DIFlagPrototyped, spFlags: 0)
!938 = !DISubroutineType(types: !939)
!939 = !{!11, !109, !925}
!940 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !941, file: !923, line: 93)
!941 = !DISubprogram(name: "iswdigit", scope: !926, file: !926, line: 108, type: !314, flags: DIFlagPrototyped, spFlags: 0)
!942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !943, file: !923, line: 94)
!943 = !DISubprogram(name: "iswgraph", scope: !926, file: !926, line: 112, type: !314, flags: DIFlagPrototyped, spFlags: 0)
!944 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !945, file: !923, line: 95)
!945 = !DISubprogram(name: "iswlower", scope: !926, file: !926, line: 117, type: !314, flags: DIFlagPrototyped, spFlags: 0)
!946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !947, file: !923, line: 96)
!947 = !DISubprogram(name: "iswprint", scope: !926, file: !926, line: 120, type: !314, flags: DIFlagPrototyped, spFlags: 0)
!948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !949, file: !923, line: 97)
!949 = !DISubprogram(name: "iswpunct", scope: !926, file: !926, line: 125, type: !314, flags: DIFlagPrototyped, spFlags: 0)
!950 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !951, file: !923, line: 98)
!951 = !DISubprogram(name: "iswspace", scope: !926, file: !926, line: 130, type: !314, flags: DIFlagPrototyped, spFlags: 0)
!952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !953, file: !923, line: 99)
!953 = !DISubprogram(name: "iswupper", scope: !926, file: !926, line: 135, type: !314, flags: DIFlagPrototyped, spFlags: 0)
!954 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !955, file: !923, line: 100)
!955 = !DISubprogram(name: "iswxdigit", scope: !926, file: !926, line: 140, type: !314, flags: DIFlagPrototyped, spFlags: 0)
!956 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !957, file: !923, line: 101)
!957 = !DISubprogram(name: "towctrans", scope: !920, file: !920, line: 55, type: !958, flags: DIFlagPrototyped, spFlags: 0)
!958 = !DISubroutineType(types: !959)
!959 = !{!109, !109, !919}
!960 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !961, file: !923, line: 102)
!961 = !DISubprogram(name: "towlower", scope: !926, file: !926, line: 166, type: !962, flags: DIFlagPrototyped, spFlags: 0)
!962 = !DISubroutineType(types: !963)
!963 = !{!109, !109}
!964 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !965, file: !923, line: 103)
!965 = !DISubprogram(name: "towupper", scope: !926, file: !926, line: 169, type: !962, flags: DIFlagPrototyped, spFlags: 0)
!966 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !967, file: !923, line: 104)
!967 = !DISubprogram(name: "wctrans", scope: !920, file: !920, line: 52, type: !968, flags: DIFlagPrototyped, spFlags: 0)
!968 = !DISubroutineType(types: !969)
!969 = !{!919, !166}
!970 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !971, file: !923, line: 105)
!971 = !DISubprogram(name: "wctype", scope: !926, file: !926, line: 155, type: !972, flags: DIFlagPrototyped, spFlags: 0)
!972 = !DISubroutineType(types: !973)
!973 = !{!925, !166}
!974 = !{i32 7, !"Dwarf Version", i32 4}
!975 = !{i32 2, !"Debug Info Version", i32 3}
!976 = !{i32 1, !"wchar_size", i32 4}
!977 = !{!"clang version 10.0.1 "}
!978 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !3, file: !3, line: 74, type: !583, scopeLine: 74, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !30)
!979 = !DILocation(line: 74, column: 25, scope: !978)
!980 = distinct !DISubprogram(name: "main", scope: !29, file: !29, line: 56, type: !666, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !30)
!981 = !DILocalVariable(name: "bulletin", scope: !980, file: !29, line: 57, type: !34)
!982 = !DILocation(line: 57, column: 18, scope: !980)
!983 = !DILocalVariable(name: "rc", scope: !980, file: !29, line: 58, type: !11)
!984 = !DILocation(line: 58, column: 7, scope: !980)
!985 = !DILocalVariable(name: "res", scope: !980, file: !29, line: 59, type: !32)
!986 = !DILocation(line: 59, column: 9, scope: !980)
!987 = !DILocalVariable(name: "thr_editor", scope: !980, file: !29, line: 60, type: !988)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !38, line: 27, baseType: !62)
!989 = !DILocation(line: 60, column: 13, scope: !980)
!990 = !DILocalVariable(name: "thr_reader", scope: !980, file: !29, line: 60, type: !988)
!991 = !DILocation(line: 60, column: 25, scope: !980)
!992 = !DILocation(line: 62, column: 58, scope: !980)
!993 = !DILocation(line: 62, column: 8, scope: !980)
!994 = !DILocation(line: 62, column: 6, scope: !980)
!995 = !DILocation(line: 63, column: 7, scope: !996)
!996 = distinct !DILexicalBlock(scope: !980, file: !29, line: 63, column: 7)
!997 = !DILocation(line: 63, column: 7, scope: !980)
!998 = !DILocation(line: 64, column: 5, scope: !999)
!999 = distinct !DILexicalBlock(scope: !996, file: !29, line: 63, column: 11)
!1000 = !DILocation(line: 65, column: 5, scope: !999)
!1001 = !DILocation(line: 76, column: 1, scope: !999)
!1002 = !DILocation(line: 76, column: 1, scope: !980)
!1003 = !DILocation(line: 68, column: 58, scope: !980)
!1004 = !DILocation(line: 68, column: 8, scope: !980)
!1005 = !DILocation(line: 68, column: 6, scope: !980)
!1006 = !DILocation(line: 69, column: 7, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !980, file: !29, line: 69, column: 7)
!1008 = !DILocation(line: 69, column: 7, scope: !980)
!1009 = !DILocation(line: 70, column: 5, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1007, file: !29, line: 69, column: 11)
!1011 = !DILocation(line: 71, column: 5, scope: !1010)
!1012 = !DILocation(line: 74, column: 16, scope: !980)
!1013 = !DILocation(line: 74, column: 3, scope: !980)
!1014 = !DILocation(line: 75, column: 16, scope: !980)
!1015 = !DILocation(line: 75, column: 3, scope: !980)
!1016 = distinct !DISubprogram(name: "BulletinRWLock", linkageName: "_ZN14BulletinRWLockC2Ev", scope: !34, file: !29, line: 19, type: !78, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !77, retainedNodes: !30)
!1017 = !DILocalVariable(name: "this", arg: 1, scope: !1016, type: !33, flags: DIFlagArtificial | DIFlagObjectPointer)
!1018 = !DILocation(line: 0, scope: !1016)
!1019 = !DILocation(line: 19, column: 3, scope: !1016)
!1020 = !DILocation(line: 19, column: 22, scope: !1016)
!1021 = !DILocation(line: 19, column: 68, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1016, file: !29, line: 19, column: 45)
!1023 = !DILocation(line: 19, column: 47, scope: !1022)
!1024 = !DILocation(line: 19, column: 84, scope: !1016)
!1025 = !{!1026}
!1026 = !{i64 2, i64 3, i1 false}
!1027 = distinct !DISubprogram(name: "Editor", linkageName: "_ZL6EditorPv", scope: !29, file: !29, line: 37, type: !1028, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !30)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!32, !32}
!1030 = !DILocalVariable(name: "rbuf", arg: 1, scope: !1027, file: !29, line: 37, type: !32)
!1031 = !DILocation(line: 37, column: 27, scope: !1027)
!1032 = !DILocalVariable(name: "rbuf_ptr", scope: !1027, file: !29, line: 38, type: !33)
!1033 = !DILocation(line: 38, column: 9, scope: !1027)
!1034 = !DILocation(line: 38, column: 38, scope: !1027)
!1035 = !DILocation(line: 38, column: 20, scope: !1027)
!1036 = !DILocalVariable(name: "i", scope: !1027, file: !29, line: 39, type: !11)
!1037 = !DILocation(line: 39, column: 7, scope: !1027)
!1038 = !DILocation(line: 40, column: 3, scope: !1027)
!1039 = !DILocation(line: 41, column: 5, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1027, file: !29, line: 40, column: 16)
!1041 = !DILocation(line: 41, column: 22, scope: !1040)
!1042 = !DILocation(line: 41, column: 15, scope: !1040)
!1043 = !DILocation(line: 42, column: 6, scope: !1040)
!1044 = !DILocation(line: 43, column: 5, scope: !1040)
!1045 = distinct !{!1045, !1038, !1046}
!1046 = !DILocation(line: 44, column: 3, scope: !1027)
!1047 = !DILocation(line: 45, column: 1, scope: !1040)
!1048 = distinct !DISubprogram(name: "Reader", linkageName: "_ZL6ReaderPv", scope: !29, file: !29, line: 47, type: !1028, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !30)
!1049 = !DILocalVariable(name: "rbuf", arg: 1, scope: !1048, file: !29, line: 47, type: !32)
!1050 = !DILocation(line: 47, column: 27, scope: !1048)
!1051 = !DILocalVariable(name: "rbuf_ptr", scope: !1048, file: !29, line: 48, type: !33)
!1052 = !DILocation(line: 48, column: 9, scope: !1048)
!1053 = !DILocation(line: 48, column: 38, scope: !1048)
!1054 = !DILocation(line: 48, column: 20, scope: !1048)
!1055 = !DILocalVariable(name: "i", scope: !1048, file: !29, line: 49, type: !11)
!1056 = !DILocation(line: 49, column: 7, scope: !1048)
!1057 = !DILocation(line: 50, column: 3, scope: !1048)
!1058 = !DILocalVariable(name: "msg", scope: !1059, file: !29, line: 51, type: !72)
!1059 = distinct !DILexicalBlock(scope: !1048, file: !29, line: 50, column: 16)
!1060 = !DILocation(line: 51, column: 17, scope: !1059)
!1061 = !DILocation(line: 51, column: 23, scope: !1059)
!1062 = !DILocation(line: 51, column: 33, scope: !1059)
!1063 = !DILocation(line: 52, column: 15, scope: !1059)
!1064 = !DILocation(line: 52, column: 22, scope: !1059)
!1065 = !DILocation(line: 53, column: 3, scope: !1048)
!1066 = distinct !{!1066, !1057, !1065}
!1067 = !DILocation(line: 54, column: 1, scope: !1059)
!1068 = distinct !DISubprogram(name: "~BulletinRWLock", linkageName: "_ZN14BulletinRWLockD2Ev", scope: !34, file: !29, line: 21, type: !78, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !81, retainedNodes: !30)
!1069 = !DILocalVariable(name: "this", arg: 1, scope: !1068, type: !33, flags: DIFlagArtificial | DIFlagObjectPointer)
!1070 = !DILocation(line: 0, scope: !1068)
!1071 = !DILocation(line: 21, column: 22, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1068, file: !29, line: 21, column: 21)
!1073 = !DILocation(line: 21, column: 22, scope: !1068)
!1074 = distinct !DISubprogram(name: "Update", linkageName: "_ZN14BulletinRWLock6UpdateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", scope: !34, file: !29, line: 30, type: !86, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !85, retainedNodes: !30)
!1075 = !DILocalVariable(name: "this", arg: 1, scope: !1074, type: !33, flags: DIFlagArtificial | DIFlagObjectPointer)
!1076 = !DILocation(line: 0, scope: !1074)
!1077 = !DILocalVariable(name: "message", arg: 2, scope: !1074, file: !29, line: 30, type: !88)
!1078 = !DILocation(line: 30, column: 33, scope: !1074)
!1079 = !DILocation(line: 31, column: 28, scope: !1074)
!1080 = !DILocation(line: 31, column: 5, scope: !1074)
!1081 = !DILocation(line: 32, column: 5, scope: !1074)
!1082 = !DILocation(line: 32, column: 14, scope: !1074)
!1083 = !DILocation(line: 33, column: 28, scope: !1074)
!1084 = !DILocation(line: 33, column: 5, scope: !1074)
!1085 = !DILocation(line: 34, column: 3, scope: !1074)
!1086 = distinct !DISubprogram(name: "Read", linkageName: "_ZN14BulletinRWLock4ReadB5cxx11Ev", scope: !34, file: !29, line: 23, type: !83, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !82, retainedNodes: !30)
!1087 = !DILocalVariable(name: "this", arg: 1, scope: !1086, type: !33, flags: DIFlagArtificial | DIFlagObjectPointer)
!1088 = !DILocation(line: 0, scope: !1086)
!1089 = !DILocation(line: 24, column: 28, scope: !1086)
!1090 = !DILocation(line: 24, column: 5, scope: !1086)
!1091 = !DILocation(line: 25, column: 5, scope: !1086)
!1092 = !DILocalVariable(name: "msg", scope: !1086, file: !29, line: 25, type: !72)
!1093 = !DILocation(line: 25, column: 17, scope: !1086)
!1094 = !DILocation(line: 25, column: 23, scope: !1086)
!1095 = !DILocation(line: 26, column: 28, scope: !1086)
!1096 = !DILocation(line: 26, column: 5, scope: !1086)
!1097 = !DILocation(line: 27, column: 5, scope: !1086)
!1098 = !DILocation(line: 28, column: 3, scope: !1086)
!1099 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_pthread_rwlock_no.cpp", scope: !29, file: !29, type: !1100, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !30)
!1100 = !DISubroutineType(types: !30)
!1101 = !DILocation(line: 0, scope: !1099)
