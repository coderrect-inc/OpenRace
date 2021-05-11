; ModuleID = 'integration/pthreadrace/pthread-rwlock-no.cpp'
source_filename = "integration/pthreadrace/pthread-rwlock-no.cpp"
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
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"struct.std::__false_type" = type { i8 }
%"struct.std::forward_iterator_tag" = type { i8 }
%"struct.std::random_access_iterator_tag" = type { i8 }

$_ZN14BulletinRWLockC2Ev = comdat any

$_ZN14BulletinRWLockD2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIcEC2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_ = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt14pointer_traitsIPcE10pointer_toERc = comdat any

$_ZSt9addressofIcEPT_RS0_ = comdat any

$_ZSt11__addressofIcEPT_RS0_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIcEC2ERKS1_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_ = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$__clang_call_terminate = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZNSt11char_traitsIcE6assignERcRKc = comdat any

$_ZNSt11char_traitsIcE4copyEPcPKcm = comdat any

$_ZNSt14pointer_traitsIPKcE10pointer_toERS0_ = comdat any

$_ZSt9addressofIKcEPT_RS1_ = comdat any

$_ZSt11__addressofIKcEPT_RS1_ = comdat any

$_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm = comdat any

$_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm = comdat any

$_ZN9__gnu_cxx13new_allocatorIcED2Ev = comdat any

$_ZN14BulletinRWLock6UpdateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN14BulletinRWLock4ReadB5cxx11Ev = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_ = comdat any

$_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_ = comdat any

$_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag = comdat any

$_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_ = comdat any

$_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_ = comdat any

$_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_ = comdat any

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@.str = private unnamed_addr constant [37 x i8] c"Failed to create the producer thread\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to create the consumer thread\00", align 1
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@.str.2 = private unnamed_addr constant [11 x i8] c"no message\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"basic_string::_M_construct null not valid\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"hell world \00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_pthread_rwlock_no.cpp, i8* null }]

; Function Attrs: norecurse uwtable
define dso_local i32 @main() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1164 {
entry:
  %bulletin = alloca %class.BulletinRWLock, align 8
  %rc = alloca i32, align 4
  %res = alloca i8*, align 8
  %thr_editor = alloca i64, align 8
  %thr_reader = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %0 = bitcast %class.BulletinRWLock* %bulletin to i8*, !dbg !1172
  call void @llvm.lifetime.start.p0i8(i64 88, i8* %0) #8, !dbg !1172
  call void @llvm.dbg.declare(metadata %class.BulletinRWLock* %bulletin, metadata !1166, metadata !DIExpression()), !dbg !1173
  call void @_ZN14BulletinRWLockC2Ev(%class.BulletinRWLock* %bulletin), !dbg !1173
  %1 = bitcast i32* %rc to i8*, !dbg !1174
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #8, !dbg !1174
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !1167, metadata !DIExpression()), !dbg !1175
  %2 = bitcast i8** %res to i8*, !dbg !1176
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #8, !dbg !1176
  call void @llvm.dbg.declare(metadata i8** %res, metadata !1168, metadata !DIExpression()), !dbg !1177
  %3 = bitcast i64* %thr_editor to i8*, !dbg !1178
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #8, !dbg !1178
  call void @llvm.dbg.declare(metadata i64* %thr_editor, metadata !1169, metadata !DIExpression()), !dbg !1179
  %4 = bitcast i64* %thr_reader to i8*, !dbg !1178
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #8, !dbg !1178
  call void @llvm.dbg.declare(metadata i64* %thr_reader, metadata !1171, metadata !DIExpression()), !dbg !1180
  %5 = bitcast %class.BulletinRWLock* %bulletin to i8*, !dbg !1181
  %call = call i32 @pthread_create(i64* %thr_editor, %union.pthread_attr_t* null, i8* (i8*)* @_ZL6EditorPv, i8* %5) #8, !dbg !1182
  store i32 %call, i32* %rc, align 4, !dbg !1183, !tbaa !1184
  %6 = load i32, i32* %rc, align 4, !dbg !1188, !tbaa !1184
  %tobool = icmp ne i32 %6, 0, !dbg !1188
  br i1 %tobool, label %if.then, label %if.end, !dbg !1190

if.then:                                          ; preds = %entry
  invoke void @perror(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
          to label %invoke.cont unwind label %lpad, !dbg !1191

invoke.cont:                                      ; preds = %if.then
  call void @exit(i32 -1) #14, !dbg !1193
  unreachable, !dbg !1193

lpad:                                             ; preds = %invoke.cont6, %if.end5, %if.then3, %if.then
  %7 = landingpad { i8*, i32 }
          cleanup, !dbg !1194
  %8 = extractvalue { i8*, i32 } %7, 0, !dbg !1194
  store i8* %8, i8** %exn.slot, align 8, !dbg !1194
  %9 = extractvalue { i8*, i32 } %7, 1, !dbg !1194
  store i32 %9, i32* %ehselector.slot, align 4, !dbg !1194
  %10 = bitcast i64* %thr_reader to i8*, !dbg !1195
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #8, !dbg !1195
  %11 = bitcast i64* %thr_editor to i8*, !dbg !1195
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #8, !dbg !1195
  %12 = bitcast i8** %res to i8*, !dbg !1195
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %12) #8, !dbg !1195
  %13 = bitcast i32* %rc to i8*, !dbg !1195
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #8, !dbg !1195
  call void @_ZN14BulletinRWLockD2Ev(%class.BulletinRWLock* %bulletin) #8, !dbg !1195
  %14 = bitcast %class.BulletinRWLock* %bulletin to i8*, !dbg !1195
  call void @llvm.lifetime.end.p0i8(i64 88, i8* %14) #8, !dbg !1195
  br label %eh.resume, !dbg !1195

if.end:                                           ; preds = %entry
  %15 = bitcast %class.BulletinRWLock* %bulletin to i8*, !dbg !1196
  %call1 = call i32 @pthread_create(i64* %thr_reader, %union.pthread_attr_t* null, i8* (i8*)* @_ZL6ReaderPv, i8* %15) #8, !dbg !1197
  store i32 %call1, i32* %rc, align 4, !dbg !1198, !tbaa !1184
  %16 = load i32, i32* %rc, align 4, !dbg !1199, !tbaa !1184
  %tobool2 = icmp ne i32 %16, 0, !dbg !1199
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !1201

if.then3:                                         ; preds = %if.end
  invoke void @perror(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
          to label %invoke.cont4 unwind label %lpad, !dbg !1202

invoke.cont4:                                     ; preds = %if.then3
  call void @exit(i32 -1) #14, !dbg !1204
  unreachable, !dbg !1204

if.end5:                                          ; preds = %if.end
  %17 = load i64, i64* %thr_editor, align 8, !dbg !1205, !tbaa !1206
  %call7 = invoke i32 @pthread_join(i64 %17, i8** %res)
          to label %invoke.cont6 unwind label %lpad, !dbg !1208

invoke.cont6:                                     ; preds = %if.end5
  %18 = load i64, i64* %thr_reader, align 8, !dbg !1209, !tbaa !1206
  %call9 = invoke i32 @pthread_join(i64 %18, i8** %res)
          to label %invoke.cont8 unwind label %lpad, !dbg !1210

invoke.cont8:                                     ; preds = %invoke.cont6
  %19 = bitcast i64* %thr_reader to i8*, !dbg !1195
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %19) #8, !dbg !1195
  %20 = bitcast i64* %thr_editor to i8*, !dbg !1195
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #8, !dbg !1195
  %21 = bitcast i8** %res to i8*, !dbg !1195
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %21) #8, !dbg !1195
  %22 = bitcast i32* %rc to i8*, !dbg !1195
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #8, !dbg !1195
  call void @_ZN14BulletinRWLockD2Ev(%class.BulletinRWLock* %bulletin) #8, !dbg !1195
  %23 = bitcast %class.BulletinRWLock* %bulletin to i8*, !dbg !1195
  call void @llvm.lifetime.end.p0i8(i64 88, i8* %23) #8, !dbg !1195
  ret i32 0, !dbg !1195

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1195
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1195
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !1195
  %lpad.val10 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1195
  resume { i8*, i32 } %lpad.val10, !dbg !1195
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN14BulletinRWLockC2Ev(%class.BulletinRWLock* %this) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1211 {
entry:
  %this.addr = alloca %class.BulletinRWLock*, align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %class.BulletinRWLock* %this, %class.BulletinRWLock** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %class.BulletinRWLock** %this.addr, metadata !1213, metadata !DIExpression()), !dbg !1216
  %this1 = load %class.BulletinRWLock*, %class.BulletinRWLock** %this.addr, align 8
  %rwlock_ = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 0, !dbg !1217
  %message_ = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 1, !dbg !1218
  %0 = bitcast %"class.std::allocator"* %ref.tmp to i8*, !dbg !1218
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %0) #8, !dbg !1218
  call void @_ZNSaIcEC2Ev(%"class.std::allocator"* %ref.tmp) #8, !dbg !1218
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* %message_, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !dbg !1218

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIcED2Ev(%"class.std::allocator"* %ref.tmp) #8, !dbg !1218
  %1 = bitcast %"class.std::allocator"* %ref.tmp to i8*, !dbg !1218
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %1) #8, !dbg !1218
  %rwlock_2 = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 0, !dbg !1219
  %call = call i32 @pthread_rwlock_init(%union.pthread_rwlock_t* %rwlock_2, %union.pthread_rwlockattr_t* null) #8, !dbg !1221
  ret void, !dbg !1222

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup, !dbg !1222
  %3 = extractvalue { i8*, i32 } %2, 0, !dbg !1222
  store i8* %3, i8** %exn.slot, align 8, !dbg !1222
  %4 = extractvalue { i8*, i32 } %2, 1, !dbg !1222
  store i32 %4, i32* %ehselector.slot, align 4, !dbg !1222
  call void @_ZNSaIcED2Ev(%"class.std::allocator"* %ref.tmp) #8, !dbg !1218
  %5 = bitcast %"class.std::allocator"* %ref.tmp to i8*, !dbg !1218
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %5) #8, !dbg !1218
  br label %eh.resume, !dbg !1218

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1218
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1218
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !1218
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1218
  resume { i8*, i32 } %lpad.val3, !dbg !1218
}

; Function Attrs: nounwind
declare !callback !1223 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #4

; Function Attrs: uwtable
define internal i8* @_ZL6EditorPv(i8* %rbuf) #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1225 {
entry:
  %rbuf.addr = alloca i8*, align 8
  %rbuf_ptr = alloca %class.BulletinRWLock*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i8* %rbuf, i8** %rbuf.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %rbuf.addr, metadata !1229, metadata !DIExpression()), !dbg !1232
  %0 = bitcast %class.BulletinRWLock** %rbuf_ptr to i8*, !dbg !1233
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #8, !dbg !1233
  call void @llvm.dbg.declare(metadata %class.BulletinRWLock** %rbuf_ptr, metadata !1230, metadata !DIExpression()), !dbg !1234
  %1 = load i8*, i8** %rbuf.addr, align 8, !dbg !1235, !tbaa !1214
  %2 = bitcast i8* %1 to %class.BulletinRWLock*, !dbg !1236
  store %class.BulletinRWLock* %2, %class.BulletinRWLock** %rbuf_ptr, align 8, !dbg !1234, !tbaa !1214
  %3 = bitcast i32* %i to i8*, !dbg !1237
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #8, !dbg !1237
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1231, metadata !DIExpression()), !dbg !1238
  store i32 0, i32* %i, align 4, !dbg !1238, !tbaa !1184
  br label %while.cond, !dbg !1239

while.cond:                                       ; preds = %invoke.cont2, %entry
  br label %while.body, !dbg !1239

while.body:                                       ; preds = %while.cond
  %4 = load %class.BulletinRWLock*, %class.BulletinRWLock** %rbuf_ptr, align 8, !dbg !1240, !tbaa !1214
  %5 = bitcast %"class.std::allocator"* %ref.tmp to i8*, !dbg !1242
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %5) #8, !dbg !1242
  call void @_ZNSaIcEC2Ev(%"class.std::allocator"* %ref.tmp) #8, !dbg !1242
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !dbg !1242

invoke.cont:                                      ; preds = %while.body
  invoke void @_ZN14BulletinRWLock6UpdateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.BulletinRWLock* %4, %"class.std::__cxx11::basic_string"* %agg.tmp)
          to label %invoke.cont2 unwind label %lpad1, !dbg !1243

invoke.cont2:                                     ; preds = %invoke.cont
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %agg.tmp) #8, !dbg !1240
  call void @_ZNSaIcED2Ev(%"class.std::allocator"* %ref.tmp) #8, !dbg !1240
  %6 = bitcast %"class.std::allocator"* %ref.tmp to i8*, !dbg !1240
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %6) #8, !dbg !1240
  %7 = load i32, i32* %i, align 4, !dbg !1244, !tbaa !1184
  %inc = add nsw i32 %7, 1, !dbg !1244
  store i32 %inc, i32* %i, align 4, !dbg !1244, !tbaa !1184
  %call = call i32 @sleep(i32 1), !dbg !1245
  br label %while.cond, !dbg !1239, !llvm.loop !1246

lpad:                                             ; preds = %while.body
  %8 = landingpad { i8*, i32 }
          cleanup, !dbg !1248
  %9 = extractvalue { i8*, i32 } %8, 0, !dbg !1248
  store i8* %9, i8** %exn.slot, align 8, !dbg !1248
  %10 = extractvalue { i8*, i32 } %8, 1, !dbg !1248
  store i32 %10, i32* %ehselector.slot, align 4, !dbg !1248
  br label %ehcleanup, !dbg !1248

lpad1:                                            ; preds = %invoke.cont
  %11 = landingpad { i8*, i32 }
          cleanup, !dbg !1248
  %12 = extractvalue { i8*, i32 } %11, 0, !dbg !1248
  store i8* %12, i8** %exn.slot, align 8, !dbg !1248
  %13 = extractvalue { i8*, i32 } %11, 1, !dbg !1248
  store i32 %13, i32* %ehselector.slot, align 4, !dbg !1248
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %agg.tmp) #8, !dbg !1240
  br label %ehcleanup, !dbg !1240

ehcleanup:                                        ; preds = %lpad1, %lpad
  call void @_ZNSaIcED2Ev(%"class.std::allocator"* %ref.tmp) #8, !dbg !1240
  %14 = bitcast %"class.std::allocator"* %ref.tmp to i8*, !dbg !1240
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %14) #8, !dbg !1240
  %15 = bitcast i32* %i to i8*, !dbg !1249
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #8, !dbg !1249
  %16 = bitcast %class.BulletinRWLock** %rbuf_ptr to i8*, !dbg !1249
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %16) #8, !dbg !1249
  br label %eh.resume, !dbg !1249

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1249
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1249
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !1249
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1249
  resume { i8*, i32 } %lpad.val6, !dbg !1249
}

declare !dbg !41 dso_local void @perror(i8*) #5

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #6

; Function Attrs: uwtable
define internal i8* @_ZL6ReaderPv(i8* %rbuf) #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1250 {
entry:
  %rbuf.addr = alloca i8*, align 8
  %rbuf_ptr = alloca %class.BulletinRWLock*, align 8
  %i = alloca i32, align 4
  %msg = alloca %"class.std::__cxx11::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i8* %rbuf, i8** %rbuf.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %rbuf.addr, metadata !1252, metadata !DIExpression()), !dbg !1257
  %0 = bitcast %class.BulletinRWLock** %rbuf_ptr to i8*, !dbg !1258
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #8, !dbg !1258
  call void @llvm.dbg.declare(metadata %class.BulletinRWLock** %rbuf_ptr, metadata !1253, metadata !DIExpression()), !dbg !1259
  %1 = load i8*, i8** %rbuf.addr, align 8, !dbg !1260, !tbaa !1214
  %2 = bitcast i8* %1 to %class.BulletinRWLock*, !dbg !1261
  store %class.BulletinRWLock* %2, %class.BulletinRWLock** %rbuf_ptr, align 8, !dbg !1259, !tbaa !1214
  %3 = bitcast i32* %i to i8*, !dbg !1262
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #8, !dbg !1262
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1254, metadata !DIExpression()), !dbg !1263
  store i32 0, i32* %i, align 4, !dbg !1263, !tbaa !1184
  br label %while.cond, !dbg !1264

while.cond:                                       ; preds = %invoke.cont1, %entry
  br label %while.body, !dbg !1264

while.body:                                       ; preds = %while.cond
  %4 = bitcast %"class.std::__cxx11::basic_string"* %msg to i8*, !dbg !1265
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %4) #8, !dbg !1265
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"* %msg, metadata !1255, metadata !DIExpression()), !dbg !1266
  %5 = load %class.BulletinRWLock*, %class.BulletinRWLock** %rbuf_ptr, align 8, !dbg !1267, !tbaa !1214
  call void @_ZN14BulletinRWLock4ReadB5cxx11Ev(%"class.std::__cxx11::basic_string"* sret %msg, %class.BulletinRWLock* %5), !dbg !1268
  %call = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, %"class.std::__cxx11::basic_string"* dereferenceable(32) %msg)
          to label %invoke.cont unwind label %lpad, !dbg !1269

invoke.cont:                                      ; preds = %while.body
  %call2 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %invoke.cont1 unwind label %lpad, !dbg !1270

invoke.cont1:                                     ; preds = %invoke.cont
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %msg) #8, !dbg !1271
  %6 = bitcast %"class.std::__cxx11::basic_string"* %msg to i8*, !dbg !1271
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %6) #8, !dbg !1271
  br label %while.cond, !dbg !1264, !llvm.loop !1272

lpad:                                             ; preds = %invoke.cont, %while.body
  %7 = landingpad { i8*, i32 }
          cleanup, !dbg !1273
  %8 = extractvalue { i8*, i32 } %7, 0, !dbg !1273
  store i8* %8, i8** %exn.slot, align 8, !dbg !1273
  %9 = extractvalue { i8*, i32 } %7, 1, !dbg !1273
  store i32 %9, i32* %ehselector.slot, align 4, !dbg !1273
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %msg) #8, !dbg !1271
  %10 = bitcast %"class.std::__cxx11::basic_string"* %msg to i8*, !dbg !1271
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %10) #8, !dbg !1271
  %11 = bitcast i32* %i to i8*, !dbg !1274
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #8, !dbg !1274
  %12 = bitcast %class.BulletinRWLock** %rbuf_ptr to i8*, !dbg !1274
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %12) #8, !dbg !1274
  br label %eh.resume, !dbg !1274

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1274
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1274
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !1274
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1274
  resume { i8*, i32 } %lpad.val3, !dbg !1274
}

declare !dbg !49 dso_local i32 @pthread_join(i64, i8**) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN14BulletinRWLockD2Ev(%class.BulletinRWLock* %this) unnamed_addr #7 comdat align 2 !dbg !1275 {
entry:
  %this.addr = alloca %class.BulletinRWLock*, align 8
  store %class.BulletinRWLock* %this, %class.BulletinRWLock** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %class.BulletinRWLock** %this.addr, metadata !1277, metadata !DIExpression()), !dbg !1278
  %this1 = load %class.BulletinRWLock*, %class.BulletinRWLock** %this.addr, align 8
  %message_ = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 1, !dbg !1279
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %message_) #8, !dbg !1279
  ret void, !dbg !1281
}

; Function Attrs: uwtable
define internal void @__cxx_global_var_init() #3 section ".text.startup" !dbg !1282 {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !dbg !1283
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #8, !dbg !1283
  ret void, !dbg !1283
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #5

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #8

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSaIcEC2Ev(%"class.std::allocator"* %this) unnamed_addr #7 align 2 !dbg !1284 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %this.addr, metadata !1290, metadata !DIExpression()), !dbg !1292
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*, !dbg !1293
  call void @_ZN9__gnu_cxx13new_allocatorIcEC2Ev(%"class.__gnu_cxx::new_allocator"* %0) #8, !dbg !1294
  ret void, !dbg !1295
}

; Function Attrs: uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* %this, i8* %__s, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1296 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__s.addr = alloca i8*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1302, metadata !DIExpression()), !dbg !1306
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !1304, metadata !DIExpression()), !dbg !1307
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__a.addr, metadata !1305, metadata !DIExpression()), !dbg !1308
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %_M_dataplus = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 0, !dbg !1309
  %call = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* %this1), !dbg !1310
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !dbg !1311, !tbaa !1214
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %_M_dataplus, i8* %call, %"class.std::allocator"* dereferenceable(1) %0), !dbg !1309
  %1 = load i8*, i8** %__s.addr, align 8, !dbg !1312, !tbaa !1214
  %2 = load i8*, i8** %__s.addr, align 8, !dbg !1314, !tbaa !1214
  %tobool = icmp ne i8* %2, null, !dbg !1314
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1314

cond.true:                                        ; preds = %entry
  %3 = load i8*, i8** %__s.addr, align 8, !dbg !1315, !tbaa !1214
  %4 = load i8*, i8** %__s.addr, align 8, !dbg !1316, !tbaa !1214
  %call2 = invoke i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %4)
          to label %invoke.cont unwind label %lpad, !dbg !1317

invoke.cont:                                      ; preds = %cond.true
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %call2, !dbg !1318
  br label %cond.end, !dbg !1314

cond.false:                                       ; preds = %entry
  %5 = load i8*, i8** %__s.addr, align 8, !dbg !1319, !tbaa !1214
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 -1, !dbg !1320
  br label %cond.end, !dbg !1314

cond.end:                                         ; preds = %cond.false, %invoke.cont
  %cond = phi i8* [ %add.ptr, %invoke.cont ], [ %add.ptr3, %cond.false ], !dbg !1314
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_(%"class.std::__cxx11::basic_string"* %this1, i8* %1, i8* %cond)
          to label %invoke.cont4 unwind label %lpad, !dbg !1321

invoke.cont4:                                     ; preds = %cond.end
  ret void, !dbg !1322

lpad:                                             ; preds = %cond.end, %cond.true
  %6 = landingpad { i8*, i32 }
          cleanup, !dbg !1323
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !1323
  store i8* %7, i8** %exn.slot, align 8, !dbg !1323
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !1323
  store i32 %8, i32* %ehselector.slot, align 4, !dbg !1323
  call void bitcast (void (%"class.std::allocator"*)* @_ZNSaIcED2Ev to void (%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"*)*)(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %_M_dataplus) #8, !dbg !1323
  br label %eh.resume, !dbg !1323

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1323
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1323
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !1323
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1323
  resume { i8*, i32 } %lpad.val5, !dbg !1323
}

; Function Attrs: nounwind
declare !dbg !55 dso_local i32 @pthread_rwlock_init(%union.pthread_rwlock_t*, %union.pthread_rwlockattr_t*) #4

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIcEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #7 comdat align 2 !dbg !1324 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %this.addr, metadata !1365, metadata !DIExpression()), !dbg !1367
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void, !dbg !1368
}

; Function Attrs: nounwind uwtable
define available_externally dso_local i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* %this) #7 align 2 !dbg !1369 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1376, metadata !DIExpression()), !dbg !1377
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %0 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 2, !dbg !1378
  %_M_local_buf = bitcast %union.anon* %0 to [16 x i8]*, !dbg !1378
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %_M_local_buf, i64 0, i64 0, !dbg !1379
  %call = call i8* @_ZNSt14pointer_traitsIPcE10pointer_toERc(i8* dereferenceable(1) %arraydecay) #8, !dbg !1380
  ret i8* %call, !dbg !1381
}

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %this, i8* %__dat, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #7 align 2 !dbg !1382 {
entry:
  %this.addr = alloca %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"*, align 8
  %__dat.addr = alloca i8*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %this, %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"** %this.addr, metadata !1401, metadata !DIExpression()), !dbg !1405
  store i8* %__dat, i8** %__dat.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__dat.addr, metadata !1403, metadata !DIExpression()), !dbg !1406
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__a.addr, metadata !1404, metadata !DIExpression()), !dbg !1407
  %this1 = load %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"*, %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"** %this.addr, align 8
  %0 = bitcast %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %this1 to %"class.std::allocator"*, !dbg !1408
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !dbg !1409, !tbaa !1214
  call void @_ZNSaIcEC2ERKS_(%"class.std::allocator"* %0, %"class.std::allocator"* dereferenceable(1) %1) #8, !dbg !1410
  %_M_p = getelementptr inbounds %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %this1, i32 0, i32 0, !dbg !1411
  %2 = load i8*, i8** %__dat.addr, align 8, !dbg !1412, !tbaa !1214
  store i8* %2, i8** %_M_p, align 8, !dbg !1411, !tbaa !1413
  ret void, !dbg !1415
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #3 comdat align 2 !dbg !1416 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__beg.addr = alloca i8*, align 8
  %__end.addr = alloca i8*, align 8
  %agg.tmp = alloca %"struct.std::__false_type", align 1
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1423, metadata !DIExpression()), !dbg !1426
  store i8* %__beg, i8** %__beg.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__beg.addr, metadata !1424, metadata !DIExpression()), !dbg !1427
  store i8* %__end, i8** %__end.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__end.addr, metadata !1425, metadata !DIExpression()), !dbg !1428
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %0 = load i8*, i8** %__beg.addr, align 8, !dbg !1429, !tbaa !1214
  %1 = load i8*, i8** %__end.addr, align 8, !dbg !1430, !tbaa !1214
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type(%"class.std::__cxx11::basic_string"* %this1, i8* %0, i8* %1), !dbg !1431
  ret void, !dbg !1432
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %__s) #7 comdat align 2 !dbg !1433 {
entry:
  %__s.addr = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !1435, metadata !DIExpression()), !dbg !1436
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !1437, !tbaa !1214
  %call = call i64 @strlen(i8* %0) #8, !dbg !1438
  ret i64 %call, !dbg !1439
}

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSaIcED2Ev(%"class.std::allocator"* %this) unnamed_addr #7 align 2 !dbg !1440 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %this.addr, metadata !1443, metadata !DIExpression()), !dbg !1444
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*, !dbg !1445
  call void @_ZN9__gnu_cxx13new_allocatorIcED2Ev(%"class.__gnu_cxx::new_allocator"* %0) #8, !dbg !1445
  ret void, !dbg !1447
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i8* @_ZNSt14pointer_traitsIPcE10pointer_toERc(i8* dereferenceable(1) %__r) #7 comdat align 2 !dbg !1448 {
entry:
  %__r.addr = alloca i8*, align 8
  store i8* %__r, i8** %__r.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__r.addr, metadata !1469, metadata !DIExpression()), !dbg !1470
  %0 = load i8*, i8** %__r.addr, align 8, !dbg !1471, !tbaa !1214
  %call = call i8* @_ZSt9addressofIcEPT_RS0_(i8* dereferenceable(1) %0) #8, !dbg !1472
  ret i8* %call, !dbg !1473
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i8* @_ZSt9addressofIcEPT_RS0_(i8* dereferenceable(1) %__r) #9 comdat !dbg !1474 {
entry:
  %__r.addr = alloca i8*, align 8
  store i8* %__r, i8** %__r.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__r.addr, metadata !1479, metadata !DIExpression()), !dbg !1480
  %0 = load i8*, i8** %__r.addr, align 8, !dbg !1481, !tbaa !1214
  %call = call i8* @_ZSt11__addressofIcEPT_RS0_(i8* dereferenceable(1) %0) #8, !dbg !1482
  ret i8* %call, !dbg !1483
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i8* @_ZSt11__addressofIcEPT_RS0_(i8* dereferenceable(1) %__r) #9 comdat !dbg !1484 {
entry:
  %__r.addr = alloca i8*, align 8
  store i8* %__r, i8** %__r.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__r.addr, metadata !1486, metadata !DIExpression()), !dbg !1487
  %0 = load i8*, i8** %__r.addr, align 8, !dbg !1488, !tbaa !1214
  ret i8* %0, !dbg !1489
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIcEC2ERKS1_(%"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"* dereferenceable(1) %0) unnamed_addr #7 comdat align 2 !dbg !1490 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %this.addr, metadata !1492, metadata !DIExpression()), !dbg !1494
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %.addr, metadata !1493, metadata !DIExpression()), !dbg !1495
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void, !dbg !1496
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #3 comdat align 2 !dbg !1497 {
entry:
  %0 = alloca %"struct.std::__false_type", align 1
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__beg.addr = alloca i8*, align 8
  %__end.addr = alloca i8*, align 8
  %agg.tmp = alloca %"struct.std::forward_iterator_tag", align 1
  %ref.tmp = alloca %"struct.std::random_access_iterator_tag", align 1
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1504, metadata !DIExpression()), !dbg !1508
  store i8* %__beg, i8** %__beg.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__beg.addr, metadata !1505, metadata !DIExpression()), !dbg !1509
  store i8* %__end, i8** %__end.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__end.addr, metadata !1506, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.declare(metadata %"struct.std::__false_type"* %0, metadata !1507, metadata !DIExpression()), !dbg !1511
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %1 = load i8*, i8** %__beg.addr, align 8, !dbg !1512, !tbaa !1214
  %2 = load i8*, i8** %__end.addr, align 8, !dbg !1513, !tbaa !1214
  %3 = bitcast %"struct.std::random_access_iterator_tag"* %ref.tmp to i8*, !dbg !1514
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %3) #8, !dbg !1514
  %4 = bitcast %"struct.std::random_access_iterator_tag"* %ref.tmp to %"struct.std::forward_iterator_tag"*, !dbg !1514
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* %this1, i8* %1, i8* %2), !dbg !1515
  %5 = bitcast %"struct.std::random_access_iterator_tag"* %ref.tmp to i8*, !dbg !1515
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %5) #8, !dbg !1515
  ret void, !dbg !1516
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1517 {
entry:
  %0 = alloca %"struct.std::forward_iterator_tag", align 1
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__beg.addr = alloca i8*, align 8
  %__end.addr = alloca i8*, align 8
  %__dnew = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1529, metadata !DIExpression()), !dbg !1534
  store i8* %__beg, i8** %__beg.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__beg.addr, metadata !1530, metadata !DIExpression()), !dbg !1535
  store i8* %__end, i8** %__end.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__end.addr, metadata !1531, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.declare(metadata %"struct.std::forward_iterator_tag"* %0, metadata !1532, metadata !DIExpression()), !dbg !1537
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %1 = load i8*, i8** %__beg.addr, align 8, !dbg !1538, !tbaa !1214
  %call = call zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(i8* %1), !dbg !1540
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !1541

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %__beg.addr, align 8, !dbg !1542, !tbaa !1214
  %3 = load i8*, i8** %__end.addr, align 8, !dbg !1543, !tbaa !1214
  %cmp = icmp ne i8* %2, %3, !dbg !1544
  br i1 %cmp, label %if.then, label %if.end, !dbg !1545

if.then:                                          ; preds = %land.lhs.true
  call void @_ZSt19__throw_logic_errorPKc(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0)) #15, !dbg !1546
  unreachable, !dbg !1546

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = bitcast i64* %__dnew to i8*, !dbg !1547
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #8, !dbg !1547
  call void @llvm.dbg.declare(metadata i64* %__dnew, metadata !1533, metadata !DIExpression()), !dbg !1548
  %5 = load i8*, i8** %__beg.addr, align 8, !dbg !1549, !tbaa !1214
  %6 = load i8*, i8** %__end.addr, align 8, !dbg !1550, !tbaa !1214
  %call2 = call i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(i8* %5, i8* %6), !dbg !1551
  store i64 %call2, i64* %__dnew, align 8, !dbg !1548, !tbaa !1206
  %7 = load i64, i64* %__dnew, align 8, !dbg !1552, !tbaa !1206
  %cmp3 = icmp ugt i64 %7, 15, !dbg !1554
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !1555

if.then4:                                         ; preds = %if.end
  %call5 = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* %this1, i64* dereferenceable(8) %__dnew, i64 0), !dbg !1556
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"* %this1, i8* %call5), !dbg !1558
  %8 = load i64, i64* %__dnew, align 8, !dbg !1559, !tbaa !1206
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"* %this1, i64 %8), !dbg !1560
  br label %if.end6, !dbg !1561

if.end6:                                          ; preds = %if.then4, %if.end
  %call7 = invoke i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont unwind label %lpad, !dbg !1562

invoke.cont:                                      ; preds = %if.end6
  %9 = load i8*, i8** %__beg.addr, align 8, !dbg !1564, !tbaa !1214
  %10 = load i8*, i8** %__end.addr, align 8, !dbg !1565, !tbaa !1214
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(i8* %call7, i8* %9, i8* %10) #8, !dbg !1566
  br label %try.cont, !dbg !1567

lpad:                                             ; preds = %if.end6
  %11 = landingpad { i8*, i32 }
          catch i8* null, !dbg !1568
  %12 = extractvalue { i8*, i32 } %11, 0, !dbg !1568
  store i8* %12, i8** %exn.slot, align 8, !dbg !1568
  %13 = extractvalue { i8*, i32 } %11, 1, !dbg !1568
  store i32 %13, i32* %ehselector.slot, align 4, !dbg !1568
  br label %catch, !dbg !1568

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1567
  %14 = call i8* @__cxa_begin_catch(i8* %exn) #8, !dbg !1567
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont9 unwind label %lpad8, !dbg !1569

invoke.cont9:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #15
          to label %unreachable unwind label %lpad8, !dbg !1571

lpad8:                                            ; preds = %invoke.cont9, %catch
  %15 = landingpad { i8*, i32 }
          cleanup, !dbg !1572
  %16 = extractvalue { i8*, i32 } %15, 0, !dbg !1572
  store i8* %16, i8** %exn.slot, align 8, !dbg !1572
  %17 = extractvalue { i8*, i32 } %15, 1, !dbg !1572
  store i32 %17, i32* %ehselector.slot, align 4, !dbg !1572
  invoke void @__cxa_end_catch()
          to label %invoke.cont10 unwind label %terminate.lpad, !dbg !1573

invoke.cont10:                                    ; preds = %lpad8
  %18 = bitcast i64* %__dnew to i8*, !dbg !1574
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %18) #8, !dbg !1574
  br label %eh.resume, !dbg !1574

try.cont:                                         ; preds = %invoke.cont
  %19 = load i64, i64* %__dnew, align 8, !dbg !1575, !tbaa !1206
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"* %this1, i64 %19), !dbg !1576
  %20 = bitcast i64* %__dnew to i8*, !dbg !1574
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #8, !dbg !1574
  ret void, !dbg !1574

eh.resume:                                        ; preds = %invoke.cont10
  %exn11 = load i8*, i8** %exn.slot, align 8, !dbg !1574
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1574
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn11, 0, !dbg !1574
  %lpad.val12 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1574
  resume { i8*, i32 } %lpad.val12, !dbg !1574

terminate.lpad:                                   ; preds = %lpad8
  %21 = landingpad { i8*, i32 }
          catch i8* null, !dbg !1573
  %22 = extractvalue { i8*, i32 } %21, 0, !dbg !1573
  call void @__clang_call_terminate(i8* %22) #14, !dbg !1573
  unreachable, !dbg !1573

unreachable:                                      ; preds = %invoke.cont9
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(i8* %__ptr) #9 comdat !dbg !1577 {
entry:
  %__ptr.addr = alloca i8*, align 8
  store i8* %__ptr, i8** %__ptr.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__ptr.addr, metadata !1582, metadata !DIExpression()), !dbg !1585
  %0 = load i8*, i8** %__ptr.addr, align 8, !dbg !1586, !tbaa !1214
  %cmp = icmp eq i8* %0, null, !dbg !1587
  ret i1 %cmp, !dbg !1588
}

; Function Attrs: noreturn
declare dso_local void @_ZSt19__throw_logic_errorPKc(i8*) #10

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(i8* %__first, i8* %__last) #11 comdat !dbg !1589 {
entry:
  %__first.addr = alloca i8*, align 8
  %__last.addr = alloca i8*, align 8
  %agg.tmp = alloca %"struct.std::random_access_iterator_tag", align 1
  %undef.agg.tmp = alloca %"struct.std::random_access_iterator_tag", align 1
  store i8* %__first, i8** %__first.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__first.addr, metadata !1599, metadata !DIExpression()), !dbg !1603
  store i8* %__last, i8** %__last.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__last.addr, metadata !1600, metadata !DIExpression()), !dbg !1604
  %0 = load i8*, i8** %__first.addr, align 8, !dbg !1605, !tbaa !1214
  %1 = load i8*, i8** %__last.addr, align 8, !dbg !1606, !tbaa !1214
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i8** dereferenceable(8) %__first.addr), !dbg !1607
  %call = call i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i8* %0, i8* %1), !dbg !1608
  ret i64 %call, !dbg !1609
}

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"* %this, i8* %__p) #7 align 2 !dbg !1610 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__p.addr = alloca i8*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1615, metadata !DIExpression()), !dbg !1617
  store i8* %__p, i8** %__p.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__p.addr, metadata !1616, metadata !DIExpression()), !dbg !1618
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %0 = load i8*, i8** %__p.addr, align 8, !dbg !1619, !tbaa !1214
  %_M_dataplus = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 0, !dbg !1620
  %_M_p = getelementptr inbounds %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %_M_dataplus, i32 0, i32 0, !dbg !1621
  store i8* %0, i8** %_M_p, align 8, !dbg !1622, !tbaa !1623
  ret void, !dbg !1625
}

declare dso_local i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"*, i64* dereferenceable(8), i64) #5

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"* %this, i64 %__capacity) #7 align 2 !dbg !1626 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__capacity.addr = alloca i64, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1631, metadata !DIExpression()), !dbg !1633
  store i64 %__capacity, i64* %__capacity.addr, align 8, !tbaa !1206
  call void @llvm.dbg.declare(metadata i64* %__capacity.addr, metadata !1632, metadata !DIExpression()), !dbg !1634
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %0 = load i64, i64* %__capacity.addr, align 8, !dbg !1635, !tbaa !1206
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 2, !dbg !1636
  %_M_allocated_capacity = bitcast %union.anon* %1 to i64*, !dbg !1636
  store i64 %0, i64* %_M_allocated_capacity, align 8, !dbg !1637, !tbaa !1638
  ret void, !dbg !1639
}

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(i8* %__p, i8* %__k1, i8* %__k2) #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1640 {
entry:
  %__p.addr = alloca i8*, align 8
  %__k1.addr = alloca i8*, align 8
  %__k2.addr = alloca i8*, align 8
  store i8* %__p, i8** %__p.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__p.addr, metadata !1645, metadata !DIExpression()), !dbg !1648
  store i8* %__k1, i8** %__k1.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__k1.addr, metadata !1646, metadata !DIExpression()), !dbg !1649
  store i8* %__k2, i8** %__k2.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__k2.addr, metadata !1647, metadata !DIExpression()), !dbg !1650
  %0 = load i8*, i8** %__p.addr, align 8, !dbg !1651, !tbaa !1214
  %1 = load i8*, i8** %__k1.addr, align 8, !dbg !1652, !tbaa !1214
  %2 = load i8*, i8** %__k2.addr, align 8, !dbg !1653, !tbaa !1214
  %3 = load i8*, i8** %__k1.addr, align 8, !dbg !1654, !tbaa !1214
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64, !dbg !1655
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64, !dbg !1655
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1655
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm(i8* %0, i8* %1, i64 %sub.ptr.sub)
          to label %invoke.cont unwind label %terminate.lpad, !dbg !1656

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !1657

terminate.lpad:                                   ; preds = %entry
  %4 = landingpad { i8*, i32 }
          catch i8* null, !dbg !1656
  %5 = extractvalue { i8*, i32 } %4, 0, !dbg !1656
  call void @__clang_call_terminate(i8* %5) #14, !dbg !1656
  unreachable, !dbg !1656
}

; Function Attrs: nounwind uwtable
define available_externally dso_local i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this) #7 align 2 !dbg !1658 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1665, metadata !DIExpression()), !dbg !1667
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %_M_dataplus = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 0, !dbg !1668
  %_M_p = getelementptr inbounds %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %_M_dataplus, i32 0, i32 0, !dbg !1669
  %0 = load i8*, i8** %_M_p, align 8, !dbg !1669, !tbaa !1623
  ret i8* %0, !dbg !1670
}

declare dso_local i8* @__cxa_begin_catch(i8*)

; Function Attrs: uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* %this) #3 align 2 !dbg !1671 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1676, metadata !DIExpression()), !dbg !1677
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %call = call zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv(%"class.std::__cxx11::basic_string"* %this1), !dbg !1678
  br i1 %call, label %if.end, label %if.then, !dbg !1680

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 2, !dbg !1681
  %_M_allocated_capacity = bitcast %union.anon* %0 to i64*, !dbg !1681
  %1 = load i64, i64* %_M_allocated_capacity, align 8, !dbg !1681, !tbaa !1638
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm(%"class.std::__cxx11::basic_string"* %this1, i64 %1) #8, !dbg !1682
  br label %if.end, !dbg !1682

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1683
}

declare dso_local void @__cxa_rethrow()

declare dso_local void @__cxa_end_catch()

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #12 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #8
  call void @_ZSt9terminatev() #14
  unreachable
}

declare dso_local void @_ZSt9terminatev()

; Function Attrs: uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"* %this, i64 %__n) #3 align 2 !dbg !1684 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca i8, align 1
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1687, metadata !DIExpression()), !dbg !1689
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !1206
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !1688, metadata !DIExpression()), !dbg !1690
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8, !dbg !1691, !tbaa !1206
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm(%"class.std::__cxx11::basic_string"* %this1, i64 %0), !dbg !1692
  %call = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this1), !dbg !1693
  %1 = load i64, i64* %__n.addr, align 8, !dbg !1694, !tbaa !1206
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %1, !dbg !1693
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %ref.tmp) #8, !dbg !1695
  store i8 0, i8* %ref.tmp, align 1, !dbg !1695, !tbaa !1638
  call void @_ZNSt11char_traitsIcE6assignERcRKc(i8* dereferenceable(1) %arrayidx, i8* dereferenceable(1) %ref.tmp) #8, !dbg !1696
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %ref.tmp) #8, !dbg !1696
  ret void, !dbg !1697
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i8* %__first, i8* %__last) #9 comdat !dbg !1698 {
entry:
  %0 = alloca %"struct.std::random_access_iterator_tag", align 1
  %__first.addr = alloca i8*, align 8
  %__last.addr = alloca i8*, align 8
  store i8* %__first, i8** %__first.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__first.addr, metadata !1708, metadata !DIExpression()), !dbg !1713
  store i8* %__last, i8** %__last.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__last.addr, metadata !1709, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.declare(metadata %"struct.std::random_access_iterator_tag"* %0, metadata !1710, metadata !DIExpression()), !dbg !1715
  %1 = load i8*, i8** %__last.addr, align 8, !dbg !1716, !tbaa !1214
  %2 = load i8*, i8** %__first.addr, align 8, !dbg !1717, !tbaa !1214
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64, !dbg !1718
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64, !dbg !1718
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1718
  ret i64 %sub.ptr.sub, !dbg !1719
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i8** dereferenceable(8) %0) #9 comdat !dbg !1720 {
entry:
  %.addr = alloca i8**, align 8
  store i8** %0, i8*** %.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8*** %.addr, metadata !1727, metadata !DIExpression()), !dbg !1730
  ret void, !dbg !1731
}

; Function Attrs: uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm(i8* %__d, i8* %__s, i64 %__n) #3 align 2 !dbg !1732 {
entry:
  %__d.addr = alloca i8*, align 8
  %__s.addr = alloca i8*, align 8
  %__n.addr = alloca i64, align 8
  store i8* %__d, i8** %__d.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__d.addr, metadata !1737, metadata !DIExpression()), !dbg !1740
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !1738, metadata !DIExpression()), !dbg !1741
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !1206
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !1739, metadata !DIExpression()), !dbg !1742
  %0 = load i64, i64* %__n.addr, align 8, !dbg !1743, !tbaa !1206
  %cmp = icmp eq i64 %0, 1, !dbg !1745
  br i1 %cmp, label %if.then, label %if.else, !dbg !1746

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %__d.addr, align 8, !dbg !1747, !tbaa !1214
  %2 = load i8*, i8** %__s.addr, align 8, !dbg !1748, !tbaa !1214
  call void @_ZNSt11char_traitsIcE6assignERcRKc(i8* dereferenceable(1) %1, i8* dereferenceable(1) %2) #8, !dbg !1749
  br label %if.end, !dbg !1749

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %__d.addr, align 8, !dbg !1750, !tbaa !1214
  %4 = load i8*, i8** %__s.addr, align 8, !dbg !1751, !tbaa !1214
  %5 = load i64, i64* %__n.addr, align 8, !dbg !1752, !tbaa !1206
  %call = call i8* @_ZNSt11char_traitsIcE4copyEPcPKcm(i8* %3, i8* %4, i64 %5), !dbg !1753
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1754
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11char_traitsIcE6assignERcRKc(i8* dereferenceable(1) %__c1, i8* dereferenceable(1) %__c2) #7 comdat align 2 !dbg !1755 {
entry:
  %__c1.addr = alloca i8*, align 8
  %__c2.addr = alloca i8*, align 8
  store i8* %__c1, i8** %__c1.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__c1.addr, metadata !1757, metadata !DIExpression()), !dbg !1759
  store i8* %__c2, i8** %__c2.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__c2.addr, metadata !1758, metadata !DIExpression()), !dbg !1760
  %0 = load i8*, i8** %__c2.addr, align 8, !dbg !1761, !tbaa !1214
  %1 = load i8, i8* %0, align 1, !dbg !1761, !tbaa !1638
  %2 = load i8*, i8** %__c1.addr, align 8, !dbg !1762, !tbaa !1214
  store i8 %1, i8* %2, align 1, !dbg !1763, !tbaa !1638
  ret void, !dbg !1764
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i8* @_ZNSt11char_traitsIcE4copyEPcPKcm(i8* %__s1, i8* %__s2, i64 %__n) #7 comdat align 2 !dbg !1765 {
entry:
  %retval = alloca i8*, align 8
  %__s1.addr = alloca i8*, align 8
  %__s2.addr = alloca i8*, align 8
  %__n.addr = alloca i64, align 8
  store i8* %__s1, i8** %__s1.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__s1.addr, metadata !1767, metadata !DIExpression()), !dbg !1770
  store i8* %__s2, i8** %__s2.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__s2.addr, metadata !1768, metadata !DIExpression()), !dbg !1771
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !1206
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !1769, metadata !DIExpression()), !dbg !1772
  %0 = load i64, i64* %__n.addr, align 8, !dbg !1773, !tbaa !1206
  %cmp = icmp eq i64 %0, 0, !dbg !1775
  br i1 %cmp, label %if.then, label %if.end, !dbg !1776

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %__s1.addr, align 8, !dbg !1777, !tbaa !1214
  store i8* %1, i8** %retval, align 8, !dbg !1778
  br label %return, !dbg !1778

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %__s1.addr, align 8, !dbg !1779, !tbaa !1214
  %3 = load i8*, i8** %__s2.addr, align 8, !dbg !1780, !tbaa !1214
  %4 = load i64, i64* %__n.addr, align 8, !dbg !1781, !tbaa !1206
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %3, i64 %4, i1 false), !dbg !1782
  store i8* %2, i8** %retval, align 8, !dbg !1783
  br label %return, !dbg !1783

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !1784
  ret i8* %5, !dbg !1784
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: uwtable
define available_externally dso_local zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv(%"class.std::__cxx11::basic_string"* %this) #3 align 2 !dbg !1785 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1790, metadata !DIExpression()), !dbg !1791
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %call = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this1), !dbg !1792
  %call2 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* %this1), !dbg !1793
  %cmp = icmp eq i8* %call, %call2, !dbg !1794
  ret i1 %cmp, !dbg !1795
}

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm(%"class.std::__cxx11::basic_string"* %this, i64 %__size) #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1796 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__size.addr = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1799, metadata !DIExpression()), !dbg !1801
  store i64 %__size, i64* %__size.addr, align 8, !tbaa !1206
  call void @llvm.dbg.declare(metadata i64* %__size.addr, metadata !1800, metadata !DIExpression()), !dbg !1802
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %call = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont unwind label %lpad, !dbg !1803

invoke.cont:                                      ; preds = %entry
  %call3 = invoke i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont2 unwind label %lpad, !dbg !1804

invoke.cont2:                                     ; preds = %invoke.cont
  %0 = load i64, i64* %__size.addr, align 8, !dbg !1805, !tbaa !1206
  %add = add i64 %0, 1, !dbg !1806
  invoke void @_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm(%"class.std::allocator"* dereferenceable(1) %call, i8* %call3, i64 %add)
          to label %invoke.cont4 unwind label %lpad, !dbg !1807

invoke.cont4:                                     ; preds = %invoke.cont2
  ret void, !dbg !1808

lpad:                                             ; preds = %invoke.cont2, %invoke.cont, %entry
  %1 = landingpad { i8*, i32 }
          filter [0 x i8*] zeroinitializer, !dbg !1808
  %2 = extractvalue { i8*, i32 } %1, 0, !dbg !1808
  store i8* %2, i8** %exn.slot, align 8, !dbg !1808
  %3 = extractvalue { i8*, i32 } %1, 1, !dbg !1808
  store i32 %3, i32* %ehselector.slot, align 4, !dbg !1808
  br label %filter.dispatch, !dbg !1808

filter.dispatch:                                  ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1808
  call void @__cxa_call_unexpected(i8* %exn) #15, !dbg !1808
  unreachable, !dbg !1808
}

; Function Attrs: nounwind uwtable
define available_externally dso_local i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* %this) #7 align 2 !dbg !1809 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1817, metadata !DIExpression()), !dbg !1818
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %0 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 2, !dbg !1819
  %_M_local_buf = bitcast %union.anon* %0 to [16 x i8]*, !dbg !1819
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %_M_local_buf, i64 0, i64 0, !dbg !1820
  %call = call i8* @_ZNSt14pointer_traitsIPKcE10pointer_toERS0_(i8* dereferenceable(1) %arraydecay) #8, !dbg !1821
  ret i8* %call, !dbg !1822
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i8* @_ZNSt14pointer_traitsIPKcE10pointer_toERS0_(i8* dereferenceable(1) %__r) #7 comdat align 2 !dbg !1823 {
entry:
  %__r.addr = alloca i8*, align 8
  store i8* %__r, i8** %__r.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__r.addr, metadata !1839, metadata !DIExpression()), !dbg !1840
  %0 = load i8*, i8** %__r.addr, align 8, !dbg !1841, !tbaa !1214
  %call = call i8* @_ZSt9addressofIKcEPT_RS1_(i8* dereferenceable(1) %0) #8, !dbg !1842
  ret i8* %call, !dbg !1843
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i8* @_ZSt9addressofIKcEPT_RS1_(i8* dereferenceable(1) %__r) #9 comdat !dbg !1844 {
entry:
  %__r.addr = alloca i8*, align 8
  store i8* %__r, i8** %__r.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__r.addr, metadata !1848, metadata !DIExpression()), !dbg !1851
  %0 = load i8*, i8** %__r.addr, align 8, !dbg !1852, !tbaa !1214
  %call = call i8* @_ZSt11__addressofIKcEPT_RS1_(i8* dereferenceable(1) %0) #8, !dbg !1853
  ret i8* %call, !dbg !1854
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i8* @_ZSt11__addressofIKcEPT_RS1_(i8* dereferenceable(1) %__r) #9 comdat !dbg !1855 {
entry:
  %__r.addr = alloca i8*, align 8
  store i8* %__r, i8** %__r.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__r.addr, metadata !1857, metadata !DIExpression()), !dbg !1858
  %0 = load i8*, i8** %__r.addr, align 8, !dbg !1859, !tbaa !1214
  ret i8* %0, !dbg !1860
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm(%"class.std::allocator"* dereferenceable(1) %__a, i8* %__p, i64 %__n) #3 comdat align 2 !dbg !1861 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca i8*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__a.addr, metadata !1863, metadata !DIExpression()), !dbg !1866
  store i8* %__p, i8** %__p.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__p.addr, metadata !1864, metadata !DIExpression()), !dbg !1867
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !1206
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !1865, metadata !DIExpression()), !dbg !1868
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !dbg !1869, !tbaa !1214
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*, !dbg !1869
  %2 = load i8*, i8** %__p.addr, align 8, !dbg !1870, !tbaa !1214
  %3 = load i64, i64* %__n.addr, align 8, !dbg !1871, !tbaa !1206
  call void @_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm(%"class.__gnu_cxx::new_allocator"* %1, i8* %2, i64 %3), !dbg !1872
  ret void, !dbg !1873
}

; Function Attrs: nounwind uwtable
define available_externally dso_local dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string"* %this) #7 align 2 !dbg !1874 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1880, metadata !DIExpression()), !dbg !1881
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %_M_dataplus = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 0, !dbg !1882
  %0 = bitcast %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %_M_dataplus to %"class.std::allocator"*, !dbg !1882
  ret %"class.std::allocator"* %0, !dbg !1883
}

declare dso_local void @__cxa_call_unexpected(i8*)

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm(%"class.__gnu_cxx::new_allocator"* %this, i8* %__p, i64 %__t) #7 comdat align 2 !dbg !1884 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca i8*, align 8
  %__t.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %this.addr, metadata !1886, metadata !DIExpression()), !dbg !1889
  store i8* %__p, i8** %__p.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__p.addr, metadata !1887, metadata !DIExpression()), !dbg !1890
  store i64 %__t, i64* %__t.addr, align 8, !tbaa !1206
  call void @llvm.dbg.declare(metadata i64* %__t.addr, metadata !1888, metadata !DIExpression()), !dbg !1891
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %0 = load i8*, i8** %__p.addr, align 8, !dbg !1892, !tbaa !1214
  call void @_ZdlPv(i8* %0) #8, !dbg !1893
  ret void, !dbg !1894
}

; Function Attrs: nobuiltin nounwind
declare !dbg !204 dso_local void @_ZdlPv(i8*) #13

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm(%"class.std::__cxx11::basic_string"* %this, i64 %__length) #7 align 2 !dbg !1895 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__length.addr = alloca i64, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1898, metadata !DIExpression()), !dbg !1900
  store i64 %__length, i64* %__length.addr, align 8, !tbaa !1206
  call void @llvm.dbg.declare(metadata i64* %__length.addr, metadata !1899, metadata !DIExpression()), !dbg !1901
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %0 = load i64, i64* %__length.addr, align 8, !dbg !1902, !tbaa !1206
  %_M_string_length = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 1, !dbg !1903
  store i64 %0, i64* %_M_string_length, align 8, !dbg !1904, !tbaa !1905
  ret void, !dbg !1906
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIcED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #7 comdat align 2 !dbg !1907 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %this.addr, metadata !1909, metadata !DIExpression()), !dbg !1910
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void, !dbg !1911
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN14BulletinRWLock6UpdateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.BulletinRWLock* %this, %"class.std::__cxx11::basic_string"* %message) #3 comdat align 2 !dbg !1912 {
entry:
  %this.addr = alloca %class.BulletinRWLock*, align 8
  store %class.BulletinRWLock* %this, %class.BulletinRWLock** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %class.BulletinRWLock** %this.addr, metadata !1914, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"* %message, metadata !1915, metadata !DIExpression()), !dbg !1917
  %this1 = load %class.BulletinRWLock*, %class.BulletinRWLock** %this.addr, align 8
  %rwlock_ = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 0, !dbg !1918
  %call = call i32 @pthread_rwlock_wrlock(%union.pthread_rwlock_t* %rwlock_) #8, !dbg !1919
  %message_ = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 1, !dbg !1920
  %call2 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %message_, %"class.std::__cxx11::basic_string"* dereferenceable(32) %message), !dbg !1921
  %rwlock_3 = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 0, !dbg !1922
  %call4 = call i32 @pthread_rwlock_unlock(%union.pthread_rwlock_t* %rwlock_3) #8, !dbg !1923
  ret void, !dbg !1924
}

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %this) unnamed_addr #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1925 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1928, metadata !DIExpression()), !dbg !1929
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont unwind label %lpad, !dbg !1930

invoke.cont:                                      ; preds = %entry
  %_M_dataplus = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 0, !dbg !1932
  call void bitcast (void (%"class.std::allocator"*)* @_ZNSaIcED2Ev to void (%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"*)*)(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %_M_dataplus) #8, !dbg !1932
  ret void, !dbg !1933

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          catch i8* null, !dbg !1932
  %1 = extractvalue { i8*, i32 } %0, 0, !dbg !1932
  store i8* %1, i8** %exn.slot, align 8, !dbg !1932
  %2 = extractvalue { i8*, i32 } %0, 1, !dbg !1932
  store i32 %2, i32* %ehselector.slot, align 4, !dbg !1932
  %_M_dataplus2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 0, !dbg !1932
  call void bitcast (void (%"class.std::allocator"*)* @_ZNSaIcED2Ev to void (%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"*)*)(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %_M_dataplus2) #8, !dbg !1932
  br label %terminate.handler, !dbg !1932

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1932
  call void @__clang_call_terminate(i8* %exn) #14, !dbg !1932
  unreachable, !dbg !1932
}

declare !dbg !228 dso_local i32 @sleep(i32) #5

; Function Attrs: nounwind
declare !dbg !232 dso_local i32 @pthread_rwlock_wrlock(%union.pthread_rwlock_t*) #4

; Function Attrs: uwtable
define available_externally dso_local dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__str) #3 align 2 !dbg !1934 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__str.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1941, metadata !DIExpression()), !dbg !1943
  store %"class.std::__cxx11::basic_string"* %__str, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %__str.addr, metadata !1942, metadata !DIExpression()), !dbg !1944
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !dbg !1945, !tbaa !1214
  %call = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_(%"class.std::__cxx11::basic_string"* %this1, %"class.std::__cxx11::basic_string"* dereferenceable(32) %0), !dbg !1946
  ret %"class.std::__cxx11::basic_string"* %call, !dbg !1947
}

; Function Attrs: nounwind
declare !dbg !235 dso_local i32 @pthread_rwlock_unlock(%union.pthread_rwlock_t*) #4

; Function Attrs: uwtable
define available_externally dso_local dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_(%"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__str) #3 align 2 !dbg !1948 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__str.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1951, metadata !DIExpression()), !dbg !1953
  store %"class.std::__cxx11::basic_string"* %__str, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %__str.addr, metadata !1952, metadata !DIExpression()), !dbg !1954
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !dbg !1955, !tbaa !1214
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %this1, %"class.std::__cxx11::basic_string"* dereferenceable(32) %0), !dbg !1956
  ret %"class.std::__cxx11::basic_string"* %this1, !dbg !1957
}

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* dereferenceable(32)) #5

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN14BulletinRWLock4ReadB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %class.BulletinRWLock* %this) #3 comdat align 2 !dbg !1958 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %class.BulletinRWLock*, align 8
  %nrvo = alloca i1, align 1
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %class.BulletinRWLock* %this, %class.BulletinRWLock** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %class.BulletinRWLock** %this.addr, metadata !1960, metadata !DIExpression()), !dbg !1962
  %this1 = load %class.BulletinRWLock*, %class.BulletinRWLock** %this.addr, align 8
  %rwlock_ = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 0, !dbg !1963
  %call = call i32 @pthread_rwlock_rdlock(%union.pthread_rwlock_t* %rwlock_) #8, !dbg !1964
  store i1 false, i1* %nrvo, align 1, !dbg !1965
  call void @llvm.dbg.declare(metadata i8** %result.ptr, metadata !1961, metadata !DIExpression(DW_OP_deref)), !dbg !1966
  %message_ = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 1, !dbg !1967
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(%"class.std::__cxx11::basic_string"* %agg.result, %"class.std::__cxx11::basic_string"* dereferenceable(32) %message_), !dbg !1967
  %rwlock_2 = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 0, !dbg !1968
  %call3 = call i32 @pthread_rwlock_unlock(%union.pthread_rwlock_t* %rwlock_2) #8, !dbg !1969
  store i1 true, i1* %nrvo, align 1, !dbg !1970
  %nrvo.val = load i1, i1* %nrvo, align 1, !dbg !1971
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused, !dbg !1971

nrvo.unused:                                      ; preds = %entry
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %agg.result) #8, !dbg !1971
  br label %nrvo.skipdtor, !dbg !1971

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %entry
  ret void, !dbg !1971
}

; Function Attrs: inlinehint uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* dereferenceable(272) %__os, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__str) #11 !dbg !1972 {
entry:
  %__os.addr = alloca %"class.std::basic_ostream"*, align 8
  %__str.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::basic_ostream"* %__os, %"class.std::basic_ostream"** %__os.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %__os.addr, metadata !1979, metadata !DIExpression()), !dbg !1983
  store %"class.std::__cxx11::basic_string"* %__str, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %__str.addr, metadata !1980, metadata !DIExpression()), !dbg !1984
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__os.addr, align 8, !dbg !1985, !tbaa !1214
  %1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !dbg !1986, !tbaa !1214
  %call = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(%"class.std::__cxx11::basic_string"* %1) #8, !dbg !1987
  %2 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !dbg !1988, !tbaa !1214
  %call1 = call i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* %2) #8, !dbg !1989
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272) %0, i8* %call, i64 %call1), !dbg !1990
  ret %"class.std::basic_ostream"* %call2, !dbg !1991
}

; Function Attrs: uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %this, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* %__pf) #3 align 2 !dbg !1992 {
entry:
  %this.addr = alloca %"class.std::basic_ostream"*, align 8
  %__pf.addr = alloca %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*, align 8
  store %"class.std::basic_ostream"* %this, %"class.std::basic_ostream"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %this.addr, metadata !2004, metadata !DIExpression()), !dbg !2007
  store %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* %__pf, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)** %__pf.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)** %__pf.addr, metadata !2006, metadata !DIExpression()), !dbg !2008
  %this1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %this.addr, align 8
  %0 = load %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)** %__pf.addr, align 8, !dbg !2009, !tbaa !1214
  %call = call dereferenceable(272) %"class.std::basic_ostream"* %0(%"class.std::basic_ostream"* dereferenceable(272) %this1), !dbg !2009
  ret %"class.std::basic_ostream"* %call, !dbg !2010
}

; Function Attrs: inlinehint uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272) %__os) #11 !dbg !2011 {
entry:
  %__os.addr = alloca %"class.std::basic_ostream"*, align 8
  store %"class.std::basic_ostream"* %__os, %"class.std::basic_ostream"** %__os.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %__os.addr, metadata !2015, metadata !DIExpression()), !dbg !2017
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__os.addr, align 8, !dbg !2018, !tbaa !1214
  %1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__os.addr, align 8, !dbg !2019, !tbaa !1214
  %2 = bitcast %"class.std::basic_ostream"* %1 to i8**, !dbg !2019
  %vtable = load i8*, i8** %2, align 8, !dbg !2019, !tbaa !2020
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24, !dbg !2019
  %3 = bitcast i8* %vbase.offset.ptr to i64*, !dbg !2019
  %vbase.offset = load i64, i64* %3, align 8, !dbg !2019
  %4 = bitcast %"class.std::basic_ostream"* %1 to i8*, !dbg !2019
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %vbase.offset, !dbg !2019
  %5 = bitcast i8* %add.ptr to %"class.std::basic_ios"*, !dbg !2019
  %call = call signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* %5, i8 signext 10), !dbg !2022
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* %0, i8 signext %call), !dbg !2023
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272) %call1), !dbg !2024
  ret %"class.std::basic_ostream"* %call2, !dbg !2025
}

; Function Attrs: nounwind
declare !dbg !236 dso_local i32 @pthread_rwlock_rdlock(%union.pthread_rwlock_t*) #4

; Function Attrs: uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(%"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__str) unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2026 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__str.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !2031, metadata !DIExpression()), !dbg !2033
  store %"class.std::__cxx11::basic_string"* %__str, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %__str.addr, metadata !2032, metadata !DIExpression()), !dbg !2034
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %_M_dataplus = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 0, !dbg !2035
  %call = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* %this1), !dbg !2036
  %0 = bitcast %"class.std::allocator"* %ref.tmp to i8*, !dbg !2037
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %0) #8, !dbg !2037
  %1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !dbg !2038, !tbaa !1214
  %call2 = call dereferenceable(1) %"class.std::allocator"* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string"* %1), !dbg !2039
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_(%"class.std::allocator"* sret %ref.tmp, %"class.std::allocator"* dereferenceable(1) %call2), !dbg !2037
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcOS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %_M_dataplus, i8* %call, %"class.std::allocator"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !dbg !2035

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIcED2Ev(%"class.std::allocator"* %ref.tmp) #8, !dbg !2035
  %2 = bitcast %"class.std::allocator"* %ref.tmp to i8*, !dbg !2035
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %2) #8, !dbg !2035
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !dbg !2040, !tbaa !1214
  %call5 = invoke i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %3)
          to label %invoke.cont4 unwind label %lpad3, !dbg !2042

invoke.cont4:                                     ; preds = %invoke.cont
  %4 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !dbg !2043, !tbaa !1214
  %call7 = invoke i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %4)
          to label %invoke.cont6 unwind label %lpad3, !dbg !2044

invoke.cont6:                                     ; preds = %invoke.cont4
  %5 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !dbg !2045, !tbaa !1214
  %call8 = call i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* %5) #8, !dbg !2046
  %add.ptr = getelementptr inbounds i8, i8* %call7, i64 %call8, !dbg !2047
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_(%"class.std::__cxx11::basic_string"* %this1, i8* %call5, i8* %add.ptr)
          to label %invoke.cont9 unwind label %lpad3, !dbg !2048

invoke.cont9:                                     ; preds = %invoke.cont6
  ret void, !dbg !2049

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !dbg !2049
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !2049
  store i8* %7, i8** %exn.slot, align 8, !dbg !2049
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !2049
  store i32 %8, i32* %ehselector.slot, align 4, !dbg !2049
  call void @_ZNSaIcED2Ev(%"class.std::allocator"* %ref.tmp) #8, !dbg !2035
  %9 = bitcast %"class.std::allocator"* %ref.tmp to i8*, !dbg !2035
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %9) #8, !dbg !2035
  br label %eh.resume, !dbg !2035

lpad3:                                            ; preds = %invoke.cont6, %invoke.cont4, %invoke.cont
  %10 = landingpad { i8*, i32 }
          cleanup, !dbg !2050
  %11 = extractvalue { i8*, i32 } %10, 0, !dbg !2050
  store i8* %11, i8** %exn.slot, align 8, !dbg !2050
  %12 = extractvalue { i8*, i32 } %10, 1, !dbg !2050
  store i32 %12, i32* %ehselector.slot, align 4, !dbg !2050
  call void bitcast (void (%"class.std::allocator"*)* @_ZNSaIcED2Ev to void (%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"*)*)(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %_M_dataplus) #8, !dbg !2050
  br label %eh.resume, !dbg !2050

eh.resume:                                        ; preds = %lpad3, %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2035
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2035
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !2035
  %lpad.val10 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2035
  resume { i8*, i32 } %lpad.val10, !dbg !2035
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_(%"class.std::allocator"* noalias sret %agg.result, %"class.std::allocator"* dereferenceable(1) %__a) #3 comdat align 2 !dbg !2051 {
entry:
  %result.ptr = alloca i8*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %0 = bitcast %"class.std::allocator"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__a.addr, metadata !2053, metadata !DIExpression()), !dbg !2054
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !dbg !2055, !tbaa !1214
  call void @_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_(%"class.std::allocator"* sret %agg.result, %"class.std::allocator"* dereferenceable(1) %1), !dbg !2056
  ret void, !dbg !2057
}

; Function Attrs: nounwind uwtable
define available_externally dso_local dereferenceable(1) %"class.std::allocator"* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string"* %this) #7 align 2 !dbg !2058 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !2065, metadata !DIExpression()), !dbg !2066
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %_M_dataplus = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 0, !dbg !2067
  %0 = bitcast %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %_M_dataplus to %"class.std::allocator"*, !dbg !2067
  ret %"class.std::allocator"* %0, !dbg !2068
}

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcOS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %this, i8* %__dat, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #7 align 2 !dbg !2069 {
entry:
  %this.addr = alloca %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"*, align 8
  %__dat.addr = alloca i8*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %this, %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"** %this.addr, metadata !2071, metadata !DIExpression()), !dbg !2074
  store i8* %__dat, i8** %__dat.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__dat.addr, metadata !2072, metadata !DIExpression()), !dbg !2075
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__a.addr, metadata !2073, metadata !DIExpression()), !dbg !2076
  %this1 = load %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"*, %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"** %this.addr, align 8
  %0 = bitcast %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %this1 to %"class.std::allocator"*, !dbg !2077
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !dbg !2078, !tbaa !1214
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_(%"class.std::allocator"* dereferenceable(1) %1) #8, !dbg !2079
  call void @_ZNSaIcEC2ERKS_(%"class.std::allocator"* %0, %"class.std::allocator"* dereferenceable(1) %call) #8, !dbg !2080
  %_M_p = getelementptr inbounds %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %this1, i32 0, i32 0, !dbg !2081
  %2 = load i8*, i8** %__dat.addr, align 8, !dbg !2082, !tbaa !1214
  store i8* %2, i8** %_M_p, align 8, !dbg !2081, !tbaa !1413
  ret void, !dbg !2083
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #3 comdat align 2 !dbg !2084 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__beg.addr = alloca i8*, align 8
  %__end.addr = alloca i8*, align 8
  %agg.tmp = alloca %"struct.std::__false_type", align 1
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !2091, metadata !DIExpression()), !dbg !2094
  store i8* %__beg, i8** %__beg.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__beg.addr, metadata !2092, metadata !DIExpression()), !dbg !2095
  store i8* %__end, i8** %__end.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__end.addr, metadata !2093, metadata !DIExpression()), !dbg !2096
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %0 = load i8*, i8** %__beg.addr, align 8, !dbg !2097, !tbaa !1214
  %1 = load i8*, i8** %__end.addr, align 8, !dbg !2098, !tbaa !1214
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type(%"class.std::__cxx11::basic_string"* %this1, i8* %0, i8* %1), !dbg !2099
  ret void, !dbg !2100
}

; Function Attrs: nounwind uwtable
define available_externally dso_local i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* %this) #7 align 2 !dbg !2101 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !2106, metadata !DIExpression()), !dbg !2107
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %_M_string_length = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 1, !dbg !2108
  %0 = load i64, i64* %_M_string_length, align 8, !dbg !2108, !tbaa !1905
  ret i64 %0, !dbg !2109
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_(%"class.std::allocator"* noalias sret %agg.result, %"class.std::allocator"* dereferenceable(1) %__rhs) #7 comdat align 2 !dbg !2110 {
entry:
  %result.ptr = alloca i8*, align 8
  %__rhs.addr = alloca %"class.std::allocator"*, align 8
  %0 = bitcast %"class.std::allocator"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::allocator"* %__rhs, %"class.std::allocator"** %__rhs.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__rhs.addr, metadata !2112, metadata !DIExpression()), !dbg !2113
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__rhs.addr, align 8, !dbg !2114, !tbaa !1214
  call void @_ZNSaIcEC2ERKS_(%"class.std::allocator"* %agg.result, %"class.std::allocator"* dereferenceable(1) %1) #8, !dbg !2114
  ret void, !dbg !2115
}

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSaIcEC2ERKS_(%"class.std::allocator"* %this, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #7 align 2 !dbg !2116 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %this.addr, metadata !2121, metadata !DIExpression()), !dbg !2123
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__a.addr, metadata !2122, metadata !DIExpression()), !dbg !2124
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*, !dbg !2125
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !dbg !2126, !tbaa !1214
  %2 = bitcast %"class.std::allocator"* %1 to %"class.__gnu_cxx::new_allocator"*, !dbg !2126
  call void @_ZN9__gnu_cxx13new_allocatorIcEC2ERKS1_(%"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"* dereferenceable(1) %2) #8, !dbg !2127
  ret void, !dbg !2128
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator"* @_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_(%"class.std::allocator"* dereferenceable(1) %__t) #7 comdat !dbg !2129 {
entry:
  %__t.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %__t, %"class.std::allocator"** %__t.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__t.addr, metadata !2138, metadata !DIExpression()), !dbg !2139
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__t.addr, align 8, !dbg !2140, !tbaa !1214
  ret %"class.std::allocator"* %0, !dbg !2141
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #3 comdat align 2 !dbg !2142 {
entry:
  %0 = alloca %"struct.std::__false_type", align 1
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__beg.addr = alloca i8*, align 8
  %__end.addr = alloca i8*, align 8
  %agg.tmp = alloca %"struct.std::forward_iterator_tag", align 1
  %ref.tmp = alloca %"struct.std::random_access_iterator_tag", align 1
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !2147, metadata !DIExpression()), !dbg !2151
  store i8* %__beg, i8** %__beg.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__beg.addr, metadata !2148, metadata !DIExpression()), !dbg !2152
  store i8* %__end, i8** %__end.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__end.addr, metadata !2149, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.declare(metadata %"struct.std::__false_type"* %0, metadata !2150, metadata !DIExpression()), !dbg !2154
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %1 = load i8*, i8** %__beg.addr, align 8, !dbg !2155, !tbaa !1214
  %2 = load i8*, i8** %__end.addr, align 8, !dbg !2156, !tbaa !1214
  %3 = bitcast %"struct.std::random_access_iterator_tag"* %ref.tmp to i8*, !dbg !2157
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %3) #8, !dbg !2157
  %4 = bitcast %"struct.std::random_access_iterator_tag"* %ref.tmp to %"struct.std::forward_iterator_tag"*, !dbg !2157
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* %this1, i8* %1, i8* %2), !dbg !2158
  %5 = bitcast %"struct.std::random_access_iterator_tag"* %ref.tmp to i8*, !dbg !2158
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %5) #8, !dbg !2158
  ret void, !dbg !2159
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2160 {
entry:
  %0 = alloca %"struct.std::forward_iterator_tag", align 1
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__beg.addr = alloca i8*, align 8
  %__end.addr = alloca i8*, align 8
  %__dnew = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !2167, metadata !DIExpression()), !dbg !2172
  store i8* %__beg, i8** %__beg.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__beg.addr, metadata !2168, metadata !DIExpression()), !dbg !2173
  store i8* %__end, i8** %__end.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__end.addr, metadata !2169, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.declare(metadata %"struct.std::forward_iterator_tag"* %0, metadata !2170, metadata !DIExpression()), !dbg !2175
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %1 = load i8*, i8** %__beg.addr, align 8, !dbg !2176, !tbaa !1214
  %call = call zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_(i8* %1), !dbg !2178
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !2179

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %__beg.addr, align 8, !dbg !2180, !tbaa !1214
  %3 = load i8*, i8** %__end.addr, align 8, !dbg !2181, !tbaa !1214
  %cmp = icmp ne i8* %2, %3, !dbg !2182
  br i1 %cmp, label %if.then, label %if.end, !dbg !2183

if.then:                                          ; preds = %land.lhs.true
  call void @_ZSt19__throw_logic_errorPKc(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0)) #15, !dbg !2184
  unreachable, !dbg !2184

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = bitcast i64* %__dnew to i8*, !dbg !2185
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #8, !dbg !2185
  call void @llvm.dbg.declare(metadata i64* %__dnew, metadata !2171, metadata !DIExpression()), !dbg !2186
  %5 = load i8*, i8** %__beg.addr, align 8, !dbg !2187, !tbaa !1214
  %6 = load i8*, i8** %__end.addr, align 8, !dbg !2188, !tbaa !1214
  %call2 = call i64 @_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_(i8* %5, i8* %6), !dbg !2189
  store i64 %call2, i64* %__dnew, align 8, !dbg !2186, !tbaa !1206
  %7 = load i64, i64* %__dnew, align 8, !dbg !2190, !tbaa !1206
  %cmp3 = icmp ugt i64 %7, 15, !dbg !2192
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !2193

if.then4:                                         ; preds = %if.end
  %call5 = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* %this1, i64* dereferenceable(8) %__dnew, i64 0), !dbg !2194
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"* %this1, i8* %call5), !dbg !2196
  %8 = load i64, i64* %__dnew, align 8, !dbg !2197, !tbaa !1206
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"* %this1, i64 %8), !dbg !2198
  br label %if.end6, !dbg !2199

if.end6:                                          ; preds = %if.then4, %if.end
  %call7 = invoke i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont unwind label %lpad, !dbg !2200

invoke.cont:                                      ; preds = %if.end6
  %9 = load i8*, i8** %__beg.addr, align 8, !dbg !2202, !tbaa !1214
  %10 = load i8*, i8** %__end.addr, align 8, !dbg !2203, !tbaa !1214
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_(i8* %call7, i8* %9, i8* %10) #8, !dbg !2204
  br label %try.cont, !dbg !2205

lpad:                                             ; preds = %if.end6
  %11 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2206
  %12 = extractvalue { i8*, i32 } %11, 0, !dbg !2206
  store i8* %12, i8** %exn.slot, align 8, !dbg !2206
  %13 = extractvalue { i8*, i32 } %11, 1, !dbg !2206
  store i32 %13, i32* %ehselector.slot, align 4, !dbg !2206
  br label %catch, !dbg !2206

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2205
  %14 = call i8* @__cxa_begin_catch(i8* %exn) #8, !dbg !2205
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont9 unwind label %lpad8, !dbg !2207

invoke.cont9:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #15
          to label %unreachable unwind label %lpad8, !dbg !2209

lpad8:                                            ; preds = %invoke.cont9, %catch
  %15 = landingpad { i8*, i32 }
          cleanup, !dbg !2210
  %16 = extractvalue { i8*, i32 } %15, 0, !dbg !2210
  store i8* %16, i8** %exn.slot, align 8, !dbg !2210
  %17 = extractvalue { i8*, i32 } %15, 1, !dbg !2210
  store i32 %17, i32* %ehselector.slot, align 4, !dbg !2210
  invoke void @__cxa_end_catch()
          to label %invoke.cont10 unwind label %terminate.lpad, !dbg !2211

invoke.cont10:                                    ; preds = %lpad8
  %18 = bitcast i64* %__dnew to i8*, !dbg !2212
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %18) #8, !dbg !2212
  br label %eh.resume, !dbg !2212

try.cont:                                         ; preds = %invoke.cont
  %19 = load i64, i64* %__dnew, align 8, !dbg !2213, !tbaa !1206
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"* %this1, i64 %19), !dbg !2214
  %20 = bitcast i64* %__dnew to i8*, !dbg !2212
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #8, !dbg !2212
  ret void, !dbg !2212

eh.resume:                                        ; preds = %invoke.cont10
  %exn11 = load i8*, i8** %exn.slot, align 8, !dbg !2212
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2212
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn11, 0, !dbg !2212
  %lpad.val12 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2212
  resume { i8*, i32 } %lpad.val12, !dbg !2212

terminate.lpad:                                   ; preds = %lpad8
  %21 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2211
  %22 = extractvalue { i8*, i32 } %21, 0, !dbg !2211
  call void @__clang_call_terminate(i8* %22) #14, !dbg !2211
  unreachable, !dbg !2211

unreachable:                                      ; preds = %invoke.cont9
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_(i8* %__ptr) #9 comdat !dbg !2215 {
entry:
  %__ptr.addr = alloca i8*, align 8
  store i8* %__ptr, i8** %__ptr.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__ptr.addr, metadata !2219, metadata !DIExpression()), !dbg !2222
  %0 = load i8*, i8** %__ptr.addr, align 8, !dbg !2223, !tbaa !1214
  %cmp = icmp eq i8* %0, null, !dbg !2224
  ret i1 %cmp, !dbg !2225
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i64 @_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_(i8* %__first, i8* %__last) #11 comdat !dbg !2226 {
entry:
  %__first.addr = alloca i8*, align 8
  %__last.addr = alloca i8*, align 8
  %agg.tmp = alloca %"struct.std::random_access_iterator_tag", align 1
  %undef.agg.tmp = alloca %"struct.std::random_access_iterator_tag", align 1
  store i8* %__first, i8** %__first.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__first.addr, metadata !2234, metadata !DIExpression()), !dbg !2238
  store i8* %__last, i8** %__last.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__last.addr, metadata !2235, metadata !DIExpression()), !dbg !2239
  %0 = load i8*, i8** %__first.addr, align 8, !dbg !2240, !tbaa !1214
  %1 = load i8*, i8** %__last.addr, align 8, !dbg !2241, !tbaa !1214
  call void @_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_(i8** dereferenceable(8) %__first.addr), !dbg !2242
  %call = call i64 @_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag(i8* %0, i8* %1), !dbg !2243
  ret i64 %call, !dbg !2244
}

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_(i8* %__p, i8* %__k1, i8* %__k2) #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2245 {
entry:
  %__p.addr = alloca i8*, align 8
  %__k1.addr = alloca i8*, align 8
  %__k2.addr = alloca i8*, align 8
  store i8* %__p, i8** %__p.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__p.addr, metadata !2250, metadata !DIExpression()), !dbg !2253
  store i8* %__k1, i8** %__k1.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__k1.addr, metadata !2251, metadata !DIExpression()), !dbg !2254
  store i8* %__k2, i8** %__k2.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__k2.addr, metadata !2252, metadata !DIExpression()), !dbg !2255
  %0 = load i8*, i8** %__p.addr, align 8, !dbg !2256, !tbaa !1214
  %1 = load i8*, i8** %__k1.addr, align 8, !dbg !2257, !tbaa !1214
  %2 = load i8*, i8** %__k2.addr, align 8, !dbg !2258, !tbaa !1214
  %3 = load i8*, i8** %__k1.addr, align 8, !dbg !2259, !tbaa !1214
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64, !dbg !2260
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64, !dbg !2260
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2260
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm(i8* %0, i8* %1, i64 %sub.ptr.sub)
          to label %invoke.cont unwind label %terminate.lpad, !dbg !2261

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !2262

terminate.lpad:                                   ; preds = %entry
  %4 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2261
  %5 = extractvalue { i8*, i32 } %4, 0, !dbg !2261
  call void @__clang_call_terminate(i8* %5) #14, !dbg !2261
  unreachable, !dbg !2261
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i64 @_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag(i8* %__first, i8* %__last) #9 comdat !dbg !2263 {
entry:
  %0 = alloca %"struct.std::random_access_iterator_tag", align 1
  %__first.addr = alloca i8*, align 8
  %__last.addr = alloca i8*, align 8
  store i8* %__first, i8** %__first.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__first.addr, metadata !2267, metadata !DIExpression()), !dbg !2272
  store i8* %__last, i8** %__last.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8** %__last.addr, metadata !2268, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.declare(metadata %"struct.std::random_access_iterator_tag"* %0, metadata !2269, metadata !DIExpression()), !dbg !2274
  %1 = load i8*, i8** %__last.addr, align 8, !dbg !2275, !tbaa !1214
  %2 = load i8*, i8** %__first.addr, align 8, !dbg !2276, !tbaa !1214
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64, !dbg !2277
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64, !dbg !2277
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2277
  ret i64 %sub.ptr.sub, !dbg !2278
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_(i8** dereferenceable(8) %0) #9 comdat !dbg !2279 {
entry:
  %.addr = alloca i8**, align 8
  store i8** %0, i8*** %.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata i8*** %.addr, metadata !2286, metadata !DIExpression()), !dbg !2289
  ret void, !dbg !2290
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272), i8*, i64) #5

; Function Attrs: nounwind uwtable
define available_externally dso_local i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(%"class.std::__cxx11::basic_string"* %this) #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2291 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !2296, metadata !DIExpression()), !dbg !2297
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %call = invoke i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont unwind label %terminate.lpad, !dbg !2298

invoke.cont:                                      ; preds = %entry
  ret i8* %call, !dbg !2299

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2298
  %1 = extractvalue { i8*, i32 } %0, 0, !dbg !2298
  call void @__clang_call_terminate(i8* %1) #14, !dbg !2298
  unreachable, !dbg !2298
}

; Function Attrs: nounwind uwtable
define available_externally dso_local i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* %this) #7 align 2 !dbg !2300 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !2303, metadata !DIExpression()), !dbg !2304
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %_M_string_length = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 1, !dbg !2305
  %0 = load i64, i64* %_M_string_length, align 8, !dbg !2305, !tbaa !1905
  ret i64 %0, !dbg !2306
}

; Function Attrs: inlinehint uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272) %__os) #11 !dbg !2307 {
entry:
  %__os.addr = alloca %"class.std::basic_ostream"*, align 8
  store %"class.std::basic_ostream"* %__os, %"class.std::basic_ostream"** %__os.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %__os.addr, metadata !2309, metadata !DIExpression()), !dbg !2310
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__os.addr, align 8, !dbg !2311, !tbaa !1214
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* %0), !dbg !2312
  ret %"class.std::basic_ostream"* %call, !dbg !2313
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"*, i8 signext) #5

; Function Attrs: uwtable
define available_externally dso_local signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* %this, i8 signext %__c) #3 align 2 !dbg !2314 {
entry:
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  %__c.addr = alloca i8, align 1
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::basic_ios"** %this.addr, metadata !2325, metadata !DIExpression()), !dbg !2328
  store i8 %__c, i8* %__c.addr, align 1, !tbaa !1638
  call void @llvm.dbg.declare(metadata i8* %__c.addr, metadata !2327, metadata !DIExpression()), !dbg !2329
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %_M_ctype = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %this1, i32 0, i32 5, !dbg !2330
  %0 = load %"class.std::ctype"*, %"class.std::ctype"** %_M_ctype, align 8, !dbg !2330, !tbaa !2331
  %call = call dereferenceable(576) %"class.std::ctype"* @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(%"class.std::ctype"* %0), !dbg !2334
  %1 = load i8, i8* %__c.addr, align 1, !dbg !2335, !tbaa !1638
  %call2 = call signext i8 @_ZNKSt5ctypeIcE5widenEc(%"class.std::ctype"* %call, i8 signext %1), !dbg !2336
  ret i8 %call2, !dbg !2337
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"*) #5

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local dereferenceable(576) %"class.std::ctype"* @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(%"class.std::ctype"* %__f) #11 comdat !dbg !2338 {
entry:
  %__f.addr = alloca %"class.std::ctype"*, align 8
  store %"class.std::ctype"* %__f, %"class.std::ctype"** %__f.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::ctype"** %__f.addr, metadata !2347, metadata !DIExpression()), !dbg !2350
  %0 = load %"class.std::ctype"*, %"class.std::ctype"** %__f.addr, align 8, !dbg !2351, !tbaa !1214
  %tobool = icmp ne %"class.std::ctype"* %0, null, !dbg !2351
  br i1 %tobool, label %if.end, label %if.then, !dbg !2353

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #15, !dbg !2354
  unreachable, !dbg !2354

if.end:                                           ; preds = %entry
  %1 = load %"class.std::ctype"*, %"class.std::ctype"** %__f.addr, align 8, !dbg !2355, !tbaa !1214
  ret %"class.std::ctype"* %1, !dbg !2356
}

; Function Attrs: uwtable
define linkonce_odr dso_local signext i8 @_ZNKSt5ctypeIcE5widenEc(%"class.std::ctype"* %this, i8 signext %__c) #3 comdat align 2 !dbg !2357 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca %"class.std::ctype"*, align 8
  %__c.addr = alloca i8, align 1
  store %"class.std::ctype"* %this, %"class.std::ctype"** %this.addr, align 8, !tbaa !1214
  call void @llvm.dbg.declare(metadata %"class.std::ctype"** %this.addr, metadata !2364, metadata !DIExpression()), !dbg !2366
  store i8 %__c, i8* %__c.addr, align 1, !tbaa !1638
  call void @llvm.dbg.declare(metadata i8* %__c.addr, metadata !2365, metadata !DIExpression()), !dbg !2367
  %this1 = load %"class.std::ctype"*, %"class.std::ctype"** %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this1, i32 0, i32 8, !dbg !2368
  %0 = load i8, i8* %_M_widen_ok, align 8, !dbg !2368, !tbaa !2370
  %tobool = icmp ne i8 %0, 0, !dbg !2368
  br i1 %tobool, label %if.then, label %if.end, !dbg !2372

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this1, i32 0, i32 9, !dbg !2373
  %1 = load i8, i8* %__c.addr, align 1, !dbg !2374, !tbaa !1638
  %idxprom = zext i8 %1 to i64, !dbg !2373
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %_M_widen, i64 0, i64 %idxprom, !dbg !2373
  %2 = load i8, i8* %arrayidx, align 1, !dbg !2373, !tbaa !1638
  store i8 %2, i8* %retval, align 1, !dbg !2375
  br label %return, !dbg !2375

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* %this1), !dbg !2376
  %3 = load i8, i8* %__c.addr, align 1, !dbg !2377, !tbaa !1638
  %4 = bitcast %"class.std::ctype"* %this1 to i8 (%"class.std::ctype"*, i8)***, !dbg !2378
  %vtable = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %4, align 8, !dbg !2378, !tbaa !2020
  %vfn = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable, i64 6, !dbg !2378
  %5 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn, align 8, !dbg !2378
  %call = call signext i8 %5(%"class.std::ctype"* %this1, i8 signext %3), !dbg !2378
  store i8 %call, i8* %retval, align 1, !dbg !2379
  br label %return, !dbg !2379

return:                                           ; preds = %if.end, %if.then
  %6 = load i8, i8* %retval, align 1, !dbg !2380
  ret i8 %6, !dbg !2380
}

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() #10

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"*) #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_pthread_rwlock_no.cpp() #3 section ".text.startup" !dbg !2381 {
entry:
  call void @__cxx_global_var_init(), !dbg !2383
  ret void
}

attributes #0 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { inlinehint uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noinline noreturn nounwind }
attributes #13 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }

!llvm.dbg.cu = !{!28}
!llvm.module.flags = !{!1160, !1161, !1162}
!llvm.ident = !{!1163}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/iostream", directory: "")
!4 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 603, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !7, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/ios_base.h", directory: "")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, flags: DIFlagFwdDecl, identifier: "_ZTSSt8ios_base")
!7 = !{!8, !12, !14, !18, !19, !24}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "_S_refcount", scope: !4, file: !5, line: 616, baseType: !9, flags: DIFlagStaticMember)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Atomic_word", file: !10, line: 32, baseType: !11)
!10 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/x86_64-pc-linux-gnu/bits/atomic_word.h", directory: "")
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_S_synced_with_stdio", scope: !4, file: !5, line: 617, baseType: !13, flags: DIFlagStaticMember)
!13 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!14 = !DISubprogram(name: "Init", scope: !4, file: !5, line: 607, type: !15, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!18 = !DISubprogram(name: "~Init", scope: !4, file: !5, line: 608, type: !15, scopeLine: 608, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!19 = !DISubprogram(name: "Init", scope: !4, file: !5, line: 611, type: !20, scopeLine: 611, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !17, !22}
!22 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!24 = !DISubprogram(name: "operator=", linkageName: "_ZNSt8ios_base4InitaSERKS0_", scope: !4, file: !5, line: 612, type: !25, scopeLine: 612, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !17, !22}
!27 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!28 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !29, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !39, globals: !237, imports: !238, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "integration/pthreadrace/pthread-rwlock-no.cpp", directory: "/home/brad/Code/OpenRace/tests/data")
!30 = !{!31}
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !33, file: !32, line: 169, baseType: !36, size: 32, elements: !37, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEUt_E")
!32 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/basic_string.h", directory: "")
!33 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::char_traits<char>, std::allocator<char> >", scope: !35, file: !34, line: 1618, flags: DIFlagFwdDecl, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE")
!34 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/basic_string.tcc", directory: "")
!35 = !DINamespace(name: "__cxx11", scope: !2, exportSymbols: true)
!36 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!37 = !{!38}
!38 = !DIEnumerator(name: "_S_local_capacity", value: 15, isUnsigned: true)
!39 = !{!40, !41, !49, !55, !92, !152, !204, !208, !228, !232, !235, !236, !78, !33}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DISubprogram(name: "perror", scope: !42, file: !42, line: 780, type: !43, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !48)
!42 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!43 = !DISubroutineType(types: !44)
!44 = !{null, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!48 = !{}
!49 = !DISubprogram(name: "pthread_join", scope: !50, file: !50, line: 217, type: !51, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !48)
!50 = !DIFile(filename: "/usr/include/pthread.h", directory: "")
!51 = !DISubroutineType(types: !52)
!52 = !{!11, !53, !54}
!53 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!55 = !DISubprogram(name: "pthread_rwlock_init", scope: !50, file: !50, line: 904, type: !56, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !48)
!56 = !DISubroutineType(types: !57)
!57 = !{!11, !58, !89}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !60, line: 86, size: 448, flags: DIFlagTypePassByValue, elements: !61, identifier: "_ZTS16pthread_rwlock_t")
!60 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "")
!61 = !{!62, !83, !87}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !59, file: !60, line: 88, baseType: !63, size: 448)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_rwlock_arch_t", file: !64, line: 23, size: 448, flags: DIFlagTypePassByValue, elements: !65, identifier: "_ZTS23__pthread_rwlock_arch_t")
!64 = !DIFile(filename: "/usr/include/bits/struct_rwlock.h", directory: "")
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !76, !81, !82}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__readers", scope: !63, file: !64, line: 25, baseType: !36, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__writers", scope: !63, file: !64, line: 26, baseType: !36, size: 32, offset: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__wrphase_futex", scope: !63, file: !64, line: 27, baseType: !36, size: 32, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__writers_futex", scope: !63, file: !64, line: 28, baseType: !36, size: 32, offset: 96)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !63, file: !64, line: 29, baseType: !36, size: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !63, file: !64, line: 30, baseType: !36, size: 32, offset: 160)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__cur_writer", scope: !63, file: !64, line: 32, baseType: !11, size: 32, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__shared", scope: !63, file: !64, line: 33, baseType: !11, size: 32, offset: 224)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__rwelision", scope: !63, file: !64, line: 34, baseType: !75, size: 8, offset: 256)
!75 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !63, file: !64, line: 39, baseType: !77, size: 56, offset: 264)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 56, elements: !79)
!78 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!79 = !{!80}
!80 = !DISubrange(count: 7)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !63, file: !64, line: 42, baseType: !53, size: 64, offset: 320)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__flags", scope: !63, file: !64, line: 45, baseType: !36, size: 32, offset: 384)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !59, file: !60, line: 89, baseType: !84, size: 448)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 448, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 56)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !59, file: !60, line: 90, baseType: !88, size: 64)
!88 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = !DICompositeType(tag: DW_TAG_union_type, file: !60, line: 93, flags: DIFlagFwdDecl, identifier: "_ZTS20pthread_rwlockattr_t")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !33, file: !32, line: 88, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !95, file: !94, line: 59, baseType: !126)
!94 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/ext/alloc_traits.h", directory: "")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<char>, char>", scope: !96, file: !94, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !97, templateParams: !150, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIcEcEE")
!96 = !DINamespace(name: "__gnu_cxx", scope: null)
!97 = !{!98, !134, !139, !143, !146, !147, !148, !149}
!98 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !95, baseType: !99, extraData: i32 0)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<char> >", scope: !2, file: !100, line: 407, size: 8, flags: DIFlagTypePassByValue, elements: !101, templateParams: !132, identifier: "_ZTSSt16allocator_traitsISaIcEE")
!100 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/alloc_traits.h", directory: "")
!101 = !{!102, !114, !120, !123, !129}
!102 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIcEE8allocateERS0_m", scope: !99, file: !100, line: 459, type: !103, scopeLine: 459, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!103 = !DISubroutineType(types: !104)
!104 = !{!105, !107, !111}
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !99, file: !100, line: 416, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !99, file: !100, line: 410, baseType: !109)
!109 = !DICompositeType(tag: DW_TAG_class_type, name: "allocator<char>", scope: !2, file: !110, line: 249, flags: DIFlagFwdDecl, identifier: "_ZTSSaIcE")
!110 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/allocator.h", directory: "")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !100, line: 431, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !2, file: !113, line: 260, baseType: !53)
!113 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/x86_64-pc-linux-gnu/bits/c++config.h", directory: "")
!114 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIcEE8allocateERS0_mPKv", scope: !99, file: !100, line: 473, type: !115, scopeLine: 473, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!115 = !DISubroutineType(types: !116)
!116 = !{!105, !107, !111, !117}
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", file: !100, line: 425, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!120 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm", scope: !99, file: !100, line: 491, type: !121, scopeLine: 491, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !107, !105, !111}
!123 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_", scope: !99, file: !100, line: 543, type: !124, scopeLine: 543, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!124 = !DISubroutineType(types: !125)
!125 = !{!126, !127}
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !99, file: !100, line: 431, baseType: !112)
!127 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!129 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_", scope: !99, file: !100, line: 558, type: !130, scopeLine: 558, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!130 = !DISubroutineType(types: !131)
!131 = !{!108, !127}
!132 = !{!133}
!133 = !DITemplateTypeParameter(name: "_Alloc", type: !109)
!134 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_", scope: !95, file: !94, line: 97, type: !135, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!135 = !DISubroutineType(types: !136)
!136 = !{!109, !137}
!137 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!139 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE10_S_on_swapERS1_S3_", scope: !95, file: !94, line: 100, type: !140, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !142, !142}
!142 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !109, size: 64)
!143 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE27_S_propagate_on_copy_assignEv", scope: !95, file: !94, line: 103, type: !144, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!144 = !DISubroutineType(types: !145)
!145 = !{!13}
!146 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE27_S_propagate_on_move_assignEv", scope: !95, file: !94, line: 106, type: !144, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!147 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE20_S_propagate_on_swapEv", scope: !95, file: !94, line: 109, type: !144, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!148 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE15_S_always_equalEv", scope: !95, file: !94, line: 112, type: !144, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!149 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE15_S_nothrow_moveEv", scope: !95, file: !94, line: 115, type: !144, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!150 = !{!133, !151}
!151 = !DITemplateTypeParameter(type: !47)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !155, file: !154, line: 311, baseType: !47)
!154 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/char_traits.h", directory: "")
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !2, file: !154, line: 309, size: 8, flags: DIFlagTypePassByValue, elements: !156, templateParams: !202, identifier: "_ZTSSt11char_traitsIcE")
!156 = !{!157, !163, !166, !167, !171, !174, !177, !180, !181, !184, !190, !193, !196, !199}
!157 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignERcRKc", scope: !155, file: !154, line: 321, type: !158, scopeLine: 321, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !160, !161}
!160 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !153, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!163 = !DISubprogram(name: "eq", linkageName: "_ZNSt11char_traitsIcE2eqERKcS2_", scope: !155, file: !154, line: 325, type: !164, scopeLine: 325, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!164 = !DISubroutineType(types: !165)
!165 = !{!13, !161, !161}
!166 = !DISubprogram(name: "lt", linkageName: "_ZNSt11char_traitsIcE2ltERKcS2_", scope: !155, file: !154, line: 329, type: !164, scopeLine: 329, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!167 = !DISubprogram(name: "compare", linkageName: "_ZNSt11char_traitsIcE7compareEPKcS2_m", scope: !155, file: !154, line: 337, type: !168, scopeLine: 337, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!168 = !DISubroutineType(types: !169)
!169 = !{!11, !170, !170, !112}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!171 = !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !155, file: !154, line: 351, type: !172, scopeLine: 351, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!172 = !DISubroutineType(types: !173)
!173 = !{!112, !170}
!174 = !DISubprogram(name: "find", linkageName: "_ZNSt11char_traitsIcE4findEPKcmRS1_", scope: !155, file: !154, line: 361, type: !175, scopeLine: 361, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!175 = !DISubroutineType(types: !176)
!176 = !{!170, !170, !112, !161}
!177 = !DISubprogram(name: "move", linkageName: "_ZNSt11char_traitsIcE4moveEPcPKcm", scope: !155, file: !154, line: 375, type: !178, scopeLine: 375, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!178 = !DISubroutineType(types: !179)
!179 = !{!152, !152, !170, !112}
!180 = !DISubprogram(name: "copy", linkageName: "_ZNSt11char_traitsIcE4copyEPcPKcm", scope: !155, file: !154, line: 387, type: !178, scopeLine: 387, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!181 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignEPcmc", scope: !155, file: !154, line: 399, type: !182, scopeLine: 399, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!182 = !DISubroutineType(types: !183)
!183 = !{!152, !152, !112, !153}
!184 = !DISubprogram(name: "to_char_type", linkageName: "_ZNSt11char_traitsIcE12to_char_typeERKi", scope: !155, file: !154, line: 411, type: !185, scopeLine: 411, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!185 = !DISubroutineType(types: !186)
!186 = !{!153, !187}
!187 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !155, file: !154, line: 312, baseType: !11)
!190 = !DISubprogram(name: "to_int_type", linkageName: "_ZNSt11char_traitsIcE11to_int_typeERKc", scope: !155, file: !154, line: 417, type: !191, scopeLine: 417, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!191 = !DISubroutineType(types: !192)
!192 = !{!189, !161}
!193 = !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt11char_traitsIcE11eq_int_typeERKiS2_", scope: !155, file: !154, line: 421, type: !194, scopeLine: 421, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!194 = !DISubroutineType(types: !195)
!195 = !{!13, !187, !187}
!196 = !DISubprogram(name: "eof", linkageName: "_ZNSt11char_traitsIcE3eofEv", scope: !155, file: !154, line: 425, type: !197, scopeLine: 425, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!197 = !DISubroutineType(types: !198)
!198 = !{!189}
!199 = !DISubprogram(name: "not_eof", linkageName: "_ZNSt11char_traitsIcE7not_eofERKi", scope: !155, file: !154, line: 429, type: !200, scopeLine: 429, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!200 = !DISubroutineType(types: !201)
!201 = !{!189, !187}
!202 = !{!203}
!203 = !DITemplateTypeParameter(name: "_CharT", type: !47)
!204 = !DISubprogram(name: "operator delete", linkageName: "_ZdlPv", scope: !205, file: !205, line: 130, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !48)
!205 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/new", directory: "")
!206 = !DISubroutineType(types: !207)
!207 = !{null, !40}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "BulletinRWLock", file: !29, line: 13, size: 704, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !210, identifier: "_ZTS14BulletinRWLock")
!210 = !{!211, !213, !216, !220, !221, !224}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "rwlock_", scope: !209, file: !29, line: 15, baseType: !212, size: 448)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_rwlock_t", file: !60, line: 91, baseType: !59)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "message_", scope: !209, file: !29, line: 16, baseType: !214, size: 256, offset: 448)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !2, file: !215, line: 79, baseType: !33)
!215 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/stringfwd.h", directory: "")
!216 = !DISubprogram(name: "BulletinRWLock", scope: !209, file: !29, line: 19, type: !217, scopeLine: 19, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!220 = !DISubprogram(name: "~BulletinRWLock", scope: !209, file: !29, line: 21, type: !217, scopeLine: 21, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!221 = !DISubprogram(name: "Read", linkageName: "_ZN14BulletinRWLock4ReadB5cxx11Ev", scope: !209, file: !29, line: 23, type: !222, scopeLine: 23, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!222 = !DISubroutineType(types: !223)
!223 = !{!214, !219}
!224 = !DISubprogram(name: "Update", linkageName: "_ZN14BulletinRWLock6UpdateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", scope: !209, file: !29, line: 30, type: !225, scopeLine: 30, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !219, !227}
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!228 = !DISubprogram(name: "sleep", scope: !229, file: !229, line: 453, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !48)
!229 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!230 = !DISubroutineType(types: !231)
!231 = !{!36, !36}
!232 = !DISubprogram(name: "pthread_rwlock_wrlock", scope: !50, file: !50, line: 935, type: !233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !48)
!233 = !DISubroutineType(types: !234)
!234 = !{!11, !58}
!235 = !DISubprogram(name: "pthread_rwlock_unlock", scope: !50, file: !50, line: 957, type: !233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !48)
!236 = !DISubprogram(name: "pthread_rwlock_rdlock", scope: !50, file: !50, line: 913, type: !233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !48)
!237 = !{!0}
!238 = !{!239, !256, !259, !264, !324, !332, !336, !343, !347, !351, !353, !355, !359, !366, !370, !376, !382, !384, !388, !392, !396, !400, !411, !413, !417, !421, !425, !427, !432, !436, !440, !442, !444, !448, !457, !461, !465, !469, !471, !477, !479, !486, !491, !495, !499, !503, !507, !511, !513, !515, !519, !523, !527, !529, !533, !537, !539, !541, !545, !550, !555, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !624, !628, !632, !637, !641, !644, !647, !650, !652, !654, !656, !659, !662, !665, !668, !671, !674, !678, !681, !684, !687, !689, !691, !693, !695, !698, !701, !704, !707, !710, !712, !716, !720, !725, !731, !733, !735, !737, !739, !741, !743, !745, !747, !749, !751, !753, !755, !757, !761, !765, !771, !775, !780, !782, !787, !791, !795, !804, !808, !812, !816, !818, !822, !826, !830, !834, !838, !842, !846, !850, !852, !856, !860, !864, !870, !874, !878, !880, !884, !888, !894, !896, !900, !904, !908, !912, !916, !920, !924, !925, !926, !927, !929, !930, !931, !932, !933, !934, !935, !939, !944, !949, !953, !955, !957, !959, !961, !968, !972, !976, !980, !984, !988, !993, !997, !999, !1003, !1009, !1013, !1018, !1020, !1023, !1025, !1029, !1031, !1033, !1035, !1037, !1041, !1043, !1045, !1049, !1053, !1057, !1061, !1065, !1069, !1071, !1075, !1079, !1083, !1087, !1089, !1091, !1095, !1099, !1100, !1101, !1102, !1103, !1104, !1110, !1113, !1114, !1116, !1118, !1120, !1122, !1126, !1128, !1130, !1132, !1134, !1136, !1138, !1140, !1142, !1146, !1150, !1152, !1156}
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !240, file: !255, line: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !241, line: 6, baseType: !242)
!241 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !243, line: 21, baseType: !244)
!243 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !243, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !245, identifier: "_ZTS11__mbstate_t")
!245 = !{!246, !247}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !244, file: !243, line: 15, baseType: !11, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !244, file: !243, line: 20, baseType: !248, size: 32, offset: 32)
!248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !244, file: !243, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !249, identifier: "_ZTSN11__mbstate_tUt_E")
!249 = !{!250, !251}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !248, file: !243, line: 18, baseType: !36, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !248, file: !243, line: 19, baseType: !252, size: 32)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 32, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 4)
!255 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cwchar", directory: "")
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !257, file: !255, line: 141)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !258, line: 20, baseType: !36)
!258 = !DIFile(filename: "/usr/include/bits/types/wint_t.h", directory: "")
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !260, file: !255, line: 143)
!260 = !DISubprogram(name: "btowc", scope: !261, file: !261, line: 318, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!262 = !DISubroutineType(types: !263)
!263 = !{!257, !11}
!264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !265, file: !255, line: 144)
!265 = !DISubprogram(name: "fgetwc", scope: !261, file: !261, line: 729, type: !266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!266 = !DISubroutineType(types: !267)
!267 = !{!257, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !270, line: 5, baseType: !271)
!270 = !DIFile(filename: "/usr/include/bits/types/__FILE.h", directory: "")
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !272, line: 49, size: 1728, flags: DIFlagTypePassByValue, elements: !273, identifier: "_ZTS8_IO_FILE")
!272 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!273 = !{!274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !289, !291, !292, !293, !296, !298, !299, !303, !306, !308, !311, !314, !315, !316, !319, !320}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !271, file: !272, line: 51, baseType: !11, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !271, file: !272, line: 54, baseType: !106, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !271, file: !272, line: 55, baseType: !106, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !271, file: !272, line: 56, baseType: !106, size: 64, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !271, file: !272, line: 57, baseType: !106, size: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !271, file: !272, line: 58, baseType: !106, size: 64, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !271, file: !272, line: 59, baseType: !106, size: 64, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !271, file: !272, line: 60, baseType: !106, size: 64, offset: 448)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !271, file: !272, line: 61, baseType: !106, size: 64, offset: 512)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !271, file: !272, line: 64, baseType: !106, size: 64, offset: 576)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !271, file: !272, line: 65, baseType: !106, size: 64, offset: 640)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !271, file: !272, line: 66, baseType: !106, size: 64, offset: 704)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !271, file: !272, line: 68, baseType: !287, size: 64, offset: 768)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !272, line: 36, flags: DIFlagFwdDecl, identifier: "_ZTS10_IO_marker")
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !271, file: !272, line: 70, baseType: !290, size: 64, offset: 832)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !271, file: !272, line: 72, baseType: !11, size: 32, offset: 896)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !271, file: !272, line: 73, baseType: !11, size: 32, offset: 928)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !271, file: !272, line: 74, baseType: !294, size: 64, offset: 960)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !295, line: 152, baseType: !88)
!295 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !271, file: !272, line: 77, baseType: !297, size: 16, offset: 1024)
!297 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !271, file: !272, line: 78, baseType: !75, size: 8, offset: 1040)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !271, file: !272, line: 79, baseType: !300, size: 8, offset: 1048)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 8, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 1)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !271, file: !272, line: 81, baseType: !304, size: 64, offset: 1088)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !272, line: 43, baseType: null)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !271, file: !272, line: 89, baseType: !307, size: 64, offset: 1152)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !295, line: 153, baseType: !88)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !271, file: !272, line: 91, baseType: !309, size: 64, offset: 1216)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !272, line: 37, flags: DIFlagFwdDecl, identifier: "_ZTS11_IO_codecvt")
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !271, file: !272, line: 92, baseType: !312, size: 64, offset: 1280)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !272, line: 38, flags: DIFlagFwdDecl, identifier: "_ZTS13_IO_wide_data")
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !271, file: !272, line: 93, baseType: !290, size: 64, offset: 1344)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !271, file: !272, line: 94, baseType: !40, size: 64, offset: 1408)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !271, file: !272, line: 95, baseType: !317, size: 64, offset: 1472)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !318, line: 46, baseType: !53)
!318 = !DIFile(filename: "OpenRace-env/install/lib/clang/10.0.1/include/stddef.h", directory: "/home/brad/Code")
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !271, file: !272, line: 96, baseType: !11, size: 32, offset: 1536)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !271, file: !272, line: 98, baseType: !321, size: 160, offset: 1568)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 160, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 20)
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !325, file: !255, line: 145)
!325 = !DISubprogram(name: "fgetws", scope: !261, file: !261, line: 758, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!326 = !DISubroutineType(types: !327)
!327 = !{!328, !330, !11, !331}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!330 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !328)
!331 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !268)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !333, file: !255, line: 146)
!333 = !DISubprogram(name: "fputwc", scope: !261, file: !261, line: 743, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!334 = !DISubroutineType(types: !335)
!335 = !{!257, !329, !268}
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !337, file: !255, line: 147)
!337 = !DISubprogram(name: "fputws", scope: !261, file: !261, line: 765, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!338 = !DISubroutineType(types: !339)
!339 = !{!11, !340, !331}
!340 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !344, file: !255, line: 148)
!344 = !DISubprogram(name: "fwide", scope: !261, file: !261, line: 573, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!345 = !DISubroutineType(types: !346)
!346 = !{!11, !268, !11}
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !348, file: !255, line: 149)
!348 = !DISubprogram(name: "fwprintf", scope: !261, file: !261, line: 580, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!349 = !DISubroutineType(types: !350)
!350 = !{!11, !331, !340, null}
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !352, file: !255, line: 150)
!352 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !261, file: !261, line: 642, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !354, file: !255, line: 151)
!354 = !DISubprogram(name: "getwc", scope: !261, file: !261, line: 730, type: !266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !356, file: !255, line: 152)
!356 = !DISubprogram(name: "getwchar", scope: !261, file: !261, line: 736, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!357 = !DISubroutineType(types: !358)
!358 = !{!257}
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !360, file: !255, line: 153)
!360 = !DISubprogram(name: "mbrlen", scope: !261, file: !261, line: 329, type: !361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!361 = !DISubroutineType(types: !362)
!362 = !{!317, !363, !317, !364}
!363 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!364 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !367, file: !255, line: 154)
!367 = !DISubprogram(name: "mbrtowc", scope: !261, file: !261, line: 296, type: !368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!368 = !DISubroutineType(types: !369)
!369 = !{!317, !330, !363, !317, !364}
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !371, file: !255, line: 155)
!371 = !DISubprogram(name: "mbsinit", scope: !261, file: !261, line: 292, type: !372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!372 = !DISubroutineType(types: !373)
!373 = !{!11, !374}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !377, file: !255, line: 156)
!377 = !DISubprogram(name: "mbsrtowcs", scope: !261, file: !261, line: 337, type: !378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!378 = !DISubroutineType(types: !379)
!379 = !{!317, !330, !380, !317, !364}
!380 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !383, file: !255, line: 157)
!383 = !DISubprogram(name: "putwc", scope: !261, file: !261, line: 744, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !385, file: !255, line: 158)
!385 = !DISubprogram(name: "putwchar", scope: !261, file: !261, line: 750, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!386 = !DISubroutineType(types: !387)
!387 = !{!257, !329}
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !389, file: !255, line: 160)
!389 = !DISubprogram(name: "swprintf", scope: !261, file: !261, line: 590, type: !390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!390 = !DISubroutineType(types: !391)
!391 = !{!11, !330, !317, !340, null}
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !393, file: !255, line: 162)
!393 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !261, file: !261, line: 649, type: !394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!394 = !DISubroutineType(types: !395)
!395 = !{!11, !340, !340, null}
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !397, file: !255, line: 163)
!397 = !DISubprogram(name: "ungetwc", scope: !261, file: !261, line: 773, type: !398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!398 = !DISubroutineType(types: !399)
!399 = !{!257, !257, !268}
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !401, file: !255, line: 164)
!401 = !DISubprogram(name: "vfwprintf", scope: !261, file: !261, line: 598, type: !402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!402 = !DISubroutineType(types: !403)
!403 = !{!11, !331, !340, !404}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !29, size: 192, flags: DIFlagTypePassByValue, elements: !406, identifier: "_ZTS13__va_list_tag")
!406 = !{!407, !408, !409, !410}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !405, file: !29, baseType: !36, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !405, file: !29, baseType: !36, size: 32, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !405, file: !29, baseType: !40, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !405, file: !29, baseType: !40, size: 64, offset: 128)
!411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !412, file: !255, line: 166)
!412 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !261, file: !261, line: 696, type: !402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !414, file: !255, line: 169)
!414 = !DISubprogram(name: "vswprintf", scope: !261, file: !261, line: 611, type: !415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!415 = !DISubroutineType(types: !416)
!416 = !{!11, !330, !317, !340, !404}
!417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !418, file: !255, line: 172)
!418 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !261, file: !261, line: 703, type: !419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!419 = !DISubroutineType(types: !420)
!420 = !{!11, !340, !340, !404}
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !422, file: !255, line: 174)
!422 = !DISubprogram(name: "vwprintf", scope: !261, file: !261, line: 606, type: !423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!423 = !DISubroutineType(types: !424)
!424 = !{!11, !340, !404}
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !426, file: !255, line: 176)
!426 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !261, file: !261, line: 700, type: !423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !428, file: !255, line: 178)
!428 = !DISubprogram(name: "wcrtomb", scope: !261, file: !261, line: 301, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!429 = !DISubroutineType(types: !430)
!430 = !{!317, !431, !329, !364}
!431 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !433, file: !255, line: 179)
!433 = !DISubprogram(name: "wcscat", scope: !261, file: !261, line: 97, type: !434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!434 = !DISubroutineType(types: !435)
!435 = !{!328, !330, !340}
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !437, file: !255, line: 180)
!437 = !DISubprogram(name: "wcscmp", scope: !261, file: !261, line: 106, type: !438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!438 = !DISubroutineType(types: !439)
!439 = !{!11, !341, !341}
!440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !441, file: !255, line: 181)
!441 = !DISubprogram(name: "wcscoll", scope: !261, file: !261, line: 131, type: !438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !443, file: !255, line: 182)
!443 = !DISubprogram(name: "wcscpy", scope: !261, file: !261, line: 87, type: !434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !445, file: !255, line: 183)
!445 = !DISubprogram(name: "wcscspn", scope: !261, file: !261, line: 187, type: !446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!446 = !DISubroutineType(types: !447)
!447 = !{!317, !341, !341}
!448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !449, file: !255, line: 184)
!449 = !DISubprogram(name: "wcsftime", scope: !261, file: !261, line: 837, type: !450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!450 = !DISubroutineType(types: !451)
!451 = !{!317, !330, !317, !340, !452}
!452 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !456, line: 7, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!456 = !DIFile(filename: "/usr/include/bits/types/struct_tm.h", directory: "")
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !458, file: !255, line: 185)
!458 = !DISubprogram(name: "wcslen", scope: !261, file: !261, line: 222, type: !459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!459 = !DISubroutineType(types: !460)
!460 = !{!317, !341}
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !462, file: !255, line: 186)
!462 = !DISubprogram(name: "wcsncat", scope: !261, file: !261, line: 101, type: !463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!463 = !DISubroutineType(types: !464)
!464 = !{!328, !330, !340, !317}
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !466, file: !255, line: 187)
!466 = !DISubprogram(name: "wcsncmp", scope: !261, file: !261, line: 109, type: !467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!467 = !DISubroutineType(types: !468)
!468 = !{!11, !341, !341, !317}
!469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !470, file: !255, line: 188)
!470 = !DISubprogram(name: "wcsncpy", scope: !261, file: !261, line: 92, type: !463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !472, file: !255, line: 189)
!472 = !DISubprogram(name: "wcsrtombs", scope: !261, file: !261, line: 343, type: !473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!473 = !DISubroutineType(types: !474)
!474 = !{!317, !431, !475, !317, !364}
!475 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !478, file: !255, line: 190)
!478 = !DISubprogram(name: "wcsspn", scope: !261, file: !261, line: 191, type: !446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !480, file: !255, line: 191)
!480 = !DISubprogram(name: "wcstod", scope: !261, file: !261, line: 377, type: !481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!481 = !DISubroutineType(types: !482)
!482 = !{!483, !340, !484}
!483 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!484 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !487, file: !255, line: 193)
!487 = !DISubprogram(name: "wcstof", scope: !261, file: !261, line: 382, type: !488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!488 = !DISubroutineType(types: !489)
!489 = !{!490, !340, !484}
!490 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !492, file: !255, line: 195)
!492 = !DISubprogram(name: "wcstok", scope: !261, file: !261, line: 217, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!493 = !DISubroutineType(types: !494)
!494 = !{!328, !330, !340, !484}
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !496, file: !255, line: 196)
!496 = !DISubprogram(name: "wcstol", scope: !261, file: !261, line: 428, type: !497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!497 = !DISubroutineType(types: !498)
!498 = !{!88, !340, !484, !11}
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !500, file: !255, line: 197)
!500 = !DISubprogram(name: "wcstoul", scope: !261, file: !261, line: 433, type: !501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!501 = !DISubroutineType(types: !502)
!502 = !{!53, !340, !484, !11}
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !504, file: !255, line: 198)
!504 = !DISubprogram(name: "wcsxfrm", scope: !261, file: !261, line: 135, type: !505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!505 = !DISubroutineType(types: !506)
!506 = !{!317, !330, !340, !317}
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !508, file: !255, line: 199)
!508 = !DISubprogram(name: "wctob", scope: !261, file: !261, line: 324, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!509 = !DISubroutineType(types: !510)
!510 = !{!11, !257}
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !512, file: !255, line: 200)
!512 = !DISubprogram(name: "wmemcmp", scope: !261, file: !261, line: 258, type: !467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !514, file: !255, line: 201)
!514 = !DISubprogram(name: "wmemcpy", scope: !261, file: !261, line: 262, type: !463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !516, file: !255, line: 202)
!516 = !DISubprogram(name: "wmemmove", scope: !261, file: !261, line: 267, type: !517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!517 = !DISubroutineType(types: !518)
!518 = !{!328, !328, !341, !317}
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !520, file: !255, line: 203)
!520 = !DISubprogram(name: "wmemset", scope: !261, file: !261, line: 271, type: !521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!521 = !DISubroutineType(types: !522)
!522 = !{!328, !328, !329, !317}
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !524, file: !255, line: 204)
!524 = !DISubprogram(name: "wprintf", scope: !261, file: !261, line: 587, type: !525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!525 = !DISubroutineType(types: !526)
!526 = !{!11, !340, null}
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !528, file: !255, line: 205)
!528 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !261, file: !261, line: 646, type: !525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !530, file: !255, line: 206)
!530 = !DISubprogram(name: "wcschr", scope: !261, file: !261, line: 164, type: !531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!531 = !DISubroutineType(types: !532)
!532 = !{!328, !341, !329}
!533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !534, file: !255, line: 207)
!534 = !DISubprogram(name: "wcspbrk", scope: !261, file: !261, line: 201, type: !535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!535 = !DISubroutineType(types: !536)
!536 = !{!328, !341, !341}
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !538, file: !255, line: 208)
!538 = !DISubprogram(name: "wcsrchr", scope: !261, file: !261, line: 174, type: !531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !540, file: !255, line: 209)
!540 = !DISubprogram(name: "wcsstr", scope: !261, file: !261, line: 212, type: !535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !542, file: !255, line: 210)
!542 = !DISubprogram(name: "wmemchr", scope: !261, file: !261, line: 253, type: !543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!543 = !DISubroutineType(types: !544)
!544 = !{!328, !341, !329, !317}
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !546, file: !255, line: 251)
!546 = !DISubprogram(name: "wcstold", scope: !261, file: !261, line: 384, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!547 = !DISubroutineType(types: !548)
!548 = !{!549, !340, !484}
!549 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !551, file: !255, line: 260)
!551 = !DISubprogram(name: "wcstoll", scope: !261, file: !261, line: 441, type: !552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!552 = !DISubroutineType(types: !553)
!553 = !{!554, !340, !484, !11}
!554 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !556, file: !255, line: 261)
!556 = !DISubprogram(name: "wcstoull", scope: !261, file: !261, line: 448, type: !557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!557 = !DISubroutineType(types: !558)
!558 = !{!559, !340, !484, !11}
!559 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !546, file: !255, line: 267)
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !551, file: !255, line: 268)
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !556, file: !255, line: 269)
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !487, file: !255, line: 283)
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !412, file: !255, line: 286)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !418, file: !255, line: 289)
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !426, file: !255, line: 292)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !546, file: !255, line: 296)
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !551, file: !255, line: 297)
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !556, file: !255, line: 298)
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !571, file: !572, line: 58)
!571 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !573, file: !572, line: 80, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !574, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!572 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/exception_ptr.h", directory: "")
!573 = !DINamespace(name: "__exception_ptr", scope: !2)
!574 = !{!575, !576, !580, !583, !584, !589, !590, !594, !599, !603, !607, !610, !611, !614, !617}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !571, file: !572, line: 82, baseType: !40, size: 64)
!576 = !DISubprogram(name: "exception_ptr", scope: !571, file: !572, line: 84, type: !577, scopeLine: 84, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !579, !40}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!580 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !571, file: !572, line: 86, type: !581, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !579}
!583 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !571, file: !572, line: 87, type: !581, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!584 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !571, file: !572, line: 89, type: !585, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!585 = !DISubroutineType(types: !586)
!586 = !{!40, !587}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!589 = !DISubprogram(name: "exception_ptr", scope: !571, file: !572, line: 97, type: !581, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!590 = !DISubprogram(name: "exception_ptr", scope: !571, file: !572, line: 99, type: !591, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !579, !593}
!593 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !588, size: 64)
!594 = !DISubprogram(name: "exception_ptr", scope: !571, file: !572, line: 102, type: !595, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !579, !597}
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !2, file: !113, line: 264, baseType: !598)
!598 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!599 = !DISubprogram(name: "exception_ptr", scope: !571, file: !572, line: 106, type: !600, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !579, !602}
!602 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !571, size: 64)
!603 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !571, file: !572, line: 119, type: !604, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!604 = !DISubroutineType(types: !605)
!605 = !{!606, !579, !593}
!606 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !571, size: 64)
!607 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !571, file: !572, line: 123, type: !608, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!608 = !DISubroutineType(types: !609)
!609 = !{!606, !579, !602}
!610 = !DISubprogram(name: "~exception_ptr", scope: !571, file: !572, line: 130, type: !581, scopeLine: 130, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!611 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !571, file: !572, line: 133, type: !612, scopeLine: 133, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !579, !606}
!614 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !571, file: !572, line: 145, type: !615, scopeLine: 145, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!615 = !DISubroutineType(types: !616)
!616 = !{!13, !587}
!617 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !571, file: !572, line: 154, type: !618, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!618 = !DISubroutineType(types: !619)
!619 = !{!620, !587}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!622 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !2, file: !623, line: 88, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!623 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/typeinfo", directory: "")
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !573, entity: !625, file: !572, line: 74)
!625 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !572, line: 70, type: !626, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !571}
!628 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !629, entity: !630, file: !631, line: 58)
!629 = !DINamespace(name: "__gnu_debug", scope: null)
!630 = !DINamespace(name: "__debug", scope: !2)
!631 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/debug/debug.h", directory: "")
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !633, file: !636, line: 47)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !634, line: 24, baseType: !635)
!634 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "")
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !295, line: 37, baseType: !75)
!636 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdint", directory: "")
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !638, file: !636, line: 48)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !634, line: 25, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !295, line: 39, baseType: !640)
!640 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !642, file: !636, line: 49)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !634, line: 26, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !295, line: 41, baseType: !11)
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !645, file: !636, line: 50)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !634, line: 27, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !295, line: 44, baseType: !88)
!647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !648, file: !636, line: 52)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !649, line: 58, baseType: !75)
!649 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !651, file: !636, line: 53)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !649, line: 60, baseType: !88)
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !653, file: !636, line: 54)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !649, line: 61, baseType: !88)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !655, file: !636, line: 55)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !649, line: 62, baseType: !88)
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !657, file: !636, line: 57)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !649, line: 43, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !295, line: 52, baseType: !635)
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !660, file: !636, line: 58)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !649, line: 44, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !295, line: 54, baseType: !639)
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !663, file: !636, line: 59)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !649, line: 45, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !295, line: 56, baseType: !643)
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !666, file: !636, line: 60)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !649, line: 46, baseType: !667)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !295, line: 58, baseType: !646)
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !669, file: !636, line: 62)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !649, line: 101, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !295, line: 72, baseType: !88)
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !672, file: !636, line: 63)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !229, line: 267, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !295, line: 207, baseType: !88)
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !675, file: !636, line: 65)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !676, line: 24, baseType: !677)
!676 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "")
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !295, line: 38, baseType: !78)
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !679, file: !636, line: 66)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !676, line: 25, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !295, line: 40, baseType: !297)
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !682, file: !636, line: 67)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !676, line: 26, baseType: !683)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !295, line: 42, baseType: !36)
!684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !685, file: !636, line: 68)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !676, line: 27, baseType: !686)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !295, line: 45, baseType: !53)
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !688, file: !636, line: 70)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !649, line: 71, baseType: !78)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !690, file: !636, line: 71)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !649, line: 73, baseType: !53)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !692, file: !636, line: 72)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !649, line: 74, baseType: !53)
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !694, file: !636, line: 73)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !649, line: 75, baseType: !53)
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !696, file: !636, line: 75)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !649, line: 49, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !295, line: 53, baseType: !677)
!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !699, file: !636, line: 76)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !649, line: 50, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !295, line: 55, baseType: !680)
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !702, file: !636, line: 77)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !649, line: 51, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !295, line: 57, baseType: !683)
!704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !705, file: !636, line: 78)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !649, line: 52, baseType: !706)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !295, line: 59, baseType: !686)
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !708, file: !636, line: 80)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !649, line: 102, baseType: !709)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !295, line: 73, baseType: !53)
!710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !711, file: !636, line: 81)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !649, line: 90, baseType: !53)
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !713, file: !715, line: 53)
!713 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !714, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!714 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!715 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/clocale", directory: "")
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !717, file: !715, line: 54)
!717 = !DISubprogram(name: "setlocale", scope: !714, file: !714, line: 122, type: !718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!718 = !DISubroutineType(types: !719)
!719 = !{!106, !11, !45}
!720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !721, file: !715, line: 55)
!721 = !DISubprogram(name: "localeconv", scope: !714, file: !714, line: 125, type: !722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!722 = !DISubroutineType(types: !723)
!723 = !{!724}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !726, file: !730, line: 64)
!726 = !DISubprogram(name: "isalnum", scope: !727, file: !727, line: 108, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!727 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!728 = !DISubroutineType(types: !729)
!729 = !{!11, !11}
!730 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cctype", directory: "")
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !732, file: !730, line: 65)
!732 = !DISubprogram(name: "isalpha", scope: !727, file: !727, line: 109, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !734, file: !730, line: 66)
!734 = !DISubprogram(name: "iscntrl", scope: !727, file: !727, line: 110, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !736, file: !730, line: 67)
!736 = !DISubprogram(name: "isdigit", scope: !727, file: !727, line: 111, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !738, file: !730, line: 68)
!738 = !DISubprogram(name: "isgraph", scope: !727, file: !727, line: 113, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !740, file: !730, line: 69)
!740 = !DISubprogram(name: "islower", scope: !727, file: !727, line: 112, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !742, file: !730, line: 70)
!742 = !DISubprogram(name: "isprint", scope: !727, file: !727, line: 114, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !744, file: !730, line: 71)
!744 = !DISubprogram(name: "ispunct", scope: !727, file: !727, line: 115, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !746, file: !730, line: 72)
!746 = !DISubprogram(name: "isspace", scope: !727, file: !727, line: 116, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !748, file: !730, line: 73)
!748 = !DISubprogram(name: "isupper", scope: !727, file: !727, line: 117, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !750, file: !730, line: 74)
!750 = !DISubprogram(name: "isxdigit", scope: !727, file: !727, line: 118, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !752, file: !730, line: 75)
!752 = !DISubprogram(name: "tolower", scope: !727, file: !727, line: 122, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!753 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !754, file: !730, line: 76)
!754 = !DISubprogram(name: "toupper", scope: !727, file: !727, line: 125, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !756, file: !730, line: 87)
!756 = !DISubprogram(name: "isblank", scope: !727, file: !727, line: 130, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !758, file: !760, line: 52)
!758 = !DISubprogram(name: "abs", scope: !759, file: !759, line: 840, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!759 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!760 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/std_abs.h", directory: "")
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !762, file: !764, line: 127)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !759, line: 62, baseType: !763)
!763 = !DICompositeType(tag: DW_TAG_structure_type, file: !759, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!764 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdlib", directory: "")
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !766, file: !764, line: 128)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !759, line: 70, baseType: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !759, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !768, identifier: "_ZTS6ldiv_t")
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !767, file: !759, line: 68, baseType: !88, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !767, file: !759, line: 69, baseType: !88, size: 64, offset: 64)
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !772, file: !764, line: 130)
!772 = !DISubprogram(name: "abort", scope: !759, file: !759, line: 591, type: !773, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!773 = !DISubroutineType(types: !774)
!774 = !{null}
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !776, file: !764, line: 134)
!776 = !DISubprogram(name: "atexit", scope: !759, file: !759, line: 595, type: !777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!777 = !DISubroutineType(types: !778)
!778 = !{!11, !779}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !781, file: !764, line: 137)
!781 = !DISubprogram(name: "at_quick_exit", scope: !759, file: !759, line: 600, type: !777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !783, file: !764, line: 140)
!783 = !DISubprogram(name: "atof", scope: !784, file: !784, line: 25, type: !785, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!784 = !DIFile(filename: "/usr/include/bits/stdlib-float.h", directory: "")
!785 = !DISubroutineType(types: !786)
!786 = !{!483, !45}
!787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !788, file: !764, line: 141)
!788 = !DISubprogram(name: "atoi", scope: !759, file: !759, line: 361, type: !789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!789 = !DISubroutineType(types: !790)
!790 = !{!11, !45}
!791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !792, file: !764, line: 142)
!792 = !DISubprogram(name: "atol", scope: !759, file: !759, line: 366, type: !793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!793 = !DISubroutineType(types: !794)
!794 = !{!88, !45}
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !796, file: !764, line: 143)
!796 = !DISubprogram(name: "bsearch", scope: !797, file: !797, line: 20, type: !798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!797 = !DIFile(filename: "/usr/include/bits/stdlib-bsearch.h", directory: "")
!798 = !DISubroutineType(types: !799)
!799 = !{!40, !118, !118, !317, !317, !800}
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !759, line: 808, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!11, !118, !118}
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !805, file: !764, line: 144)
!805 = !DISubprogram(name: "calloc", scope: !759, file: !759, line: 542, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!806 = !DISubroutineType(types: !807)
!807 = !{!40, !317, !317}
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !809, file: !764, line: 145)
!809 = !DISubprogram(name: "div", scope: !759, file: !759, line: 852, type: !810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!810 = !DISubroutineType(types: !811)
!811 = !{!762, !11, !11}
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !813, file: !764, line: 146)
!813 = !DISubprogram(name: "exit", scope: !759, file: !759, line: 617, type: !814, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !11}
!816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !817, file: !764, line: 147)
!817 = !DISubprogram(name: "free", scope: !759, file: !759, line: 565, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !819, file: !764, line: 148)
!819 = !DISubprogram(name: "getenv", scope: !759, file: !759, line: 634, type: !820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!820 = !DISubroutineType(types: !821)
!821 = !{!106, !45}
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !823, file: !764, line: 149)
!823 = !DISubprogram(name: "labs", scope: !759, file: !759, line: 841, type: !824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!824 = !DISubroutineType(types: !825)
!825 = !{!88, !88}
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !827, file: !764, line: 150)
!827 = !DISubprogram(name: "ldiv", scope: !759, file: !759, line: 854, type: !828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!828 = !DISubroutineType(types: !829)
!829 = !{!766, !88, !88}
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !831, file: !764, line: 151)
!831 = !DISubprogram(name: "malloc", scope: !759, file: !759, line: 539, type: !832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!832 = !DISubroutineType(types: !833)
!833 = !{!40, !317}
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !835, file: !764, line: 153)
!835 = !DISubprogram(name: "mblen", scope: !759, file: !759, line: 922, type: !836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!836 = !DISubroutineType(types: !837)
!837 = !{!11, !45, !317}
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !839, file: !764, line: 154)
!839 = !DISubprogram(name: "mbstowcs", scope: !759, file: !759, line: 933, type: !840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!840 = !DISubroutineType(types: !841)
!841 = !{!317, !330, !363, !317}
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !843, file: !764, line: 155)
!843 = !DISubprogram(name: "mbtowc", scope: !759, file: !759, line: 925, type: !844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!844 = !DISubroutineType(types: !845)
!845 = !{!11, !330, !363, !317}
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !847, file: !764, line: 157)
!847 = !DISubprogram(name: "qsort", scope: !759, file: !759, line: 830, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !40, !317, !317, !800}
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !851, file: !764, line: 160)
!851 = !DISubprogram(name: "quick_exit", scope: !759, file: !759, line: 623, type: !814, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !853, file: !764, line: 163)
!853 = !DISubprogram(name: "rand", scope: !759, file: !759, line: 453, type: !854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!854 = !DISubroutineType(types: !855)
!855 = !{!11}
!856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !857, file: !764, line: 164)
!857 = !DISubprogram(name: "realloc", scope: !759, file: !759, line: 550, type: !858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!858 = !DISubroutineType(types: !859)
!859 = !{!40, !40, !317}
!860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !861, file: !764, line: 165)
!861 = !DISubprogram(name: "srand", scope: !759, file: !759, line: 455, type: !862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !36}
!864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !865, file: !764, line: 166)
!865 = !DISubprogram(name: "strtod", scope: !759, file: !759, line: 117, type: !866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!866 = !DISubroutineType(types: !867)
!867 = !{!483, !363, !868}
!868 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !871, file: !764, line: 167)
!871 = !DISubprogram(name: "strtol", scope: !759, file: !759, line: 176, type: !872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!872 = !DISubroutineType(types: !873)
!873 = !{!88, !363, !868, !11}
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !875, file: !764, line: 168)
!875 = !DISubprogram(name: "strtoul", scope: !759, file: !759, line: 180, type: !876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!876 = !DISubroutineType(types: !877)
!877 = !{!53, !363, !868, !11}
!878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !879, file: !764, line: 169)
!879 = !DISubprogram(name: "system", scope: !759, file: !759, line: 784, type: !789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !881, file: !764, line: 171)
!881 = !DISubprogram(name: "wcstombs", scope: !759, file: !759, line: 937, type: !882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!882 = !DISubroutineType(types: !883)
!883 = !{!317, !431, !340, !317}
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !885, file: !764, line: 172)
!885 = !DISubprogram(name: "wctomb", scope: !759, file: !759, line: 929, type: !886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!886 = !DISubroutineType(types: !887)
!887 = !{!11, !106, !329}
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !889, file: !764, line: 200)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !759, line: 80, baseType: !890)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !759, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !891, identifier: "_ZTS7lldiv_t")
!891 = !{!892, !893}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !890, file: !759, line: 78, baseType: !554, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !890, file: !759, line: 79, baseType: !554, size: 64, offset: 64)
!894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !895, file: !764, line: 206)
!895 = !DISubprogram(name: "_Exit", scope: !759, file: !759, line: 629, type: !814, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !897, file: !764, line: 210)
!897 = !DISubprogram(name: "llabs", scope: !759, file: !759, line: 844, type: !898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!898 = !DISubroutineType(types: !899)
!899 = !{!554, !554}
!900 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !901, file: !764, line: 216)
!901 = !DISubprogram(name: "lldiv", scope: !759, file: !759, line: 858, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!902 = !DISubroutineType(types: !903)
!903 = !{!889, !554, !554}
!904 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !905, file: !764, line: 227)
!905 = !DISubprogram(name: "atoll", scope: !759, file: !759, line: 373, type: !906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!906 = !DISubroutineType(types: !907)
!907 = !{!554, !45}
!908 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !909, file: !764, line: 228)
!909 = !DISubprogram(name: "strtoll", scope: !759, file: !759, line: 200, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!910 = !DISubroutineType(types: !911)
!911 = !{!554, !363, !868, !11}
!912 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !913, file: !764, line: 229)
!913 = !DISubprogram(name: "strtoull", scope: !759, file: !759, line: 205, type: !914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!914 = !DISubroutineType(types: !915)
!915 = !{!559, !363, !868, !11}
!916 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !917, file: !764, line: 231)
!917 = !DISubprogram(name: "strtof", scope: !759, file: !759, line: 123, type: !918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!918 = !DISubroutineType(types: !919)
!919 = !{!490, !363, !868}
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !921, file: !764, line: 232)
!921 = !DISubprogram(name: "strtold", scope: !759, file: !759, line: 126, type: !922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!922 = !DISubroutineType(types: !923)
!923 = !{!549, !363, !868}
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !889, file: !764, line: 240)
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !895, file: !764, line: 242)
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !897, file: !764, line: 244)
!927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !928, file: !764, line: 245)
!928 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !96, file: !764, line: 213, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !901, file: !764, line: 246)
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !905, file: !764, line: 248)
!931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !917, file: !764, line: 249)
!932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !909, file: !764, line: 250)
!933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !913, file: !764, line: 251)
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !921, file: !764, line: 252)
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !936, file: !938, line: 98)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !937, line: 7, baseType: !271)
!937 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!938 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdio", directory: "")
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !940, file: !938, line: 99)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !42, line: 84, baseType: !941)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !942, line: 14, baseType: !943)
!942 = !DIFile(filename: "/usr/include/bits/types/__fpos_t.h", directory: "")
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !942, line: 10, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!944 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !945, file: !938, line: 101)
!945 = !DISubprogram(name: "clearerr", scope: !42, file: !42, line: 762, type: !946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!946 = !DISubroutineType(types: !947)
!947 = !{null, !948}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !950, file: !938, line: 102)
!950 = !DISubprogram(name: "fclose", scope: !42, file: !42, line: 213, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!951 = !DISubroutineType(types: !952)
!952 = !{!11, !948}
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !954, file: !938, line: 103)
!954 = !DISubprogram(name: "feof", scope: !42, file: !42, line: 764, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !956, file: !938, line: 104)
!956 = !DISubprogram(name: "ferror", scope: !42, file: !42, line: 766, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !958, file: !938, line: 105)
!958 = !DISubprogram(name: "fflush", scope: !42, file: !42, line: 218, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !960, file: !938, line: 106)
!960 = !DISubprogram(name: "fgetc", scope: !42, file: !42, line: 489, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !962, file: !938, line: 107)
!962 = !DISubprogram(name: "fgetpos", scope: !42, file: !42, line: 736, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!963 = !DISubroutineType(types: !964)
!964 = !{!11, !965, !966}
!965 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !948)
!966 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !967)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!968 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !969, file: !938, line: 108)
!969 = !DISubprogram(name: "fgets", scope: !42, file: !42, line: 568, type: !970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!970 = !DISubroutineType(types: !971)
!971 = !{!106, !431, !11, !965}
!972 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !973, file: !938, line: 109)
!973 = !DISubprogram(name: "fopen", scope: !42, file: !42, line: 246, type: !974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!974 = !DISubroutineType(types: !975)
!975 = !{!948, !363, !363}
!976 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !977, file: !938, line: 110)
!977 = !DISubprogram(name: "fprintf", scope: !42, file: !42, line: 326, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!978 = !DISubroutineType(types: !979)
!979 = !{!11, !965, !363, null}
!980 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !981, file: !938, line: 111)
!981 = !DISubprogram(name: "fputc", scope: !42, file: !42, line: 525, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!982 = !DISubroutineType(types: !983)
!983 = !{!11, !11, !948}
!984 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !985, file: !938, line: 112)
!985 = !DISubprogram(name: "fputs", scope: !42, file: !42, line: 631, type: !986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!986 = !DISubroutineType(types: !987)
!987 = !{!11, !363, !965}
!988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !989, file: !938, line: 113)
!989 = !DISubprogram(name: "fread", scope: !42, file: !42, line: 651, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!990 = !DISubroutineType(types: !991)
!991 = !{!317, !992, !317, !317, !965}
!992 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !994, file: !938, line: 114)
!994 = !DISubprogram(name: "freopen", scope: !42, file: !42, line: 252, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!995 = !DISubroutineType(types: !996)
!996 = !{!948, !363, !363, !965}
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !998, file: !938, line: 115)
!998 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !42, file: !42, line: 410, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1000, file: !938, line: 116)
!1000 = !DISubprogram(name: "fseek", scope: !42, file: !42, line: 689, type: !1001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!11, !948, !88, !11}
!1003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1004, file: !938, line: 117)
!1004 = !DISubprogram(name: "fsetpos", scope: !42, file: !42, line: 741, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!11, !948, !1007}
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !940)
!1009 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1010, file: !938, line: 118)
!1010 = !DISubprogram(name: "ftell", scope: !42, file: !42, line: 694, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!88, !948}
!1013 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1014, file: !938, line: 119)
!1014 = !DISubprogram(name: "fwrite", scope: !42, file: !42, line: 657, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!317, !1017, !317, !317, !965}
!1017 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !118)
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1019, file: !938, line: 120)
!1019 = !DISubprogram(name: "getc", scope: !42, file: !42, line: 490, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1020 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1021, file: !938, line: 121)
!1021 = !DISubprogram(name: "getchar", scope: !1022, file: !1022, line: 47, type: !854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1022 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1024, file: !938, line: 126)
!1024 = !DISubprogram(name: "perror", scope: !42, file: !42, line: 780, type: !43, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1026, file: !938, line: 127)
!1026 = !DISubprogram(name: "printf", scope: !42, file: !42, line: 332, type: !1027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!11, !363, null}
!1029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1030, file: !938, line: 128)
!1030 = !DISubprogram(name: "putc", scope: !42, file: !42, line: 526, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1032, file: !938, line: 129)
!1032 = !DISubprogram(name: "putchar", scope: !1022, file: !1022, line: 82, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1033 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1034, file: !938, line: 130)
!1034 = !DISubprogram(name: "puts", scope: !42, file: !42, line: 637, type: !789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1036, file: !938, line: 131)
!1036 = !DISubprogram(name: "remove", scope: !42, file: !42, line: 146, type: !789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1037 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1038, file: !938, line: 132)
!1038 = !DISubprogram(name: "rename", scope: !42, file: !42, line: 148, type: !1039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!11, !45, !45}
!1041 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1042, file: !938, line: 133)
!1042 = !DISubprogram(name: "rewind", scope: !42, file: !42, line: 699, type: !946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1044, file: !938, line: 134)
!1044 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !42, file: !42, line: 413, type: !1027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1045 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1046, file: !938, line: 135)
!1046 = !DISubprogram(name: "setbuf", scope: !42, file: !42, line: 304, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !965, !431}
!1049 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1050, file: !938, line: 136)
!1050 = !DISubprogram(name: "setvbuf", scope: !42, file: !42, line: 308, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!11, !965, !431, !11, !317}
!1053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1054, file: !938, line: 137)
!1054 = !DISubprogram(name: "sprintf", scope: !42, file: !42, line: 334, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!11, !431, !363, null}
!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1058, file: !938, line: 138)
!1058 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !42, file: !42, line: 415, type: !1059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!11, !363, !363, null}
!1061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1062, file: !938, line: 139)
!1062 = !DISubprogram(name: "tmpfile", scope: !42, file: !42, line: 173, type: !1063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!948}
!1065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1066, file: !938, line: 141)
!1066 = !DISubprogram(name: "tmpnam", scope: !42, file: !42, line: 187, type: !1067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!106, !106}
!1069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1070, file: !938, line: 143)
!1070 = !DISubprogram(name: "ungetc", scope: !42, file: !42, line: 644, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1071 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1072, file: !938, line: 144)
!1072 = !DISubprogram(name: "vfprintf", scope: !42, file: !42, line: 341, type: !1073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!11, !965, !363, !404}
!1075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1076, file: !938, line: 145)
!1076 = !DISubprogram(name: "vprintf", scope: !1022, file: !1022, line: 39, type: !1077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!11, !363, !404}
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1080, file: !938, line: 146)
!1080 = !DISubprogram(name: "vsprintf", scope: !42, file: !42, line: 349, type: !1081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!11, !431, !363, !404}
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !1084, file: !938, line: 175)
!1084 = !DISubprogram(name: "snprintf", scope: !42, file: !42, line: 354, type: !1085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!11, !431, !317, !363, null}
!1087 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !1088, file: !938, line: 176)
!1088 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !42, file: !42, line: 455, type: !1073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !1090, file: !938, line: 177)
!1090 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !42, file: !42, line: 460, type: !1077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1091 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !1092, file: !938, line: 178)
!1092 = !DISubprogram(name: "vsnprintf", scope: !42, file: !42, line: 358, type: !1093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!11, !431, !317, !363, !404}
!1095 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !1096, file: !938, line: 179)
!1096 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !42, file: !42, line: 463, type: !1097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!11, !363, !363, !404}
!1099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1084, file: !938, line: 185)
!1100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1088, file: !938, line: 186)
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1090, file: !938, line: 187)
!1102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1092, file: !938, line: 188)
!1103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1096, file: !938, line: 189)
!1104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1105, file: !1109, line: 82)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1106, line: 48, baseType: !1107)
!1106 = !DIFile(filename: "/usr/include/wctype.h", directory: "")
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !643)
!1109 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cwctype", directory: "")
!1110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1111, file: !1109, line: 83)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1112, line: 38, baseType: !53)
!1112 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !257, file: !1109, line: 84)
!1114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1115, file: !1109, line: 86)
!1115 = !DISubprogram(name: "iswalnum", scope: !1112, file: !1112, line: 95, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1117, file: !1109, line: 87)
!1117 = !DISubprogram(name: "iswalpha", scope: !1112, file: !1112, line: 101, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1119, file: !1109, line: 89)
!1119 = !DISubprogram(name: "iswblank", scope: !1112, file: !1112, line: 146, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1121, file: !1109, line: 91)
!1121 = !DISubprogram(name: "iswcntrl", scope: !1112, file: !1112, line: 104, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1123, file: !1109, line: 92)
!1123 = !DISubprogram(name: "iswctype", scope: !1112, file: !1112, line: 159, type: !1124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!11, !257, !1111}
!1126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1127, file: !1109, line: 93)
!1127 = !DISubprogram(name: "iswdigit", scope: !1112, file: !1112, line: 108, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1129, file: !1109, line: 94)
!1129 = !DISubprogram(name: "iswgraph", scope: !1112, file: !1112, line: 112, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1131, file: !1109, line: 95)
!1131 = !DISubprogram(name: "iswlower", scope: !1112, file: !1112, line: 117, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1133, file: !1109, line: 96)
!1133 = !DISubprogram(name: "iswprint", scope: !1112, file: !1112, line: 120, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1135, file: !1109, line: 97)
!1135 = !DISubprogram(name: "iswpunct", scope: !1112, file: !1112, line: 125, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1137, file: !1109, line: 98)
!1137 = !DISubprogram(name: "iswspace", scope: !1112, file: !1112, line: 130, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1139, file: !1109, line: 99)
!1139 = !DISubprogram(name: "iswupper", scope: !1112, file: !1112, line: 135, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1141, file: !1109, line: 100)
!1141 = !DISubprogram(name: "iswxdigit", scope: !1112, file: !1112, line: 140, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1143, file: !1109, line: 101)
!1143 = !DISubprogram(name: "towctrans", scope: !1106, file: !1106, line: 55, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!257, !257, !1105}
!1146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1147, file: !1109, line: 102)
!1147 = !DISubprogram(name: "towlower", scope: !1112, file: !1112, line: 166, type: !1148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!257, !257}
!1150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1151, file: !1109, line: 103)
!1151 = !DISubprogram(name: "towupper", scope: !1112, file: !1112, line: 169, type: !1148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1153, file: !1109, line: 104)
!1153 = !DISubprogram(name: "wctrans", scope: !1106, file: !1106, line: 52, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!1105, !45}
!1156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1157, file: !1109, line: 105)
!1157 = !DISubprogram(name: "wctype", scope: !1112, file: !1112, line: 155, type: !1158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!1111, !45}
!1160 = !{i32 7, !"Dwarf Version", i32 4}
!1161 = !{i32 2, !"Debug Info Version", i32 3}
!1162 = !{i32 1, !"wchar_size", i32 4}
!1163 = !{!"clang version 10.0.1 "}
!1164 = distinct !DISubprogram(name: "main", scope: !29, file: !29, line: 56, type: !854, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !1165)
!1165 = !{!1166, !1167, !1168, !1169, !1171}
!1166 = !DILocalVariable(name: "bulletin", scope: !1164, file: !29, line: 57, type: !209)
!1167 = !DILocalVariable(name: "rc", scope: !1164, file: !29, line: 58, type: !11)
!1168 = !DILocalVariable(name: "res", scope: !1164, file: !29, line: 59, type: !40)
!1169 = !DILocalVariable(name: "thr_editor", scope: !1164, file: !29, line: 60, type: !1170)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !60, line: 27, baseType: !53)
!1171 = !DILocalVariable(name: "thr_reader", scope: !1164, file: !29, line: 60, type: !1170)
!1172 = !DILocation(line: 57, column: 3, scope: !1164)
!1173 = !DILocation(line: 57, column: 18, scope: !1164)
!1174 = !DILocation(line: 58, column: 3, scope: !1164)
!1175 = !DILocation(line: 58, column: 7, scope: !1164)
!1176 = !DILocation(line: 59, column: 3, scope: !1164)
!1177 = !DILocation(line: 59, column: 9, scope: !1164)
!1178 = !DILocation(line: 60, column: 3, scope: !1164)
!1179 = !DILocation(line: 60, column: 13, scope: !1164)
!1180 = !DILocation(line: 60, column: 25, scope: !1164)
!1181 = !DILocation(line: 62, column: 58, scope: !1164)
!1182 = !DILocation(line: 62, column: 8, scope: !1164)
!1183 = !DILocation(line: 62, column: 6, scope: !1164)
!1184 = !{!1185, !1185, i64 0}
!1185 = !{!"int", !1186, i64 0}
!1186 = !{!"omnipotent char", !1187, i64 0}
!1187 = !{!"Simple C++ TBAA"}
!1188 = !DILocation(line: 63, column: 7, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1164, file: !29, line: 63, column: 7)
!1190 = !DILocation(line: 63, column: 7, scope: !1164)
!1191 = !DILocation(line: 64, column: 5, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1189, file: !29, line: 63, column: 11)
!1193 = !DILocation(line: 65, column: 5, scope: !1192)
!1194 = !DILocation(line: 76, column: 1, scope: !1192)
!1195 = !DILocation(line: 76, column: 1, scope: !1164)
!1196 = !DILocation(line: 68, column: 58, scope: !1164)
!1197 = !DILocation(line: 68, column: 8, scope: !1164)
!1198 = !DILocation(line: 68, column: 6, scope: !1164)
!1199 = !DILocation(line: 69, column: 7, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1164, file: !29, line: 69, column: 7)
!1201 = !DILocation(line: 69, column: 7, scope: !1164)
!1202 = !DILocation(line: 70, column: 5, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1200, file: !29, line: 69, column: 11)
!1204 = !DILocation(line: 71, column: 5, scope: !1203)
!1205 = !DILocation(line: 74, column: 16, scope: !1164)
!1206 = !{!1207, !1207, i64 0}
!1207 = !{!"long", !1186, i64 0}
!1208 = !DILocation(line: 74, column: 3, scope: !1164)
!1209 = !DILocation(line: 75, column: 16, scope: !1164)
!1210 = !DILocation(line: 75, column: 3, scope: !1164)
!1211 = distinct !DISubprogram(name: "BulletinRWLock", linkageName: "_ZN14BulletinRWLockC2Ev", scope: !209, file: !29, line: 19, type: !217, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !216, retainedNodes: !1212)
!1212 = !{!1213}
!1213 = !DILocalVariable(name: "this", arg: 1, scope: !1211, type: !208, flags: DIFlagArtificial | DIFlagObjectPointer)
!1214 = !{!1215, !1215, i64 0}
!1215 = !{!"any pointer", !1186, i64 0}
!1216 = !DILocation(line: 0, scope: !1211)
!1217 = !DILocation(line: 19, column: 3, scope: !1211)
!1218 = !DILocation(line: 19, column: 22, scope: !1211)
!1219 = !DILocation(line: 19, column: 68, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1211, file: !29, line: 19, column: 45)
!1221 = !DILocation(line: 19, column: 47, scope: !1220)
!1222 = !DILocation(line: 19, column: 84, scope: !1211)
!1223 = !{!1224}
!1224 = !{i64 2, i64 3, i1 false}
!1225 = distinct !DISubprogram(name: "Editor", linkageName: "_ZL6EditorPv", scope: !29, file: !29, line: 37, type: !1226, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !1228)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!40, !40}
!1228 = !{!1229, !1230, !1231}
!1229 = !DILocalVariable(name: "rbuf", arg: 1, scope: !1225, file: !29, line: 37, type: !40)
!1230 = !DILocalVariable(name: "rbuf_ptr", scope: !1225, file: !29, line: 38, type: !208)
!1231 = !DILocalVariable(name: "i", scope: !1225, file: !29, line: 39, type: !11)
!1232 = !DILocation(line: 37, column: 27, scope: !1225)
!1233 = !DILocation(line: 38, column: 3, scope: !1225)
!1234 = !DILocation(line: 38, column: 9, scope: !1225)
!1235 = !DILocation(line: 38, column: 38, scope: !1225)
!1236 = !DILocation(line: 38, column: 20, scope: !1225)
!1237 = !DILocation(line: 39, column: 3, scope: !1225)
!1238 = !DILocation(line: 39, column: 7, scope: !1225)
!1239 = !DILocation(line: 40, column: 3, scope: !1225)
!1240 = !DILocation(line: 41, column: 5, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1225, file: !29, line: 40, column: 16)
!1242 = !DILocation(line: 41, column: 22, scope: !1241)
!1243 = !DILocation(line: 41, column: 15, scope: !1241)
!1244 = !DILocation(line: 42, column: 6, scope: !1241)
!1245 = !DILocation(line: 43, column: 5, scope: !1241)
!1246 = distinct !{!1246, !1239, !1247}
!1247 = !DILocation(line: 44, column: 3, scope: !1225)
!1248 = !DILocation(line: 45, column: 1, scope: !1241)
!1249 = !DILocation(line: 45, column: 1, scope: !1225)
!1250 = distinct !DISubprogram(name: "Reader", linkageName: "_ZL6ReaderPv", scope: !29, file: !29, line: 47, type: !1226, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !1251)
!1251 = !{!1252, !1253, !1254, !1255}
!1252 = !DILocalVariable(name: "rbuf", arg: 1, scope: !1250, file: !29, line: 47, type: !40)
!1253 = !DILocalVariable(name: "rbuf_ptr", scope: !1250, file: !29, line: 48, type: !208)
!1254 = !DILocalVariable(name: "i", scope: !1250, file: !29, line: 49, type: !11)
!1255 = !DILocalVariable(name: "msg", scope: !1256, file: !29, line: 51, type: !214)
!1256 = distinct !DILexicalBlock(scope: !1250, file: !29, line: 50, column: 16)
!1257 = !DILocation(line: 47, column: 27, scope: !1250)
!1258 = !DILocation(line: 48, column: 3, scope: !1250)
!1259 = !DILocation(line: 48, column: 9, scope: !1250)
!1260 = !DILocation(line: 48, column: 38, scope: !1250)
!1261 = !DILocation(line: 48, column: 20, scope: !1250)
!1262 = !DILocation(line: 49, column: 3, scope: !1250)
!1263 = !DILocation(line: 49, column: 7, scope: !1250)
!1264 = !DILocation(line: 50, column: 3, scope: !1250)
!1265 = !DILocation(line: 51, column: 5, scope: !1256)
!1266 = !DILocation(line: 51, column: 17, scope: !1256)
!1267 = !DILocation(line: 51, column: 23, scope: !1256)
!1268 = !DILocation(line: 51, column: 33, scope: !1256)
!1269 = !DILocation(line: 52, column: 15, scope: !1256)
!1270 = !DILocation(line: 52, column: 22, scope: !1256)
!1271 = !DILocation(line: 53, column: 3, scope: !1250)
!1272 = distinct !{!1272, !1264, !1271}
!1273 = !DILocation(line: 54, column: 1, scope: !1256)
!1274 = !DILocation(line: 54, column: 1, scope: !1250)
!1275 = distinct !DISubprogram(name: "~BulletinRWLock", linkageName: "_ZN14BulletinRWLockD2Ev", scope: !209, file: !29, line: 21, type: !217, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !220, retainedNodes: !1276)
!1276 = !{!1277}
!1277 = !DILocalVariable(name: "this", arg: 1, scope: !1275, type: !208, flags: DIFlagArtificial | DIFlagObjectPointer)
!1278 = !DILocation(line: 0, scope: !1275)
!1279 = !DILocation(line: 21, column: 22, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1275, file: !29, line: 21, column: 21)
!1281 = !DILocation(line: 21, column: 22, scope: !1275)
!1282 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !3, file: !3, line: 74, type: !773, scopeLine: 74, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !48)
!1283 = !DILocation(line: 74, column: 25, scope: !1282)
!1284 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSaIcEC2Ev", scope: !109, file: !110, line: 144, type: !1285, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1288, retainedNodes: !1289)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{null, !1287}
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1288 = !DISubprogram(name: "allocator", scope: !109, file: !110, line: 144, type: !1285, scopeLine: 144, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1289 = !{!1290}
!1290 = !DILocalVariable(name: "this", arg: 1, scope: !1284, type: !1291, flags: DIFlagArtificial | DIFlagObjectPointer)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1292 = !DILocation(line: 0, scope: !1284)
!1293 = !DILocation(line: 144, column: 36, scope: !1284)
!1294 = !DILocation(line: 144, column: 7, scope: !1284)
!1295 = !DILocation(line: 144, column: 38, scope: !1284)
!1296 = distinct !DISubprogram(name: "basic_string", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_", scope: !33, file: !32, line: 525, type: !1297, scopeLine: 527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1300, retainedNodes: !1301)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !1299, !45, !137}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1300 = !DISubprogram(name: "basic_string", scope: !33, file: !32, line: 525, type: !1297, scopeLine: 525, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1301 = !{!1302, !1304, !1305}
!1302 = !DILocalVariable(name: "this", arg: 1, scope: !1296, type: !1303, flags: DIFlagArtificial | DIFlagObjectPointer)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!1304 = !DILocalVariable(name: "__s", arg: 2, scope: !1296, file: !32, line: 525, type: !45)
!1305 = !DILocalVariable(name: "__a", arg: 3, scope: !1296, file: !32, line: 525, type: !137)
!1306 = !DILocation(line: 0, scope: !1296)
!1307 = !DILocation(line: 525, column: 34, scope: !1296)
!1308 = !DILocation(line: 525, column: 53, scope: !1296)
!1309 = !DILocation(line: 526, column: 9, scope: !1296)
!1310 = !DILocation(line: 526, column: 21, scope: !1296)
!1311 = !DILocation(line: 526, column: 38, scope: !1296)
!1312 = !DILocation(line: 527, column: 22, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1296, file: !32, line: 527, column: 7)
!1314 = !DILocation(line: 527, column: 27, scope: !1313)
!1315 = !DILocation(line: 527, column: 33, scope: !1313)
!1316 = !DILocation(line: 527, column: 59, scope: !1313)
!1317 = !DILocation(line: 527, column: 39, scope: !1313)
!1318 = !DILocation(line: 527, column: 37, scope: !1313)
!1319 = !DILocation(line: 527, column: 66, scope: !1313)
!1320 = !DILocation(line: 527, column: 69, scope: !1313)
!1321 = !DILocation(line: 527, column: 9, scope: !1313)
!1322 = !DILocation(line: 527, column: 77, scope: !1296)
!1323 = !DILocation(line: 527, column: 77, scope: !1313)
!1324 = distinct !DISubprogram(name: "new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIcEC2Ev", scope: !1326, file: !1325, line: 79, type: !1329, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1328, retainedNodes: !1364)
!1325 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/ext/new_allocator.h", directory: "")
!1326 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "new_allocator<char>", scope: !96, file: !1325, line: 55, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1327, templateParams: !1362, identifier: "_ZTSN9__gnu_cxx13new_allocatorIcEE")
!1327 = !{!1328, !1332, !1337, !1338, !1345, !1351, !1355, !1358, !1361}
!1328 = !DISubprogram(name: "new_allocator", scope: !1326, file: !1325, line: 79, type: !1329, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{null, !1331}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1332 = !DISubprogram(name: "new_allocator", scope: !1326, file: !1325, line: 82, type: !1333, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{null, !1331, !1335}
!1335 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1326)
!1337 = !DISubprogram(name: "~new_allocator", scope: !1326, file: !1325, line: 89, type: !1329, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1338 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorIcE7addressERc", scope: !1326, file: !1325, line: 92, type: !1339, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!1341, !1342, !1343}
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1326, file: !1325, line: 62, baseType: !106)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !1326, file: !1325, line: 64, baseType: !1344)
!1344 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !47, size: 64)
!1345 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorIcE7addressERKc", scope: !1326, file: !1325, line: 96, type: !1346, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!1348, !1342, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !1326, file: !1325, line: 63, baseType: !45)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !1326, file: !1325, line: 65, baseType: !1350)
!1350 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !46, size: 64)
!1351 = !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv", scope: !1326, file: !1325, line: 103, type: !1352, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!106, !1331, !1354, !118}
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !1325, line: 59, baseType: !112)
!1355 = !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm", scope: !1326, file: !1325, line: 120, type: !1356, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{null, !1331, !106, !1354}
!1358 = !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv", scope: !1326, file: !1325, line: 142, type: !1359, scopeLine: 142, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!1354, !1342}
!1361 = !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv", scope: !1326, file: !1325, line: 185, type: !1359, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1362 = !{!1363}
!1363 = !DITemplateTypeParameter(name: "_Tp", type: !47)
!1364 = !{!1365}
!1365 = !DILocalVariable(name: "this", arg: 1, scope: !1324, type: !1366, flags: DIFlagArtificial | DIFlagObjectPointer)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1367 = !DILocation(line: 0, scope: !1324)
!1368 = !DILocation(line: 79, column: 47, scope: !1324)
!1369 = distinct !DISubprogram(name: "_M_local_data", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv", scope: !33, file: !32, line: 190, type: !1370, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1374, retainedNodes: !1375)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!1372, !1299}
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !33, file: !32, line: 92, baseType: !1373)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !95, file: !94, line: 57, baseType: !105)
!1374 = !DISubprogram(name: "_M_local_data", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv", scope: !33, file: !32, line: 190, type: !1370, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1375 = !{!1376}
!1376 = !DILocalVariable(name: "this", arg: 1, scope: !1369, type: !1303, flags: DIFlagArtificial | DIFlagObjectPointer)
!1377 = !DILocation(line: 0, scope: !1369)
!1378 = !DILocation(line: 193, column: 51, scope: !1369)
!1379 = !DILocation(line: 193, column: 50, scope: !1369)
!1380 = !DILocation(line: 193, column: 9, scope: !1369)
!1381 = !DILocation(line: 193, column: 2, scope: !1369)
!1382 = distinct !DISubprogram(name: "_Alloc_hider", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_", scope: !1383, file: !32, line: 156, type: !1393, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1392, retainedNodes: !1400)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Alloc_hider", scope: !33, file: !32, line: 150, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1384, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE")
!1384 = !{!1385, !1391, !1392, !1396}
!1385 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1383, baseType: !1386, extraData: i32 0)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !33, file: !32, line: 87, baseType: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Char_alloc_type", scope: !33, file: !32, line: 80, baseType: !1388)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !1389, file: !94, line: 120, baseType: !1390)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<char>", scope: !95, file: !94, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !48, templateParams: !1362, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIcEcE6rebindIcEE")
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<char>", scope: !99, file: !100, line: 446, baseType: !109)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "_M_p", scope: !1383, file: !32, line: 163, baseType: !1372, size: 64)
!1392 = !DISubprogram(name: "_Alloc_hider", scope: !1383, file: !32, line: 156, type: !1393, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{null, !1395, !1372, !137}
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1396 = !DISubprogram(name: "_Alloc_hider", scope: !1383, file: !32, line: 159, type: !1397, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{null, !1395, !1372, !1399}
!1399 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !109, size: 64)
!1400 = !{!1401, !1403, !1404}
!1401 = !DILocalVariable(name: "this", arg: 1, scope: !1382, type: !1402, flags: DIFlagArtificial | DIFlagObjectPointer)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1403 = !DILocalVariable(name: "__dat", arg: 2, scope: !1382, file: !32, line: 156, type: !1372)
!1404 = !DILocalVariable(name: "__a", arg: 3, scope: !1382, file: !32, line: 156, type: !137)
!1405 = !DILocation(line: 0, scope: !1382)
!1406 = !DILocation(line: 156, column: 23, scope: !1382)
!1407 = !DILocation(line: 156, column: 44, scope: !1382)
!1408 = !DILocation(line: 157, column: 37, scope: !1382)
!1409 = !DILocation(line: 157, column: 19, scope: !1382)
!1410 = !DILocation(line: 157, column: 4, scope: !1382)
!1411 = !DILocation(line: 157, column: 25, scope: !1382)
!1412 = !DILocation(line: 157, column: 30, scope: !1382)
!1413 = !{!1414, !1215, i64 0}
!1414 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !1215, i64 0}
!1415 = !DILocation(line: 157, column: 39, scope: !1382)
!1416 = distinct !DISubprogram(name: "_M_construct<const char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_", scope: !33, file: !32, line: 263, type: !1417, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1420, declaration: !1419, retainedNodes: !1422)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{null, !1299, !45, !45}
!1419 = !DISubprogram(name: "_M_construct<const char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_", scope: !33, file: !32, line: 263, type: !1417, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1420)
!1420 = !{!1421}
!1421 = !DITemplateTypeParameter(name: "_InIterator", type: !45)
!1422 = !{!1423, !1424, !1425}
!1423 = !DILocalVariable(name: "this", arg: 1, scope: !1416, type: !1303, flags: DIFlagArtificial | DIFlagObjectPointer)
!1424 = !DILocalVariable(name: "__beg", arg: 2, scope: !1416, file: !32, line: 263, type: !45)
!1425 = !DILocalVariable(name: "__end", arg: 3, scope: !1416, file: !32, line: 263, type: !45)
!1426 = !DILocation(line: 0, scope: !1416)
!1427 = !DILocation(line: 263, column: 34, scope: !1416)
!1428 = !DILocation(line: 263, column: 53, scope: !1416)
!1429 = !DILocation(line: 266, column: 21, scope: !1416)
!1430 = !DILocation(line: 266, column: 28, scope: !1416)
!1431 = !DILocation(line: 266, column: 4, scope: !1416)
!1432 = !DILocation(line: 267, column: 9, scope: !1416)
!1433 = distinct !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !155, file: !154, line: 351, type: !172, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !171, retainedNodes: !1434)
!1434 = !{!1435}
!1435 = !DILocalVariable(name: "__s", arg: 1, scope: !1433, file: !154, line: 351, type: !170)
!1436 = !DILocation(line: 351, column: 31, scope: !1433)
!1437 = !DILocation(line: 357, column: 26, scope: !1433)
!1438 = !DILocation(line: 357, column: 9, scope: !1433)
!1439 = !DILocation(line: 357, column: 2, scope: !1433)
!1440 = distinct !DISubprogram(name: "~allocator", linkageName: "_ZNSaIcED2Ev", scope: !109, file: !110, line: 162, type: !1285, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1441, retainedNodes: !1442)
!1441 = !DISubprogram(name: "~allocator", scope: !109, file: !110, line: 162, type: !1285, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1442 = !{!1443}
!1443 = !DILocalVariable(name: "this", arg: 1, scope: !1440, type: !1291, flags: DIFlagArtificial | DIFlagObjectPointer)
!1444 = !DILocation(line: 0, scope: !1440)
!1445 = !DILocation(line: 162, column: 39, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1440, file: !110, line: 162, column: 37)
!1447 = !DILocation(line: 162, column: 39, scope: !1440)
!1448 = distinct !DISubprogram(name: "pointer_to", linkageName: "_ZNSt14pointer_traitsIPcE10pointer_toERc", scope: !1450, file: !1449, line: 146, type: !1453, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1452, retainedNodes: !1468)
!1449 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/ptr_traits.h", directory: "")
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_traits<char *>", scope: !2, file: !1449, line: 128, size: 8, flags: DIFlagTypePassByValue, elements: !1451, templateParams: !1466, identifier: "_ZTSSt14pointer_traitsIPcE")
!1451 = !{!1452}
!1452 = !DISubprogram(name: "pointer_to", linkageName: "_ZNSt14pointer_traitsIPcE10pointer_toERc", scope: !1450, file: !1449, line: 146, type: !1453, scopeLine: 146, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!1455, !1456}
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1450, file: !1449, line: 131, baseType: !106)
!1456 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__make_not_void<std::pointer_traits<char *>::element_type>", scope: !2, file: !1449, line: 75, baseType: !1458)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1460, file: !1459, line: 2206, baseType: !47)
!1459 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/type_traits", directory: "")
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__undefined, char>", scope: !2, file: !1459, line: 2205, size: 8, flags: DIFlagTypePassByValue, elements: !48, templateParams: !1461, identifier: "_ZTSSt11conditionalILb0ESt11__undefinedcE")
!1461 = !{!1462, !1463, !1465}
!1462 = !DITemplateValueParameter(name: "_Cond", type: !13, value: i8 0)
!1463 = !DITemplateTypeParameter(name: "_Iftrue", type: !1464)
!1464 = !DICompositeType(tag: DW_TAG_class_type, name: "__undefined", scope: !2, file: !1449, line: 46, flags: DIFlagFwdDecl, identifier: "_ZTSSt11__undefined")
!1465 = !DITemplateTypeParameter(name: "_Iffalse", type: !47)
!1466 = !{!1467}
!1467 = !DITemplateTypeParameter(name: "_Ptr", type: !106)
!1468 = !{!1469}
!1469 = !DILocalVariable(name: "__r", arg: 1, scope: !1448, file: !1449, line: 146, type: !1456)
!1470 = !DILocation(line: 146, column: 49, scope: !1448)
!1471 = !DILocation(line: 147, column: 31, scope: !1448)
!1472 = !DILocation(line: 147, column: 16, scope: !1448)
!1473 = !DILocation(line: 147, column: 9, scope: !1448)
!1474 = distinct !DISubprogram(name: "addressof<char>", linkageName: "_ZSt9addressofIcEPT_RS0_", scope: !2, file: !1475, line: 140, type: !1476, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1362, retainedNodes: !1478)
!1475 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/move.h", directory: "")
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!106, !1344}
!1478 = !{!1479}
!1479 = !DILocalVariable(name: "__r", arg: 1, scope: !1474, file: !1475, line: 140, type: !1344)
!1480 = !DILocation(line: 140, column: 20, scope: !1474)
!1481 = !DILocation(line: 141, column: 31, scope: !1474)
!1482 = !DILocation(line: 141, column: 14, scope: !1474)
!1483 = !DILocation(line: 141, column: 7, scope: !1474)
!1484 = distinct !DISubprogram(name: "__addressof<char>", linkageName: "_ZSt11__addressofIcEPT_RS0_", scope: !2, file: !1475, line: 49, type: !1476, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1362, retainedNodes: !1485)
!1485 = !{!1486}
!1486 = !DILocalVariable(name: "__r", arg: 1, scope: !1484, file: !1475, line: 49, type: !1344)
!1487 = !DILocation(line: 49, column: 22, scope: !1484)
!1488 = !DILocation(line: 50, column: 34, scope: !1484)
!1489 = !DILocation(line: 50, column: 7, scope: !1484)
!1490 = distinct !DISubprogram(name: "new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIcEC2ERKS1_", scope: !1326, file: !1325, line: 82, type: !1333, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1332, retainedNodes: !1491)
!1491 = !{!1492, !1493}
!1492 = !DILocalVariable(name: "this", arg: 1, scope: !1490, type: !1366, flags: DIFlagArtificial | DIFlagObjectPointer)
!1493 = !DILocalVariable(arg: 2, scope: !1490, file: !1325, line: 82, type: !1335)
!1494 = !DILocation(line: 0, scope: !1490)
!1495 = !DILocation(line: 82, column: 41, scope: !1490)
!1496 = !DILocation(line: 82, column: 67, scope: !1490)
!1497 = distinct !DISubprogram(name: "_M_construct_aux<const char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type", scope: !33, file: !32, line: 243, type: !1498, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1420, declaration: !1502, retainedNodes: !1503)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{null, !1299, !45, !45, !1500}
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__false_type", scope: !2, file: !1501, line: 74, size: 8, flags: DIFlagTypePassByValue, elements: !48, identifier: "_ZTSSt12__false_type")
!1501 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/cpp_type_traits.h", directory: "")
!1502 = !DISubprogram(name: "_M_construct_aux<const char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type", scope: !33, file: !32, line: 243, type: !1498, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1420)
!1503 = !{!1504, !1505, !1506, !1507}
!1504 = !DILocalVariable(name: "this", arg: 1, scope: !1497, type: !1303, flags: DIFlagArtificial | DIFlagObjectPointer)
!1505 = !DILocalVariable(name: "__beg", arg: 2, scope: !1497, file: !32, line: 243, type: !45)
!1506 = !DILocalVariable(name: "__end", arg: 3, scope: !1497, file: !32, line: 243, type: !45)
!1507 = !DILocalVariable(arg: 4, scope: !1497, file: !32, line: 244, type: !1500)
!1508 = !DILocation(line: 0, scope: !1497)
!1509 = !DILocation(line: 243, column: 38, scope: !1497)
!1510 = !DILocation(line: 243, column: 57, scope: !1497)
!1511 = !DILocation(line: 244, column: 22, scope: !1497)
!1512 = !DILocation(line: 247, column: 24, scope: !1497)
!1513 = !DILocation(line: 247, column: 31, scope: !1497)
!1514 = !DILocation(line: 247, column: 38, scope: !1497)
!1515 = !DILocation(line: 247, column: 11, scope: !1497)
!1516 = !DILocation(line: 248, column: 2, scope: !1497)
!1517 = distinct !DISubprogram(name: "_M_construct<const char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag", scope: !33, file: !34, line: 207, type: !1518, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1526, declaration: !1525, retainedNodes: !1528)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{null, !1299, !45, !45, !1520}
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "forward_iterator_tag", scope: !2, file: !1521, line: 99, size: 8, flags: DIFlagTypePassByValue, elements: !1522, identifier: "_ZTSSt20forward_iterator_tag")
!1521 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/stl_iterator_base_types.h", directory: "")
!1522 = !{!1523}
!1523 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1520, baseType: !1524, extraData: i32 0)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_iterator_tag", scope: !2, file: !1521, line: 93, size: 8, flags: DIFlagTypePassByValue, elements: !48, identifier: "_ZTSSt18input_iterator_tag")
!1525 = !DISubprogram(name: "_M_construct<const char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag", scope: !33, file: !32, line: 279, type: !1518, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1526)
!1526 = !{!1527}
!1527 = !DITemplateTypeParameter(name: "_FwdIterator", type: !45)
!1528 = !{!1529, !1530, !1531, !1532, !1533}
!1529 = !DILocalVariable(name: "this", arg: 1, scope: !1517, type: !1303, flags: DIFlagArtificial | DIFlagObjectPointer)
!1530 = !DILocalVariable(name: "__beg", arg: 2, scope: !1517, file: !32, line: 279, type: !45)
!1531 = !DILocalVariable(name: "__end", arg: 3, scope: !1517, file: !32, line: 279, type: !45)
!1532 = !DILocalVariable(arg: 4, scope: !1517, file: !32, line: 280, type: !1520)
!1533 = !DILocalVariable(name: "__dnew", scope: !1517, file: !34, line: 215, type: !92)
!1534 = !DILocation(line: 0, scope: !1517)
!1535 = !DILocation(line: 279, column: 35, scope: !1517)
!1536 = !DILocation(line: 279, column: 55, scope: !1517)
!1537 = !DILocation(line: 280, column: 33, scope: !1517)
!1538 = !DILocation(line: 211, column: 35, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1517, file: !34, line: 211, column: 6)
!1540 = !DILocation(line: 211, column: 6, scope: !1539)
!1541 = !DILocation(line: 211, column: 42, scope: !1539)
!1542 = !DILocation(line: 211, column: 45, scope: !1539)
!1543 = !DILocation(line: 211, column: 54, scope: !1539)
!1544 = !DILocation(line: 211, column: 51, scope: !1539)
!1545 = !DILocation(line: 211, column: 6, scope: !1517)
!1546 = !DILocation(line: 212, column: 4, scope: !1539)
!1547 = !DILocation(line: 215, column: 2, scope: !1517)
!1548 = !DILocation(line: 215, column: 12, scope: !1517)
!1549 = !DILocation(line: 215, column: 58, scope: !1517)
!1550 = !DILocation(line: 215, column: 65, scope: !1517)
!1551 = !DILocation(line: 215, column: 44, scope: !1517)
!1552 = !DILocation(line: 217, column: 6, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1517, file: !34, line: 217, column: 6)
!1554 = !DILocation(line: 217, column: 13, scope: !1553)
!1555 = !DILocation(line: 217, column: 6, scope: !1517)
!1556 = !DILocation(line: 219, column: 14, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1553, file: !34, line: 218, column: 4)
!1558 = !DILocation(line: 219, column: 6, scope: !1557)
!1559 = !DILocation(line: 220, column: 18, scope: !1557)
!1560 = !DILocation(line: 220, column: 6, scope: !1557)
!1561 = !DILocation(line: 221, column: 4, scope: !1557)
!1562 = !DILocation(line: 225, column: 26, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1517, file: !34, line: 225, column: 4)
!1564 = !DILocation(line: 225, column: 37, scope: !1563)
!1565 = !DILocation(line: 225, column: 44, scope: !1563)
!1566 = !DILocation(line: 225, column: 6, scope: !1563)
!1567 = !DILocation(line: 225, column: 52, scope: !1563)
!1568 = !DILocation(line: 233, column: 7, scope: !1563)
!1569 = !DILocation(line: 228, column: 6, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1517, file: !34, line: 227, column: 4)
!1571 = !DILocation(line: 229, column: 6, scope: !1570)
!1572 = !DILocation(line: 233, column: 7, scope: !1570)
!1573 = !DILocation(line: 230, column: 4, scope: !1570)
!1574 = !DILocation(line: 233, column: 7, scope: !1517)
!1575 = !DILocation(line: 232, column: 16, scope: !1517)
!1576 = !DILocation(line: 232, column: 2, scope: !1517)
!1577 = distinct !DISubprogram(name: "__is_null_pointer<const char>", linkageName: "_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_", scope: !96, file: !1578, line: 152, type: !1579, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1583, retainedNodes: !1581)
!1578 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/ext/type_traits.h", directory: "")
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!13, !45}
!1581 = !{!1582}
!1582 = !DILocalVariable(name: "__ptr", arg: 1, scope: !1577, file: !1578, line: 152, type: !45)
!1583 = !{!1584}
!1584 = !DITemplateTypeParameter(name: "_Type", type: !46)
!1585 = !DILocation(line: 152, column: 30, scope: !1577)
!1586 = !DILocation(line: 153, column: 14, scope: !1577)
!1587 = !DILocation(line: 153, column: 20, scope: !1577)
!1588 = !DILocation(line: 153, column: 7, scope: !1577)
!1589 = distinct !DISubprogram(name: "distance<const char *>", linkageName: "_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_", scope: !2, file: !1590, line: 138, type: !1591, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1601, retainedNodes: !1598)
!1590 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/stl_iterator_base_funcs.h", directory: "")
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!1593, !45, !45}
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !1594, file: !1521, line: 225, baseType: !1597)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const char *>", scope: !2, file: !1521, line: 221, size: 8, flags: DIFlagTypePassByValue, elements: !48, templateParams: !1595, identifier: "_ZTSSt15iterator_traitsIPKcE")
!1595 = !{!1596}
!1596 = !DITemplateTypeParameter(name: "_Iterator", type: !45)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !2, file: !113, line: 261, baseType: !88)
!1598 = !{!1599, !1600}
!1599 = !DILocalVariable(name: "__first", arg: 1, scope: !1589, file: !1590, line: 138, type: !45)
!1600 = !DILocalVariable(name: "__last", arg: 2, scope: !1589, file: !1590, line: 138, type: !45)
!1601 = !{!1602}
!1602 = !DITemplateTypeParameter(name: "_InputIterator", type: !45)
!1603 = !DILocation(line: 138, column: 29, scope: !1589)
!1604 = !DILocation(line: 138, column: 53, scope: !1589)
!1605 = !DILocation(line: 141, column: 30, scope: !1589)
!1606 = !DILocation(line: 141, column: 39, scope: !1589)
!1607 = !DILocation(line: 142, column: 9, scope: !1589)
!1608 = !DILocation(line: 141, column: 14, scope: !1589)
!1609 = !DILocation(line: 141, column: 7, scope: !1589)
!1610 = distinct !DISubprogram(name: "_M_data", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc", scope: !33, file: !32, line: 178, type: !1611, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1613, retainedNodes: !1614)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{null, !1299, !1372}
!1613 = !DISubprogram(name: "_M_data", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc", scope: !33, file: !32, line: 178, type: !1611, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1614 = !{!1615, !1616}
!1615 = !DILocalVariable(name: "this", arg: 1, scope: !1610, type: !1303, flags: DIFlagArtificial | DIFlagObjectPointer)
!1616 = !DILocalVariable(name: "__p", arg: 2, scope: !1610, file: !32, line: 178, type: !1372)
!1617 = !DILocation(line: 0, scope: !1610)
!1618 = !DILocation(line: 178, column: 23, scope: !1610)
!1619 = !DILocation(line: 179, column: 28, scope: !1610)
!1620 = !DILocation(line: 179, column: 9, scope: !1610)
!1621 = !DILocation(line: 179, column: 21, scope: !1610)
!1622 = !DILocation(line: 179, column: 26, scope: !1610)
!1623 = !{!1624, !1215, i64 0}
!1624 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !1414, i64 0, !1207, i64 8, !1186, i64 16}
!1625 = !DILocation(line: 179, column: 33, scope: !1610)
!1626 = distinct !DISubprogram(name: "_M_capacity", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm", scope: !33, file: !32, line: 210, type: !1627, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1629, retainedNodes: !1630)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{null, !1299, !92}
!1629 = !DISubprogram(name: "_M_capacity", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm", scope: !33, file: !32, line: 210, type: !1627, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1630 = !{!1631, !1632}
!1631 = !DILocalVariable(name: "this", arg: 1, scope: !1626, type: !1303, flags: DIFlagArtificial | DIFlagObjectPointer)
!1632 = !DILocalVariable(name: "__capacity", arg: 2, scope: !1626, file: !32, line: 210, type: !92)
!1633 = !DILocation(line: 0, scope: !1626)
!1634 = !DILocation(line: 210, column: 29, scope: !1626)
!1635 = !DILocation(line: 211, column: 33, scope: !1626)
!1636 = !DILocation(line: 211, column: 9, scope: !1626)
!1637 = !DILocation(line: 211, column: 31, scope: !1626)
!1638 = !{!1186, !1186, i64 0}
!1639 = !DILocation(line: 211, column: 45, scope: !1626)
!1640 = distinct !DISubprogram(name: "_S_copy_chars", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_", scope: !33, file: !32, line: 396, type: !1641, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1643, retainedNodes: !1644)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !106, !45, !45}
!1643 = !DISubprogram(name: "_S_copy_chars", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_", scope: !33, file: !32, line: 396, type: !1641, scopeLine: 396, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1644 = !{!1645, !1646, !1647}
!1645 = !DILocalVariable(name: "__p", arg: 1, scope: !1640, file: !32, line: 396, type: !106)
!1646 = !DILocalVariable(name: "__k1", arg: 2, scope: !1640, file: !32, line: 396, type: !45)
!1647 = !DILocalVariable(name: "__k2", arg: 3, scope: !1640, file: !32, line: 396, type: !45)
!1648 = !DILocation(line: 396, column: 29, scope: !1640)
!1649 = !DILocation(line: 396, column: 48, scope: !1640)
!1650 = !DILocation(line: 396, column: 68, scope: !1640)
!1651 = !DILocation(line: 398, column: 17, scope: !1640)
!1652 = !DILocation(line: 398, column: 22, scope: !1640)
!1653 = !DILocation(line: 398, column: 28, scope: !1640)
!1654 = !DILocation(line: 398, column: 35, scope: !1640)
!1655 = !DILocation(line: 398, column: 33, scope: !1640)
!1656 = !DILocation(line: 398, column: 9, scope: !1640)
!1657 = !DILocation(line: 398, column: 42, scope: !1640)
!1658 = distinct !DISubprogram(name: "_M_data", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv", scope: !33, file: !32, line: 186, type: !1659, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1663, retainedNodes: !1664)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!1372, !1661}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!1663 = !DISubprogram(name: "_M_data", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv", scope: !33, file: !32, line: 186, type: !1659, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1664 = !{!1665}
!1665 = !DILocalVariable(name: "this", arg: 1, scope: !1658, type: !1666, flags: DIFlagArtificial | DIFlagObjectPointer)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1667 = !DILocation(line: 0, scope: !1658)
!1668 = !DILocation(line: 187, column: 16, scope: !1658)
!1669 = !DILocation(line: 187, column: 28, scope: !1658)
!1670 = !DILocation(line: 187, column: 9, scope: !1658)
!1671 = distinct !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv", scope: !33, file: !32, line: 229, type: !1672, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1674, retainedNodes: !1675)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{null, !1299}
!1674 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv", scope: !33, file: !32, line: 229, type: !1672, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1675 = !{!1676}
!1676 = !DILocalVariable(name: "this", arg: 1, scope: !1671, type: !1303, flags: DIFlagArtificial | DIFlagObjectPointer)
!1677 = !DILocation(line: 0, scope: !1671)
!1678 = !DILocation(line: 231, column: 7, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1671, file: !32, line: 231, column: 6)
!1680 = !DILocation(line: 231, column: 6, scope: !1671)
!1681 = !DILocation(line: 232, column: 15, scope: !1679)
!1682 = !DILocation(line: 232, column: 4, scope: !1679)
!1683 = !DILocation(line: 233, column: 7, scope: !1671)
!1684 = distinct !DISubprogram(name: "_M_set_length", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm", scope: !33, file: !32, line: 214, type: !1627, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1685, retainedNodes: !1686)
!1685 = !DISubprogram(name: "_M_set_length", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm", scope: !33, file: !32, line: 214, type: !1627, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1686 = !{!1687, !1688}
!1687 = !DILocalVariable(name: "this", arg: 1, scope: !1684, type: !1303, flags: DIFlagArtificial | DIFlagObjectPointer)
!1688 = !DILocalVariable(name: "__n", arg: 2, scope: !1684, file: !32, line: 214, type: !92)
!1689 = !DILocation(line: 0, scope: !1684)
!1690 = !DILocation(line: 214, column: 31, scope: !1684)
!1691 = !DILocation(line: 216, column: 12, scope: !1684)
!1692 = !DILocation(line: 216, column: 2, scope: !1684)
!1693 = !DILocation(line: 217, column: 22, scope: !1684)
!1694 = !DILocation(line: 217, column: 32, scope: !1684)
!1695 = !DILocation(line: 217, column: 38, scope: !1684)
!1696 = !DILocation(line: 217, column: 2, scope: !1684)
!1697 = !DILocation(line: 218, column: 7, scope: !1684)
!1698 = distinct !DISubprogram(name: "__distance<const char *>", linkageName: "_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag", scope: !2, file: !1590, line: 98, type: !1699, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1711, retainedNodes: !1707)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!1593, !45, !45, !1701}
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "random_access_iterator_tag", scope: !2, file: !1521, line: 107, size: 8, flags: DIFlagTypePassByValue, elements: !1702, identifier: "_ZTSSt26random_access_iterator_tag")
!1702 = !{!1703}
!1703 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1701, baseType: !1704, extraData: i32 0)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bidirectional_iterator_tag", scope: !2, file: !1521, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !1705, identifier: "_ZTSSt26bidirectional_iterator_tag")
!1705 = !{!1706}
!1706 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1704, baseType: !1520, extraData: i32 0)
!1707 = !{!1708, !1709, !1710}
!1708 = !DILocalVariable(name: "__first", arg: 1, scope: !1698, file: !1590, line: 98, type: !45)
!1709 = !DILocalVariable(name: "__last", arg: 2, scope: !1698, file: !1590, line: 98, type: !45)
!1710 = !DILocalVariable(arg: 3, scope: !1698, file: !1590, line: 99, type: !1701)
!1711 = !{!1712}
!1712 = !DITemplateTypeParameter(name: "_RandomAccessIterator", type: !45)
!1713 = !DILocation(line: 98, column: 38, scope: !1698)
!1714 = !DILocation(line: 98, column: 69, scope: !1698)
!1715 = !DILocation(line: 99, column: 42, scope: !1698)
!1716 = !DILocation(line: 104, column: 14, scope: !1698)
!1717 = !DILocation(line: 104, column: 23, scope: !1698)
!1718 = !DILocation(line: 104, column: 21, scope: !1698)
!1719 = !DILocation(line: 104, column: 7, scope: !1698)
!1720 = distinct !DISubprogram(name: "__iterator_category<const char *>", linkageName: "_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_", scope: !2, file: !1521, line: 238, type: !1721, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1728, retainedNodes: !1726)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!1723, !1724}
!1723 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_category", scope: !1594, file: !1521, line: 223, baseType: !1701)
!1724 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!1726 = !{!1727}
!1727 = !DILocalVariable(arg: 1, scope: !1720, file: !1521, line: 238, type: !1724)
!1728 = !{!1729}
!1729 = !DITemplateTypeParameter(name: "_Iter", type: !45)
!1730 = !DILocation(line: 238, column: 37, scope: !1720)
!1731 = !DILocation(line: 239, column: 7, scope: !1720)
!1732 = distinct !DISubprogram(name: "_S_copy", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm", scope: !33, file: !32, line: 346, type: !1733, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1735, retainedNodes: !1736)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null, !106, !45, !92}
!1735 = !DISubprogram(name: "_S_copy", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm", scope: !33, file: !32, line: 346, type: !1733, scopeLine: 346, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1736 = !{!1737, !1738, !1739}
!1737 = !DILocalVariable(name: "__d", arg: 1, scope: !1732, file: !32, line: 346, type: !106)
!1738 = !DILocalVariable(name: "__s", arg: 2, scope: !1732, file: !32, line: 346, type: !45)
!1739 = !DILocalVariable(name: "__n", arg: 3, scope: !1732, file: !32, line: 346, type: !92)
!1740 = !DILocation(line: 346, column: 23, scope: !1732)
!1741 = !DILocation(line: 346, column: 42, scope: !1732)
!1742 = !DILocation(line: 346, column: 57, scope: !1732)
!1743 = !DILocation(line: 348, column: 6, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1732, file: !32, line: 348, column: 6)
!1745 = !DILocation(line: 348, column: 10, scope: !1744)
!1746 = !DILocation(line: 348, column: 6, scope: !1732)
!1747 = !DILocation(line: 349, column: 25, scope: !1744)
!1748 = !DILocation(line: 349, column: 31, scope: !1744)
!1749 = !DILocation(line: 349, column: 4, scope: !1744)
!1750 = !DILocation(line: 351, column: 22, scope: !1744)
!1751 = !DILocation(line: 351, column: 27, scope: !1744)
!1752 = !DILocation(line: 351, column: 32, scope: !1744)
!1753 = !DILocation(line: 351, column: 4, scope: !1744)
!1754 = !DILocation(line: 352, column: 7, scope: !1732)
!1755 = distinct !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignERcRKc", scope: !155, file: !154, line: 321, type: !158, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !157, retainedNodes: !1756)
!1756 = !{!1757, !1758}
!1757 = !DILocalVariable(name: "__c1", arg: 1, scope: !1755, file: !154, line: 321, type: !160)
!1758 = !DILocalVariable(name: "__c2", arg: 2, scope: !1755, file: !154, line: 321, type: !161)
!1759 = !DILocation(line: 321, column: 25, scope: !1755)
!1760 = !DILocation(line: 321, column: 48, scope: !1755)
!1761 = !DILocation(line: 322, column: 16, scope: !1755)
!1762 = !DILocation(line: 322, column: 9, scope: !1755)
!1763 = !DILocation(line: 322, column: 14, scope: !1755)
!1764 = !DILocation(line: 322, column: 22, scope: !1755)
!1765 = distinct !DISubprogram(name: "copy", linkageName: "_ZNSt11char_traitsIcE4copyEPcPKcm", scope: !155, file: !154, line: 387, type: !178, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !180, retainedNodes: !1766)
!1766 = !{!1767, !1768, !1769}
!1767 = !DILocalVariable(name: "__s1", arg: 1, scope: !1765, file: !154, line: 387, type: !152)
!1768 = !DILocalVariable(name: "__s2", arg: 2, scope: !1765, file: !154, line: 387, type: !170)
!1769 = !DILocalVariable(name: "__n", arg: 3, scope: !1765, file: !154, line: 387, type: !112)
!1770 = !DILocation(line: 387, column: 23, scope: !1765)
!1771 = !DILocation(line: 387, column: 46, scope: !1765)
!1772 = !DILocation(line: 387, column: 59, scope: !1765)
!1773 = !DILocation(line: 389, column: 6, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1765, file: !154, line: 389, column: 6)
!1775 = !DILocation(line: 389, column: 10, scope: !1774)
!1776 = !DILocation(line: 389, column: 6, scope: !1765)
!1777 = !DILocation(line: 390, column: 11, scope: !1774)
!1778 = !DILocation(line: 390, column: 4, scope: !1774)
!1779 = !DILocation(line: 395, column: 50, scope: !1765)
!1780 = !DILocation(line: 395, column: 56, scope: !1765)
!1781 = !DILocation(line: 395, column: 62, scope: !1765)
!1782 = !DILocation(line: 395, column: 33, scope: !1765)
!1783 = !DILocation(line: 395, column: 2, scope: !1765)
!1784 = !DILocation(line: 396, column: 7, scope: !1765)
!1785 = distinct !DISubprogram(name: "_M_is_local", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv", scope: !33, file: !32, line: 221, type: !1786, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1788, retainedNodes: !1789)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!13, !1661}
!1788 = !DISubprogram(name: "_M_is_local", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv", scope: !33, file: !32, line: 221, type: !1786, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1789 = !{!1790}
!1790 = !DILocalVariable(name: "this", arg: 1, scope: !1785, type: !1666, flags: DIFlagArtificial | DIFlagObjectPointer)
!1791 = !DILocation(line: 0, scope: !1785)
!1792 = !DILocation(line: 222, column: 16, scope: !1785)
!1793 = !DILocation(line: 222, column: 29, scope: !1785)
!1794 = !DILocation(line: 222, column: 26, scope: !1785)
!1795 = !DILocation(line: 222, column: 9, scope: !1785)
!1796 = distinct !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm", scope: !33, file: !32, line: 236, type: !1627, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1797, retainedNodes: !1798)
!1797 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm", scope: !33, file: !32, line: 236, type: !1627, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1798 = !{!1799, !1800}
!1799 = !DILocalVariable(name: "this", arg: 1, scope: !1796, type: !1303, flags: DIFlagArtificial | DIFlagObjectPointer)
!1800 = !DILocalVariable(name: "__size", arg: 2, scope: !1796, file: !32, line: 236, type: !92)
!1801 = !DILocation(line: 0, scope: !1796)
!1802 = !DILocation(line: 236, column: 28, scope: !1796)
!1803 = !DILocation(line: 237, column: 35, scope: !1796)
!1804 = !DILocation(line: 237, column: 55, scope: !1796)
!1805 = !DILocation(line: 237, column: 66, scope: !1796)
!1806 = !DILocation(line: 237, column: 73, scope: !1796)
!1807 = !DILocation(line: 237, column: 9, scope: !1796)
!1808 = !DILocation(line: 237, column: 79, scope: !1796)
!1809 = distinct !DISubprogram(name: "_M_local_data", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv", scope: !33, file: !32, line: 200, type: !1810, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1815, retainedNodes: !1816)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!1812, !1661}
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !33, file: !32, line: 93, baseType: !1813)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !95, file: !94, line: 58, baseType: !1814)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !99, file: !100, line: 419, baseType: !45)
!1815 = !DISubprogram(name: "_M_local_data", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv", scope: !33, file: !32, line: 200, type: !1810, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1816 = !{!1817}
!1817 = !DILocalVariable(name: "this", arg: 1, scope: !1809, type: !1666, flags: DIFlagArtificial | DIFlagObjectPointer)
!1818 = !DILocation(line: 0, scope: !1809)
!1819 = !DILocation(line: 203, column: 57, scope: !1809)
!1820 = !DILocation(line: 203, column: 56, scope: !1809)
!1821 = !DILocation(line: 203, column: 9, scope: !1809)
!1822 = !DILocation(line: 203, column: 2, scope: !1809)
!1823 = distinct !DISubprogram(name: "pointer_to", linkageName: "_ZNSt14pointer_traitsIPKcE10pointer_toERS0_", scope: !1824, file: !1449, line: 146, type: !1827, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1826, retainedNodes: !1838)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_traits<const char *>", scope: !2, file: !1449, line: 128, size: 8, flags: DIFlagTypePassByValue, elements: !1825, templateParams: !1836, identifier: "_ZTSSt14pointer_traitsIPKcE")
!1825 = !{!1826}
!1826 = !DISubprogram(name: "pointer_to", linkageName: "_ZNSt14pointer_traitsIPKcE10pointer_toERS0_", scope: !1824, file: !1449, line: 146, type: !1827, scopeLine: 146, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!1829, !1830}
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1824, file: !1449, line: 131, baseType: !45)
!1830 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__make_not_void<std::pointer_traits<const char *>::element_type>", scope: !2, file: !1449, line: 75, baseType: !1832)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1833, file: !1459, line: 2206, baseType: !46)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__undefined, const char>", scope: !2, file: !1459, line: 2205, size: 8, flags: DIFlagTypePassByValue, elements: !48, templateParams: !1834, identifier: "_ZTSSt11conditionalILb0ESt11__undefinedKcE")
!1834 = !{!1462, !1463, !1835}
!1835 = !DITemplateTypeParameter(name: "_Iffalse", type: !46)
!1836 = !{!1837}
!1837 = !DITemplateTypeParameter(name: "_Ptr", type: !45)
!1838 = !{!1839}
!1839 = !DILocalVariable(name: "__r", arg: 1, scope: !1823, file: !1449, line: 146, type: !1830)
!1840 = !DILocation(line: 146, column: 49, scope: !1823)
!1841 = !DILocation(line: 147, column: 31, scope: !1823)
!1842 = !DILocation(line: 147, column: 16, scope: !1823)
!1843 = !DILocation(line: 147, column: 9, scope: !1823)
!1844 = distinct !DISubprogram(name: "addressof<const char>", linkageName: "_ZSt9addressofIKcEPT_RS1_", scope: !2, file: !1475, line: 140, type: !1845, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1849, retainedNodes: !1847)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!45, !1350}
!1847 = !{!1848}
!1848 = !DILocalVariable(name: "__r", arg: 1, scope: !1844, file: !1475, line: 140, type: !1350)
!1849 = !{!1850}
!1850 = !DITemplateTypeParameter(name: "_Tp", type: !46)
!1851 = !DILocation(line: 140, column: 20, scope: !1844)
!1852 = !DILocation(line: 141, column: 31, scope: !1844)
!1853 = !DILocation(line: 141, column: 14, scope: !1844)
!1854 = !DILocation(line: 141, column: 7, scope: !1844)
!1855 = distinct !DISubprogram(name: "__addressof<const char>", linkageName: "_ZSt11__addressofIKcEPT_RS1_", scope: !2, file: !1475, line: 49, type: !1845, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1849, retainedNodes: !1856)
!1856 = !{!1857}
!1857 = !DILocalVariable(name: "__r", arg: 1, scope: !1855, file: !1475, line: 49, type: !1350)
!1858 = !DILocation(line: 49, column: 22, scope: !1855)
!1859 = !DILocation(line: 50, column: 34, scope: !1855)
!1860 = !DILocation(line: 50, column: 7, scope: !1855)
!1861 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm", scope: !99, file: !100, line: 491, type: !121, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !120, retainedNodes: !1862)
!1862 = !{!1863, !1864, !1865}
!1863 = !DILocalVariable(name: "__a", arg: 1, scope: !1861, file: !100, line: 491, type: !107)
!1864 = !DILocalVariable(name: "__p", arg: 2, scope: !1861, file: !100, line: 491, type: !105)
!1865 = !DILocalVariable(name: "__n", arg: 3, scope: !1861, file: !100, line: 491, type: !111)
!1866 = !DILocation(line: 491, column: 34, scope: !1861)
!1867 = !DILocation(line: 491, column: 47, scope: !1861)
!1868 = !DILocation(line: 491, column: 62, scope: !1861)
!1869 = !DILocation(line: 492, column: 9, scope: !1861)
!1870 = !DILocation(line: 492, column: 24, scope: !1861)
!1871 = !DILocation(line: 492, column: 29, scope: !1861)
!1872 = !DILocation(line: 492, column: 13, scope: !1861)
!1873 = !DILocation(line: 492, column: 35, scope: !1861)
!1874 = distinct !DISubprogram(name: "_M_get_allocator", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv", scope: !33, file: !32, line: 286, type: !1875, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1878, retainedNodes: !1879)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!1877, !1299}
!1877 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1386, size: 64)
!1878 = !DISubprogram(name: "_M_get_allocator", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv", scope: !33, file: !32, line: 286, type: !1875, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1879 = !{!1880}
!1880 = !DILocalVariable(name: "this", arg: 1, scope: !1874, type: !1303, flags: DIFlagArtificial | DIFlagObjectPointer)
!1881 = !DILocation(line: 0, scope: !1874)
!1882 = !DILocation(line: 287, column: 16, scope: !1874)
!1883 = !DILocation(line: 287, column: 9, scope: !1874)
!1884 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm", scope: !1326, file: !1325, line: 120, type: !1356, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1355, retainedNodes: !1885)
!1885 = !{!1886, !1887, !1888}
!1886 = !DILocalVariable(name: "this", arg: 1, scope: !1884, type: !1366, flags: DIFlagArtificial | DIFlagObjectPointer)
!1887 = !DILocalVariable(name: "__p", arg: 2, scope: !1884, file: !1325, line: 120, type: !106)
!1888 = !DILocalVariable(name: "__t", arg: 3, scope: !1884, file: !1325, line: 120, type: !1354)
!1889 = !DILocation(line: 0, scope: !1884)
!1890 = !DILocation(line: 120, column: 23, scope: !1884)
!1891 = !DILocation(line: 120, column: 38, scope: !1884)
!1892 = !DILocation(line: 133, column: 20, scope: !1884)
!1893 = !DILocation(line: 133, column: 2, scope: !1884)
!1894 = !DILocation(line: 138, column: 7, scope: !1884)
!1895 = distinct !DISubprogram(name: "_M_length", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm", scope: !33, file: !32, line: 182, type: !1627, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1896, retainedNodes: !1897)
!1896 = !DISubprogram(name: "_M_length", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm", scope: !33, file: !32, line: 182, type: !1627, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1897 = !{!1898, !1899}
!1898 = !DILocalVariable(name: "this", arg: 1, scope: !1895, type: !1303, flags: DIFlagArtificial | DIFlagObjectPointer)
!1899 = !DILocalVariable(name: "__length", arg: 2, scope: !1895, file: !32, line: 182, type: !92)
!1900 = !DILocation(line: 0, scope: !1895)
!1901 = !DILocation(line: 182, column: 27, scope: !1895)
!1902 = !DILocation(line: 183, column: 28, scope: !1895)
!1903 = !DILocation(line: 183, column: 9, scope: !1895)
!1904 = !DILocation(line: 183, column: 26, scope: !1895)
!1905 = !{!1624, !1207, i64 8}
!1906 = !DILocation(line: 183, column: 38, scope: !1895)
!1907 = distinct !DISubprogram(name: "~new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIcED2Ev", scope: !1326, file: !1325, line: 89, type: !1329, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1337, retainedNodes: !1908)
!1908 = !{!1909}
!1909 = !DILocalVariable(name: "this", arg: 1, scope: !1907, type: !1366, flags: DIFlagArtificial | DIFlagObjectPointer)
!1910 = !DILocation(line: 0, scope: !1907)
!1911 = !DILocation(line: 89, column: 48, scope: !1907)
!1912 = distinct !DISubprogram(name: "Update", linkageName: "_ZN14BulletinRWLock6UpdateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", scope: !209, file: !29, line: 30, type: !225, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !224, retainedNodes: !1913)
!1913 = !{!1914, !1915}
!1914 = !DILocalVariable(name: "this", arg: 1, scope: !1912, type: !208, flags: DIFlagArtificial | DIFlagObjectPointer)
!1915 = !DILocalVariable(name: "message", arg: 2, scope: !1912, file: !29, line: 30, type: !227)
!1916 = !DILocation(line: 0, scope: !1912)
!1917 = !DILocation(line: 30, column: 33, scope: !1912)
!1918 = !DILocation(line: 31, column: 28, scope: !1912)
!1919 = !DILocation(line: 31, column: 5, scope: !1912)
!1920 = !DILocation(line: 32, column: 5, scope: !1912)
!1921 = !DILocation(line: 32, column: 14, scope: !1912)
!1922 = !DILocation(line: 33, column: 28, scope: !1912)
!1923 = !DILocation(line: 33, column: 5, scope: !1912)
!1924 = !DILocation(line: 34, column: 3, scope: !1912)
!1925 = distinct !DISubprogram(name: "~basic_string", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev", scope: !33, file: !32, line: 657, type: !1672, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1926, retainedNodes: !1927)
!1926 = !DISubprogram(name: "~basic_string", scope: !33, file: !32, line: 657, type: !1672, scopeLine: 657, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1927 = !{!1928}
!1928 = !DILocalVariable(name: "this", arg: 1, scope: !1925, type: !1303, flags: DIFlagArtificial | DIFlagObjectPointer)
!1929 = !DILocation(line: 0, scope: !1925)
!1930 = !DILocation(line: 658, column: 9, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1925, file: !32, line: 658, column: 7)
!1932 = !DILocation(line: 658, column: 23, scope: !1931)
!1933 = !DILocation(line: 658, column: 23, scope: !1925)
!1934 = distinct !DISubprogram(name: "operator=", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_", scope: !33, file: !32, line: 665, type: !1935, scopeLine: 666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1939, retainedNodes: !1940)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!1937, !1299, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !33, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1662, size: 64)
!1939 = !DISubprogram(name: "operator=", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_", scope: !33, file: !32, line: 665, type: !1935, scopeLine: 665, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1940 = !{!1941, !1942}
!1941 = !DILocalVariable(name: "this", arg: 1, scope: !1934, type: !1303, flags: DIFlagArtificial | DIFlagObjectPointer)
!1942 = !DILocalVariable(name: "__str", arg: 2, scope: !1934, file: !32, line: 665, type: !1938)
!1943 = !DILocation(line: 0, scope: !1934)
!1944 = !DILocation(line: 665, column: 37, scope: !1934)
!1945 = !DILocation(line: 667, column: 22, scope: !1934)
!1946 = !DILocation(line: 667, column: 15, scope: !1934)
!1947 = !DILocation(line: 667, column: 2, scope: !1934)
!1948 = distinct !DISubprogram(name: "assign", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_", scope: !33, file: !32, line: 1335, type: !1935, scopeLine: 1336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1949, retainedNodes: !1950)
!1949 = !DISubprogram(name: "assign", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_", scope: !33, file: !32, line: 1335, type: !1935, scopeLine: 1335, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1950 = !{!1951, !1952}
!1951 = !DILocalVariable(name: "this", arg: 1, scope: !1948, type: !1303, flags: DIFlagArtificial | DIFlagObjectPointer)
!1952 = !DILocalVariable(name: "__str", arg: 2, scope: !1948, file: !32, line: 1335, type: !1938)
!1953 = !DILocation(line: 0, scope: !1948)
!1954 = !DILocation(line: 1335, column: 34, scope: !1948)
!1955 = !DILocation(line: 1366, column: 18, scope: !1948)
!1956 = !DILocation(line: 1366, column: 8, scope: !1948)
!1957 = !DILocation(line: 1367, column: 2, scope: !1948)
!1958 = distinct !DISubprogram(name: "Read", linkageName: "_ZN14BulletinRWLock4ReadB5cxx11Ev", scope: !209, file: !29, line: 23, type: !222, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !221, retainedNodes: !1959)
!1959 = !{!1960, !1961}
!1960 = !DILocalVariable(name: "this", arg: 1, scope: !1958, type: !208, flags: DIFlagArtificial | DIFlagObjectPointer)
!1961 = !DILocalVariable(name: "msg", scope: !1958, file: !29, line: 25, type: !214)
!1962 = !DILocation(line: 0, scope: !1958)
!1963 = !DILocation(line: 24, column: 28, scope: !1958)
!1964 = !DILocation(line: 24, column: 5, scope: !1958)
!1965 = !DILocation(line: 25, column: 5, scope: !1958)
!1966 = !DILocation(line: 25, column: 17, scope: !1958)
!1967 = !DILocation(line: 25, column: 23, scope: !1958)
!1968 = !DILocation(line: 26, column: 28, scope: !1958)
!1969 = !DILocation(line: 26, column: 5, scope: !1958)
!1970 = !DILocation(line: 27, column: 5, scope: !1958)
!1971 = !DILocation(line: 28, column: 3, scope: !1958)
!1972 = distinct !DISubprogram(name: "operator<<<char, std::char_traits<char>, std::allocator<char> >", linkageName: "_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE", scope: !2, file: !32, line: 6458, type: !1973, scopeLine: 6460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1981, retainedNodes: !1978)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!1975, !1975, !1938}
!1975 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1976, size: 64)
!1976 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::char_traits<char> >", scope: !2, file: !1977, line: 359, flags: DIFlagFwdDecl)
!1977 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/ostream.tcc", directory: "")
!1978 = !{!1979, !1980}
!1979 = !DILocalVariable(name: "__os", arg: 1, scope: !1972, file: !32, line: 6458, type: !1975)
!1980 = !DILocalVariable(name: "__str", arg: 2, scope: !1972, file: !32, line: 6459, type: !1938)
!1981 = !{!203, !1982, !133}
!1982 = !DITemplateTypeParameter(name: "_Traits", type: !155)
!1983 = !DILocation(line: 6458, column: 48, scope: !1972)
!1984 = !DILocation(line: 6459, column: 54, scope: !1972)
!1985 = !DILocation(line: 6463, column: 31, scope: !1972)
!1986 = !DILocation(line: 6463, column: 37, scope: !1972)
!1987 = !DILocation(line: 6463, column: 43, scope: !1972)
!1988 = !DILocation(line: 6463, column: 51, scope: !1972)
!1989 = !DILocation(line: 6463, column: 57, scope: !1972)
!1990 = !DILocation(line: 6463, column: 14, scope: !1972)
!1991 = !DILocation(line: 6463, column: 7, scope: !1972)
!1992 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZNSolsEPFRSoS_E", scope: !1976, file: !1993, line: 108, type: !1994, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !2002, retainedNodes: !2003)
!1993 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/ostream", directory: "")
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!1996, !1998, !1999}
!1996 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ostream_type", scope: !1976, file: !1993, line: 71, baseType: !1976)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!1996, !1996}
!2002 = !DISubprogram(name: "operator<<", linkageName: "_ZNSolsEPFRSoS_E", scope: !1976, file: !1993, line: 108, type: !1994, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2003 = !{!2004, !2006}
!2004 = !DILocalVariable(name: "this", arg: 1, scope: !1992, type: !2005, flags: DIFlagArtificial | DIFlagObjectPointer)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!2006 = !DILocalVariable(name: "__pf", arg: 2, scope: !1992, file: !1993, line: 108, type: !1999)
!2007 = !DILocation(line: 0, scope: !1992)
!2008 = !DILocation(line: 108, column: 36, scope: !1992)
!2009 = !DILocation(line: 113, column: 9, scope: !1992)
!2010 = !DILocation(line: 113, column: 2, scope: !1992)
!2011 = distinct !DISubprogram(name: "endl<char, std::char_traits<char> >", linkageName: "_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_", scope: !2, file: !1993, line: 681, type: !2012, scopeLine: 682, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !2016, retainedNodes: !2014)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!1975, !1975}
!2014 = !{!2015}
!2015 = !DILocalVariable(name: "__os", arg: 1, scope: !2011, file: !1993, line: 681, type: !1975)
!2016 = !{!203, !1982}
!2017 = !DILocation(line: 681, column: 42, scope: !2011)
!2018 = !DILocation(line: 682, column: 20, scope: !2011)
!2019 = !DILocation(line: 682, column: 29, scope: !2011)
!2020 = !{!2021, !2021, i64 0}
!2021 = !{!"vtable pointer", !1187, i64 0}
!2022 = !DILocation(line: 682, column: 34, scope: !2011)
!2023 = !DILocation(line: 682, column: 25, scope: !2011)
!2024 = !DILocation(line: 682, column: 14, scope: !2011)
!2025 = !DILocation(line: 682, column: 7, scope: !2011)
!2026 = distinct !DISubprogram(name: "basic_string", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_", scope: !33, file: !32, line: 448, type: !2027, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !2029, retainedNodes: !2030)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{null, !1299, !1938}
!2029 = !DISubprogram(name: "basic_string", scope: !33, file: !32, line: 448, type: !2027, scopeLine: 448, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2030 = !{!2031, !2032}
!2031 = !DILocalVariable(name: "this", arg: 1, scope: !2026, type: !1303, flags: DIFlagArtificial | DIFlagObjectPointer)
!2032 = !DILocalVariable(name: "__str", arg: 2, scope: !2026, file: !32, line: 448, type: !1938)
!2033 = !DILocation(line: 0, scope: !2026)
!2034 = !DILocation(line: 448, column: 40, scope: !2026)
!2035 = !DILocation(line: 449, column: 9, scope: !2026)
!2036 = !DILocation(line: 449, column: 21, scope: !2026)
!2037 = !DILocation(line: 450, column: 7, scope: !2026)
!2038 = !DILocation(line: 450, column: 40, scope: !2026)
!2039 = !DILocation(line: 450, column: 46, scope: !2026)
!2040 = !DILocation(line: 451, column: 22, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2026, file: !32, line: 451, column: 7)
!2042 = !DILocation(line: 451, column: 28, scope: !2041)
!2043 = !DILocation(line: 451, column: 39, scope: !2041)
!2044 = !DILocation(line: 451, column: 45, scope: !2041)
!2045 = !DILocation(line: 451, column: 57, scope: !2041)
!2046 = !DILocation(line: 451, column: 63, scope: !2041)
!2047 = !DILocation(line: 451, column: 55, scope: !2041)
!2048 = !DILocation(line: 451, column: 9, scope: !2041)
!2049 = !DILocation(line: 451, column: 74, scope: !2026)
!2050 = !DILocation(line: 451, column: 74, scope: !2041)
!2051 = distinct !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_", scope: !95, file: !94, line: 97, type: !135, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !134, retainedNodes: !2052)
!2052 = !{!2053}
!2053 = !DILocalVariable(name: "__a", arg: 1, scope: !2051, file: !94, line: 97, type: !137)
!2054 = !DILocation(line: 97, column: 61, scope: !2051)
!2055 = !DILocation(line: 98, column: 64, scope: !2051)
!2056 = !DILocation(line: 98, column: 14, scope: !2051)
!2057 = !DILocation(line: 98, column: 7, scope: !2051)
!2058 = distinct !DISubprogram(name: "_M_get_allocator", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv", scope: !33, file: !32, line: 290, type: !2059, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !2063, retainedNodes: !2064)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!2061, !1661}
!2061 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2062, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1386)
!2063 = !DISubprogram(name: "_M_get_allocator", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv", scope: !33, file: !32, line: 290, type: !2059, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2064 = !{!2065}
!2065 = !DILocalVariable(name: "this", arg: 1, scope: !2058, type: !1666, flags: DIFlagArtificial | DIFlagObjectPointer)
!2066 = !DILocation(line: 0, scope: !2058)
!2067 = !DILocation(line: 291, column: 16, scope: !2058)
!2068 = !DILocation(line: 291, column: 9, scope: !2058)
!2069 = distinct !DISubprogram(name: "_Alloc_hider", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcOS3_", scope: !1383, file: !32, line: 159, type: !1397, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1396, retainedNodes: !2070)
!2070 = !{!2071, !2072, !2073}
!2071 = !DILocalVariable(name: "this", arg: 1, scope: !2069, type: !1402, flags: DIFlagArtificial | DIFlagObjectPointer)
!2072 = !DILocalVariable(name: "__dat", arg: 2, scope: !2069, file: !32, line: 159, type: !1372)
!2073 = !DILocalVariable(name: "__a", arg: 3, scope: !2069, file: !32, line: 159, type: !1399)
!2074 = !DILocation(line: 0, scope: !2069)
!2075 = !DILocation(line: 159, column: 23, scope: !2069)
!2076 = !DILocation(line: 159, column: 39, scope: !2069)
!2077 = !DILocation(line: 160, column: 48, scope: !2069)
!2078 = !DILocation(line: 160, column: 29, scope: !2069)
!2079 = !DILocation(line: 160, column: 19, scope: !2069)
!2080 = !DILocation(line: 160, column: 4, scope: !2069)
!2081 = !DILocation(line: 160, column: 36, scope: !2069)
!2082 = !DILocation(line: 160, column: 41, scope: !2069)
!2083 = !DILocation(line: 160, column: 50, scope: !2069)
!2084 = distinct !DISubprogram(name: "_M_construct<char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_", scope: !33, file: !32, line: 263, type: !2085, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !2088, declaration: !2087, retainedNodes: !2090)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{null, !1299, !106, !106}
!2087 = !DISubprogram(name: "_M_construct<char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_", scope: !33, file: !32, line: 263, type: !2085, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !2088)
!2088 = !{!2089}
!2089 = !DITemplateTypeParameter(name: "_InIterator", type: !106)
!2090 = !{!2091, !2092, !2093}
!2091 = !DILocalVariable(name: "this", arg: 1, scope: !2084, type: !1303, flags: DIFlagArtificial | DIFlagObjectPointer)
!2092 = !DILocalVariable(name: "__beg", arg: 2, scope: !2084, file: !32, line: 263, type: !106)
!2093 = !DILocalVariable(name: "__end", arg: 3, scope: !2084, file: !32, line: 263, type: !106)
!2094 = !DILocation(line: 0, scope: !2084)
!2095 = !DILocation(line: 263, column: 34, scope: !2084)
!2096 = !DILocation(line: 263, column: 53, scope: !2084)
!2097 = !DILocation(line: 266, column: 21, scope: !2084)
!2098 = !DILocation(line: 266, column: 28, scope: !2084)
!2099 = !DILocation(line: 266, column: 4, scope: !2084)
!2100 = !DILocation(line: 267, column: 9, scope: !2084)
!2101 = distinct !DISubprogram(name: "length", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv", scope: !33, file: !32, line: 907, type: !2102, scopeLine: 908, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !2104, retainedNodes: !2105)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!92, !1661}
!2104 = !DISubprogram(name: "length", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv", scope: !33, file: !32, line: 907, type: !2102, scopeLine: 907, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2105 = !{!2106}
!2106 = !DILocalVariable(name: "this", arg: 1, scope: !2101, type: !1666, flags: DIFlagArtificial | DIFlagObjectPointer)
!2107 = !DILocation(line: 0, scope: !2101)
!2108 = !DILocation(line: 908, column: 16, scope: !2101)
!2109 = !DILocation(line: 908, column: 9, scope: !2101)
!2110 = distinct !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_", scope: !99, file: !100, line: 558, type: !130, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !129, retainedNodes: !2111)
!2111 = !{!2112}
!2112 = !DILocalVariable(name: "__rhs", arg: 1, scope: !2110, file: !100, line: 558, type: !127)
!2113 = !DILocation(line: 558, column: 67, scope: !2110)
!2114 = !DILocation(line: 559, column: 16, scope: !2110)
!2115 = !DILocation(line: 559, column: 9, scope: !2110)
!2116 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSaIcEC2ERKS_", scope: !109, file: !110, line: 147, type: !2117, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !2119, retainedNodes: !2120)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null, !1287, !137}
!2119 = !DISubprogram(name: "allocator", scope: !109, file: !110, line: 147, type: !2117, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2120 = !{!2121, !2122}
!2121 = !DILocalVariable(name: "this", arg: 1, scope: !2116, type: !1291, flags: DIFlagArtificial | DIFlagObjectPointer)
!2122 = !DILocalVariable(name: "__a", arg: 2, scope: !2116, file: !110, line: 147, type: !137)
!2123 = !DILocation(line: 0, scope: !2116)
!2124 = !DILocation(line: 147, column: 34, scope: !2116)
!2125 = !DILocation(line: 148, column: 36, scope: !2116)
!2126 = !DILocation(line: 148, column: 31, scope: !2116)
!2127 = !DILocation(line: 148, column: 9, scope: !2116)
!2128 = !DILocation(line: 148, column: 38, scope: !2116)
!2129 = distinct !DISubprogram(name: "move<std::allocator<char> &>", linkageName: "_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_", scope: !2, file: !1475, line: 101, type: !2130, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !2135, retainedNodes: !2137)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!2132, !142}
!2132 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2134, file: !1459, line: 1598, baseType: !109)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::allocator<char> &>", scope: !2, file: !1459, line: 1597, size: 8, flags: DIFlagTypePassByValue, elements: !48, templateParams: !2135, identifier: "_ZTSSt16remove_referenceIRSaIcEE")
!2135 = !{!2136}
!2136 = !DITemplateTypeParameter(name: "_Tp", type: !142)
!2137 = !{!2138}
!2138 = !DILocalVariable(name: "__t", arg: 1, scope: !2129, file: !1475, line: 101, type: !142)
!2139 = !DILocation(line: 101, column: 16, scope: !2129)
!2140 = !DILocation(line: 102, column: 71, scope: !2129)
!2141 = !DILocation(line: 102, column: 7, scope: !2129)
!2142 = distinct !DISubprogram(name: "_M_construct_aux<char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type", scope: !33, file: !32, line: 243, type: !2143, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !2088, declaration: !2145, retainedNodes: !2146)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{null, !1299, !106, !106, !1500}
!2145 = !DISubprogram(name: "_M_construct_aux<char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type", scope: !33, file: !32, line: 243, type: !2143, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !2088)
!2146 = !{!2147, !2148, !2149, !2150}
!2147 = !DILocalVariable(name: "this", arg: 1, scope: !2142, type: !1303, flags: DIFlagArtificial | DIFlagObjectPointer)
!2148 = !DILocalVariable(name: "__beg", arg: 2, scope: !2142, file: !32, line: 243, type: !106)
!2149 = !DILocalVariable(name: "__end", arg: 3, scope: !2142, file: !32, line: 243, type: !106)
!2150 = !DILocalVariable(arg: 4, scope: !2142, file: !32, line: 244, type: !1500)
!2151 = !DILocation(line: 0, scope: !2142)
!2152 = !DILocation(line: 243, column: 38, scope: !2142)
!2153 = !DILocation(line: 243, column: 57, scope: !2142)
!2154 = !DILocation(line: 244, column: 22, scope: !2142)
!2155 = !DILocation(line: 247, column: 24, scope: !2142)
!2156 = !DILocation(line: 247, column: 31, scope: !2142)
!2157 = !DILocation(line: 247, column: 38, scope: !2142)
!2158 = !DILocation(line: 247, column: 11, scope: !2142)
!2159 = !DILocation(line: 248, column: 2, scope: !2142)
!2160 = distinct !DISubprogram(name: "_M_construct<char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag", scope: !33, file: !34, line: 207, type: !2161, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !2164, declaration: !2163, retainedNodes: !2166)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{null, !1299, !106, !106, !1520}
!2163 = !DISubprogram(name: "_M_construct<char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag", scope: !33, file: !32, line: 279, type: !2161, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !2164)
!2164 = !{!2165}
!2165 = !DITemplateTypeParameter(name: "_FwdIterator", type: !106)
!2166 = !{!2167, !2168, !2169, !2170, !2171}
!2167 = !DILocalVariable(name: "this", arg: 1, scope: !2160, type: !1303, flags: DIFlagArtificial | DIFlagObjectPointer)
!2168 = !DILocalVariable(name: "__beg", arg: 2, scope: !2160, file: !32, line: 279, type: !106)
!2169 = !DILocalVariable(name: "__end", arg: 3, scope: !2160, file: !32, line: 279, type: !106)
!2170 = !DILocalVariable(arg: 4, scope: !2160, file: !32, line: 280, type: !1520)
!2171 = !DILocalVariable(name: "__dnew", scope: !2160, file: !34, line: 215, type: !92)
!2172 = !DILocation(line: 0, scope: !2160)
!2173 = !DILocation(line: 279, column: 35, scope: !2160)
!2174 = !DILocation(line: 279, column: 55, scope: !2160)
!2175 = !DILocation(line: 280, column: 33, scope: !2160)
!2176 = !DILocation(line: 211, column: 35, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2160, file: !34, line: 211, column: 6)
!2178 = !DILocation(line: 211, column: 6, scope: !2177)
!2179 = !DILocation(line: 211, column: 42, scope: !2177)
!2180 = !DILocation(line: 211, column: 45, scope: !2177)
!2181 = !DILocation(line: 211, column: 54, scope: !2177)
!2182 = !DILocation(line: 211, column: 51, scope: !2177)
!2183 = !DILocation(line: 211, column: 6, scope: !2160)
!2184 = !DILocation(line: 212, column: 4, scope: !2177)
!2185 = !DILocation(line: 215, column: 2, scope: !2160)
!2186 = !DILocation(line: 215, column: 12, scope: !2160)
!2187 = !DILocation(line: 215, column: 58, scope: !2160)
!2188 = !DILocation(line: 215, column: 65, scope: !2160)
!2189 = !DILocation(line: 215, column: 44, scope: !2160)
!2190 = !DILocation(line: 217, column: 6, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2160, file: !34, line: 217, column: 6)
!2192 = !DILocation(line: 217, column: 13, scope: !2191)
!2193 = !DILocation(line: 217, column: 6, scope: !2160)
!2194 = !DILocation(line: 219, column: 14, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2191, file: !34, line: 218, column: 4)
!2196 = !DILocation(line: 219, column: 6, scope: !2195)
!2197 = !DILocation(line: 220, column: 18, scope: !2195)
!2198 = !DILocation(line: 220, column: 6, scope: !2195)
!2199 = !DILocation(line: 221, column: 4, scope: !2195)
!2200 = !DILocation(line: 225, column: 26, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2160, file: !34, line: 225, column: 4)
!2202 = !DILocation(line: 225, column: 37, scope: !2201)
!2203 = !DILocation(line: 225, column: 44, scope: !2201)
!2204 = !DILocation(line: 225, column: 6, scope: !2201)
!2205 = !DILocation(line: 225, column: 52, scope: !2201)
!2206 = !DILocation(line: 233, column: 7, scope: !2201)
!2207 = !DILocation(line: 228, column: 6, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2160, file: !34, line: 227, column: 4)
!2209 = !DILocation(line: 229, column: 6, scope: !2208)
!2210 = !DILocation(line: 233, column: 7, scope: !2208)
!2211 = !DILocation(line: 230, column: 4, scope: !2208)
!2212 = !DILocation(line: 233, column: 7, scope: !2160)
!2213 = !DILocation(line: 232, column: 16, scope: !2160)
!2214 = !DILocation(line: 232, column: 2, scope: !2160)
!2215 = distinct !DISubprogram(name: "__is_null_pointer<char>", linkageName: "_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_", scope: !96, file: !1578, line: 152, type: !2216, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !2220, retainedNodes: !2218)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!13, !106}
!2218 = !{!2219}
!2219 = !DILocalVariable(name: "__ptr", arg: 1, scope: !2215, file: !1578, line: 152, type: !106)
!2220 = !{!2221}
!2221 = !DITemplateTypeParameter(name: "_Type", type: !47)
!2222 = !DILocation(line: 152, column: 30, scope: !2215)
!2223 = !DILocation(line: 153, column: 14, scope: !2215)
!2224 = !DILocation(line: 153, column: 20, scope: !2215)
!2225 = !DILocation(line: 153, column: 7, scope: !2215)
!2226 = distinct !DISubprogram(name: "distance<char *>", linkageName: "_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_", scope: !2, file: !1590, line: 138, type: !2227, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !2236, retainedNodes: !2233)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!2229, !106, !106}
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !2230, file: !1521, line: 214, baseType: !1597)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<char *>", scope: !2, file: !1521, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !48, templateParams: !2231, identifier: "_ZTSSt15iterator_traitsIPcE")
!2231 = !{!2232}
!2232 = !DITemplateTypeParameter(name: "_Iterator", type: !106)
!2233 = !{!2234, !2235}
!2234 = !DILocalVariable(name: "__first", arg: 1, scope: !2226, file: !1590, line: 138, type: !106)
!2235 = !DILocalVariable(name: "__last", arg: 2, scope: !2226, file: !1590, line: 138, type: !106)
!2236 = !{!2237}
!2237 = !DITemplateTypeParameter(name: "_InputIterator", type: !106)
!2238 = !DILocation(line: 138, column: 29, scope: !2226)
!2239 = !DILocation(line: 138, column: 53, scope: !2226)
!2240 = !DILocation(line: 141, column: 30, scope: !2226)
!2241 = !DILocation(line: 141, column: 39, scope: !2226)
!2242 = !DILocation(line: 142, column: 9, scope: !2226)
!2243 = !DILocation(line: 141, column: 14, scope: !2226)
!2244 = !DILocation(line: 141, column: 7, scope: !2226)
!2245 = distinct !DISubprogram(name: "_S_copy_chars", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_", scope: !33, file: !32, line: 392, type: !2246, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !2248, retainedNodes: !2249)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{null, !106, !106, !106}
!2248 = !DISubprogram(name: "_S_copy_chars", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_", scope: !33, file: !32, line: 392, type: !2246, scopeLine: 392, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!2249 = !{!2250, !2251, !2252}
!2250 = !DILocalVariable(name: "__p", arg: 1, scope: !2245, file: !32, line: 392, type: !106)
!2251 = !DILocalVariable(name: "__k1", arg: 2, scope: !2245, file: !32, line: 392, type: !106)
!2252 = !DILocalVariable(name: "__k2", arg: 3, scope: !2245, file: !32, line: 392, type: !106)
!2253 = !DILocation(line: 392, column: 29, scope: !2245)
!2254 = !DILocation(line: 392, column: 42, scope: !2245)
!2255 = !DILocation(line: 392, column: 56, scope: !2245)
!2256 = !DILocation(line: 393, column: 17, scope: !2245)
!2257 = !DILocation(line: 393, column: 22, scope: !2245)
!2258 = !DILocation(line: 393, column: 28, scope: !2245)
!2259 = !DILocation(line: 393, column: 35, scope: !2245)
!2260 = !DILocation(line: 393, column: 33, scope: !2245)
!2261 = !DILocation(line: 393, column: 9, scope: !2245)
!2262 = !DILocation(line: 393, column: 42, scope: !2245)
!2263 = distinct !DISubprogram(name: "__distance<char *>", linkageName: "_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag", scope: !2, file: !1590, line: 98, type: !2264, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !2270, retainedNodes: !2266)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!2229, !106, !106, !1701}
!2266 = !{!2267, !2268, !2269}
!2267 = !DILocalVariable(name: "__first", arg: 1, scope: !2263, file: !1590, line: 98, type: !106)
!2268 = !DILocalVariable(name: "__last", arg: 2, scope: !2263, file: !1590, line: 98, type: !106)
!2269 = !DILocalVariable(arg: 3, scope: !2263, file: !1590, line: 99, type: !1701)
!2270 = !{!2271}
!2271 = !DITemplateTypeParameter(name: "_RandomAccessIterator", type: !106)
!2272 = !DILocation(line: 98, column: 38, scope: !2263)
!2273 = !DILocation(line: 98, column: 69, scope: !2263)
!2274 = !DILocation(line: 99, column: 42, scope: !2263)
!2275 = !DILocation(line: 104, column: 14, scope: !2263)
!2276 = !DILocation(line: 104, column: 23, scope: !2263)
!2277 = !DILocation(line: 104, column: 21, scope: !2263)
!2278 = !DILocation(line: 104, column: 7, scope: !2263)
!2279 = distinct !DISubprogram(name: "__iterator_category<char *>", linkageName: "_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_", scope: !2, file: !1521, line: 238, type: !2280, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !2287, retainedNodes: !2285)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!2282, !2283}
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_category", scope: !2230, file: !1521, line: 212, baseType: !1701)
!2283 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!2285 = !{!2286}
!2286 = !DILocalVariable(arg: 1, scope: !2279, file: !1521, line: 238, type: !2283)
!2287 = !{!2288}
!2288 = !DITemplateTypeParameter(name: "_Iter", type: !106)
!2289 = !DILocation(line: 238, column: 37, scope: !2279)
!2290 = !DILocation(line: 239, column: 7, scope: !2279)
!2291 = distinct !DISubprogram(name: "data", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv", scope: !33, file: !32, line: 2311, type: !2292, scopeLine: 2312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !2294, retainedNodes: !2295)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!45, !1661}
!2294 = !DISubprogram(name: "data", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv", scope: !33, file: !32, line: 2311, type: !2292, scopeLine: 2311, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2295 = !{!2296}
!2296 = !DILocalVariable(name: "this", arg: 1, scope: !2291, type: !1666, flags: DIFlagArtificial | DIFlagObjectPointer)
!2297 = !DILocation(line: 0, scope: !2291)
!2298 = !DILocation(line: 2312, column: 16, scope: !2291)
!2299 = !DILocation(line: 2312, column: 9, scope: !2291)
!2300 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv", scope: !33, file: !32, line: 901, type: !2102, scopeLine: 902, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !2301, retainedNodes: !2302)
!2301 = !DISubprogram(name: "size", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv", scope: !33, file: !32, line: 901, type: !2102, scopeLine: 901, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2302 = !{!2303}
!2303 = !DILocalVariable(name: "this", arg: 1, scope: !2300, type: !1666, flags: DIFlagArtificial | DIFlagObjectPointer)
!2304 = !DILocation(line: 0, scope: !2300)
!2305 = !DILocation(line: 902, column: 16, scope: !2300)
!2306 = !DILocation(line: 902, column: 9, scope: !2300)
!2307 = distinct !DISubprogram(name: "flush<char, std::char_traits<char> >", linkageName: "_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_", scope: !2, file: !1993, line: 703, type: !2012, scopeLine: 704, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !2016, retainedNodes: !2308)
!2308 = !{!2309}
!2309 = !DILocalVariable(name: "__os", arg: 1, scope: !2307, file: !1993, line: 703, type: !1975)
!2310 = !DILocation(line: 703, column: 43, scope: !2307)
!2311 = !DILocation(line: 704, column: 14, scope: !2307)
!2312 = !DILocation(line: 704, column: 19, scope: !2307)
!2313 = !DILocation(line: 704, column: 7, scope: !2307)
!2314 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc", scope: !2316, file: !2315, line: 449, type: !2318, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !2323, retainedNodes: !2324)
!2315 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/basic_ios.h", directory: "")
!2316 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ios<char, std::char_traits<char> >", scope: !2, file: !2317, line: 178, flags: DIFlagFwdDecl)
!2317 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/basic_ios.tcc", directory: "")
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!2320, !2321, !47}
!2320 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !2316, file: !2315, line: 76, baseType: !47)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2316)
!2323 = !DISubprogram(name: "widen", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc", scope: !2316, file: !2315, line: 449, type: !2318, scopeLine: 449, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2324 = !{!2325, !2327}
!2325 = !DILocalVariable(name: "this", arg: 1, scope: !2314, type: !2326, flags: DIFlagArtificial | DIFlagObjectPointer)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2327 = !DILocalVariable(name: "__c", arg: 2, scope: !2314, file: !2315, line: 449, type: !47)
!2328 = !DILocation(line: 0, scope: !2314)
!2329 = !DILocation(line: 449, column: 18, scope: !2314)
!2330 = !DILocation(line: 450, column: 30, scope: !2314)
!2331 = !{!2332, !1215, i64 240}
!2332 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !1215, i64 216, !1186, i64 224, !2333, i64 225, !1215, i64 232, !1215, i64 240, !1215, i64 248, !1215, i64 256}
!2333 = !{!"bool", !1186, i64 0}
!2334 = !DILocation(line: 450, column: 16, scope: !2314)
!2335 = !DILocation(line: 450, column: 46, scope: !2314)
!2336 = !DILocation(line: 450, column: 40, scope: !2314)
!2337 = !DILocation(line: 450, column: 9, scope: !2314)
!2338 = distinct !DISubprogram(name: "__check_facet<std::ctype<char> >", linkageName: "_ZSt13__check_facetISt5ctypeIcEERKT_PS3_", scope: !2, file: !2315, line: 47, type: !2339, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !2348, retainedNodes: !2346)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!2341, !2345}
!2341 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2343)
!2343 = !DICompositeType(tag: DW_TAG_class_type, name: "ctype<char>", scope: !2, file: !2344, line: 681, flags: DIFlagFwdDecl, identifier: "_ZTSSt5ctypeIcE")
!2344 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/locale_facets.h", directory: "")
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2346 = !{!2347}
!2347 = !DILocalVariable(name: "__f", arg: 1, scope: !2338, file: !2315, line: 47, type: !2345)
!2348 = !{!2349}
!2349 = !DITemplateTypeParameter(name: "_Facet", type: !2343)
!2350 = !DILocation(line: 47, column: 33, scope: !2338)
!2351 = !DILocation(line: 49, column: 12, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2338, file: !2315, line: 49, column: 11)
!2353 = !DILocation(line: 49, column: 11, scope: !2338)
!2354 = !DILocation(line: 50, column: 2, scope: !2352)
!2355 = !DILocation(line: 51, column: 15, scope: !2338)
!2356 = !DILocation(line: 51, column: 7, scope: !2338)
!2357 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt5ctypeIcE5widenEc", scope: !2343, file: !2344, line: 872, type: !2358, scopeLine: 873, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !2362, retainedNodes: !2363)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!2360, !2361, !47}
!2360 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !2343, file: !2344, line: 686, baseType: !47)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2362 = !DISubprogram(name: "widen", linkageName: "_ZNKSt5ctypeIcE5widenEc", scope: !2343, file: !2344, line: 872, type: !2358, scopeLine: 872, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2363 = !{!2364, !2365}
!2364 = !DILocalVariable(name: "this", arg: 1, scope: !2357, type: !2345, flags: DIFlagArtificial | DIFlagObjectPointer)
!2365 = !DILocalVariable(name: "__c", arg: 2, scope: !2357, file: !2344, line: 872, type: !47)
!2366 = !DILocation(line: 0, scope: !2357)
!2367 = !DILocation(line: 872, column: 18, scope: !2357)
!2368 = !DILocation(line: 874, column: 6, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2357, file: !2344, line: 874, column: 6)
!2370 = !{!2371, !1186, i64 56}
!2371 = !{!"_ZTSSt5ctypeIcE", !1215, i64 16, !2333, i64 24, !1215, i64 32, !1215, i64 40, !1215, i64 48, !1186, i64 56, !1186, i64 57, !1186, i64 313, !1186, i64 569}
!2372 = !DILocation(line: 874, column: 6, scope: !2357)
!2373 = !DILocation(line: 875, column: 11, scope: !2369)
!2374 = !DILocation(line: 875, column: 47, scope: !2369)
!2375 = !DILocation(line: 875, column: 4, scope: !2369)
!2376 = !DILocation(line: 876, column: 8, scope: !2357)
!2377 = !DILocation(line: 877, column: 24, scope: !2357)
!2378 = !DILocation(line: 877, column: 15, scope: !2357)
!2379 = !DILocation(line: 877, column: 2, scope: !2357)
!2380 = !DILocation(line: 878, column: 7, scope: !2357)
!2381 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_pthread_rwlock_no.cpp", scope: !29, file: !29, type: !2382, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !48)
!2382 = !DISubroutineType(types: !48)
!2383 = !DILocation(line: 0, scope: !2381)
