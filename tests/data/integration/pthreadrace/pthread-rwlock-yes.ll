; ModuleID = 'integration/pthreadrace/pthread-rwlock-yes.cpp'
source_filename = "integration/pthreadrace/pthread-rwlock-yes.cpp"
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
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_pthread_rwlock_yes.cpp, i8* null }]

; Function Attrs: norecurse uwtable
define dso_local i32 @main() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1163 {
entry:
  %bulletin = alloca %class.BulletinRWLock, align 8
  %rc = alloca i32, align 4
  %res = alloca i8*, align 8
  %thr_editor = alloca i64, align 8
  %thr_reader = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %0 = bitcast %class.BulletinRWLock* %bulletin to i8*, !dbg !1171
  call void @llvm.lifetime.start.p0i8(i64 88, i8* %0) #8, !dbg !1171
  call void @llvm.dbg.declare(metadata %class.BulletinRWLock* %bulletin, metadata !1165, metadata !DIExpression()), !dbg !1172
  call void @_ZN14BulletinRWLockC2Ev(%class.BulletinRWLock* %bulletin), !dbg !1172
  %1 = bitcast i32* %rc to i8*, !dbg !1173
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #8, !dbg !1173
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !1166, metadata !DIExpression()), !dbg !1174
  %2 = bitcast i8** %res to i8*, !dbg !1175
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #8, !dbg !1175
  call void @llvm.dbg.declare(metadata i8** %res, metadata !1167, metadata !DIExpression()), !dbg !1176
  %3 = bitcast i64* %thr_editor to i8*, !dbg !1177
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #8, !dbg !1177
  call void @llvm.dbg.declare(metadata i64* %thr_editor, metadata !1168, metadata !DIExpression()), !dbg !1178
  %4 = bitcast i64* %thr_reader to i8*, !dbg !1177
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #8, !dbg !1177
  call void @llvm.dbg.declare(metadata i64* %thr_reader, metadata !1170, metadata !DIExpression()), !dbg !1179
  %5 = bitcast %class.BulletinRWLock* %bulletin to i8*, !dbg !1180
  %call = call i32 @pthread_create(i64* %thr_editor, %union.pthread_attr_t* null, i8* (i8*)* @_ZL6EditorPv, i8* %5) #8, !dbg !1181
  store i32 %call, i32* %rc, align 4, !dbg !1182, !tbaa !1183
  %6 = load i32, i32* %rc, align 4, !dbg !1187, !tbaa !1183
  %tobool = icmp ne i32 %6, 0, !dbg !1187
  br i1 %tobool, label %if.then, label %if.end, !dbg !1189

if.then:                                          ; preds = %entry
  invoke void @perror(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
          to label %invoke.cont unwind label %lpad, !dbg !1190

invoke.cont:                                      ; preds = %if.then
  call void @exit(i32 -1) #14, !dbg !1192
  unreachable, !dbg !1192

lpad:                                             ; preds = %invoke.cont6, %if.end5, %if.then3, %if.then
  %7 = landingpad { i8*, i32 }
          cleanup, !dbg !1193
  %8 = extractvalue { i8*, i32 } %7, 0, !dbg !1193
  store i8* %8, i8** %exn.slot, align 8, !dbg !1193
  %9 = extractvalue { i8*, i32 } %7, 1, !dbg !1193
  store i32 %9, i32* %ehselector.slot, align 4, !dbg !1193
  %10 = bitcast i64* %thr_reader to i8*, !dbg !1194
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #8, !dbg !1194
  %11 = bitcast i64* %thr_editor to i8*, !dbg !1194
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #8, !dbg !1194
  %12 = bitcast i8** %res to i8*, !dbg !1194
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %12) #8, !dbg !1194
  %13 = bitcast i32* %rc to i8*, !dbg !1194
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #8, !dbg !1194
  call void @_ZN14BulletinRWLockD2Ev(%class.BulletinRWLock* %bulletin) #8, !dbg !1194
  %14 = bitcast %class.BulletinRWLock* %bulletin to i8*, !dbg !1194
  call void @llvm.lifetime.end.p0i8(i64 88, i8* %14) #8, !dbg !1194
  br label %eh.resume, !dbg !1194

if.end:                                           ; preds = %entry
  %15 = bitcast %class.BulletinRWLock* %bulletin to i8*, !dbg !1195
  %call1 = call i32 @pthread_create(i64* %thr_reader, %union.pthread_attr_t* null, i8* (i8*)* @_ZL6ReaderPv, i8* %15) #8, !dbg !1196
  store i32 %call1, i32* %rc, align 4, !dbg !1197, !tbaa !1183
  %16 = load i32, i32* %rc, align 4, !dbg !1198, !tbaa !1183
  %tobool2 = icmp ne i32 %16, 0, !dbg !1198
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !1200

if.then3:                                         ; preds = %if.end
  invoke void @perror(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
          to label %invoke.cont4 unwind label %lpad, !dbg !1201

invoke.cont4:                                     ; preds = %if.then3
  call void @exit(i32 -1) #14, !dbg !1203
  unreachable, !dbg !1203

if.end5:                                          ; preds = %if.end
  %17 = load i64, i64* %thr_editor, align 8, !dbg !1204, !tbaa !1205
  %call7 = invoke i32 @pthread_join(i64 %17, i8** %res)
          to label %invoke.cont6 unwind label %lpad, !dbg !1207

invoke.cont6:                                     ; preds = %if.end5
  %18 = load i64, i64* %thr_reader, align 8, !dbg !1208, !tbaa !1205
  %call9 = invoke i32 @pthread_join(i64 %18, i8** %res)
          to label %invoke.cont8 unwind label %lpad, !dbg !1209

invoke.cont8:                                     ; preds = %invoke.cont6
  %19 = bitcast i64* %thr_reader to i8*, !dbg !1194
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %19) #8, !dbg !1194
  %20 = bitcast i64* %thr_editor to i8*, !dbg !1194
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #8, !dbg !1194
  %21 = bitcast i8** %res to i8*, !dbg !1194
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %21) #8, !dbg !1194
  %22 = bitcast i32* %rc to i8*, !dbg !1194
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #8, !dbg !1194
  call void @_ZN14BulletinRWLockD2Ev(%class.BulletinRWLock* %bulletin) #8, !dbg !1194
  %23 = bitcast %class.BulletinRWLock* %bulletin to i8*, !dbg !1194
  call void @llvm.lifetime.end.p0i8(i64 88, i8* %23) #8, !dbg !1194
  ret i32 0, !dbg !1194

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1194
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1194
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !1194
  %lpad.val10 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1194
  resume { i8*, i32 } %lpad.val10, !dbg !1194
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN14BulletinRWLockC2Ev(%class.BulletinRWLock* %this) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1210 {
entry:
  %this.addr = alloca %class.BulletinRWLock*, align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %class.BulletinRWLock* %this, %class.BulletinRWLock** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %class.BulletinRWLock** %this.addr, metadata !1212, metadata !DIExpression()), !dbg !1215
  %this1 = load %class.BulletinRWLock*, %class.BulletinRWLock** %this.addr, align 8
  %rwlock_ = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 0, !dbg !1216
  %message_ = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 1, !dbg !1217
  %0 = bitcast %"class.std::allocator"* %ref.tmp to i8*, !dbg !1217
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %0) #8, !dbg !1217
  call void @_ZNSaIcEC2Ev(%"class.std::allocator"* %ref.tmp) #8, !dbg !1217
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* %message_, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !dbg !1217

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIcED2Ev(%"class.std::allocator"* %ref.tmp) #8, !dbg !1217
  %1 = bitcast %"class.std::allocator"* %ref.tmp to i8*, !dbg !1217
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %1) #8, !dbg !1217
  %rwlock_2 = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 0, !dbg !1218
  %call = call i32 @pthread_rwlock_init(%union.pthread_rwlock_t* %rwlock_2, %union.pthread_rwlockattr_t* null) #8, !dbg !1220
  ret void, !dbg !1221

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup, !dbg !1221
  %3 = extractvalue { i8*, i32 } %2, 0, !dbg !1221
  store i8* %3, i8** %exn.slot, align 8, !dbg !1221
  %4 = extractvalue { i8*, i32 } %2, 1, !dbg !1221
  store i32 %4, i32* %ehselector.slot, align 4, !dbg !1221
  call void @_ZNSaIcED2Ev(%"class.std::allocator"* %ref.tmp) #8, !dbg !1217
  %5 = bitcast %"class.std::allocator"* %ref.tmp to i8*, !dbg !1217
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %5) #8, !dbg !1217
  br label %eh.resume, !dbg !1217

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1217
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1217
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !1217
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1217
  resume { i8*, i32 } %lpad.val3, !dbg !1217
}

; Function Attrs: nounwind
declare !callback !1222 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #4

; Function Attrs: uwtable
define internal i8* @_ZL6EditorPv(i8* %rbuf) #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1224 {
entry:
  %rbuf.addr = alloca i8*, align 8
  %rbuf_ptr = alloca %class.BulletinRWLock*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i8* %rbuf, i8** %rbuf.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %rbuf.addr, metadata !1228, metadata !DIExpression()), !dbg !1231
  %0 = bitcast %class.BulletinRWLock** %rbuf_ptr to i8*, !dbg !1232
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #8, !dbg !1232
  call void @llvm.dbg.declare(metadata %class.BulletinRWLock** %rbuf_ptr, metadata !1229, metadata !DIExpression()), !dbg !1233
  %1 = load i8*, i8** %rbuf.addr, align 8, !dbg !1234, !tbaa !1213
  %2 = bitcast i8* %1 to %class.BulletinRWLock*, !dbg !1235
  store %class.BulletinRWLock* %2, %class.BulletinRWLock** %rbuf_ptr, align 8, !dbg !1233, !tbaa !1213
  %3 = bitcast i32* %i to i8*, !dbg !1236
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #8, !dbg !1236
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1230, metadata !DIExpression()), !dbg !1237
  store i32 0, i32* %i, align 4, !dbg !1237, !tbaa !1183
  br label %while.cond, !dbg !1238

while.cond:                                       ; preds = %invoke.cont2, %entry
  br label %while.body, !dbg !1238

while.body:                                       ; preds = %while.cond
  %4 = load %class.BulletinRWLock*, %class.BulletinRWLock** %rbuf_ptr, align 8, !dbg !1239, !tbaa !1213
  %5 = bitcast %"class.std::allocator"* %ref.tmp to i8*, !dbg !1241
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %5) #8, !dbg !1241
  call void @_ZNSaIcEC2Ev(%"class.std::allocator"* %ref.tmp) #8, !dbg !1241
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !dbg !1241

invoke.cont:                                      ; preds = %while.body
  invoke void @_ZN14BulletinRWLock6UpdateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.BulletinRWLock* %4, %"class.std::__cxx11::basic_string"* %agg.tmp)
          to label %invoke.cont2 unwind label %lpad1, !dbg !1242

invoke.cont2:                                     ; preds = %invoke.cont
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %agg.tmp) #8, !dbg !1239
  call void @_ZNSaIcED2Ev(%"class.std::allocator"* %ref.tmp) #8, !dbg !1239
  %6 = bitcast %"class.std::allocator"* %ref.tmp to i8*, !dbg !1239
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %6) #8, !dbg !1239
  %7 = load i32, i32* %i, align 4, !dbg !1243, !tbaa !1183
  %inc = add nsw i32 %7, 1, !dbg !1243
  store i32 %inc, i32* %i, align 4, !dbg !1243, !tbaa !1183
  %call = call i32 @sleep(i32 1), !dbg !1244
  br label %while.cond, !dbg !1238, !llvm.loop !1245

lpad:                                             ; preds = %while.body
  %8 = landingpad { i8*, i32 }
          cleanup, !dbg !1247
  %9 = extractvalue { i8*, i32 } %8, 0, !dbg !1247
  store i8* %9, i8** %exn.slot, align 8, !dbg !1247
  %10 = extractvalue { i8*, i32 } %8, 1, !dbg !1247
  store i32 %10, i32* %ehselector.slot, align 4, !dbg !1247
  br label %ehcleanup, !dbg !1247

lpad1:                                            ; preds = %invoke.cont
  %11 = landingpad { i8*, i32 }
          cleanup, !dbg !1247
  %12 = extractvalue { i8*, i32 } %11, 0, !dbg !1247
  store i8* %12, i8** %exn.slot, align 8, !dbg !1247
  %13 = extractvalue { i8*, i32 } %11, 1, !dbg !1247
  store i32 %13, i32* %ehselector.slot, align 4, !dbg !1247
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %agg.tmp) #8, !dbg !1239
  br label %ehcleanup, !dbg !1239

ehcleanup:                                        ; preds = %lpad1, %lpad
  call void @_ZNSaIcED2Ev(%"class.std::allocator"* %ref.tmp) #8, !dbg !1239
  %14 = bitcast %"class.std::allocator"* %ref.tmp to i8*, !dbg !1239
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %14) #8, !dbg !1239
  %15 = bitcast i32* %i to i8*, !dbg !1248
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #8, !dbg !1248
  %16 = bitcast %class.BulletinRWLock** %rbuf_ptr to i8*, !dbg !1248
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %16) #8, !dbg !1248
  br label %eh.resume, !dbg !1248

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1248
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1248
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !1248
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1248
  resume { i8*, i32 } %lpad.val6, !dbg !1248
}

declare !dbg !41 dso_local void @perror(i8*) #5

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #6

; Function Attrs: uwtable
define internal i8* @_ZL6ReaderPv(i8* %rbuf) #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1249 {
entry:
  %rbuf.addr = alloca i8*, align 8
  %rbuf_ptr = alloca %class.BulletinRWLock*, align 8
  %i = alloca i32, align 4
  %msg = alloca %"class.std::__cxx11::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i8* %rbuf, i8** %rbuf.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %rbuf.addr, metadata !1251, metadata !DIExpression()), !dbg !1256
  %0 = bitcast %class.BulletinRWLock** %rbuf_ptr to i8*, !dbg !1257
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #8, !dbg !1257
  call void @llvm.dbg.declare(metadata %class.BulletinRWLock** %rbuf_ptr, metadata !1252, metadata !DIExpression()), !dbg !1258
  %1 = load i8*, i8** %rbuf.addr, align 8, !dbg !1259, !tbaa !1213
  %2 = bitcast i8* %1 to %class.BulletinRWLock*, !dbg !1260
  store %class.BulletinRWLock* %2, %class.BulletinRWLock** %rbuf_ptr, align 8, !dbg !1258, !tbaa !1213
  %3 = bitcast i32* %i to i8*, !dbg !1261
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #8, !dbg !1261
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1253, metadata !DIExpression()), !dbg !1262
  store i32 0, i32* %i, align 4, !dbg !1262, !tbaa !1183
  br label %while.cond, !dbg !1263

while.cond:                                       ; preds = %invoke.cont1, %entry
  br label %while.body, !dbg !1263

while.body:                                       ; preds = %while.cond
  %4 = bitcast %"class.std::__cxx11::basic_string"* %msg to i8*, !dbg !1264
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %4) #8, !dbg !1264
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"* %msg, metadata !1254, metadata !DIExpression()), !dbg !1265
  %5 = load %class.BulletinRWLock*, %class.BulletinRWLock** %rbuf_ptr, align 8, !dbg !1266, !tbaa !1213
  call void @_ZN14BulletinRWLock4ReadB5cxx11Ev(%"class.std::__cxx11::basic_string"* sret %msg, %class.BulletinRWLock* %5), !dbg !1267
  %call = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, %"class.std::__cxx11::basic_string"* dereferenceable(32) %msg)
          to label %invoke.cont unwind label %lpad, !dbg !1268

invoke.cont:                                      ; preds = %while.body
  %call2 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %invoke.cont1 unwind label %lpad, !dbg !1269

invoke.cont1:                                     ; preds = %invoke.cont
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %msg) #8, !dbg !1270
  %6 = bitcast %"class.std::__cxx11::basic_string"* %msg to i8*, !dbg !1270
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %6) #8, !dbg !1270
  br label %while.cond, !dbg !1263, !llvm.loop !1271

lpad:                                             ; preds = %invoke.cont, %while.body
  %7 = landingpad { i8*, i32 }
          cleanup, !dbg !1272
  %8 = extractvalue { i8*, i32 } %7, 0, !dbg !1272
  store i8* %8, i8** %exn.slot, align 8, !dbg !1272
  %9 = extractvalue { i8*, i32 } %7, 1, !dbg !1272
  store i32 %9, i32* %ehselector.slot, align 4, !dbg !1272
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %msg) #8, !dbg !1270
  %10 = bitcast %"class.std::__cxx11::basic_string"* %msg to i8*, !dbg !1270
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %10) #8, !dbg !1270
  %11 = bitcast i32* %i to i8*, !dbg !1273
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #8, !dbg !1273
  %12 = bitcast %class.BulletinRWLock** %rbuf_ptr to i8*, !dbg !1273
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %12) #8, !dbg !1273
  br label %eh.resume, !dbg !1273

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1273
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1273
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !1273
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1273
  resume { i8*, i32 } %lpad.val3, !dbg !1273
}

declare !dbg !49 dso_local i32 @pthread_join(i64, i8**) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN14BulletinRWLockD2Ev(%class.BulletinRWLock* %this) unnamed_addr #7 comdat align 2 !dbg !1274 {
entry:
  %this.addr = alloca %class.BulletinRWLock*, align 8
  store %class.BulletinRWLock* %this, %class.BulletinRWLock** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %class.BulletinRWLock** %this.addr, metadata !1276, metadata !DIExpression()), !dbg !1277
  %this1 = load %class.BulletinRWLock*, %class.BulletinRWLock** %this.addr, align 8
  %message_ = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 1, !dbg !1278
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %message_) #8, !dbg !1278
  ret void, !dbg !1280
}

; Function Attrs: uwtable
define internal void @__cxx_global_var_init() #3 section ".text.startup" !dbg !1281 {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !dbg !1282
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #8, !dbg !1282
  ret void, !dbg !1282
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #5

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #8

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSaIcEC2Ev(%"class.std::allocator"* %this) unnamed_addr #7 align 2 !dbg !1283 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %this.addr, metadata !1289, metadata !DIExpression()), !dbg !1291
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*, !dbg !1292
  call void @_ZN9__gnu_cxx13new_allocatorIcEC2Ev(%"class.__gnu_cxx::new_allocator"* %0) #8, !dbg !1293
  ret void, !dbg !1294
}

; Function Attrs: uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(%"class.std::__cxx11::basic_string"* %this, i8* %__s, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1295 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__s.addr = alloca i8*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1301, metadata !DIExpression()), !dbg !1305
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !1303, metadata !DIExpression()), !dbg !1306
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__a.addr, metadata !1304, metadata !DIExpression()), !dbg !1307
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %_M_dataplus = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 0, !dbg !1308
  %call = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* %this1), !dbg !1309
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !dbg !1310, !tbaa !1213
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %_M_dataplus, i8* %call, %"class.std::allocator"* dereferenceable(1) %0), !dbg !1308
  %1 = load i8*, i8** %__s.addr, align 8, !dbg !1311, !tbaa !1213
  %2 = load i8*, i8** %__s.addr, align 8, !dbg !1313, !tbaa !1213
  %tobool = icmp ne i8* %2, null, !dbg !1313
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1313

cond.true:                                        ; preds = %entry
  %3 = load i8*, i8** %__s.addr, align 8, !dbg !1314, !tbaa !1213
  %4 = load i8*, i8** %__s.addr, align 8, !dbg !1315, !tbaa !1213
  %call2 = invoke i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %4)
          to label %invoke.cont unwind label %lpad, !dbg !1316

invoke.cont:                                      ; preds = %cond.true
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %call2, !dbg !1317
  br label %cond.end, !dbg !1313

cond.false:                                       ; preds = %entry
  %5 = load i8*, i8** %__s.addr, align 8, !dbg !1318, !tbaa !1213
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 -1, !dbg !1319
  br label %cond.end, !dbg !1313

cond.end:                                         ; preds = %cond.false, %invoke.cont
  %cond = phi i8* [ %add.ptr, %invoke.cont ], [ %add.ptr3, %cond.false ], !dbg !1313
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_(%"class.std::__cxx11::basic_string"* %this1, i8* %1, i8* %cond)
          to label %invoke.cont4 unwind label %lpad, !dbg !1320

invoke.cont4:                                     ; preds = %cond.end
  ret void, !dbg !1321

lpad:                                             ; preds = %cond.end, %cond.true
  %6 = landingpad { i8*, i32 }
          cleanup, !dbg !1322
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !1322
  store i8* %7, i8** %exn.slot, align 8, !dbg !1322
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !1322
  store i32 %8, i32* %ehselector.slot, align 4, !dbg !1322
  call void bitcast (void (%"class.std::allocator"*)* @_ZNSaIcED2Ev to void (%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"*)*)(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %_M_dataplus) #8, !dbg !1322
  br label %eh.resume, !dbg !1322

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1322
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1322
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !1322
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1322
  resume { i8*, i32 } %lpad.val5, !dbg !1322
}

; Function Attrs: nounwind
declare !dbg !55 dso_local i32 @pthread_rwlock_init(%union.pthread_rwlock_t*, %union.pthread_rwlockattr_t*) #4

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIcEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #7 comdat align 2 !dbg !1323 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %this.addr, metadata !1364, metadata !DIExpression()), !dbg !1366
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void, !dbg !1367
}

; Function Attrs: nounwind uwtable
define available_externally dso_local i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* %this) #7 align 2 !dbg !1368 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1375, metadata !DIExpression()), !dbg !1376
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %0 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 2, !dbg !1377
  %_M_local_buf = bitcast %union.anon* %0 to [16 x i8]*, !dbg !1377
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %_M_local_buf, i64 0, i64 0, !dbg !1378
  %call = call i8* @_ZNSt14pointer_traitsIPcE10pointer_toERc(i8* dereferenceable(1) %arraydecay) #8, !dbg !1379
  ret i8* %call, !dbg !1380
}

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %this, i8* %__dat, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #7 align 2 !dbg !1381 {
entry:
  %this.addr = alloca %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"*, align 8
  %__dat.addr = alloca i8*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %this, %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"** %this.addr, metadata !1400, metadata !DIExpression()), !dbg !1404
  store i8* %__dat, i8** %__dat.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__dat.addr, metadata !1402, metadata !DIExpression()), !dbg !1405
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__a.addr, metadata !1403, metadata !DIExpression()), !dbg !1406
  %this1 = load %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"*, %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"** %this.addr, align 8
  %0 = bitcast %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %this1 to %"class.std::allocator"*, !dbg !1407
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !dbg !1408, !tbaa !1213
  call void @_ZNSaIcEC2ERKS_(%"class.std::allocator"* %0, %"class.std::allocator"* dereferenceable(1) %1) #8, !dbg !1409
  %_M_p = getelementptr inbounds %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %this1, i32 0, i32 0, !dbg !1410
  %2 = load i8*, i8** %__dat.addr, align 8, !dbg !1411, !tbaa !1213
  store i8* %2, i8** %_M_p, align 8, !dbg !1410, !tbaa !1412
  ret void, !dbg !1414
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #3 comdat align 2 !dbg !1415 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__beg.addr = alloca i8*, align 8
  %__end.addr = alloca i8*, align 8
  %agg.tmp = alloca %"struct.std::__false_type", align 1
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1422, metadata !DIExpression()), !dbg !1425
  store i8* %__beg, i8** %__beg.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__beg.addr, metadata !1423, metadata !DIExpression()), !dbg !1426
  store i8* %__end, i8** %__end.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__end.addr, metadata !1424, metadata !DIExpression()), !dbg !1427
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %0 = load i8*, i8** %__beg.addr, align 8, !dbg !1428, !tbaa !1213
  %1 = load i8*, i8** %__end.addr, align 8, !dbg !1429, !tbaa !1213
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type(%"class.std::__cxx11::basic_string"* %this1, i8* %0, i8* %1), !dbg !1430
  ret void, !dbg !1431
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %__s) #7 comdat align 2 !dbg !1432 {
entry:
  %__s.addr = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !1434, metadata !DIExpression()), !dbg !1435
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !1436, !tbaa !1213
  %call = call i64 @strlen(i8* %0) #8, !dbg !1437
  ret i64 %call, !dbg !1438
}

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSaIcED2Ev(%"class.std::allocator"* %this) unnamed_addr #7 align 2 !dbg !1439 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %this.addr, metadata !1442, metadata !DIExpression()), !dbg !1443
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*, !dbg !1444
  call void @_ZN9__gnu_cxx13new_allocatorIcED2Ev(%"class.__gnu_cxx::new_allocator"* %0) #8, !dbg !1444
  ret void, !dbg !1446
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i8* @_ZNSt14pointer_traitsIPcE10pointer_toERc(i8* dereferenceable(1) %__r) #7 comdat align 2 !dbg !1447 {
entry:
  %__r.addr = alloca i8*, align 8
  store i8* %__r, i8** %__r.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__r.addr, metadata !1468, metadata !DIExpression()), !dbg !1469
  %0 = load i8*, i8** %__r.addr, align 8, !dbg !1470, !tbaa !1213
  %call = call i8* @_ZSt9addressofIcEPT_RS0_(i8* dereferenceable(1) %0) #8, !dbg !1471
  ret i8* %call, !dbg !1472
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i8* @_ZSt9addressofIcEPT_RS0_(i8* dereferenceable(1) %__r) #9 comdat !dbg !1473 {
entry:
  %__r.addr = alloca i8*, align 8
  store i8* %__r, i8** %__r.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__r.addr, metadata !1478, metadata !DIExpression()), !dbg !1479
  %0 = load i8*, i8** %__r.addr, align 8, !dbg !1480, !tbaa !1213
  %call = call i8* @_ZSt11__addressofIcEPT_RS0_(i8* dereferenceable(1) %0) #8, !dbg !1481
  ret i8* %call, !dbg !1482
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i8* @_ZSt11__addressofIcEPT_RS0_(i8* dereferenceable(1) %__r) #9 comdat !dbg !1483 {
entry:
  %__r.addr = alloca i8*, align 8
  store i8* %__r, i8** %__r.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__r.addr, metadata !1485, metadata !DIExpression()), !dbg !1486
  %0 = load i8*, i8** %__r.addr, align 8, !dbg !1487, !tbaa !1213
  ret i8* %0, !dbg !1488
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIcEC2ERKS1_(%"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"* dereferenceable(1) %0) unnamed_addr #7 comdat align 2 !dbg !1489 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %this.addr, metadata !1491, metadata !DIExpression()), !dbg !1493
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %.addr, metadata !1492, metadata !DIExpression()), !dbg !1494
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void, !dbg !1495
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #3 comdat align 2 !dbg !1496 {
entry:
  %0 = alloca %"struct.std::__false_type", align 1
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__beg.addr = alloca i8*, align 8
  %__end.addr = alloca i8*, align 8
  %agg.tmp = alloca %"struct.std::forward_iterator_tag", align 1
  %ref.tmp = alloca %"struct.std::random_access_iterator_tag", align 1
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1503, metadata !DIExpression()), !dbg !1507
  store i8* %__beg, i8** %__beg.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__beg.addr, metadata !1504, metadata !DIExpression()), !dbg !1508
  store i8* %__end, i8** %__end.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__end.addr, metadata !1505, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.declare(metadata %"struct.std::__false_type"* %0, metadata !1506, metadata !DIExpression()), !dbg !1510
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %1 = load i8*, i8** %__beg.addr, align 8, !dbg !1511, !tbaa !1213
  %2 = load i8*, i8** %__end.addr, align 8, !dbg !1512, !tbaa !1213
  %3 = bitcast %"struct.std::random_access_iterator_tag"* %ref.tmp to i8*, !dbg !1513
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %3) #8, !dbg !1513
  %4 = bitcast %"struct.std::random_access_iterator_tag"* %ref.tmp to %"struct.std::forward_iterator_tag"*, !dbg !1513
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* %this1, i8* %1, i8* %2), !dbg !1514
  %5 = bitcast %"struct.std::random_access_iterator_tag"* %ref.tmp to i8*, !dbg !1514
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %5) #8, !dbg !1514
  ret void, !dbg !1515
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1516 {
entry:
  %0 = alloca %"struct.std::forward_iterator_tag", align 1
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__beg.addr = alloca i8*, align 8
  %__end.addr = alloca i8*, align 8
  %__dnew = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1528, metadata !DIExpression()), !dbg !1533
  store i8* %__beg, i8** %__beg.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__beg.addr, metadata !1529, metadata !DIExpression()), !dbg !1534
  store i8* %__end, i8** %__end.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__end.addr, metadata !1530, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.declare(metadata %"struct.std::forward_iterator_tag"* %0, metadata !1531, metadata !DIExpression()), !dbg !1536
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %1 = load i8*, i8** %__beg.addr, align 8, !dbg !1537, !tbaa !1213
  %call = call zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(i8* %1), !dbg !1539
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !1540

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %__beg.addr, align 8, !dbg !1541, !tbaa !1213
  %3 = load i8*, i8** %__end.addr, align 8, !dbg !1542, !tbaa !1213
  %cmp = icmp ne i8* %2, %3, !dbg !1543
  br i1 %cmp, label %if.then, label %if.end, !dbg !1544

if.then:                                          ; preds = %land.lhs.true
  call void @_ZSt19__throw_logic_errorPKc(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0)) #15, !dbg !1545
  unreachable, !dbg !1545

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = bitcast i64* %__dnew to i8*, !dbg !1546
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #8, !dbg !1546
  call void @llvm.dbg.declare(metadata i64* %__dnew, metadata !1532, metadata !DIExpression()), !dbg !1547
  %5 = load i8*, i8** %__beg.addr, align 8, !dbg !1548, !tbaa !1213
  %6 = load i8*, i8** %__end.addr, align 8, !dbg !1549, !tbaa !1213
  %call2 = call i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(i8* %5, i8* %6), !dbg !1550
  store i64 %call2, i64* %__dnew, align 8, !dbg !1547, !tbaa !1205
  %7 = load i64, i64* %__dnew, align 8, !dbg !1551, !tbaa !1205
  %cmp3 = icmp ugt i64 %7, 15, !dbg !1553
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !1554

if.then4:                                         ; preds = %if.end
  %call5 = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* %this1, i64* dereferenceable(8) %__dnew, i64 0), !dbg !1555
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"* %this1, i8* %call5), !dbg !1557
  %8 = load i64, i64* %__dnew, align 8, !dbg !1558, !tbaa !1205
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"* %this1, i64 %8), !dbg !1559
  br label %if.end6, !dbg !1560

if.end6:                                          ; preds = %if.then4, %if.end
  %call7 = invoke i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont unwind label %lpad, !dbg !1561

invoke.cont:                                      ; preds = %if.end6
  %9 = load i8*, i8** %__beg.addr, align 8, !dbg !1563, !tbaa !1213
  %10 = load i8*, i8** %__end.addr, align 8, !dbg !1564, !tbaa !1213
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(i8* %call7, i8* %9, i8* %10) #8, !dbg !1565
  br label %try.cont, !dbg !1566

lpad:                                             ; preds = %if.end6
  %11 = landingpad { i8*, i32 }
          catch i8* null, !dbg !1567
  %12 = extractvalue { i8*, i32 } %11, 0, !dbg !1567
  store i8* %12, i8** %exn.slot, align 8, !dbg !1567
  %13 = extractvalue { i8*, i32 } %11, 1, !dbg !1567
  store i32 %13, i32* %ehselector.slot, align 4, !dbg !1567
  br label %catch, !dbg !1567

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1566
  %14 = call i8* @__cxa_begin_catch(i8* %exn) #8, !dbg !1566
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont9 unwind label %lpad8, !dbg !1568

invoke.cont9:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #15
          to label %unreachable unwind label %lpad8, !dbg !1570

lpad8:                                            ; preds = %invoke.cont9, %catch
  %15 = landingpad { i8*, i32 }
          cleanup, !dbg !1571
  %16 = extractvalue { i8*, i32 } %15, 0, !dbg !1571
  store i8* %16, i8** %exn.slot, align 8, !dbg !1571
  %17 = extractvalue { i8*, i32 } %15, 1, !dbg !1571
  store i32 %17, i32* %ehselector.slot, align 4, !dbg !1571
  invoke void @__cxa_end_catch()
          to label %invoke.cont10 unwind label %terminate.lpad, !dbg !1572

invoke.cont10:                                    ; preds = %lpad8
  %18 = bitcast i64* %__dnew to i8*, !dbg !1573
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %18) #8, !dbg !1573
  br label %eh.resume, !dbg !1573

try.cont:                                         ; preds = %invoke.cont
  %19 = load i64, i64* %__dnew, align 8, !dbg !1574, !tbaa !1205
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"* %this1, i64 %19), !dbg !1575
  %20 = bitcast i64* %__dnew to i8*, !dbg !1573
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #8, !dbg !1573
  ret void, !dbg !1573

eh.resume:                                        ; preds = %invoke.cont10
  %exn11 = load i8*, i8** %exn.slot, align 8, !dbg !1573
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1573
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn11, 0, !dbg !1573
  %lpad.val12 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1573
  resume { i8*, i32 } %lpad.val12, !dbg !1573

terminate.lpad:                                   ; preds = %lpad8
  %21 = landingpad { i8*, i32 }
          catch i8* null, !dbg !1572
  %22 = extractvalue { i8*, i32 } %21, 0, !dbg !1572
  call void @__clang_call_terminate(i8* %22) #14, !dbg !1572
  unreachable, !dbg !1572

unreachable:                                      ; preds = %invoke.cont9
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(i8* %__ptr) #9 comdat !dbg !1576 {
entry:
  %__ptr.addr = alloca i8*, align 8
  store i8* %__ptr, i8** %__ptr.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__ptr.addr, metadata !1581, metadata !DIExpression()), !dbg !1584
  %0 = load i8*, i8** %__ptr.addr, align 8, !dbg !1585, !tbaa !1213
  %cmp = icmp eq i8* %0, null, !dbg !1586
  ret i1 %cmp, !dbg !1587
}

; Function Attrs: noreturn
declare dso_local void @_ZSt19__throw_logic_errorPKc(i8*) #10

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(i8* %__first, i8* %__last) #11 comdat !dbg !1588 {
entry:
  %__first.addr = alloca i8*, align 8
  %__last.addr = alloca i8*, align 8
  %agg.tmp = alloca %"struct.std::random_access_iterator_tag", align 1
  %undef.agg.tmp = alloca %"struct.std::random_access_iterator_tag", align 1
  store i8* %__first, i8** %__first.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__first.addr, metadata !1598, metadata !DIExpression()), !dbg !1602
  store i8* %__last, i8** %__last.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__last.addr, metadata !1599, metadata !DIExpression()), !dbg !1603
  %0 = load i8*, i8** %__first.addr, align 8, !dbg !1604, !tbaa !1213
  %1 = load i8*, i8** %__last.addr, align 8, !dbg !1605, !tbaa !1213
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i8** dereferenceable(8) %__first.addr), !dbg !1606
  %call = call i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i8* %0, i8* %1), !dbg !1607
  ret i64 %call, !dbg !1608
}

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"* %this, i8* %__p) #7 align 2 !dbg !1609 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__p.addr = alloca i8*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1614, metadata !DIExpression()), !dbg !1616
  store i8* %__p, i8** %__p.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__p.addr, metadata !1615, metadata !DIExpression()), !dbg !1617
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %0 = load i8*, i8** %__p.addr, align 8, !dbg !1618, !tbaa !1213
  %_M_dataplus = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 0, !dbg !1619
  %_M_p = getelementptr inbounds %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %_M_dataplus, i32 0, i32 0, !dbg !1620
  store i8* %0, i8** %_M_p, align 8, !dbg !1621, !tbaa !1622
  ret void, !dbg !1624
}

declare dso_local i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"*, i64* dereferenceable(8), i64) #5

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"* %this, i64 %__capacity) #7 align 2 !dbg !1625 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__capacity.addr = alloca i64, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1630, metadata !DIExpression()), !dbg !1632
  store i64 %__capacity, i64* %__capacity.addr, align 8, !tbaa !1205
  call void @llvm.dbg.declare(metadata i64* %__capacity.addr, metadata !1631, metadata !DIExpression()), !dbg !1633
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %0 = load i64, i64* %__capacity.addr, align 8, !dbg !1634, !tbaa !1205
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 2, !dbg !1635
  %_M_allocated_capacity = bitcast %union.anon* %1 to i64*, !dbg !1635
  store i64 %0, i64* %_M_allocated_capacity, align 8, !dbg !1636, !tbaa !1637
  ret void, !dbg !1638
}

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(i8* %__p, i8* %__k1, i8* %__k2) #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1639 {
entry:
  %__p.addr = alloca i8*, align 8
  %__k1.addr = alloca i8*, align 8
  %__k2.addr = alloca i8*, align 8
  store i8* %__p, i8** %__p.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__p.addr, metadata !1644, metadata !DIExpression()), !dbg !1647
  store i8* %__k1, i8** %__k1.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__k1.addr, metadata !1645, metadata !DIExpression()), !dbg !1648
  store i8* %__k2, i8** %__k2.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__k2.addr, metadata !1646, metadata !DIExpression()), !dbg !1649
  %0 = load i8*, i8** %__p.addr, align 8, !dbg !1650, !tbaa !1213
  %1 = load i8*, i8** %__k1.addr, align 8, !dbg !1651, !tbaa !1213
  %2 = load i8*, i8** %__k2.addr, align 8, !dbg !1652, !tbaa !1213
  %3 = load i8*, i8** %__k1.addr, align 8, !dbg !1653, !tbaa !1213
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64, !dbg !1654
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64, !dbg !1654
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1654
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm(i8* %0, i8* %1, i64 %sub.ptr.sub)
          to label %invoke.cont unwind label %terminate.lpad, !dbg !1655

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !1656

terminate.lpad:                                   ; preds = %entry
  %4 = landingpad { i8*, i32 }
          catch i8* null, !dbg !1655
  %5 = extractvalue { i8*, i32 } %4, 0, !dbg !1655
  call void @__clang_call_terminate(i8* %5) #14, !dbg !1655
  unreachable, !dbg !1655
}

; Function Attrs: nounwind uwtable
define available_externally dso_local i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this) #7 align 2 !dbg !1657 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1664, metadata !DIExpression()), !dbg !1666
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %_M_dataplus = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 0, !dbg !1667
  %_M_p = getelementptr inbounds %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %_M_dataplus, i32 0, i32 0, !dbg !1668
  %0 = load i8*, i8** %_M_p, align 8, !dbg !1668, !tbaa !1622
  ret i8* %0, !dbg !1669
}

declare dso_local i8* @__cxa_begin_catch(i8*)

; Function Attrs: uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* %this) #3 align 2 !dbg !1670 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1675, metadata !DIExpression()), !dbg !1676
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %call = call zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv(%"class.std::__cxx11::basic_string"* %this1), !dbg !1677
  br i1 %call, label %if.end, label %if.then, !dbg !1679

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 2, !dbg !1680
  %_M_allocated_capacity = bitcast %union.anon* %0 to i64*, !dbg !1680
  %1 = load i64, i64* %_M_allocated_capacity, align 8, !dbg !1680, !tbaa !1637
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm(%"class.std::__cxx11::basic_string"* %this1, i64 %1) #8, !dbg !1681
  br label %if.end, !dbg !1681

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1682
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
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"* %this, i64 %__n) #3 align 2 !dbg !1683 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca i8, align 1
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1686, metadata !DIExpression()), !dbg !1688
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !1205
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !1687, metadata !DIExpression()), !dbg !1689
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8, !dbg !1690, !tbaa !1205
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm(%"class.std::__cxx11::basic_string"* %this1, i64 %0), !dbg !1691
  %call = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this1), !dbg !1692
  %1 = load i64, i64* %__n.addr, align 8, !dbg !1693, !tbaa !1205
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %1, !dbg !1692
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %ref.tmp) #8, !dbg !1694
  store i8 0, i8* %ref.tmp, align 1, !dbg !1694, !tbaa !1637
  call void @_ZNSt11char_traitsIcE6assignERcRKc(i8* dereferenceable(1) %arrayidx, i8* dereferenceable(1) %ref.tmp) #8, !dbg !1695
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %ref.tmp) #8, !dbg !1695
  ret void, !dbg !1696
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i8* %__first, i8* %__last) #9 comdat !dbg !1697 {
entry:
  %0 = alloca %"struct.std::random_access_iterator_tag", align 1
  %__first.addr = alloca i8*, align 8
  %__last.addr = alloca i8*, align 8
  store i8* %__first, i8** %__first.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__first.addr, metadata !1707, metadata !DIExpression()), !dbg !1712
  store i8* %__last, i8** %__last.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__last.addr, metadata !1708, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.declare(metadata %"struct.std::random_access_iterator_tag"* %0, metadata !1709, metadata !DIExpression()), !dbg !1714
  %1 = load i8*, i8** %__last.addr, align 8, !dbg !1715, !tbaa !1213
  %2 = load i8*, i8** %__first.addr, align 8, !dbg !1716, !tbaa !1213
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64, !dbg !1717
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64, !dbg !1717
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1717
  ret i64 %sub.ptr.sub, !dbg !1718
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i8** dereferenceable(8) %0) #9 comdat !dbg !1719 {
entry:
  %.addr = alloca i8**, align 8
  store i8** %0, i8*** %.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8*** %.addr, metadata !1726, metadata !DIExpression()), !dbg !1729
  ret void, !dbg !1730
}

; Function Attrs: uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm(i8* %__d, i8* %__s, i64 %__n) #3 align 2 !dbg !1731 {
entry:
  %__d.addr = alloca i8*, align 8
  %__s.addr = alloca i8*, align 8
  %__n.addr = alloca i64, align 8
  store i8* %__d, i8** %__d.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__d.addr, metadata !1736, metadata !DIExpression()), !dbg !1739
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !1737, metadata !DIExpression()), !dbg !1740
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !1205
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !1738, metadata !DIExpression()), !dbg !1741
  %0 = load i64, i64* %__n.addr, align 8, !dbg !1742, !tbaa !1205
  %cmp = icmp eq i64 %0, 1, !dbg !1744
  br i1 %cmp, label %if.then, label %if.else, !dbg !1745

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %__d.addr, align 8, !dbg !1746, !tbaa !1213
  %2 = load i8*, i8** %__s.addr, align 8, !dbg !1747, !tbaa !1213
  call void @_ZNSt11char_traitsIcE6assignERcRKc(i8* dereferenceable(1) %1, i8* dereferenceable(1) %2) #8, !dbg !1748
  br label %if.end, !dbg !1748

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %__d.addr, align 8, !dbg !1749, !tbaa !1213
  %4 = load i8*, i8** %__s.addr, align 8, !dbg !1750, !tbaa !1213
  %5 = load i64, i64* %__n.addr, align 8, !dbg !1751, !tbaa !1205
  %call = call i8* @_ZNSt11char_traitsIcE4copyEPcPKcm(i8* %3, i8* %4, i64 %5), !dbg !1752
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1753
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11char_traitsIcE6assignERcRKc(i8* dereferenceable(1) %__c1, i8* dereferenceable(1) %__c2) #7 comdat align 2 !dbg !1754 {
entry:
  %__c1.addr = alloca i8*, align 8
  %__c2.addr = alloca i8*, align 8
  store i8* %__c1, i8** %__c1.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__c1.addr, metadata !1756, metadata !DIExpression()), !dbg !1758
  store i8* %__c2, i8** %__c2.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__c2.addr, metadata !1757, metadata !DIExpression()), !dbg !1759
  %0 = load i8*, i8** %__c2.addr, align 8, !dbg !1760, !tbaa !1213
  %1 = load i8, i8* %0, align 1, !dbg !1760, !tbaa !1637
  %2 = load i8*, i8** %__c1.addr, align 8, !dbg !1761, !tbaa !1213
  store i8 %1, i8* %2, align 1, !dbg !1762, !tbaa !1637
  ret void, !dbg !1763
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i8* @_ZNSt11char_traitsIcE4copyEPcPKcm(i8* %__s1, i8* %__s2, i64 %__n) #7 comdat align 2 !dbg !1764 {
entry:
  %retval = alloca i8*, align 8
  %__s1.addr = alloca i8*, align 8
  %__s2.addr = alloca i8*, align 8
  %__n.addr = alloca i64, align 8
  store i8* %__s1, i8** %__s1.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__s1.addr, metadata !1766, metadata !DIExpression()), !dbg !1769
  store i8* %__s2, i8** %__s2.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__s2.addr, metadata !1767, metadata !DIExpression()), !dbg !1770
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !1205
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !1768, metadata !DIExpression()), !dbg !1771
  %0 = load i64, i64* %__n.addr, align 8, !dbg !1772, !tbaa !1205
  %cmp = icmp eq i64 %0, 0, !dbg !1774
  br i1 %cmp, label %if.then, label %if.end, !dbg !1775

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %__s1.addr, align 8, !dbg !1776, !tbaa !1213
  store i8* %1, i8** %retval, align 8, !dbg !1777
  br label %return, !dbg !1777

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %__s1.addr, align 8, !dbg !1778, !tbaa !1213
  %3 = load i8*, i8** %__s2.addr, align 8, !dbg !1779, !tbaa !1213
  %4 = load i64, i64* %__n.addr, align 8, !dbg !1780, !tbaa !1205
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %3, i64 %4, i1 false), !dbg !1781
  store i8* %2, i8** %retval, align 8, !dbg !1782
  br label %return, !dbg !1782

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !1783
  ret i8* %5, !dbg !1783
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: uwtable
define available_externally dso_local zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv(%"class.std::__cxx11::basic_string"* %this) #3 align 2 !dbg !1784 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1789, metadata !DIExpression()), !dbg !1790
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %call = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this1), !dbg !1791
  %call2 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* %this1), !dbg !1792
  %cmp = icmp eq i8* %call, %call2, !dbg !1793
  ret i1 %cmp, !dbg !1794
}

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm(%"class.std::__cxx11::basic_string"* %this, i64 %__size) #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1795 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__size.addr = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1798, metadata !DIExpression()), !dbg !1800
  store i64 %__size, i64* %__size.addr, align 8, !tbaa !1205
  call void @llvm.dbg.declare(metadata i64* %__size.addr, metadata !1799, metadata !DIExpression()), !dbg !1801
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %call = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont unwind label %lpad, !dbg !1802

invoke.cont:                                      ; preds = %entry
  %call3 = invoke i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont2 unwind label %lpad, !dbg !1803

invoke.cont2:                                     ; preds = %invoke.cont
  %0 = load i64, i64* %__size.addr, align 8, !dbg !1804, !tbaa !1205
  %add = add i64 %0, 1, !dbg !1805
  invoke void @_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm(%"class.std::allocator"* dereferenceable(1) %call, i8* %call3, i64 %add)
          to label %invoke.cont4 unwind label %lpad, !dbg !1806

invoke.cont4:                                     ; preds = %invoke.cont2
  ret void, !dbg !1807

lpad:                                             ; preds = %invoke.cont2, %invoke.cont, %entry
  %1 = landingpad { i8*, i32 }
          filter [0 x i8*] zeroinitializer, !dbg !1807
  %2 = extractvalue { i8*, i32 } %1, 0, !dbg !1807
  store i8* %2, i8** %exn.slot, align 8, !dbg !1807
  %3 = extractvalue { i8*, i32 } %1, 1, !dbg !1807
  store i32 %3, i32* %ehselector.slot, align 4, !dbg !1807
  br label %filter.dispatch, !dbg !1807

filter.dispatch:                                  ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1807
  call void @__cxa_call_unexpected(i8* %exn) #15, !dbg !1807
  unreachable, !dbg !1807
}

; Function Attrs: nounwind uwtable
define available_externally dso_local i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* %this) #7 align 2 !dbg !1808 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1816, metadata !DIExpression()), !dbg !1817
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %0 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 2, !dbg !1818
  %_M_local_buf = bitcast %union.anon* %0 to [16 x i8]*, !dbg !1818
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %_M_local_buf, i64 0, i64 0, !dbg !1819
  %call = call i8* @_ZNSt14pointer_traitsIPKcE10pointer_toERS0_(i8* dereferenceable(1) %arraydecay) #8, !dbg !1820
  ret i8* %call, !dbg !1821
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i8* @_ZNSt14pointer_traitsIPKcE10pointer_toERS0_(i8* dereferenceable(1) %__r) #7 comdat align 2 !dbg !1822 {
entry:
  %__r.addr = alloca i8*, align 8
  store i8* %__r, i8** %__r.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__r.addr, metadata !1838, metadata !DIExpression()), !dbg !1839
  %0 = load i8*, i8** %__r.addr, align 8, !dbg !1840, !tbaa !1213
  %call = call i8* @_ZSt9addressofIKcEPT_RS1_(i8* dereferenceable(1) %0) #8, !dbg !1841
  ret i8* %call, !dbg !1842
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i8* @_ZSt9addressofIKcEPT_RS1_(i8* dereferenceable(1) %__r) #9 comdat !dbg !1843 {
entry:
  %__r.addr = alloca i8*, align 8
  store i8* %__r, i8** %__r.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__r.addr, metadata !1847, metadata !DIExpression()), !dbg !1850
  %0 = load i8*, i8** %__r.addr, align 8, !dbg !1851, !tbaa !1213
  %call = call i8* @_ZSt11__addressofIKcEPT_RS1_(i8* dereferenceable(1) %0) #8, !dbg !1852
  ret i8* %call, !dbg !1853
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i8* @_ZSt11__addressofIKcEPT_RS1_(i8* dereferenceable(1) %__r) #9 comdat !dbg !1854 {
entry:
  %__r.addr = alloca i8*, align 8
  store i8* %__r, i8** %__r.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__r.addr, metadata !1856, metadata !DIExpression()), !dbg !1857
  %0 = load i8*, i8** %__r.addr, align 8, !dbg !1858, !tbaa !1213
  ret i8* %0, !dbg !1859
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm(%"class.std::allocator"* dereferenceable(1) %__a, i8* %__p, i64 %__n) #3 comdat align 2 !dbg !1860 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca i8*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__a.addr, metadata !1862, metadata !DIExpression()), !dbg !1865
  store i8* %__p, i8** %__p.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__p.addr, metadata !1863, metadata !DIExpression()), !dbg !1866
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !1205
  call void @llvm.dbg.declare(metadata i64* %__n.addr, metadata !1864, metadata !DIExpression()), !dbg !1867
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !dbg !1868, !tbaa !1213
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*, !dbg !1868
  %2 = load i8*, i8** %__p.addr, align 8, !dbg !1869, !tbaa !1213
  %3 = load i64, i64* %__n.addr, align 8, !dbg !1870, !tbaa !1205
  call void @_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm(%"class.__gnu_cxx::new_allocator"* %1, i8* %2, i64 %3), !dbg !1871
  ret void, !dbg !1872
}

; Function Attrs: nounwind uwtable
define available_externally dso_local dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string"* %this) #7 align 2 !dbg !1873 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1879, metadata !DIExpression()), !dbg !1880
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %_M_dataplus = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 0, !dbg !1881
  %0 = bitcast %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %_M_dataplus to %"class.std::allocator"*, !dbg !1881
  ret %"class.std::allocator"* %0, !dbg !1882
}

declare dso_local void @__cxa_call_unexpected(i8*)

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm(%"class.__gnu_cxx::new_allocator"* %this, i8* %__p, i64 %__t) #7 comdat align 2 !dbg !1883 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca i8*, align 8
  %__t.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %this.addr, metadata !1885, metadata !DIExpression()), !dbg !1888
  store i8* %__p, i8** %__p.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__p.addr, metadata !1886, metadata !DIExpression()), !dbg !1889
  store i64 %__t, i64* %__t.addr, align 8, !tbaa !1205
  call void @llvm.dbg.declare(metadata i64* %__t.addr, metadata !1887, metadata !DIExpression()), !dbg !1890
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %0 = load i8*, i8** %__p.addr, align 8, !dbg !1891, !tbaa !1213
  call void @_ZdlPv(i8* %0) #8, !dbg !1892
  ret void, !dbg !1893
}

; Function Attrs: nobuiltin nounwind
declare !dbg !204 dso_local void @_ZdlPv(i8*) #13

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm(%"class.std::__cxx11::basic_string"* %this, i64 %__length) #7 align 2 !dbg !1894 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__length.addr = alloca i64, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1897, metadata !DIExpression()), !dbg !1899
  store i64 %__length, i64* %__length.addr, align 8, !tbaa !1205
  call void @llvm.dbg.declare(metadata i64* %__length.addr, metadata !1898, metadata !DIExpression()), !dbg !1900
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %0 = load i64, i64* %__length.addr, align 8, !dbg !1901, !tbaa !1205
  %_M_string_length = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 1, !dbg !1902
  store i64 %0, i64* %_M_string_length, align 8, !dbg !1903, !tbaa !1904
  ret void, !dbg !1905
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIcED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #7 comdat align 2 !dbg !1906 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.__gnu_cxx::new_allocator"** %this.addr, metadata !1908, metadata !DIExpression()), !dbg !1909
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void, !dbg !1910
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN14BulletinRWLock6UpdateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%class.BulletinRWLock* %this, %"class.std::__cxx11::basic_string"* %message) #3 comdat align 2 !dbg !1911 {
entry:
  %this.addr = alloca %class.BulletinRWLock*, align 8
  store %class.BulletinRWLock* %this, %class.BulletinRWLock** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %class.BulletinRWLock** %this.addr, metadata !1913, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"* %message, metadata !1914, metadata !DIExpression()), !dbg !1916
  %this1 = load %class.BulletinRWLock*, %class.BulletinRWLock** %this.addr, align 8
  %rwlock_ = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 0, !dbg !1917
  %call = call i32 @pthread_rwlock_wrlock(%union.pthread_rwlock_t* %rwlock_) #8, !dbg !1918
  %message_ = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 1, !dbg !1919
  %call2 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %message_, %"class.std::__cxx11::basic_string"* dereferenceable(32) %message), !dbg !1920
  %rwlock_3 = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 0, !dbg !1921
  %call4 = call i32 @pthread_rwlock_unlock(%union.pthread_rwlock_t* %rwlock_3) #8, !dbg !1922
  ret void, !dbg !1923
}

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %this) unnamed_addr #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1924 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1927, metadata !DIExpression()), !dbg !1928
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont unwind label %lpad, !dbg !1929

invoke.cont:                                      ; preds = %entry
  %_M_dataplus = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 0, !dbg !1931
  call void bitcast (void (%"class.std::allocator"*)* @_ZNSaIcED2Ev to void (%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"*)*)(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %_M_dataplus) #8, !dbg !1931
  ret void, !dbg !1932

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          catch i8* null, !dbg !1931
  %1 = extractvalue { i8*, i32 } %0, 0, !dbg !1931
  store i8* %1, i8** %exn.slot, align 8, !dbg !1931
  %2 = extractvalue { i8*, i32 } %0, 1, !dbg !1931
  store i32 %2, i32* %ehselector.slot, align 4, !dbg !1931
  %_M_dataplus2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 0, !dbg !1931
  call void bitcast (void (%"class.std::allocator"*)* @_ZNSaIcED2Ev to void (%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"*)*)(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %_M_dataplus2) #8, !dbg !1931
  br label %terminate.handler, !dbg !1931

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1931
  call void @__clang_call_terminate(i8* %exn) #14, !dbg !1931
  unreachable, !dbg !1931
}

declare !dbg !228 dso_local i32 @sleep(i32) #5

; Function Attrs: nounwind
declare !dbg !232 dso_local i32 @pthread_rwlock_wrlock(%union.pthread_rwlock_t*) #4

; Function Attrs: uwtable
define available_externally dso_local dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__str) #3 align 2 !dbg !1933 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__str.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1940, metadata !DIExpression()), !dbg !1942
  store %"class.std::__cxx11::basic_string"* %__str, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %__str.addr, metadata !1941, metadata !DIExpression()), !dbg !1943
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !dbg !1944, !tbaa !1213
  %call = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_(%"class.std::__cxx11::basic_string"* %this1, %"class.std::__cxx11::basic_string"* dereferenceable(32) %0), !dbg !1945
  ret %"class.std::__cxx11::basic_string"* %call, !dbg !1946
}

; Function Attrs: nounwind
declare !dbg !235 dso_local i32 @pthread_rwlock_unlock(%union.pthread_rwlock_t*) #4

; Function Attrs: uwtable
define available_externally dso_local dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_(%"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__str) #3 align 2 !dbg !1947 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__str.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !1950, metadata !DIExpression()), !dbg !1952
  store %"class.std::__cxx11::basic_string"* %__str, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %__str.addr, metadata !1951, metadata !DIExpression()), !dbg !1953
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !dbg !1954, !tbaa !1213
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %this1, %"class.std::__cxx11::basic_string"* dereferenceable(32) %0), !dbg !1955
  ret %"class.std::__cxx11::basic_string"* %this1, !dbg !1956
}

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* dereferenceable(32)) #5

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN14BulletinRWLock4ReadB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %class.BulletinRWLock* %this) #3 comdat align 2 !dbg !1957 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %class.BulletinRWLock*, align 8
  %nrvo = alloca i1, align 1
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %class.BulletinRWLock* %this, %class.BulletinRWLock** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %class.BulletinRWLock** %this.addr, metadata !1959, metadata !DIExpression()), !dbg !1961
  %this1 = load %class.BulletinRWLock*, %class.BulletinRWLock** %this.addr, align 8
  store i1 false, i1* %nrvo, align 1, !dbg !1962
  call void @llvm.dbg.declare(metadata i8** %result.ptr, metadata !1960, metadata !DIExpression(DW_OP_deref)), !dbg !1963
  %message_ = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 1, !dbg !1964
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(%"class.std::__cxx11::basic_string"* %agg.result, %"class.std::__cxx11::basic_string"* dereferenceable(32) %message_), !dbg !1964
  %rwlock_ = getelementptr inbounds %class.BulletinRWLock, %class.BulletinRWLock* %this1, i32 0, i32 0, !dbg !1965
  %call = call i32 @pthread_rwlock_unlock(%union.pthread_rwlock_t* %rwlock_) #8, !dbg !1966
  store i1 true, i1* %nrvo, align 1, !dbg !1967
  %nrvo.val = load i1, i1* %nrvo, align 1, !dbg !1968
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused, !dbg !1968

nrvo.unused:                                      ; preds = %entry
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* %agg.result) #8, !dbg !1968
  br label %nrvo.skipdtor, !dbg !1968

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %entry
  ret void, !dbg !1968
}

; Function Attrs: inlinehint uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* dereferenceable(272) %__os, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__str) #11 !dbg !1969 {
entry:
  %__os.addr = alloca %"class.std::basic_ostream"*, align 8
  %__str.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::basic_ostream"* %__os, %"class.std::basic_ostream"** %__os.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %__os.addr, metadata !1976, metadata !DIExpression()), !dbg !1980
  store %"class.std::__cxx11::basic_string"* %__str, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %__str.addr, metadata !1977, metadata !DIExpression()), !dbg !1981
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__os.addr, align 8, !dbg !1982, !tbaa !1213
  %1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !dbg !1983, !tbaa !1213
  %call = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(%"class.std::__cxx11::basic_string"* %1) #8, !dbg !1984
  %2 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !dbg !1985, !tbaa !1213
  %call1 = call i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* %2) #8, !dbg !1986
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272) %0, i8* %call, i64 %call1), !dbg !1987
  ret %"class.std::basic_ostream"* %call2, !dbg !1988
}

; Function Attrs: uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %this, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* %__pf) #3 align 2 !dbg !1989 {
entry:
  %this.addr = alloca %"class.std::basic_ostream"*, align 8
  %__pf.addr = alloca %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*, align 8
  store %"class.std::basic_ostream"* %this, %"class.std::basic_ostream"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %this.addr, metadata !2001, metadata !DIExpression()), !dbg !2004
  store %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* %__pf, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)** %__pf.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)** %__pf.addr, metadata !2003, metadata !DIExpression()), !dbg !2005
  %this1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %this.addr, align 8
  %0 = load %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)** %__pf.addr, align 8, !dbg !2006, !tbaa !1213
  %call = call dereferenceable(272) %"class.std::basic_ostream"* %0(%"class.std::basic_ostream"* dereferenceable(272) %this1), !dbg !2006
  ret %"class.std::basic_ostream"* %call, !dbg !2007
}

; Function Attrs: inlinehint uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272) %__os) #11 !dbg !2008 {
entry:
  %__os.addr = alloca %"class.std::basic_ostream"*, align 8
  store %"class.std::basic_ostream"* %__os, %"class.std::basic_ostream"** %__os.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %__os.addr, metadata !2012, metadata !DIExpression()), !dbg !2014
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__os.addr, align 8, !dbg !2015, !tbaa !1213
  %1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__os.addr, align 8, !dbg !2016, !tbaa !1213
  %2 = bitcast %"class.std::basic_ostream"* %1 to i8**, !dbg !2016
  %vtable = load i8*, i8** %2, align 8, !dbg !2016, !tbaa !2017
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24, !dbg !2016
  %3 = bitcast i8* %vbase.offset.ptr to i64*, !dbg !2016
  %vbase.offset = load i64, i64* %3, align 8, !dbg !2016
  %4 = bitcast %"class.std::basic_ostream"* %1 to i8*, !dbg !2016
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %vbase.offset, !dbg !2016
  %5 = bitcast i8* %add.ptr to %"class.std::basic_ios"*, !dbg !2016
  %call = call signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* %5, i8 signext 10), !dbg !2019
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* %0, i8 signext %call), !dbg !2020
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272) %call1), !dbg !2021
  ret %"class.std::basic_ostream"* %call2, !dbg !2022
}

; Function Attrs: uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(%"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__str) unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2023 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__str.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !2028, metadata !DIExpression()), !dbg !2030
  store %"class.std::__cxx11::basic_string"* %__str, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %__str.addr, metadata !2029, metadata !DIExpression()), !dbg !2031
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %_M_dataplus = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 0, !dbg !2032
  %call = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* %this1), !dbg !2033
  %0 = bitcast %"class.std::allocator"* %ref.tmp to i8*, !dbg !2034
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %0) #8, !dbg !2034
  %1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !dbg !2035, !tbaa !1213
  %call2 = call dereferenceable(1) %"class.std::allocator"* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string"* %1), !dbg !2036
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_(%"class.std::allocator"* sret %ref.tmp, %"class.std::allocator"* dereferenceable(1) %call2), !dbg !2034
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcOS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %_M_dataplus, i8* %call, %"class.std::allocator"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !dbg !2032

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIcED2Ev(%"class.std::allocator"* %ref.tmp) #8, !dbg !2032
  %2 = bitcast %"class.std::allocator"* %ref.tmp to i8*, !dbg !2032
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %2) #8, !dbg !2032
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !dbg !2037, !tbaa !1213
  %call5 = invoke i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %3)
          to label %invoke.cont4 unwind label %lpad3, !dbg !2039

invoke.cont4:                                     ; preds = %invoke.cont
  %4 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !dbg !2040, !tbaa !1213
  %call7 = invoke i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %4)
          to label %invoke.cont6 unwind label %lpad3, !dbg !2041

invoke.cont6:                                     ; preds = %invoke.cont4
  %5 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__str.addr, align 8, !dbg !2042, !tbaa !1213
  %call8 = call i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* %5) #8, !dbg !2043
  %add.ptr = getelementptr inbounds i8, i8* %call7, i64 %call8, !dbg !2044
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_(%"class.std::__cxx11::basic_string"* %this1, i8* %call5, i8* %add.ptr)
          to label %invoke.cont9 unwind label %lpad3, !dbg !2045

invoke.cont9:                                     ; preds = %invoke.cont6
  ret void, !dbg !2046

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !dbg !2046
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !2046
  store i8* %7, i8** %exn.slot, align 8, !dbg !2046
  %8 = extractvalue { i8*, i32 } %6, 1, !dbg !2046
  store i32 %8, i32* %ehselector.slot, align 4, !dbg !2046
  call void @_ZNSaIcED2Ev(%"class.std::allocator"* %ref.tmp) #8, !dbg !2032
  %9 = bitcast %"class.std::allocator"* %ref.tmp to i8*, !dbg !2032
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %9) #8, !dbg !2032
  br label %eh.resume, !dbg !2032

lpad3:                                            ; preds = %invoke.cont6, %invoke.cont4, %invoke.cont
  %10 = landingpad { i8*, i32 }
          cleanup, !dbg !2047
  %11 = extractvalue { i8*, i32 } %10, 0, !dbg !2047
  store i8* %11, i8** %exn.slot, align 8, !dbg !2047
  %12 = extractvalue { i8*, i32 } %10, 1, !dbg !2047
  store i32 %12, i32* %ehselector.slot, align 4, !dbg !2047
  call void bitcast (void (%"class.std::allocator"*)* @_ZNSaIcED2Ev to void (%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"*)*)(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %_M_dataplus) #8, !dbg !2047
  br label %eh.resume, !dbg !2047

eh.resume:                                        ; preds = %lpad3, %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2032
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2032
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !2032
  %lpad.val10 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2032
  resume { i8*, i32 } %lpad.val10, !dbg !2032
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_(%"class.std::allocator"* noalias sret %agg.result, %"class.std::allocator"* dereferenceable(1) %__a) #3 comdat align 2 !dbg !2048 {
entry:
  %result.ptr = alloca i8*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %0 = bitcast %"class.std::allocator"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__a.addr, metadata !2050, metadata !DIExpression()), !dbg !2051
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !dbg !2052, !tbaa !1213
  call void @_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_(%"class.std::allocator"* sret %agg.result, %"class.std::allocator"* dereferenceable(1) %1), !dbg !2053
  ret void, !dbg !2054
}

; Function Attrs: nounwind uwtable
define available_externally dso_local dereferenceable(1) %"class.std::allocator"* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string"* %this) #7 align 2 !dbg !2055 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !2062, metadata !DIExpression()), !dbg !2063
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %_M_dataplus = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 0, !dbg !2064
  %0 = bitcast %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %_M_dataplus to %"class.std::allocator"*, !dbg !2064
  ret %"class.std::allocator"* %0, !dbg !2065
}

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcOS3_(%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %this, i8* %__dat, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #7 align 2 !dbg !2066 {
entry:
  %this.addr = alloca %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"*, align 8
  %__dat.addr = alloca i8*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %this, %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"** %this.addr, metadata !2068, metadata !DIExpression()), !dbg !2071
  store i8* %__dat, i8** %__dat.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__dat.addr, metadata !2069, metadata !DIExpression()), !dbg !2072
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__a.addr, metadata !2070, metadata !DIExpression()), !dbg !2073
  %this1 = load %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"*, %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"** %this.addr, align 8
  %0 = bitcast %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %this1 to %"class.std::allocator"*, !dbg !2074
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !dbg !2075, !tbaa !1213
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_(%"class.std::allocator"* dereferenceable(1) %1) #8, !dbg !2076
  call void @_ZNSaIcEC2ERKS_(%"class.std::allocator"* %0, %"class.std::allocator"* dereferenceable(1) %call) #8, !dbg !2077
  %_M_p = getelementptr inbounds %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider"* %this1, i32 0, i32 0, !dbg !2078
  %2 = load i8*, i8** %__dat.addr, align 8, !dbg !2079, !tbaa !1213
  store i8* %2, i8** %_M_p, align 8, !dbg !2078, !tbaa !1412
  ret void, !dbg !2080
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #3 comdat align 2 !dbg !2081 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__beg.addr = alloca i8*, align 8
  %__end.addr = alloca i8*, align 8
  %agg.tmp = alloca %"struct.std::__false_type", align 1
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !2088, metadata !DIExpression()), !dbg !2091
  store i8* %__beg, i8** %__beg.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__beg.addr, metadata !2089, metadata !DIExpression()), !dbg !2092
  store i8* %__end, i8** %__end.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__end.addr, metadata !2090, metadata !DIExpression()), !dbg !2093
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %0 = load i8*, i8** %__beg.addr, align 8, !dbg !2094, !tbaa !1213
  %1 = load i8*, i8** %__end.addr, align 8, !dbg !2095, !tbaa !1213
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type(%"class.std::__cxx11::basic_string"* %this1, i8* %0, i8* %1), !dbg !2096
  ret void, !dbg !2097
}

; Function Attrs: nounwind uwtable
define available_externally dso_local i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* %this) #7 align 2 !dbg !2098 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !2103, metadata !DIExpression()), !dbg !2104
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %_M_string_length = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 1, !dbg !2105
  %0 = load i64, i64* %_M_string_length, align 8, !dbg !2105, !tbaa !1904
  ret i64 %0, !dbg !2106
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_(%"class.std::allocator"* noalias sret %agg.result, %"class.std::allocator"* dereferenceable(1) %__rhs) #7 comdat align 2 !dbg !2107 {
entry:
  %result.ptr = alloca i8*, align 8
  %__rhs.addr = alloca %"class.std::allocator"*, align 8
  %0 = bitcast %"class.std::allocator"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::allocator"* %__rhs, %"class.std::allocator"** %__rhs.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__rhs.addr, metadata !2109, metadata !DIExpression()), !dbg !2110
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__rhs.addr, align 8, !dbg !2111, !tbaa !1213
  call void @_ZNSaIcEC2ERKS_(%"class.std::allocator"* %agg.result, %"class.std::allocator"* dereferenceable(1) %1) #8, !dbg !2111
  ret void, !dbg !2112
}

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSaIcEC2ERKS_(%"class.std::allocator"* %this, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #7 align 2 !dbg !2113 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %this.addr, metadata !2118, metadata !DIExpression()), !dbg !2120
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__a.addr, metadata !2119, metadata !DIExpression()), !dbg !2121
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*, !dbg !2122
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8, !dbg !2123, !tbaa !1213
  %2 = bitcast %"class.std::allocator"* %1 to %"class.__gnu_cxx::new_allocator"*, !dbg !2123
  call void @_ZN9__gnu_cxx13new_allocatorIcEC2ERKS1_(%"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"* dereferenceable(1) %2) #8, !dbg !2124
  ret void, !dbg !2125
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator"* @_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_(%"class.std::allocator"* dereferenceable(1) %__t) #7 comdat !dbg !2126 {
entry:
  %__t.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %__t, %"class.std::allocator"** %__t.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::allocator"** %__t.addr, metadata !2135, metadata !DIExpression()), !dbg !2136
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__t.addr, align 8, !dbg !2137, !tbaa !1213
  ret %"class.std::allocator"* %0, !dbg !2138
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #3 comdat align 2 !dbg !2139 {
entry:
  %0 = alloca %"struct.std::__false_type", align 1
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__beg.addr = alloca i8*, align 8
  %__end.addr = alloca i8*, align 8
  %agg.tmp = alloca %"struct.std::forward_iterator_tag", align 1
  %ref.tmp = alloca %"struct.std::random_access_iterator_tag", align 1
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !2144, metadata !DIExpression()), !dbg !2148
  store i8* %__beg, i8** %__beg.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__beg.addr, metadata !2145, metadata !DIExpression()), !dbg !2149
  store i8* %__end, i8** %__end.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__end.addr, metadata !2146, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.declare(metadata %"struct.std::__false_type"* %0, metadata !2147, metadata !DIExpression()), !dbg !2151
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %1 = load i8*, i8** %__beg.addr, align 8, !dbg !2152, !tbaa !1213
  %2 = load i8*, i8** %__end.addr, align 8, !dbg !2153, !tbaa !1213
  %3 = bitcast %"struct.std::random_access_iterator_tag"* %ref.tmp to i8*, !dbg !2154
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %3) #8, !dbg !2154
  %4 = bitcast %"struct.std::random_access_iterator_tag"* %ref.tmp to %"struct.std::forward_iterator_tag"*, !dbg !2154
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* %this1, i8* %1, i8* %2), !dbg !2155
  %5 = bitcast %"struct.std::random_access_iterator_tag"* %ref.tmp to i8*, !dbg !2155
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %5) #8, !dbg !2155
  ret void, !dbg !2156
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* %this, i8* %__beg, i8* %__end) #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2157 {
entry:
  %0 = alloca %"struct.std::forward_iterator_tag", align 1
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__beg.addr = alloca i8*, align 8
  %__end.addr = alloca i8*, align 8
  %__dnew = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !2164, metadata !DIExpression()), !dbg !2169
  store i8* %__beg, i8** %__beg.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__beg.addr, metadata !2165, metadata !DIExpression()), !dbg !2170
  store i8* %__end, i8** %__end.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__end.addr, metadata !2166, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.declare(metadata %"struct.std::forward_iterator_tag"* %0, metadata !2167, metadata !DIExpression()), !dbg !2172
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %1 = load i8*, i8** %__beg.addr, align 8, !dbg !2173, !tbaa !1213
  %call = call zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_(i8* %1), !dbg !2175
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !2176

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %__beg.addr, align 8, !dbg !2177, !tbaa !1213
  %3 = load i8*, i8** %__end.addr, align 8, !dbg !2178, !tbaa !1213
  %cmp = icmp ne i8* %2, %3, !dbg !2179
  br i1 %cmp, label %if.then, label %if.end, !dbg !2180

if.then:                                          ; preds = %land.lhs.true
  call void @_ZSt19__throw_logic_errorPKc(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0)) #15, !dbg !2181
  unreachable, !dbg !2181

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = bitcast i64* %__dnew to i8*, !dbg !2182
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #8, !dbg !2182
  call void @llvm.dbg.declare(metadata i64* %__dnew, metadata !2168, metadata !DIExpression()), !dbg !2183
  %5 = load i8*, i8** %__beg.addr, align 8, !dbg !2184, !tbaa !1213
  %6 = load i8*, i8** %__end.addr, align 8, !dbg !2185, !tbaa !1213
  %call2 = call i64 @_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_(i8* %5, i8* %6), !dbg !2186
  store i64 %call2, i64* %__dnew, align 8, !dbg !2183, !tbaa !1205
  %7 = load i64, i64* %__dnew, align 8, !dbg !2187, !tbaa !1205
  %cmp3 = icmp ugt i64 %7, 15, !dbg !2189
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !2190

if.then4:                                         ; preds = %if.end
  %call5 = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* %this1, i64* dereferenceable(8) %__dnew, i64 0), !dbg !2191
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"* %this1, i8* %call5), !dbg !2193
  %8 = load i64, i64* %__dnew, align 8, !dbg !2194, !tbaa !1205
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"* %this1, i64 %8), !dbg !2195
  br label %if.end6, !dbg !2196

if.end6:                                          ; preds = %if.then4, %if.end
  %call7 = invoke i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont unwind label %lpad, !dbg !2197

invoke.cont:                                      ; preds = %if.end6
  %9 = load i8*, i8** %__beg.addr, align 8, !dbg !2199, !tbaa !1213
  %10 = load i8*, i8** %__end.addr, align 8, !dbg !2200, !tbaa !1213
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_(i8* %call7, i8* %9, i8* %10) #8, !dbg !2201
  br label %try.cont, !dbg !2202

lpad:                                             ; preds = %if.end6
  %11 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2203
  %12 = extractvalue { i8*, i32 } %11, 0, !dbg !2203
  store i8* %12, i8** %exn.slot, align 8, !dbg !2203
  %13 = extractvalue { i8*, i32 } %11, 1, !dbg !2203
  store i32 %13, i32* %ehselector.slot, align 4, !dbg !2203
  br label %catch, !dbg !2203

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2202
  %14 = call i8* @__cxa_begin_catch(i8* %exn) #8, !dbg !2202
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont9 unwind label %lpad8, !dbg !2204

invoke.cont9:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #15
          to label %unreachable unwind label %lpad8, !dbg !2206

lpad8:                                            ; preds = %invoke.cont9, %catch
  %15 = landingpad { i8*, i32 }
          cleanup, !dbg !2207
  %16 = extractvalue { i8*, i32 } %15, 0, !dbg !2207
  store i8* %16, i8** %exn.slot, align 8, !dbg !2207
  %17 = extractvalue { i8*, i32 } %15, 1, !dbg !2207
  store i32 %17, i32* %ehselector.slot, align 4, !dbg !2207
  invoke void @__cxa_end_catch()
          to label %invoke.cont10 unwind label %terminate.lpad, !dbg !2208

invoke.cont10:                                    ; preds = %lpad8
  %18 = bitcast i64* %__dnew to i8*, !dbg !2209
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %18) #8, !dbg !2209
  br label %eh.resume, !dbg !2209

try.cont:                                         ; preds = %invoke.cont
  %19 = load i64, i64* %__dnew, align 8, !dbg !2210, !tbaa !1205
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"* %this1, i64 %19), !dbg !2211
  %20 = bitcast i64* %__dnew to i8*, !dbg !2209
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #8, !dbg !2209
  ret void, !dbg !2209

eh.resume:                                        ; preds = %invoke.cont10
  %exn11 = load i8*, i8** %exn.slot, align 8, !dbg !2209
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2209
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn11, 0, !dbg !2209
  %lpad.val12 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2209
  resume { i8*, i32 } %lpad.val12, !dbg !2209

terminate.lpad:                                   ; preds = %lpad8
  %21 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2208
  %22 = extractvalue { i8*, i32 } %21, 0, !dbg !2208
  call void @__clang_call_terminate(i8* %22) #14, !dbg !2208
  unreachable, !dbg !2208

unreachable:                                      ; preds = %invoke.cont9
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_(i8* %__ptr) #9 comdat !dbg !2212 {
entry:
  %__ptr.addr = alloca i8*, align 8
  store i8* %__ptr, i8** %__ptr.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__ptr.addr, metadata !2216, metadata !DIExpression()), !dbg !2219
  %0 = load i8*, i8** %__ptr.addr, align 8, !dbg !2220, !tbaa !1213
  %cmp = icmp eq i8* %0, null, !dbg !2221
  ret i1 %cmp, !dbg !2222
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i64 @_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_(i8* %__first, i8* %__last) #11 comdat !dbg !2223 {
entry:
  %__first.addr = alloca i8*, align 8
  %__last.addr = alloca i8*, align 8
  %agg.tmp = alloca %"struct.std::random_access_iterator_tag", align 1
  %undef.agg.tmp = alloca %"struct.std::random_access_iterator_tag", align 1
  store i8* %__first, i8** %__first.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__first.addr, metadata !2231, metadata !DIExpression()), !dbg !2235
  store i8* %__last, i8** %__last.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__last.addr, metadata !2232, metadata !DIExpression()), !dbg !2236
  %0 = load i8*, i8** %__first.addr, align 8, !dbg !2237, !tbaa !1213
  %1 = load i8*, i8** %__last.addr, align 8, !dbg !2238, !tbaa !1213
  call void @_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_(i8** dereferenceable(8) %__first.addr), !dbg !2239
  %call = call i64 @_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag(i8* %0, i8* %1), !dbg !2240
  ret i64 %call, !dbg !2241
}

; Function Attrs: nounwind uwtable
define available_externally dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_(i8* %__p, i8* %__k1, i8* %__k2) #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2242 {
entry:
  %__p.addr = alloca i8*, align 8
  %__k1.addr = alloca i8*, align 8
  %__k2.addr = alloca i8*, align 8
  store i8* %__p, i8** %__p.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__p.addr, metadata !2247, metadata !DIExpression()), !dbg !2250
  store i8* %__k1, i8** %__k1.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__k1.addr, metadata !2248, metadata !DIExpression()), !dbg !2251
  store i8* %__k2, i8** %__k2.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__k2.addr, metadata !2249, metadata !DIExpression()), !dbg !2252
  %0 = load i8*, i8** %__p.addr, align 8, !dbg !2253, !tbaa !1213
  %1 = load i8*, i8** %__k1.addr, align 8, !dbg !2254, !tbaa !1213
  %2 = load i8*, i8** %__k2.addr, align 8, !dbg !2255, !tbaa !1213
  %3 = load i8*, i8** %__k1.addr, align 8, !dbg !2256, !tbaa !1213
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64, !dbg !2257
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64, !dbg !2257
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2257
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm(i8* %0, i8* %1, i64 %sub.ptr.sub)
          to label %invoke.cont unwind label %terminate.lpad, !dbg !2258

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !2259

terminate.lpad:                                   ; preds = %entry
  %4 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2258
  %5 = extractvalue { i8*, i32 } %4, 0, !dbg !2258
  call void @__clang_call_terminate(i8* %5) #14, !dbg !2258
  unreachable, !dbg !2258
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i64 @_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag(i8* %__first, i8* %__last) #9 comdat !dbg !2260 {
entry:
  %0 = alloca %"struct.std::random_access_iterator_tag", align 1
  %__first.addr = alloca i8*, align 8
  %__last.addr = alloca i8*, align 8
  store i8* %__first, i8** %__first.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__first.addr, metadata !2264, metadata !DIExpression()), !dbg !2269
  store i8* %__last, i8** %__last.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8** %__last.addr, metadata !2265, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.declare(metadata %"struct.std::random_access_iterator_tag"* %0, metadata !2266, metadata !DIExpression()), !dbg !2271
  %1 = load i8*, i8** %__last.addr, align 8, !dbg !2272, !tbaa !1213
  %2 = load i8*, i8** %__first.addr, align 8, !dbg !2273, !tbaa !1213
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64, !dbg !2274
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64, !dbg !2274
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2274
  ret i64 %sub.ptr.sub, !dbg !2275
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_(i8** dereferenceable(8) %0) #9 comdat !dbg !2276 {
entry:
  %.addr = alloca i8**, align 8
  store i8** %0, i8*** %.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata i8*** %.addr, metadata !2283, metadata !DIExpression()), !dbg !2286
  ret void, !dbg !2287
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272), i8*, i64) #5

; Function Attrs: nounwind uwtable
define available_externally dso_local i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(%"class.std::__cxx11::basic_string"* %this) #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2288 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !2293, metadata !DIExpression()), !dbg !2294
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %call = invoke i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* %this1)
          to label %invoke.cont unwind label %terminate.lpad, !dbg !2295

invoke.cont:                                      ; preds = %entry
  ret i8* %call, !dbg !2296

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2295
  %1 = extractvalue { i8*, i32 } %0, 0, !dbg !2295
  call void @__clang_call_terminate(i8* %1) #14, !dbg !2295
  unreachable, !dbg !2295
}

; Function Attrs: nounwind uwtable
define available_externally dso_local i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* %this) #7 align 2 !dbg !2297 {
entry:
  %this.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %this, %"class.std::__cxx11::basic_string"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"** %this.addr, metadata !2300, metadata !DIExpression()), !dbg !2301
  %this1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %this.addr, align 8
  %_M_string_length = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %this1, i32 0, i32 1, !dbg !2302
  %0 = load i64, i64* %_M_string_length, align 8, !dbg !2302, !tbaa !1904
  ret i64 %0, !dbg !2303
}

; Function Attrs: inlinehint uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272) %__os) #11 !dbg !2304 {
entry:
  %__os.addr = alloca %"class.std::basic_ostream"*, align 8
  store %"class.std::basic_ostream"* %__os, %"class.std::basic_ostream"** %__os.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %__os.addr, metadata !2306, metadata !DIExpression()), !dbg !2307
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__os.addr, align 8, !dbg !2308, !tbaa !1213
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* %0), !dbg !2309
  ret %"class.std::basic_ostream"* %call, !dbg !2310
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"*, i8 signext) #5

; Function Attrs: uwtable
define available_externally dso_local signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* %this, i8 signext %__c) #3 align 2 !dbg !2311 {
entry:
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  %__c.addr = alloca i8, align 1
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::basic_ios"** %this.addr, metadata !2322, metadata !DIExpression()), !dbg !2325
  store i8 %__c, i8* %__c.addr, align 1, !tbaa !1637
  call void @llvm.dbg.declare(metadata i8* %__c.addr, metadata !2324, metadata !DIExpression()), !dbg !2326
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %_M_ctype = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %this1, i32 0, i32 5, !dbg !2327
  %0 = load %"class.std::ctype"*, %"class.std::ctype"** %_M_ctype, align 8, !dbg !2327, !tbaa !2328
  %call = call dereferenceable(576) %"class.std::ctype"* @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(%"class.std::ctype"* %0), !dbg !2331
  %1 = load i8, i8* %__c.addr, align 1, !dbg !2332, !tbaa !1637
  %call2 = call signext i8 @_ZNKSt5ctypeIcE5widenEc(%"class.std::ctype"* %call, i8 signext %1), !dbg !2333
  ret i8 %call2, !dbg !2334
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"*) #5

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local dereferenceable(576) %"class.std::ctype"* @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(%"class.std::ctype"* %__f) #11 comdat !dbg !2335 {
entry:
  %__f.addr = alloca %"class.std::ctype"*, align 8
  store %"class.std::ctype"* %__f, %"class.std::ctype"** %__f.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::ctype"** %__f.addr, metadata !2344, metadata !DIExpression()), !dbg !2347
  %0 = load %"class.std::ctype"*, %"class.std::ctype"** %__f.addr, align 8, !dbg !2348, !tbaa !1213
  %tobool = icmp ne %"class.std::ctype"* %0, null, !dbg !2348
  br i1 %tobool, label %if.end, label %if.then, !dbg !2350

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #15, !dbg !2351
  unreachable, !dbg !2351

if.end:                                           ; preds = %entry
  %1 = load %"class.std::ctype"*, %"class.std::ctype"** %__f.addr, align 8, !dbg !2352, !tbaa !1213
  ret %"class.std::ctype"* %1, !dbg !2353
}

; Function Attrs: uwtable
define linkonce_odr dso_local signext i8 @_ZNKSt5ctypeIcE5widenEc(%"class.std::ctype"* %this, i8 signext %__c) #3 comdat align 2 !dbg !2354 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca %"class.std::ctype"*, align 8
  %__c.addr = alloca i8, align 1
  store %"class.std::ctype"* %this, %"class.std::ctype"** %this.addr, align 8, !tbaa !1213
  call void @llvm.dbg.declare(metadata %"class.std::ctype"** %this.addr, metadata !2361, metadata !DIExpression()), !dbg !2363
  store i8 %__c, i8* %__c.addr, align 1, !tbaa !1637
  call void @llvm.dbg.declare(metadata i8* %__c.addr, metadata !2362, metadata !DIExpression()), !dbg !2364
  %this1 = load %"class.std::ctype"*, %"class.std::ctype"** %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this1, i32 0, i32 8, !dbg !2365
  %0 = load i8, i8* %_M_widen_ok, align 8, !dbg !2365, !tbaa !2367
  %tobool = icmp ne i8 %0, 0, !dbg !2365
  br i1 %tobool, label %if.then, label %if.end, !dbg !2369

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this1, i32 0, i32 9, !dbg !2370
  %1 = load i8, i8* %__c.addr, align 1, !dbg !2371, !tbaa !1637
  %idxprom = zext i8 %1 to i64, !dbg !2370
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %_M_widen, i64 0, i64 %idxprom, !dbg !2370
  %2 = load i8, i8* %arrayidx, align 1, !dbg !2370, !tbaa !1637
  store i8 %2, i8* %retval, align 1, !dbg !2372
  br label %return, !dbg !2372

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* %this1), !dbg !2373
  %3 = load i8, i8* %__c.addr, align 1, !dbg !2374, !tbaa !1637
  %4 = bitcast %"class.std::ctype"* %this1 to i8 (%"class.std::ctype"*, i8)***, !dbg !2375
  %vtable = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %4, align 8, !dbg !2375, !tbaa !2017
  %vfn = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable, i64 6, !dbg !2375
  %5 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn, align 8, !dbg !2375
  %call = call signext i8 %5(%"class.std::ctype"* %this1, i8 signext %3), !dbg !2375
  store i8 %call, i8* %retval, align 1, !dbg !2376
  br label %return, !dbg !2376

return:                                           ; preds = %if.end, %if.then
  %6 = load i8, i8* %retval, align 1, !dbg !2377
  ret i8 %6, !dbg !2377
}

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() #10

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"*) #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_pthread_rwlock_yes.cpp() #3 section ".text.startup" !dbg !2378 {
entry:
  call void @__cxx_global_var_init(), !dbg !2380
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
!llvm.module.flags = !{!1159, !1160, !1161}
!llvm.ident = !{!1162}

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
!28 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !29, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !39, globals: !236, imports: !237, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "integration/pthreadrace/pthread-rwlock-yes.cpp", directory: "/home/brad/Code/OpenRace/tests/data")
!30 = !{!31}
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !33, file: !32, line: 169, baseType: !36, size: 32, elements: !37, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEUt_E")
!32 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/basic_string.h", directory: "")
!33 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::char_traits<char>, std::allocator<char> >", scope: !35, file: !34, line: 1618, flags: DIFlagFwdDecl, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE")
!34 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/basic_string.tcc", directory: "")
!35 = !DINamespace(name: "__cxx11", scope: !2, exportSymbols: true)
!36 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!37 = !{!38}
!38 = !DIEnumerator(name: "_S_local_capacity", value: 15, isUnsigned: true)
!39 = !{!40, !41, !49, !55, !92, !152, !204, !208, !228, !232, !235, !78, !33}
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
!209 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "BulletinRWLock", file: !29, line: 12, size: 704, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !210, identifier: "_ZTS14BulletinRWLock")
!210 = !{!211, !213, !216, !220, !221, !224}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "rwlock_", scope: !209, file: !29, line: 14, baseType: !212, size: 448)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_rwlock_t", file: !60, line: 91, baseType: !59)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "message_", scope: !209, file: !29, line: 15, baseType: !214, size: 256, offset: 448)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !2, file: !215, line: 79, baseType: !33)
!215 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/stringfwd.h", directory: "")
!216 = !DISubprogram(name: "BulletinRWLock", scope: !209, file: !29, line: 18, type: !217, scopeLine: 18, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!220 = !DISubprogram(name: "~BulletinRWLock", scope: !209, file: !29, line: 20, type: !217, scopeLine: 20, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!221 = !DISubprogram(name: "Read", linkageName: "_ZN14BulletinRWLock4ReadB5cxx11Ev", scope: !209, file: !29, line: 22, type: !222, scopeLine: 22, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!222 = !DISubroutineType(types: !223)
!223 = !{!214, !219}
!224 = !DISubprogram(name: "Update", linkageName: "_ZN14BulletinRWLock6UpdateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", scope: !209, file: !29, line: 28, type: !225, scopeLine: 28, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!236 = !{!0}
!237 = !{!238, !255, !258, !263, !323, !331, !335, !342, !346, !350, !352, !354, !358, !365, !369, !375, !381, !383, !387, !391, !395, !399, !410, !412, !416, !420, !424, !426, !431, !435, !439, !441, !443, !447, !456, !460, !464, !468, !470, !476, !478, !485, !490, !494, !498, !502, !506, !510, !512, !514, !518, !522, !526, !528, !532, !536, !538, !540, !544, !549, !554, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !623, !627, !631, !636, !640, !643, !646, !649, !651, !653, !655, !658, !661, !664, !667, !670, !673, !677, !680, !683, !686, !688, !690, !692, !694, !697, !700, !703, !706, !709, !711, !715, !719, !724, !730, !732, !734, !736, !738, !740, !742, !744, !746, !748, !750, !752, !754, !756, !760, !764, !770, !774, !779, !781, !786, !790, !794, !803, !807, !811, !815, !817, !821, !825, !829, !833, !837, !841, !845, !849, !851, !855, !859, !863, !869, !873, !877, !879, !883, !887, !893, !895, !899, !903, !907, !911, !915, !919, !923, !924, !925, !926, !928, !929, !930, !931, !932, !933, !934, !938, !943, !948, !952, !954, !956, !958, !960, !967, !971, !975, !979, !983, !987, !992, !996, !998, !1002, !1008, !1012, !1017, !1019, !1022, !1024, !1028, !1030, !1032, !1034, !1036, !1040, !1042, !1044, !1048, !1052, !1056, !1060, !1064, !1068, !1070, !1074, !1078, !1082, !1086, !1088, !1090, !1094, !1098, !1099, !1100, !1101, !1102, !1103, !1109, !1112, !1113, !1115, !1117, !1119, !1121, !1125, !1127, !1129, !1131, !1133, !1135, !1137, !1139, !1141, !1145, !1149, !1151, !1155}
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !239, file: !254, line: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !240, line: 6, baseType: !241)
!240 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !242, line: 21, baseType: !243)
!242 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !244, identifier: "_ZTS11__mbstate_t")
!244 = !{!245, !246}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !243, file: !242, line: 15, baseType: !11, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !243, file: !242, line: 20, baseType: !247, size: 32, offset: 32)
!247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !242, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !248, identifier: "_ZTSN11__mbstate_tUt_E")
!248 = !{!249, !250}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !247, file: !242, line: 18, baseType: !36, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !247, file: !242, line: 19, baseType: !251, size: 32)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 32, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 4)
!254 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cwchar", directory: "")
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !256, file: !254, line: 141)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !257, line: 20, baseType: !36)
!257 = !DIFile(filename: "/usr/include/bits/types/wint_t.h", directory: "")
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !259, file: !254, line: 143)
!259 = !DISubprogram(name: "btowc", scope: !260, file: !260, line: 318, type: !261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!260 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!261 = !DISubroutineType(types: !262)
!262 = !{!256, !11}
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !264, file: !254, line: 144)
!264 = !DISubprogram(name: "fgetwc", scope: !260, file: !260, line: 729, type: !265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!265 = !DISubroutineType(types: !266)
!266 = !{!256, !267}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !269, line: 5, baseType: !270)
!269 = !DIFile(filename: "/usr/include/bits/types/__FILE.h", directory: "")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !271, line: 49, size: 1728, flags: DIFlagTypePassByValue, elements: !272, identifier: "_ZTS8_IO_FILE")
!271 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!272 = !{!273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !288, !290, !291, !292, !295, !297, !298, !302, !305, !307, !310, !313, !314, !315, !318, !319}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !270, file: !271, line: 51, baseType: !11, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !270, file: !271, line: 54, baseType: !106, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !270, file: !271, line: 55, baseType: !106, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !270, file: !271, line: 56, baseType: !106, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !270, file: !271, line: 57, baseType: !106, size: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !270, file: !271, line: 58, baseType: !106, size: 64, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !270, file: !271, line: 59, baseType: !106, size: 64, offset: 384)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !270, file: !271, line: 60, baseType: !106, size: 64, offset: 448)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !270, file: !271, line: 61, baseType: !106, size: 64, offset: 512)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !270, file: !271, line: 64, baseType: !106, size: 64, offset: 576)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !270, file: !271, line: 65, baseType: !106, size: 64, offset: 640)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !270, file: !271, line: 66, baseType: !106, size: 64, offset: 704)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !270, file: !271, line: 68, baseType: !286, size: 64, offset: 768)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !271, line: 36, flags: DIFlagFwdDecl, identifier: "_ZTS10_IO_marker")
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !270, file: !271, line: 70, baseType: !289, size: 64, offset: 832)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !270, file: !271, line: 72, baseType: !11, size: 32, offset: 896)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !270, file: !271, line: 73, baseType: !11, size: 32, offset: 928)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !270, file: !271, line: 74, baseType: !293, size: 64, offset: 960)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !294, line: 152, baseType: !88)
!294 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !270, file: !271, line: 77, baseType: !296, size: 16, offset: 1024)
!296 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !270, file: !271, line: 78, baseType: !75, size: 8, offset: 1040)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !270, file: !271, line: 79, baseType: !299, size: 8, offset: 1048)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 8, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 1)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !270, file: !271, line: 81, baseType: !303, size: 64, offset: 1088)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !271, line: 43, baseType: null)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !270, file: !271, line: 89, baseType: !306, size: 64, offset: 1152)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !294, line: 153, baseType: !88)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !270, file: !271, line: 91, baseType: !308, size: 64, offset: 1216)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !271, line: 37, flags: DIFlagFwdDecl, identifier: "_ZTS11_IO_codecvt")
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !270, file: !271, line: 92, baseType: !311, size: 64, offset: 1280)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !271, line: 38, flags: DIFlagFwdDecl, identifier: "_ZTS13_IO_wide_data")
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !270, file: !271, line: 93, baseType: !289, size: 64, offset: 1344)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !270, file: !271, line: 94, baseType: !40, size: 64, offset: 1408)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !270, file: !271, line: 95, baseType: !316, size: 64, offset: 1472)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !317, line: 46, baseType: !53)
!317 = !DIFile(filename: "OpenRace-env/install/lib/clang/10.0.1/include/stddef.h", directory: "/home/brad/Code")
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !270, file: !271, line: 96, baseType: !11, size: 32, offset: 1536)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !270, file: !271, line: 98, baseType: !320, size: 160, offset: 1568)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 160, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 20)
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !324, file: !254, line: 145)
!324 = !DISubprogram(name: "fgetws", scope: !260, file: !260, line: 758, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!325 = !DISubroutineType(types: !326)
!326 = !{!327, !329, !11, !330}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!329 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !327)
!330 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !267)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !332, file: !254, line: 146)
!332 = !DISubprogram(name: "fputwc", scope: !260, file: !260, line: 743, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!333 = !DISubroutineType(types: !334)
!334 = !{!256, !328, !267}
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !336, file: !254, line: 147)
!336 = !DISubprogram(name: "fputws", scope: !260, file: !260, line: 765, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!337 = !DISubroutineType(types: !338)
!338 = !{!11, !339, !330}
!339 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !343, file: !254, line: 148)
!343 = !DISubprogram(name: "fwide", scope: !260, file: !260, line: 573, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!344 = !DISubroutineType(types: !345)
!345 = !{!11, !267, !11}
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !347, file: !254, line: 149)
!347 = !DISubprogram(name: "fwprintf", scope: !260, file: !260, line: 580, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!348 = !DISubroutineType(types: !349)
!349 = !{!11, !330, !339, null}
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !351, file: !254, line: 150)
!351 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !260, file: !260, line: 642, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !353, file: !254, line: 151)
!353 = !DISubprogram(name: "getwc", scope: !260, file: !260, line: 730, type: !265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !355, file: !254, line: 152)
!355 = !DISubprogram(name: "getwchar", scope: !260, file: !260, line: 736, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!356 = !DISubroutineType(types: !357)
!357 = !{!256}
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !359, file: !254, line: 153)
!359 = !DISubprogram(name: "mbrlen", scope: !260, file: !260, line: 329, type: !360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!360 = !DISubroutineType(types: !361)
!361 = !{!316, !362, !316, !363}
!362 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!363 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !366, file: !254, line: 154)
!366 = !DISubprogram(name: "mbrtowc", scope: !260, file: !260, line: 296, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!367 = !DISubroutineType(types: !368)
!368 = !{!316, !329, !362, !316, !363}
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !370, file: !254, line: 155)
!370 = !DISubprogram(name: "mbsinit", scope: !260, file: !260, line: 292, type: !371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!371 = !DISubroutineType(types: !372)
!372 = !{!11, !373}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !376, file: !254, line: 156)
!376 = !DISubprogram(name: "mbsrtowcs", scope: !260, file: !260, line: 337, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!377 = !DISubroutineType(types: !378)
!378 = !{!316, !329, !379, !316, !363}
!379 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !382, file: !254, line: 157)
!382 = !DISubprogram(name: "putwc", scope: !260, file: !260, line: 744, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !384, file: !254, line: 158)
!384 = !DISubprogram(name: "putwchar", scope: !260, file: !260, line: 750, type: !385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!385 = !DISubroutineType(types: !386)
!386 = !{!256, !328}
!387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !388, file: !254, line: 160)
!388 = !DISubprogram(name: "swprintf", scope: !260, file: !260, line: 590, type: !389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!389 = !DISubroutineType(types: !390)
!390 = !{!11, !329, !316, !339, null}
!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !392, file: !254, line: 162)
!392 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !260, file: !260, line: 649, type: !393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!393 = !DISubroutineType(types: !394)
!394 = !{!11, !339, !339, null}
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !396, file: !254, line: 163)
!396 = !DISubprogram(name: "ungetwc", scope: !260, file: !260, line: 773, type: !397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!397 = !DISubroutineType(types: !398)
!398 = !{!256, !256, !267}
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !400, file: !254, line: 164)
!400 = !DISubprogram(name: "vfwprintf", scope: !260, file: !260, line: 598, type: !401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!401 = !DISubroutineType(types: !402)
!402 = !{!11, !330, !339, !403}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !29, size: 192, flags: DIFlagTypePassByValue, elements: !405, identifier: "_ZTS13__va_list_tag")
!405 = !{!406, !407, !408, !409}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !404, file: !29, baseType: !36, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !404, file: !29, baseType: !36, size: 32, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !404, file: !29, baseType: !40, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !404, file: !29, baseType: !40, size: 64, offset: 128)
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !411, file: !254, line: 166)
!411 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !260, file: !260, line: 696, type: !401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !413, file: !254, line: 169)
!413 = !DISubprogram(name: "vswprintf", scope: !260, file: !260, line: 611, type: !414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!414 = !DISubroutineType(types: !415)
!415 = !{!11, !329, !316, !339, !403}
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !417, file: !254, line: 172)
!417 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !260, file: !260, line: 703, type: !418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!418 = !DISubroutineType(types: !419)
!419 = !{!11, !339, !339, !403}
!420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !421, file: !254, line: 174)
!421 = !DISubprogram(name: "vwprintf", scope: !260, file: !260, line: 606, type: !422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!422 = !DISubroutineType(types: !423)
!423 = !{!11, !339, !403}
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !425, file: !254, line: 176)
!425 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !260, file: !260, line: 700, type: !422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !427, file: !254, line: 178)
!427 = !DISubprogram(name: "wcrtomb", scope: !260, file: !260, line: 301, type: !428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!428 = !DISubroutineType(types: !429)
!429 = !{!316, !430, !328, !363}
!430 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !432, file: !254, line: 179)
!432 = !DISubprogram(name: "wcscat", scope: !260, file: !260, line: 97, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!433 = !DISubroutineType(types: !434)
!434 = !{!327, !329, !339}
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !436, file: !254, line: 180)
!436 = !DISubprogram(name: "wcscmp", scope: !260, file: !260, line: 106, type: !437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!437 = !DISubroutineType(types: !438)
!438 = !{!11, !340, !340}
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !440, file: !254, line: 181)
!440 = !DISubprogram(name: "wcscoll", scope: !260, file: !260, line: 131, type: !437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !442, file: !254, line: 182)
!442 = !DISubprogram(name: "wcscpy", scope: !260, file: !260, line: 87, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !444, file: !254, line: 183)
!444 = !DISubprogram(name: "wcscspn", scope: !260, file: !260, line: 187, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!445 = !DISubroutineType(types: !446)
!446 = !{!316, !340, !340}
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !448, file: !254, line: 184)
!448 = !DISubprogram(name: "wcsftime", scope: !260, file: !260, line: 837, type: !449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!449 = !DISubroutineType(types: !450)
!450 = !{!316, !329, !316, !339, !451}
!451 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!454 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !455, line: 7, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!455 = !DIFile(filename: "/usr/include/bits/types/struct_tm.h", directory: "")
!456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !457, file: !254, line: 185)
!457 = !DISubprogram(name: "wcslen", scope: !260, file: !260, line: 222, type: !458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!458 = !DISubroutineType(types: !459)
!459 = !{!316, !340}
!460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !461, file: !254, line: 186)
!461 = !DISubprogram(name: "wcsncat", scope: !260, file: !260, line: 101, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!462 = !DISubroutineType(types: !463)
!463 = !{!327, !329, !339, !316}
!464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !465, file: !254, line: 187)
!465 = !DISubprogram(name: "wcsncmp", scope: !260, file: !260, line: 109, type: !466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!466 = !DISubroutineType(types: !467)
!467 = !{!11, !340, !340, !316}
!468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !469, file: !254, line: 188)
!469 = !DISubprogram(name: "wcsncpy", scope: !260, file: !260, line: 92, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !471, file: !254, line: 189)
!471 = !DISubprogram(name: "wcsrtombs", scope: !260, file: !260, line: 343, type: !472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!472 = !DISubroutineType(types: !473)
!473 = !{!316, !430, !474, !316, !363}
!474 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !477, file: !254, line: 190)
!477 = !DISubprogram(name: "wcsspn", scope: !260, file: !260, line: 191, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !479, file: !254, line: 191)
!479 = !DISubprogram(name: "wcstod", scope: !260, file: !260, line: 377, type: !480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!480 = !DISubroutineType(types: !481)
!481 = !{!482, !339, !483}
!482 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!483 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !486, file: !254, line: 193)
!486 = !DISubprogram(name: "wcstof", scope: !260, file: !260, line: 382, type: !487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!487 = !DISubroutineType(types: !488)
!488 = !{!489, !339, !483}
!489 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !491, file: !254, line: 195)
!491 = !DISubprogram(name: "wcstok", scope: !260, file: !260, line: 217, type: !492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!492 = !DISubroutineType(types: !493)
!493 = !{!327, !329, !339, !483}
!494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !495, file: !254, line: 196)
!495 = !DISubprogram(name: "wcstol", scope: !260, file: !260, line: 428, type: !496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!496 = !DISubroutineType(types: !497)
!497 = !{!88, !339, !483, !11}
!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !499, file: !254, line: 197)
!499 = !DISubprogram(name: "wcstoul", scope: !260, file: !260, line: 433, type: !500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!500 = !DISubroutineType(types: !501)
!501 = !{!53, !339, !483, !11}
!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !503, file: !254, line: 198)
!503 = !DISubprogram(name: "wcsxfrm", scope: !260, file: !260, line: 135, type: !504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!504 = !DISubroutineType(types: !505)
!505 = !{!316, !329, !339, !316}
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !507, file: !254, line: 199)
!507 = !DISubprogram(name: "wctob", scope: !260, file: !260, line: 324, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!508 = !DISubroutineType(types: !509)
!509 = !{!11, !256}
!510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !511, file: !254, line: 200)
!511 = !DISubprogram(name: "wmemcmp", scope: !260, file: !260, line: 258, type: !466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !513, file: !254, line: 201)
!513 = !DISubprogram(name: "wmemcpy", scope: !260, file: !260, line: 262, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !515, file: !254, line: 202)
!515 = !DISubprogram(name: "wmemmove", scope: !260, file: !260, line: 267, type: !516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!516 = !DISubroutineType(types: !517)
!517 = !{!327, !327, !340, !316}
!518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !519, file: !254, line: 203)
!519 = !DISubprogram(name: "wmemset", scope: !260, file: !260, line: 271, type: !520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!520 = !DISubroutineType(types: !521)
!521 = !{!327, !327, !328, !316}
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !523, file: !254, line: 204)
!523 = !DISubprogram(name: "wprintf", scope: !260, file: !260, line: 587, type: !524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!524 = !DISubroutineType(types: !525)
!525 = !{!11, !339, null}
!526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !527, file: !254, line: 205)
!527 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !260, file: !260, line: 646, type: !524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !529, file: !254, line: 206)
!529 = !DISubprogram(name: "wcschr", scope: !260, file: !260, line: 164, type: !530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!530 = !DISubroutineType(types: !531)
!531 = !{!327, !340, !328}
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !533, file: !254, line: 207)
!533 = !DISubprogram(name: "wcspbrk", scope: !260, file: !260, line: 201, type: !534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!534 = !DISubroutineType(types: !535)
!535 = !{!327, !340, !340}
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !537, file: !254, line: 208)
!537 = !DISubprogram(name: "wcsrchr", scope: !260, file: !260, line: 174, type: !530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !539, file: !254, line: 209)
!539 = !DISubprogram(name: "wcsstr", scope: !260, file: !260, line: 212, type: !534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !541, file: !254, line: 210)
!541 = !DISubprogram(name: "wmemchr", scope: !260, file: !260, line: 253, type: !542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!542 = !DISubroutineType(types: !543)
!543 = !{!327, !340, !328, !316}
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !545, file: !254, line: 251)
!545 = !DISubprogram(name: "wcstold", scope: !260, file: !260, line: 384, type: !546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!546 = !DISubroutineType(types: !547)
!547 = !{!548, !339, !483}
!548 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !550, file: !254, line: 260)
!550 = !DISubprogram(name: "wcstoll", scope: !260, file: !260, line: 441, type: !551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!551 = !DISubroutineType(types: !552)
!552 = !{!553, !339, !483, !11}
!553 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !555, file: !254, line: 261)
!555 = !DISubprogram(name: "wcstoull", scope: !260, file: !260, line: 448, type: !556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!556 = !DISubroutineType(types: !557)
!557 = !{!558, !339, !483, !11}
!558 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !545, file: !254, line: 267)
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !550, file: !254, line: 268)
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !555, file: !254, line: 269)
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !486, file: !254, line: 283)
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !411, file: !254, line: 286)
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !417, file: !254, line: 289)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !425, file: !254, line: 292)
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !545, file: !254, line: 296)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !550, file: !254, line: 297)
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !555, file: !254, line: 298)
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !570, file: !571, line: 58)
!570 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !572, file: !571, line: 80, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !573, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!571 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/exception_ptr.h", directory: "")
!572 = !DINamespace(name: "__exception_ptr", scope: !2)
!573 = !{!574, !575, !579, !582, !583, !588, !589, !593, !598, !602, !606, !609, !610, !613, !616}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !570, file: !571, line: 82, baseType: !40, size: 64)
!575 = !DISubprogram(name: "exception_ptr", scope: !570, file: !571, line: 84, type: !576, scopeLine: 84, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !578, !40}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!579 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !570, file: !571, line: 86, type: !580, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !578}
!582 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !570, file: !571, line: 87, type: !580, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!583 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !570, file: !571, line: 89, type: !584, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!584 = !DISubroutineType(types: !585)
!585 = !{!40, !586}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!588 = !DISubprogram(name: "exception_ptr", scope: !570, file: !571, line: 97, type: !580, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!589 = !DISubprogram(name: "exception_ptr", scope: !570, file: !571, line: 99, type: !590, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !578, !592}
!592 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !587, size: 64)
!593 = !DISubprogram(name: "exception_ptr", scope: !570, file: !571, line: 102, type: !594, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !578, !596}
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !2, file: !113, line: 264, baseType: !597)
!597 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!598 = !DISubprogram(name: "exception_ptr", scope: !570, file: !571, line: 106, type: !599, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !578, !601}
!601 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !570, size: 64)
!602 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !570, file: !571, line: 119, type: !603, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!603 = !DISubroutineType(types: !604)
!604 = !{!605, !578, !592}
!605 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !570, size: 64)
!606 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !570, file: !571, line: 123, type: !607, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!607 = !DISubroutineType(types: !608)
!608 = !{!605, !578, !601}
!609 = !DISubprogram(name: "~exception_ptr", scope: !570, file: !571, line: 130, type: !580, scopeLine: 130, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!610 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !570, file: !571, line: 133, type: !611, scopeLine: 133, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !578, !605}
!613 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !570, file: !571, line: 145, type: !614, scopeLine: 145, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!614 = !DISubroutineType(types: !615)
!615 = !{!13, !586}
!616 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !570, file: !571, line: 154, type: !617, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!617 = !DISubroutineType(types: !618)
!618 = !{!619, !586}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!621 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !2, file: !622, line: 88, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!622 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/typeinfo", directory: "")
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !572, entity: !624, file: !571, line: 74)
!624 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !571, line: 70, type: !625, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !570}
!627 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !628, entity: !629, file: !630, line: 58)
!628 = !DINamespace(name: "__gnu_debug", scope: null)
!629 = !DINamespace(name: "__debug", scope: !2)
!630 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/debug/debug.h", directory: "")
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !632, file: !635, line: 47)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !633, line: 24, baseType: !634)
!633 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "")
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !294, line: 37, baseType: !75)
!635 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdint", directory: "")
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !637, file: !635, line: 48)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !633, line: 25, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !294, line: 39, baseType: !639)
!639 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !641, file: !635, line: 49)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !633, line: 26, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !294, line: 41, baseType: !11)
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !644, file: !635, line: 50)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !633, line: 27, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !294, line: 44, baseType: !88)
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !647, file: !635, line: 52)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !648, line: 58, baseType: !75)
!648 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !650, file: !635, line: 53)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !648, line: 60, baseType: !88)
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !652, file: !635, line: 54)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !648, line: 61, baseType: !88)
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !654, file: !635, line: 55)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !648, line: 62, baseType: !88)
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !656, file: !635, line: 57)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !648, line: 43, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !294, line: 52, baseType: !634)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !659, file: !635, line: 58)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !648, line: 44, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !294, line: 54, baseType: !638)
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !662, file: !635, line: 59)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !648, line: 45, baseType: !663)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !294, line: 56, baseType: !642)
!664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !665, file: !635, line: 60)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !648, line: 46, baseType: !666)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !294, line: 58, baseType: !645)
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !668, file: !635, line: 62)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !648, line: 101, baseType: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !294, line: 72, baseType: !88)
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !671, file: !635, line: 63)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !229, line: 267, baseType: !672)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !294, line: 207, baseType: !88)
!673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !674, file: !635, line: 65)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !675, line: 24, baseType: !676)
!675 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "")
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !294, line: 38, baseType: !78)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !678, file: !635, line: 66)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !675, line: 25, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !294, line: 40, baseType: !296)
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !681, file: !635, line: 67)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !675, line: 26, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !294, line: 42, baseType: !36)
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !684, file: !635, line: 68)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !675, line: 27, baseType: !685)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !294, line: 45, baseType: !53)
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !687, file: !635, line: 70)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !648, line: 71, baseType: !78)
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !689, file: !635, line: 71)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !648, line: 73, baseType: !53)
!690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !691, file: !635, line: 72)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !648, line: 74, baseType: !53)
!692 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !693, file: !635, line: 73)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !648, line: 75, baseType: !53)
!694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !695, file: !635, line: 75)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !648, line: 49, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !294, line: 53, baseType: !676)
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !698, file: !635, line: 76)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !648, line: 50, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !294, line: 55, baseType: !679)
!700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !701, file: !635, line: 77)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !648, line: 51, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !294, line: 57, baseType: !682)
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !704, file: !635, line: 78)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !648, line: 52, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !294, line: 59, baseType: !685)
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !707, file: !635, line: 80)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !648, line: 102, baseType: !708)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !294, line: 73, baseType: !53)
!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !710, file: !635, line: 81)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !648, line: 90, baseType: !53)
!711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !712, file: !714, line: 53)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !713, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!713 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!714 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/clocale", directory: "")
!715 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !716, file: !714, line: 54)
!716 = !DISubprogram(name: "setlocale", scope: !713, file: !713, line: 122, type: !717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!717 = !DISubroutineType(types: !718)
!718 = !{!106, !11, !45}
!719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !720, file: !714, line: 55)
!720 = !DISubprogram(name: "localeconv", scope: !713, file: !713, line: 125, type: !721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!721 = !DISubroutineType(types: !722)
!722 = !{!723}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !725, file: !729, line: 64)
!725 = !DISubprogram(name: "isalnum", scope: !726, file: !726, line: 108, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!726 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!727 = !DISubroutineType(types: !728)
!728 = !{!11, !11}
!729 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cctype", directory: "")
!730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !731, file: !729, line: 65)
!731 = !DISubprogram(name: "isalpha", scope: !726, file: !726, line: 109, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !733, file: !729, line: 66)
!733 = !DISubprogram(name: "iscntrl", scope: !726, file: !726, line: 110, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !735, file: !729, line: 67)
!735 = !DISubprogram(name: "isdigit", scope: !726, file: !726, line: 111, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !737, file: !729, line: 68)
!737 = !DISubprogram(name: "isgraph", scope: !726, file: !726, line: 113, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !739, file: !729, line: 69)
!739 = !DISubprogram(name: "islower", scope: !726, file: !726, line: 112, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !741, file: !729, line: 70)
!741 = !DISubprogram(name: "isprint", scope: !726, file: !726, line: 114, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !743, file: !729, line: 71)
!743 = !DISubprogram(name: "ispunct", scope: !726, file: !726, line: 115, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !745, file: !729, line: 72)
!745 = !DISubprogram(name: "isspace", scope: !726, file: !726, line: 116, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !747, file: !729, line: 73)
!747 = !DISubprogram(name: "isupper", scope: !726, file: !726, line: 117, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !749, file: !729, line: 74)
!749 = !DISubprogram(name: "isxdigit", scope: !726, file: !726, line: 118, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !751, file: !729, line: 75)
!751 = !DISubprogram(name: "tolower", scope: !726, file: !726, line: 122, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !753, file: !729, line: 76)
!753 = !DISubprogram(name: "toupper", scope: !726, file: !726, line: 125, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !755, file: !729, line: 87)
!755 = !DISubprogram(name: "isblank", scope: !726, file: !726, line: 130, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !757, file: !759, line: 52)
!757 = !DISubprogram(name: "abs", scope: !758, file: !758, line: 840, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!758 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!759 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/std_abs.h", directory: "")
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !761, file: !763, line: 127)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !758, line: 62, baseType: !762)
!762 = !DICompositeType(tag: DW_TAG_structure_type, file: !758, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!763 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdlib", directory: "")
!764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !765, file: !763, line: 128)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !758, line: 70, baseType: !766)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !758, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !767, identifier: "_ZTS6ldiv_t")
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !766, file: !758, line: 68, baseType: !88, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !766, file: !758, line: 69, baseType: !88, size: 64, offset: 64)
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !771, file: !763, line: 130)
!771 = !DISubprogram(name: "abort", scope: !758, file: !758, line: 591, type: !772, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!772 = !DISubroutineType(types: !773)
!773 = !{null}
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !775, file: !763, line: 134)
!775 = !DISubprogram(name: "atexit", scope: !758, file: !758, line: 595, type: !776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!776 = !DISubroutineType(types: !777)
!777 = !{!11, !778}
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !780, file: !763, line: 137)
!780 = !DISubprogram(name: "at_quick_exit", scope: !758, file: !758, line: 600, type: !776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !782, file: !763, line: 140)
!782 = !DISubprogram(name: "atof", scope: !783, file: !783, line: 25, type: !784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!783 = !DIFile(filename: "/usr/include/bits/stdlib-float.h", directory: "")
!784 = !DISubroutineType(types: !785)
!785 = !{!482, !45}
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !787, file: !763, line: 141)
!787 = !DISubprogram(name: "atoi", scope: !758, file: !758, line: 361, type: !788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!788 = !DISubroutineType(types: !789)
!789 = !{!11, !45}
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !791, file: !763, line: 142)
!791 = !DISubprogram(name: "atol", scope: !758, file: !758, line: 366, type: !792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!792 = !DISubroutineType(types: !793)
!793 = !{!88, !45}
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !795, file: !763, line: 143)
!795 = !DISubprogram(name: "bsearch", scope: !796, file: !796, line: 20, type: !797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!796 = !DIFile(filename: "/usr/include/bits/stdlib-bsearch.h", directory: "")
!797 = !DISubroutineType(types: !798)
!798 = !{!40, !118, !118, !316, !316, !799}
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !758, line: 808, baseType: !800)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!11, !118, !118}
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !804, file: !763, line: 144)
!804 = !DISubprogram(name: "calloc", scope: !758, file: !758, line: 542, type: !805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!805 = !DISubroutineType(types: !806)
!806 = !{!40, !316, !316}
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !808, file: !763, line: 145)
!808 = !DISubprogram(name: "div", scope: !758, file: !758, line: 852, type: !809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!809 = !DISubroutineType(types: !810)
!810 = !{!761, !11, !11}
!811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !812, file: !763, line: 146)
!812 = !DISubprogram(name: "exit", scope: !758, file: !758, line: 617, type: !813, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!813 = !DISubroutineType(types: !814)
!814 = !{null, !11}
!815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !816, file: !763, line: 147)
!816 = !DISubprogram(name: "free", scope: !758, file: !758, line: 565, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !818, file: !763, line: 148)
!818 = !DISubprogram(name: "getenv", scope: !758, file: !758, line: 634, type: !819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!819 = !DISubroutineType(types: !820)
!820 = !{!106, !45}
!821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !822, file: !763, line: 149)
!822 = !DISubprogram(name: "labs", scope: !758, file: !758, line: 841, type: !823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!823 = !DISubroutineType(types: !824)
!824 = !{!88, !88}
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !826, file: !763, line: 150)
!826 = !DISubprogram(name: "ldiv", scope: !758, file: !758, line: 854, type: !827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!827 = !DISubroutineType(types: !828)
!828 = !{!765, !88, !88}
!829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !830, file: !763, line: 151)
!830 = !DISubprogram(name: "malloc", scope: !758, file: !758, line: 539, type: !831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!831 = !DISubroutineType(types: !832)
!832 = !{!40, !316}
!833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !834, file: !763, line: 153)
!834 = !DISubprogram(name: "mblen", scope: !758, file: !758, line: 922, type: !835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!835 = !DISubroutineType(types: !836)
!836 = !{!11, !45, !316}
!837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !838, file: !763, line: 154)
!838 = !DISubprogram(name: "mbstowcs", scope: !758, file: !758, line: 933, type: !839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!839 = !DISubroutineType(types: !840)
!840 = !{!316, !329, !362, !316}
!841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !842, file: !763, line: 155)
!842 = !DISubprogram(name: "mbtowc", scope: !758, file: !758, line: 925, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!843 = !DISubroutineType(types: !844)
!844 = !{!11, !329, !362, !316}
!845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !846, file: !763, line: 157)
!846 = !DISubprogram(name: "qsort", scope: !758, file: !758, line: 830, type: !847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!847 = !DISubroutineType(types: !848)
!848 = !{null, !40, !316, !316, !799}
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !850, file: !763, line: 160)
!850 = !DISubprogram(name: "quick_exit", scope: !758, file: !758, line: 623, type: !813, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!851 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !852, file: !763, line: 163)
!852 = !DISubprogram(name: "rand", scope: !758, file: !758, line: 453, type: !853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!853 = !DISubroutineType(types: !854)
!854 = !{!11}
!855 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !856, file: !763, line: 164)
!856 = !DISubprogram(name: "realloc", scope: !758, file: !758, line: 550, type: !857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!857 = !DISubroutineType(types: !858)
!858 = !{!40, !40, !316}
!859 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !860, file: !763, line: 165)
!860 = !DISubprogram(name: "srand", scope: !758, file: !758, line: 455, type: !861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !36}
!863 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !864, file: !763, line: 166)
!864 = !DISubprogram(name: "strtod", scope: !758, file: !758, line: 117, type: !865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!865 = !DISubroutineType(types: !866)
!866 = !{!482, !362, !867}
!867 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !868)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !870, file: !763, line: 167)
!870 = !DISubprogram(name: "strtol", scope: !758, file: !758, line: 176, type: !871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!871 = !DISubroutineType(types: !872)
!872 = !{!88, !362, !867, !11}
!873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !874, file: !763, line: 168)
!874 = !DISubprogram(name: "strtoul", scope: !758, file: !758, line: 180, type: !875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!875 = !DISubroutineType(types: !876)
!876 = !{!53, !362, !867, !11}
!877 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !878, file: !763, line: 169)
!878 = !DISubprogram(name: "system", scope: !758, file: !758, line: 784, type: !788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !880, file: !763, line: 171)
!880 = !DISubprogram(name: "wcstombs", scope: !758, file: !758, line: 937, type: !881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!881 = !DISubroutineType(types: !882)
!882 = !{!316, !430, !339, !316}
!883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !884, file: !763, line: 172)
!884 = !DISubprogram(name: "wctomb", scope: !758, file: !758, line: 929, type: !885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!885 = !DISubroutineType(types: !886)
!886 = !{!11, !106, !328}
!887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !888, file: !763, line: 200)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !758, line: 80, baseType: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !758, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !890, identifier: "_ZTS7lldiv_t")
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !889, file: !758, line: 78, baseType: !553, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !889, file: !758, line: 79, baseType: !553, size: 64, offset: 64)
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !894, file: !763, line: 206)
!894 = !DISubprogram(name: "_Exit", scope: !758, file: !758, line: 629, type: !813, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !896, file: !763, line: 210)
!896 = !DISubprogram(name: "llabs", scope: !758, file: !758, line: 844, type: !897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!897 = !DISubroutineType(types: !898)
!898 = !{!553, !553}
!899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !900, file: !763, line: 216)
!900 = !DISubprogram(name: "lldiv", scope: !758, file: !758, line: 858, type: !901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!901 = !DISubroutineType(types: !902)
!902 = !{!888, !553, !553}
!903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !904, file: !763, line: 227)
!904 = !DISubprogram(name: "atoll", scope: !758, file: !758, line: 373, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!905 = !DISubroutineType(types: !906)
!906 = !{!553, !45}
!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !908, file: !763, line: 228)
!908 = !DISubprogram(name: "strtoll", scope: !758, file: !758, line: 200, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!909 = !DISubroutineType(types: !910)
!910 = !{!553, !362, !867, !11}
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !912, file: !763, line: 229)
!912 = !DISubprogram(name: "strtoull", scope: !758, file: !758, line: 205, type: !913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!913 = !DISubroutineType(types: !914)
!914 = !{!558, !362, !867, !11}
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !916, file: !763, line: 231)
!916 = !DISubprogram(name: "strtof", scope: !758, file: !758, line: 123, type: !917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!917 = !DISubroutineType(types: !918)
!918 = !{!489, !362, !867}
!919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !920, file: !763, line: 232)
!920 = !DISubprogram(name: "strtold", scope: !758, file: !758, line: 126, type: !921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!921 = !DISubroutineType(types: !922)
!922 = !{!548, !362, !867}
!923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !888, file: !763, line: 240)
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !894, file: !763, line: 242)
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !896, file: !763, line: 244)
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !927, file: !763, line: 245)
!927 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !96, file: !763, line: 213, type: !901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !900, file: !763, line: 246)
!929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !904, file: !763, line: 248)
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !916, file: !763, line: 249)
!931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !908, file: !763, line: 250)
!932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !912, file: !763, line: 251)
!933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !920, file: !763, line: 252)
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !935, file: !937, line: 98)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !936, line: 7, baseType: !270)
!936 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!937 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdio", directory: "")
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !939, file: !937, line: 99)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !42, line: 84, baseType: !940)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !941, line: 14, baseType: !942)
!941 = !DIFile(filename: "/usr/include/bits/types/__fpos_t.h", directory: "")
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !941, line: 10, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !944, file: !937, line: 101)
!944 = !DISubprogram(name: "clearerr", scope: !42, file: !42, line: 762, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!945 = !DISubroutineType(types: !946)
!946 = !{null, !947}
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !949, file: !937, line: 102)
!949 = !DISubprogram(name: "fclose", scope: !42, file: !42, line: 213, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!950 = !DISubroutineType(types: !951)
!951 = !{!11, !947}
!952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !953, file: !937, line: 103)
!953 = !DISubprogram(name: "feof", scope: !42, file: !42, line: 764, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!954 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !955, file: !937, line: 104)
!955 = !DISubprogram(name: "ferror", scope: !42, file: !42, line: 766, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!956 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !957, file: !937, line: 105)
!957 = !DISubprogram(name: "fflush", scope: !42, file: !42, line: 218, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!958 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !959, file: !937, line: 106)
!959 = !DISubprogram(name: "fgetc", scope: !42, file: !42, line: 489, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!960 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !961, file: !937, line: 107)
!961 = !DISubprogram(name: "fgetpos", scope: !42, file: !42, line: 736, type: !962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!962 = !DISubroutineType(types: !963)
!963 = !{!11, !964, !965}
!964 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !947)
!965 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !966)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !968, file: !937, line: 108)
!968 = !DISubprogram(name: "fgets", scope: !42, file: !42, line: 568, type: !969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!969 = !DISubroutineType(types: !970)
!970 = !{!106, !430, !11, !964}
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !972, file: !937, line: 109)
!972 = !DISubprogram(name: "fopen", scope: !42, file: !42, line: 246, type: !973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!973 = !DISubroutineType(types: !974)
!974 = !{!947, !362, !362}
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !976, file: !937, line: 110)
!976 = !DISubprogram(name: "fprintf", scope: !42, file: !42, line: 326, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!977 = !DISubroutineType(types: !978)
!978 = !{!11, !964, !362, null}
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !980, file: !937, line: 111)
!980 = !DISubprogram(name: "fputc", scope: !42, file: !42, line: 525, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!981 = !DISubroutineType(types: !982)
!982 = !{!11, !11, !947}
!983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !984, file: !937, line: 112)
!984 = !DISubprogram(name: "fputs", scope: !42, file: !42, line: 631, type: !985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!985 = !DISubroutineType(types: !986)
!986 = !{!11, !362, !964}
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !988, file: !937, line: 113)
!988 = !DISubprogram(name: "fread", scope: !42, file: !42, line: 651, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!989 = !DISubroutineType(types: !990)
!990 = !{!316, !991, !316, !316, !964}
!991 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!992 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !993, file: !937, line: 114)
!993 = !DISubprogram(name: "freopen", scope: !42, file: !42, line: 252, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!994 = !DISubroutineType(types: !995)
!995 = !{!947, !362, !362, !964}
!996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !997, file: !937, line: 115)
!997 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !42, file: !42, line: 410, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!998 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !999, file: !937, line: 116)
!999 = !DISubprogram(name: "fseek", scope: !42, file: !42, line: 689, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!11, !947, !88, !11}
!1002 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1003, file: !937, line: 117)
!1003 = !DISubprogram(name: "fsetpos", scope: !42, file: !42, line: 741, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!11, !947, !1006}
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !939)
!1008 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1009, file: !937, line: 118)
!1009 = !DISubprogram(name: "ftell", scope: !42, file: !42, line: 694, type: !1010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!88, !947}
!1012 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1013, file: !937, line: 119)
!1013 = !DISubprogram(name: "fwrite", scope: !42, file: !42, line: 657, type: !1014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!316, !1016, !316, !316, !964}
!1016 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !118)
!1017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1018, file: !937, line: 120)
!1018 = !DISubprogram(name: "getc", scope: !42, file: !42, line: 490, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1020, file: !937, line: 121)
!1020 = !DISubprogram(name: "getchar", scope: !1021, file: !1021, line: 47, type: !853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1021 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1022 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1023, file: !937, line: 126)
!1023 = !DISubprogram(name: "perror", scope: !42, file: !42, line: 780, type: !43, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1024 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1025, file: !937, line: 127)
!1025 = !DISubprogram(name: "printf", scope: !42, file: !42, line: 332, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!11, !362, null}
!1028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1029, file: !937, line: 128)
!1029 = !DISubprogram(name: "putc", scope: !42, file: !42, line: 526, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1030 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1031, file: !937, line: 129)
!1031 = !DISubprogram(name: "putchar", scope: !1021, file: !1021, line: 82, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1033, file: !937, line: 130)
!1033 = !DISubprogram(name: "puts", scope: !42, file: !42, line: 637, type: !788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1035, file: !937, line: 131)
!1035 = !DISubprogram(name: "remove", scope: !42, file: !42, line: 146, type: !788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1037, file: !937, line: 132)
!1037 = !DISubprogram(name: "rename", scope: !42, file: !42, line: 148, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!11, !45, !45}
!1040 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1041, file: !937, line: 133)
!1041 = !DISubprogram(name: "rewind", scope: !42, file: !42, line: 699, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1042 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1043, file: !937, line: 134)
!1043 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !42, file: !42, line: 413, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1044 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1045, file: !937, line: 135)
!1045 = !DISubprogram(name: "setbuf", scope: !42, file: !42, line: 304, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{null, !964, !430}
!1048 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1049, file: !937, line: 136)
!1049 = !DISubprogram(name: "setvbuf", scope: !42, file: !42, line: 308, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!11, !964, !430, !11, !316}
!1052 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1053, file: !937, line: 137)
!1053 = !DISubprogram(name: "sprintf", scope: !42, file: !42, line: 334, type: !1054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!11, !430, !362, null}
!1056 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1057, file: !937, line: 138)
!1057 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !42, file: !42, line: 415, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!11, !362, !362, null}
!1060 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1061, file: !937, line: 139)
!1061 = !DISubprogram(name: "tmpfile", scope: !42, file: !42, line: 173, type: !1062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!947}
!1064 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1065, file: !937, line: 141)
!1065 = !DISubprogram(name: "tmpnam", scope: !42, file: !42, line: 187, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!106, !106}
!1068 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1069, file: !937, line: 143)
!1069 = !DISubprogram(name: "ungetc", scope: !42, file: !42, line: 644, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1070 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1071, file: !937, line: 144)
!1071 = !DISubprogram(name: "vfprintf", scope: !42, file: !42, line: 341, type: !1072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!11, !964, !362, !403}
!1074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1075, file: !937, line: 145)
!1075 = !DISubprogram(name: "vprintf", scope: !1021, file: !1021, line: 39, type: !1076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!11, !362, !403}
!1078 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1079, file: !937, line: 146)
!1079 = !DISubprogram(name: "vsprintf", scope: !42, file: !42, line: 349, type: !1080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!11, !430, !362, !403}
!1082 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !1083, file: !937, line: 175)
!1083 = !DISubprogram(name: "snprintf", scope: !42, file: !42, line: 354, type: !1084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!11, !430, !316, !362, null}
!1086 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !1087, file: !937, line: 176)
!1087 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !42, file: !42, line: 455, type: !1072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !1089, file: !937, line: 177)
!1089 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !42, file: !42, line: 460, type: !1076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1090 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !1091, file: !937, line: 178)
!1091 = !DISubprogram(name: "vsnprintf", scope: !42, file: !42, line: 358, type: !1092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!11, !430, !316, !362, !403}
!1094 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !1095, file: !937, line: 179)
!1095 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !42, file: !42, line: 463, type: !1096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!11, !362, !362, !403}
!1098 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1083, file: !937, line: 185)
!1099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1087, file: !937, line: 186)
!1100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1089, file: !937, line: 187)
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1091, file: !937, line: 188)
!1102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1095, file: !937, line: 189)
!1103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1104, file: !1108, line: 82)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1105, line: 48, baseType: !1106)
!1105 = !DIFile(filename: "/usr/include/wctype.h", directory: "")
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !642)
!1108 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cwctype", directory: "")
!1109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1110, file: !1108, line: 83)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1111, line: 38, baseType: !53)
!1111 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !256, file: !1108, line: 84)
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1114, file: !1108, line: 86)
!1114 = !DISubprogram(name: "iswalnum", scope: !1111, file: !1111, line: 95, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1116, file: !1108, line: 87)
!1116 = !DISubprogram(name: "iswalpha", scope: !1111, file: !1111, line: 101, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1118, file: !1108, line: 89)
!1118 = !DISubprogram(name: "iswblank", scope: !1111, file: !1111, line: 146, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1120, file: !1108, line: 91)
!1120 = !DISubprogram(name: "iswcntrl", scope: !1111, file: !1111, line: 104, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1122, file: !1108, line: 92)
!1122 = !DISubprogram(name: "iswctype", scope: !1111, file: !1111, line: 159, type: !1123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!11, !256, !1110}
!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1126, file: !1108, line: 93)
!1126 = !DISubprogram(name: "iswdigit", scope: !1111, file: !1111, line: 108, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1128, file: !1108, line: 94)
!1128 = !DISubprogram(name: "iswgraph", scope: !1111, file: !1111, line: 112, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1130, file: !1108, line: 95)
!1130 = !DISubprogram(name: "iswlower", scope: !1111, file: !1111, line: 117, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1132, file: !1108, line: 96)
!1132 = !DISubprogram(name: "iswprint", scope: !1111, file: !1111, line: 120, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1134, file: !1108, line: 97)
!1134 = !DISubprogram(name: "iswpunct", scope: !1111, file: !1111, line: 125, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1136, file: !1108, line: 98)
!1136 = !DISubprogram(name: "iswspace", scope: !1111, file: !1111, line: 130, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1138, file: !1108, line: 99)
!1138 = !DISubprogram(name: "iswupper", scope: !1111, file: !1111, line: 135, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1140, file: !1108, line: 100)
!1140 = !DISubprogram(name: "iswxdigit", scope: !1111, file: !1111, line: 140, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1142, file: !1108, line: 101)
!1142 = !DISubprogram(name: "towctrans", scope: !1105, file: !1105, line: 55, type: !1143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!256, !256, !1104}
!1145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1146, file: !1108, line: 102)
!1146 = !DISubprogram(name: "towlower", scope: !1111, file: !1111, line: 166, type: !1147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!256, !256}
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1150, file: !1108, line: 103)
!1150 = !DISubprogram(name: "towupper", scope: !1111, file: !1111, line: 169, type: !1147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1152, file: !1108, line: 104)
!1152 = !DISubprogram(name: "wctrans", scope: !1105, file: !1105, line: 52, type: !1153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!1104, !45}
!1155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1156, file: !1108, line: 105)
!1156 = !DISubprogram(name: "wctype", scope: !1111, file: !1111, line: 155, type: !1157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!1110, !45}
!1159 = !{i32 7, !"Dwarf Version", i32 4}
!1160 = !{i32 2, !"Debug Info Version", i32 3}
!1161 = !{i32 1, !"wchar_size", i32 4}
!1162 = !{!"clang version 10.0.1 "}
!1163 = distinct !DISubprogram(name: "main", scope: !29, file: !29, line: 54, type: !853, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !1164)
!1164 = !{!1165, !1166, !1167, !1168, !1170}
!1165 = !DILocalVariable(name: "bulletin", scope: !1163, file: !29, line: 55, type: !209)
!1166 = !DILocalVariable(name: "rc", scope: !1163, file: !29, line: 56, type: !11)
!1167 = !DILocalVariable(name: "res", scope: !1163, file: !29, line: 57, type: !40)
!1168 = !DILocalVariable(name: "thr_editor", scope: !1163, file: !29, line: 58, type: !1169)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !60, line: 27, baseType: !53)
!1170 = !DILocalVariable(name: "thr_reader", scope: !1163, file: !29, line: 58, type: !1169)
!1171 = !DILocation(line: 55, column: 3, scope: !1163)
!1172 = !DILocation(line: 55, column: 18, scope: !1163)
!1173 = !DILocation(line: 56, column: 3, scope: !1163)
!1174 = !DILocation(line: 56, column: 7, scope: !1163)
!1175 = !DILocation(line: 57, column: 3, scope: !1163)
!1176 = !DILocation(line: 57, column: 9, scope: !1163)
!1177 = !DILocation(line: 58, column: 3, scope: !1163)
!1178 = !DILocation(line: 58, column: 13, scope: !1163)
!1179 = !DILocation(line: 58, column: 25, scope: !1163)
!1180 = !DILocation(line: 60, column: 58, scope: !1163)
!1181 = !DILocation(line: 60, column: 8, scope: !1163)
!1182 = !DILocation(line: 60, column: 6, scope: !1163)
!1183 = !{!1184, !1184, i64 0}
!1184 = !{!"int", !1185, i64 0}
!1185 = !{!"omnipotent char", !1186, i64 0}
!1186 = !{!"Simple C++ TBAA"}
!1187 = !DILocation(line: 61, column: 7, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1163, file: !29, line: 61, column: 7)
!1189 = !DILocation(line: 61, column: 7, scope: !1163)
!1190 = !DILocation(line: 62, column: 5, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1188, file: !29, line: 61, column: 11)
!1192 = !DILocation(line: 63, column: 5, scope: !1191)
!1193 = !DILocation(line: 74, column: 1, scope: !1191)
!1194 = !DILocation(line: 74, column: 1, scope: !1163)
!1195 = !DILocation(line: 66, column: 58, scope: !1163)
!1196 = !DILocation(line: 66, column: 8, scope: !1163)
!1197 = !DILocation(line: 66, column: 6, scope: !1163)
!1198 = !DILocation(line: 67, column: 7, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1163, file: !29, line: 67, column: 7)
!1200 = !DILocation(line: 67, column: 7, scope: !1163)
!1201 = !DILocation(line: 68, column: 5, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1199, file: !29, line: 67, column: 11)
!1203 = !DILocation(line: 69, column: 5, scope: !1202)
!1204 = !DILocation(line: 72, column: 16, scope: !1163)
!1205 = !{!1206, !1206, i64 0}
!1206 = !{!"long", !1185, i64 0}
!1207 = !DILocation(line: 72, column: 3, scope: !1163)
!1208 = !DILocation(line: 73, column: 16, scope: !1163)
!1209 = !DILocation(line: 73, column: 3, scope: !1163)
!1210 = distinct !DISubprogram(name: "BulletinRWLock", linkageName: "_ZN14BulletinRWLockC2Ev", scope: !209, file: !29, line: 18, type: !217, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !216, retainedNodes: !1211)
!1211 = !{!1212}
!1212 = !DILocalVariable(name: "this", arg: 1, scope: !1210, type: !208, flags: DIFlagArtificial | DIFlagObjectPointer)
!1213 = !{!1214, !1214, i64 0}
!1214 = !{!"any pointer", !1185, i64 0}
!1215 = !DILocation(line: 0, scope: !1210)
!1216 = !DILocation(line: 18, column: 3, scope: !1210)
!1217 = !DILocation(line: 18, column: 22, scope: !1210)
!1218 = !DILocation(line: 18, column: 68, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1210, file: !29, line: 18, column: 45)
!1220 = !DILocation(line: 18, column: 47, scope: !1219)
!1221 = !DILocation(line: 18, column: 84, scope: !1210)
!1222 = !{!1223}
!1223 = !{i64 2, i64 3, i1 false}
!1224 = distinct !DISubprogram(name: "Editor", linkageName: "_ZL6EditorPv", scope: !29, file: !29, line: 35, type: !1225, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !1227)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!40, !40}
!1227 = !{!1228, !1229, !1230}
!1228 = !DILocalVariable(name: "rbuf", arg: 1, scope: !1224, file: !29, line: 35, type: !40)
!1229 = !DILocalVariable(name: "rbuf_ptr", scope: !1224, file: !29, line: 36, type: !208)
!1230 = !DILocalVariable(name: "i", scope: !1224, file: !29, line: 37, type: !11)
!1231 = !DILocation(line: 35, column: 27, scope: !1224)
!1232 = !DILocation(line: 36, column: 3, scope: !1224)
!1233 = !DILocation(line: 36, column: 9, scope: !1224)
!1234 = !DILocation(line: 36, column: 38, scope: !1224)
!1235 = !DILocation(line: 36, column: 20, scope: !1224)
!1236 = !DILocation(line: 37, column: 3, scope: !1224)
!1237 = !DILocation(line: 37, column: 7, scope: !1224)
!1238 = !DILocation(line: 38, column: 3, scope: !1224)
!1239 = !DILocation(line: 39, column: 5, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1224, file: !29, line: 38, column: 16)
!1241 = !DILocation(line: 39, column: 22, scope: !1240)
!1242 = !DILocation(line: 39, column: 15, scope: !1240)
!1243 = !DILocation(line: 40, column: 6, scope: !1240)
!1244 = !DILocation(line: 41, column: 5, scope: !1240)
!1245 = distinct !{!1245, !1238, !1246}
!1246 = !DILocation(line: 42, column: 3, scope: !1224)
!1247 = !DILocation(line: 43, column: 1, scope: !1240)
!1248 = !DILocation(line: 43, column: 1, scope: !1224)
!1249 = distinct !DISubprogram(name: "Reader", linkageName: "_ZL6ReaderPv", scope: !29, file: !29, line: 45, type: !1225, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !1250)
!1250 = !{!1251, !1252, !1253, !1254}
!1251 = !DILocalVariable(name: "rbuf", arg: 1, scope: !1249, file: !29, line: 45, type: !40)
!1252 = !DILocalVariable(name: "rbuf_ptr", scope: !1249, file: !29, line: 46, type: !208)
!1253 = !DILocalVariable(name: "i", scope: !1249, file: !29, line: 47, type: !11)
!1254 = !DILocalVariable(name: "msg", scope: !1255, file: !29, line: 49, type: !214)
!1255 = distinct !DILexicalBlock(scope: !1249, file: !29, line: 48, column: 16)
!1256 = !DILocation(line: 45, column: 27, scope: !1249)
!1257 = !DILocation(line: 46, column: 3, scope: !1249)
!1258 = !DILocation(line: 46, column: 9, scope: !1249)
!1259 = !DILocation(line: 46, column: 38, scope: !1249)
!1260 = !DILocation(line: 46, column: 20, scope: !1249)
!1261 = !DILocation(line: 47, column: 3, scope: !1249)
!1262 = !DILocation(line: 47, column: 7, scope: !1249)
!1263 = !DILocation(line: 48, column: 3, scope: !1249)
!1264 = !DILocation(line: 49, column: 5, scope: !1255)
!1265 = !DILocation(line: 49, column: 17, scope: !1255)
!1266 = !DILocation(line: 49, column: 23, scope: !1255)
!1267 = !DILocation(line: 49, column: 33, scope: !1255)
!1268 = !DILocation(line: 50, column: 15, scope: !1255)
!1269 = !DILocation(line: 50, column: 22, scope: !1255)
!1270 = !DILocation(line: 51, column: 3, scope: !1249)
!1271 = distinct !{!1271, !1263, !1270}
!1272 = !DILocation(line: 52, column: 1, scope: !1255)
!1273 = !DILocation(line: 52, column: 1, scope: !1249)
!1274 = distinct !DISubprogram(name: "~BulletinRWLock", linkageName: "_ZN14BulletinRWLockD2Ev", scope: !209, file: !29, line: 20, type: !217, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !220, retainedNodes: !1275)
!1275 = !{!1276}
!1276 = !DILocalVariable(name: "this", arg: 1, scope: !1274, type: !208, flags: DIFlagArtificial | DIFlagObjectPointer)
!1277 = !DILocation(line: 0, scope: !1274)
!1278 = !DILocation(line: 20, column: 22, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1274, file: !29, line: 20, column: 21)
!1280 = !DILocation(line: 20, column: 22, scope: !1274)
!1281 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !3, file: !3, line: 74, type: !772, scopeLine: 74, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !48)
!1282 = !DILocation(line: 74, column: 25, scope: !1281)
!1283 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSaIcEC2Ev", scope: !109, file: !110, line: 144, type: !1284, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1287, retainedNodes: !1288)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{null, !1286}
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1287 = !DISubprogram(name: "allocator", scope: !109, file: !110, line: 144, type: !1284, scopeLine: 144, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1288 = !{!1289}
!1289 = !DILocalVariable(name: "this", arg: 1, scope: !1283, type: !1290, flags: DIFlagArtificial | DIFlagObjectPointer)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1291 = !DILocation(line: 0, scope: !1283)
!1292 = !DILocation(line: 144, column: 36, scope: !1283)
!1293 = !DILocation(line: 144, column: 7, scope: !1283)
!1294 = !DILocation(line: 144, column: 38, scope: !1283)
!1295 = distinct !DISubprogram(name: "basic_string", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_", scope: !33, file: !32, line: 525, type: !1296, scopeLine: 527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1299, retainedNodes: !1300)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{null, !1298, !45, !137}
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1299 = !DISubprogram(name: "basic_string", scope: !33, file: !32, line: 525, type: !1296, scopeLine: 525, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1300 = !{!1301, !1303, !1304}
!1301 = !DILocalVariable(name: "this", arg: 1, scope: !1295, type: !1302, flags: DIFlagArtificial | DIFlagObjectPointer)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!1303 = !DILocalVariable(name: "__s", arg: 2, scope: !1295, file: !32, line: 525, type: !45)
!1304 = !DILocalVariable(name: "__a", arg: 3, scope: !1295, file: !32, line: 525, type: !137)
!1305 = !DILocation(line: 0, scope: !1295)
!1306 = !DILocation(line: 525, column: 34, scope: !1295)
!1307 = !DILocation(line: 525, column: 53, scope: !1295)
!1308 = !DILocation(line: 526, column: 9, scope: !1295)
!1309 = !DILocation(line: 526, column: 21, scope: !1295)
!1310 = !DILocation(line: 526, column: 38, scope: !1295)
!1311 = !DILocation(line: 527, column: 22, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1295, file: !32, line: 527, column: 7)
!1313 = !DILocation(line: 527, column: 27, scope: !1312)
!1314 = !DILocation(line: 527, column: 33, scope: !1312)
!1315 = !DILocation(line: 527, column: 59, scope: !1312)
!1316 = !DILocation(line: 527, column: 39, scope: !1312)
!1317 = !DILocation(line: 527, column: 37, scope: !1312)
!1318 = !DILocation(line: 527, column: 66, scope: !1312)
!1319 = !DILocation(line: 527, column: 69, scope: !1312)
!1320 = !DILocation(line: 527, column: 9, scope: !1312)
!1321 = !DILocation(line: 527, column: 77, scope: !1295)
!1322 = !DILocation(line: 527, column: 77, scope: !1312)
!1323 = distinct !DISubprogram(name: "new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIcEC2Ev", scope: !1325, file: !1324, line: 79, type: !1328, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1327, retainedNodes: !1363)
!1324 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/ext/new_allocator.h", directory: "")
!1325 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "new_allocator<char>", scope: !96, file: !1324, line: 55, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1326, templateParams: !1361, identifier: "_ZTSN9__gnu_cxx13new_allocatorIcEE")
!1326 = !{!1327, !1331, !1336, !1337, !1344, !1350, !1354, !1357, !1360}
!1327 = !DISubprogram(name: "new_allocator", scope: !1325, file: !1324, line: 79, type: !1328, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !1330}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1331 = !DISubprogram(name: "new_allocator", scope: !1325, file: !1324, line: 82, type: !1332, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{null, !1330, !1334}
!1334 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1325)
!1336 = !DISubprogram(name: "~new_allocator", scope: !1325, file: !1324, line: 89, type: !1328, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1337 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorIcE7addressERc", scope: !1325, file: !1324, line: 92, type: !1338, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!1340, !1341, !1342}
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1325, file: !1324, line: 62, baseType: !106)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !1325, file: !1324, line: 64, baseType: !1343)
!1343 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !47, size: 64)
!1344 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorIcE7addressERKc", scope: !1325, file: !1324, line: 96, type: !1345, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!1347, !1341, !1348}
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !1325, file: !1324, line: 63, baseType: !45)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !1325, file: !1324, line: 65, baseType: !1349)
!1349 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !46, size: 64)
!1350 = !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv", scope: !1325, file: !1324, line: 103, type: !1351, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!106, !1330, !1353, !118}
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !1324, line: 59, baseType: !112)
!1354 = !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm", scope: !1325, file: !1324, line: 120, type: !1355, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{null, !1330, !106, !1353}
!1357 = !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv", scope: !1325, file: !1324, line: 142, type: !1358, scopeLine: 142, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!1353, !1341}
!1360 = !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv", scope: !1325, file: !1324, line: 185, type: !1358, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1361 = !{!1362}
!1362 = !DITemplateTypeParameter(name: "_Tp", type: !47)
!1363 = !{!1364}
!1364 = !DILocalVariable(name: "this", arg: 1, scope: !1323, type: !1365, flags: DIFlagArtificial | DIFlagObjectPointer)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1366 = !DILocation(line: 0, scope: !1323)
!1367 = !DILocation(line: 79, column: 47, scope: !1323)
!1368 = distinct !DISubprogram(name: "_M_local_data", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv", scope: !33, file: !32, line: 190, type: !1369, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1373, retainedNodes: !1374)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!1371, !1298}
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !33, file: !32, line: 92, baseType: !1372)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !95, file: !94, line: 57, baseType: !105)
!1373 = !DISubprogram(name: "_M_local_data", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv", scope: !33, file: !32, line: 190, type: !1369, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1374 = !{!1375}
!1375 = !DILocalVariable(name: "this", arg: 1, scope: !1368, type: !1302, flags: DIFlagArtificial | DIFlagObjectPointer)
!1376 = !DILocation(line: 0, scope: !1368)
!1377 = !DILocation(line: 193, column: 51, scope: !1368)
!1378 = !DILocation(line: 193, column: 50, scope: !1368)
!1379 = !DILocation(line: 193, column: 9, scope: !1368)
!1380 = !DILocation(line: 193, column: 2, scope: !1368)
!1381 = distinct !DISubprogram(name: "_Alloc_hider", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_", scope: !1382, file: !32, line: 156, type: !1392, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1391, retainedNodes: !1399)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Alloc_hider", scope: !33, file: !32, line: 150, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1383, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE")
!1383 = !{!1384, !1390, !1391, !1395}
!1384 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1382, baseType: !1385, extraData: i32 0)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !33, file: !32, line: 87, baseType: !1386)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Char_alloc_type", scope: !33, file: !32, line: 80, baseType: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !1388, file: !94, line: 120, baseType: !1389)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<char>", scope: !95, file: !94, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !48, templateParams: !1361, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIcEcE6rebindIcEE")
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<char>", scope: !99, file: !100, line: 446, baseType: !109)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_M_p", scope: !1382, file: !32, line: 163, baseType: !1371, size: 64)
!1391 = !DISubprogram(name: "_Alloc_hider", scope: !1382, file: !32, line: 156, type: !1392, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{null, !1394, !1371, !137}
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1395 = !DISubprogram(name: "_Alloc_hider", scope: !1382, file: !32, line: 159, type: !1396, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{null, !1394, !1371, !1398}
!1398 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !109, size: 64)
!1399 = !{!1400, !1402, !1403}
!1400 = !DILocalVariable(name: "this", arg: 1, scope: !1381, type: !1401, flags: DIFlagArtificial | DIFlagObjectPointer)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1402 = !DILocalVariable(name: "__dat", arg: 2, scope: !1381, file: !32, line: 156, type: !1371)
!1403 = !DILocalVariable(name: "__a", arg: 3, scope: !1381, file: !32, line: 156, type: !137)
!1404 = !DILocation(line: 0, scope: !1381)
!1405 = !DILocation(line: 156, column: 23, scope: !1381)
!1406 = !DILocation(line: 156, column: 44, scope: !1381)
!1407 = !DILocation(line: 157, column: 37, scope: !1381)
!1408 = !DILocation(line: 157, column: 19, scope: !1381)
!1409 = !DILocation(line: 157, column: 4, scope: !1381)
!1410 = !DILocation(line: 157, column: 25, scope: !1381)
!1411 = !DILocation(line: 157, column: 30, scope: !1381)
!1412 = !{!1413, !1214, i64 0}
!1413 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !1214, i64 0}
!1414 = !DILocation(line: 157, column: 39, scope: !1381)
!1415 = distinct !DISubprogram(name: "_M_construct<const char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_", scope: !33, file: !32, line: 263, type: !1416, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1419, declaration: !1418, retainedNodes: !1421)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{null, !1298, !45, !45}
!1418 = !DISubprogram(name: "_M_construct<const char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_", scope: !33, file: !32, line: 263, type: !1416, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1419)
!1419 = !{!1420}
!1420 = !DITemplateTypeParameter(name: "_InIterator", type: !45)
!1421 = !{!1422, !1423, !1424}
!1422 = !DILocalVariable(name: "this", arg: 1, scope: !1415, type: !1302, flags: DIFlagArtificial | DIFlagObjectPointer)
!1423 = !DILocalVariable(name: "__beg", arg: 2, scope: !1415, file: !32, line: 263, type: !45)
!1424 = !DILocalVariable(name: "__end", arg: 3, scope: !1415, file: !32, line: 263, type: !45)
!1425 = !DILocation(line: 0, scope: !1415)
!1426 = !DILocation(line: 263, column: 34, scope: !1415)
!1427 = !DILocation(line: 263, column: 53, scope: !1415)
!1428 = !DILocation(line: 266, column: 21, scope: !1415)
!1429 = !DILocation(line: 266, column: 28, scope: !1415)
!1430 = !DILocation(line: 266, column: 4, scope: !1415)
!1431 = !DILocation(line: 267, column: 9, scope: !1415)
!1432 = distinct !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !155, file: !154, line: 351, type: !172, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !171, retainedNodes: !1433)
!1433 = !{!1434}
!1434 = !DILocalVariable(name: "__s", arg: 1, scope: !1432, file: !154, line: 351, type: !170)
!1435 = !DILocation(line: 351, column: 31, scope: !1432)
!1436 = !DILocation(line: 357, column: 26, scope: !1432)
!1437 = !DILocation(line: 357, column: 9, scope: !1432)
!1438 = !DILocation(line: 357, column: 2, scope: !1432)
!1439 = distinct !DISubprogram(name: "~allocator", linkageName: "_ZNSaIcED2Ev", scope: !109, file: !110, line: 162, type: !1284, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1440, retainedNodes: !1441)
!1440 = !DISubprogram(name: "~allocator", scope: !109, file: !110, line: 162, type: !1284, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1441 = !{!1442}
!1442 = !DILocalVariable(name: "this", arg: 1, scope: !1439, type: !1290, flags: DIFlagArtificial | DIFlagObjectPointer)
!1443 = !DILocation(line: 0, scope: !1439)
!1444 = !DILocation(line: 162, column: 39, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1439, file: !110, line: 162, column: 37)
!1446 = !DILocation(line: 162, column: 39, scope: !1439)
!1447 = distinct !DISubprogram(name: "pointer_to", linkageName: "_ZNSt14pointer_traitsIPcE10pointer_toERc", scope: !1449, file: !1448, line: 146, type: !1452, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1451, retainedNodes: !1467)
!1448 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/ptr_traits.h", directory: "")
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_traits<char *>", scope: !2, file: !1448, line: 128, size: 8, flags: DIFlagTypePassByValue, elements: !1450, templateParams: !1465, identifier: "_ZTSSt14pointer_traitsIPcE")
!1450 = !{!1451}
!1451 = !DISubprogram(name: "pointer_to", linkageName: "_ZNSt14pointer_traitsIPcE10pointer_toERc", scope: !1449, file: !1448, line: 146, type: !1452, scopeLine: 146, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1449, file: !1448, line: 131, baseType: !106)
!1455 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__make_not_void<std::pointer_traits<char *>::element_type>", scope: !2, file: !1448, line: 75, baseType: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1459, file: !1458, line: 2206, baseType: !47)
!1458 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/type_traits", directory: "")
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__undefined, char>", scope: !2, file: !1458, line: 2205, size: 8, flags: DIFlagTypePassByValue, elements: !48, templateParams: !1460, identifier: "_ZTSSt11conditionalILb0ESt11__undefinedcE")
!1460 = !{!1461, !1462, !1464}
!1461 = !DITemplateValueParameter(name: "_Cond", type: !13, value: i8 0)
!1462 = !DITemplateTypeParameter(name: "_Iftrue", type: !1463)
!1463 = !DICompositeType(tag: DW_TAG_class_type, name: "__undefined", scope: !2, file: !1448, line: 46, flags: DIFlagFwdDecl, identifier: "_ZTSSt11__undefined")
!1464 = !DITemplateTypeParameter(name: "_Iffalse", type: !47)
!1465 = !{!1466}
!1466 = !DITemplateTypeParameter(name: "_Ptr", type: !106)
!1467 = !{!1468}
!1468 = !DILocalVariable(name: "__r", arg: 1, scope: !1447, file: !1448, line: 146, type: !1455)
!1469 = !DILocation(line: 146, column: 49, scope: !1447)
!1470 = !DILocation(line: 147, column: 31, scope: !1447)
!1471 = !DILocation(line: 147, column: 16, scope: !1447)
!1472 = !DILocation(line: 147, column: 9, scope: !1447)
!1473 = distinct !DISubprogram(name: "addressof<char>", linkageName: "_ZSt9addressofIcEPT_RS0_", scope: !2, file: !1474, line: 140, type: !1475, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1361, retainedNodes: !1477)
!1474 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/move.h", directory: "")
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!106, !1343}
!1477 = !{!1478}
!1478 = !DILocalVariable(name: "__r", arg: 1, scope: !1473, file: !1474, line: 140, type: !1343)
!1479 = !DILocation(line: 140, column: 20, scope: !1473)
!1480 = !DILocation(line: 141, column: 31, scope: !1473)
!1481 = !DILocation(line: 141, column: 14, scope: !1473)
!1482 = !DILocation(line: 141, column: 7, scope: !1473)
!1483 = distinct !DISubprogram(name: "__addressof<char>", linkageName: "_ZSt11__addressofIcEPT_RS0_", scope: !2, file: !1474, line: 49, type: !1475, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1361, retainedNodes: !1484)
!1484 = !{!1485}
!1485 = !DILocalVariable(name: "__r", arg: 1, scope: !1483, file: !1474, line: 49, type: !1343)
!1486 = !DILocation(line: 49, column: 22, scope: !1483)
!1487 = !DILocation(line: 50, column: 34, scope: !1483)
!1488 = !DILocation(line: 50, column: 7, scope: !1483)
!1489 = distinct !DISubprogram(name: "new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIcEC2ERKS1_", scope: !1325, file: !1324, line: 82, type: !1332, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1331, retainedNodes: !1490)
!1490 = !{!1491, !1492}
!1491 = !DILocalVariable(name: "this", arg: 1, scope: !1489, type: !1365, flags: DIFlagArtificial | DIFlagObjectPointer)
!1492 = !DILocalVariable(arg: 2, scope: !1489, file: !1324, line: 82, type: !1334)
!1493 = !DILocation(line: 0, scope: !1489)
!1494 = !DILocation(line: 82, column: 41, scope: !1489)
!1495 = !DILocation(line: 82, column: 67, scope: !1489)
!1496 = distinct !DISubprogram(name: "_M_construct_aux<const char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type", scope: !33, file: !32, line: 243, type: !1497, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1419, declaration: !1501, retainedNodes: !1502)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !1298, !45, !45, !1499}
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__false_type", scope: !2, file: !1500, line: 74, size: 8, flags: DIFlagTypePassByValue, elements: !48, identifier: "_ZTSSt12__false_type")
!1500 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/cpp_type_traits.h", directory: "")
!1501 = !DISubprogram(name: "_M_construct_aux<const char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type", scope: !33, file: !32, line: 243, type: !1497, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1419)
!1502 = !{!1503, !1504, !1505, !1506}
!1503 = !DILocalVariable(name: "this", arg: 1, scope: !1496, type: !1302, flags: DIFlagArtificial | DIFlagObjectPointer)
!1504 = !DILocalVariable(name: "__beg", arg: 2, scope: !1496, file: !32, line: 243, type: !45)
!1505 = !DILocalVariable(name: "__end", arg: 3, scope: !1496, file: !32, line: 243, type: !45)
!1506 = !DILocalVariable(arg: 4, scope: !1496, file: !32, line: 244, type: !1499)
!1507 = !DILocation(line: 0, scope: !1496)
!1508 = !DILocation(line: 243, column: 38, scope: !1496)
!1509 = !DILocation(line: 243, column: 57, scope: !1496)
!1510 = !DILocation(line: 244, column: 22, scope: !1496)
!1511 = !DILocation(line: 247, column: 24, scope: !1496)
!1512 = !DILocation(line: 247, column: 31, scope: !1496)
!1513 = !DILocation(line: 247, column: 38, scope: !1496)
!1514 = !DILocation(line: 247, column: 11, scope: !1496)
!1515 = !DILocation(line: 248, column: 2, scope: !1496)
!1516 = distinct !DISubprogram(name: "_M_construct<const char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag", scope: !33, file: !34, line: 207, type: !1517, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1525, declaration: !1524, retainedNodes: !1527)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{null, !1298, !45, !45, !1519}
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "forward_iterator_tag", scope: !2, file: !1520, line: 99, size: 8, flags: DIFlagTypePassByValue, elements: !1521, identifier: "_ZTSSt20forward_iterator_tag")
!1520 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/stl_iterator_base_types.h", directory: "")
!1521 = !{!1522}
!1522 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1519, baseType: !1523, extraData: i32 0)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_iterator_tag", scope: !2, file: !1520, line: 93, size: 8, flags: DIFlagTypePassByValue, elements: !48, identifier: "_ZTSSt18input_iterator_tag")
!1524 = !DISubprogram(name: "_M_construct<const char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag", scope: !33, file: !32, line: 279, type: !1517, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1525)
!1525 = !{!1526}
!1526 = !DITemplateTypeParameter(name: "_FwdIterator", type: !45)
!1527 = !{!1528, !1529, !1530, !1531, !1532}
!1528 = !DILocalVariable(name: "this", arg: 1, scope: !1516, type: !1302, flags: DIFlagArtificial | DIFlagObjectPointer)
!1529 = !DILocalVariable(name: "__beg", arg: 2, scope: !1516, file: !32, line: 279, type: !45)
!1530 = !DILocalVariable(name: "__end", arg: 3, scope: !1516, file: !32, line: 279, type: !45)
!1531 = !DILocalVariable(arg: 4, scope: !1516, file: !32, line: 280, type: !1519)
!1532 = !DILocalVariable(name: "__dnew", scope: !1516, file: !34, line: 215, type: !92)
!1533 = !DILocation(line: 0, scope: !1516)
!1534 = !DILocation(line: 279, column: 35, scope: !1516)
!1535 = !DILocation(line: 279, column: 55, scope: !1516)
!1536 = !DILocation(line: 280, column: 33, scope: !1516)
!1537 = !DILocation(line: 211, column: 35, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1516, file: !34, line: 211, column: 6)
!1539 = !DILocation(line: 211, column: 6, scope: !1538)
!1540 = !DILocation(line: 211, column: 42, scope: !1538)
!1541 = !DILocation(line: 211, column: 45, scope: !1538)
!1542 = !DILocation(line: 211, column: 54, scope: !1538)
!1543 = !DILocation(line: 211, column: 51, scope: !1538)
!1544 = !DILocation(line: 211, column: 6, scope: !1516)
!1545 = !DILocation(line: 212, column: 4, scope: !1538)
!1546 = !DILocation(line: 215, column: 2, scope: !1516)
!1547 = !DILocation(line: 215, column: 12, scope: !1516)
!1548 = !DILocation(line: 215, column: 58, scope: !1516)
!1549 = !DILocation(line: 215, column: 65, scope: !1516)
!1550 = !DILocation(line: 215, column: 44, scope: !1516)
!1551 = !DILocation(line: 217, column: 6, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1516, file: !34, line: 217, column: 6)
!1553 = !DILocation(line: 217, column: 13, scope: !1552)
!1554 = !DILocation(line: 217, column: 6, scope: !1516)
!1555 = !DILocation(line: 219, column: 14, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1552, file: !34, line: 218, column: 4)
!1557 = !DILocation(line: 219, column: 6, scope: !1556)
!1558 = !DILocation(line: 220, column: 18, scope: !1556)
!1559 = !DILocation(line: 220, column: 6, scope: !1556)
!1560 = !DILocation(line: 221, column: 4, scope: !1556)
!1561 = !DILocation(line: 225, column: 26, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1516, file: !34, line: 225, column: 4)
!1563 = !DILocation(line: 225, column: 37, scope: !1562)
!1564 = !DILocation(line: 225, column: 44, scope: !1562)
!1565 = !DILocation(line: 225, column: 6, scope: !1562)
!1566 = !DILocation(line: 225, column: 52, scope: !1562)
!1567 = !DILocation(line: 233, column: 7, scope: !1562)
!1568 = !DILocation(line: 228, column: 6, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1516, file: !34, line: 227, column: 4)
!1570 = !DILocation(line: 229, column: 6, scope: !1569)
!1571 = !DILocation(line: 233, column: 7, scope: !1569)
!1572 = !DILocation(line: 230, column: 4, scope: !1569)
!1573 = !DILocation(line: 233, column: 7, scope: !1516)
!1574 = !DILocation(line: 232, column: 16, scope: !1516)
!1575 = !DILocation(line: 232, column: 2, scope: !1516)
!1576 = distinct !DISubprogram(name: "__is_null_pointer<const char>", linkageName: "_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_", scope: !96, file: !1577, line: 152, type: !1578, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1582, retainedNodes: !1580)
!1577 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/ext/type_traits.h", directory: "")
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!13, !45}
!1580 = !{!1581}
!1581 = !DILocalVariable(name: "__ptr", arg: 1, scope: !1576, file: !1577, line: 152, type: !45)
!1582 = !{!1583}
!1583 = !DITemplateTypeParameter(name: "_Type", type: !46)
!1584 = !DILocation(line: 152, column: 30, scope: !1576)
!1585 = !DILocation(line: 153, column: 14, scope: !1576)
!1586 = !DILocation(line: 153, column: 20, scope: !1576)
!1587 = !DILocation(line: 153, column: 7, scope: !1576)
!1588 = distinct !DISubprogram(name: "distance<const char *>", linkageName: "_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_", scope: !2, file: !1589, line: 138, type: !1590, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1600, retainedNodes: !1597)
!1589 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/stl_iterator_base_funcs.h", directory: "")
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!1592, !45, !45}
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !1593, file: !1520, line: 225, baseType: !1596)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const char *>", scope: !2, file: !1520, line: 221, size: 8, flags: DIFlagTypePassByValue, elements: !48, templateParams: !1594, identifier: "_ZTSSt15iterator_traitsIPKcE")
!1594 = !{!1595}
!1595 = !DITemplateTypeParameter(name: "_Iterator", type: !45)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !2, file: !113, line: 261, baseType: !88)
!1597 = !{!1598, !1599}
!1598 = !DILocalVariable(name: "__first", arg: 1, scope: !1588, file: !1589, line: 138, type: !45)
!1599 = !DILocalVariable(name: "__last", arg: 2, scope: !1588, file: !1589, line: 138, type: !45)
!1600 = !{!1601}
!1601 = !DITemplateTypeParameter(name: "_InputIterator", type: !45)
!1602 = !DILocation(line: 138, column: 29, scope: !1588)
!1603 = !DILocation(line: 138, column: 53, scope: !1588)
!1604 = !DILocation(line: 141, column: 30, scope: !1588)
!1605 = !DILocation(line: 141, column: 39, scope: !1588)
!1606 = !DILocation(line: 142, column: 9, scope: !1588)
!1607 = !DILocation(line: 141, column: 14, scope: !1588)
!1608 = !DILocation(line: 141, column: 7, scope: !1588)
!1609 = distinct !DISubprogram(name: "_M_data", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc", scope: !33, file: !32, line: 178, type: !1610, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1612, retainedNodes: !1613)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{null, !1298, !1371}
!1612 = !DISubprogram(name: "_M_data", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc", scope: !33, file: !32, line: 178, type: !1610, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1613 = !{!1614, !1615}
!1614 = !DILocalVariable(name: "this", arg: 1, scope: !1609, type: !1302, flags: DIFlagArtificial | DIFlagObjectPointer)
!1615 = !DILocalVariable(name: "__p", arg: 2, scope: !1609, file: !32, line: 178, type: !1371)
!1616 = !DILocation(line: 0, scope: !1609)
!1617 = !DILocation(line: 178, column: 23, scope: !1609)
!1618 = !DILocation(line: 179, column: 28, scope: !1609)
!1619 = !DILocation(line: 179, column: 9, scope: !1609)
!1620 = !DILocation(line: 179, column: 21, scope: !1609)
!1621 = !DILocation(line: 179, column: 26, scope: !1609)
!1622 = !{!1623, !1214, i64 0}
!1623 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !1413, i64 0, !1206, i64 8, !1185, i64 16}
!1624 = !DILocation(line: 179, column: 33, scope: !1609)
!1625 = distinct !DISubprogram(name: "_M_capacity", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm", scope: !33, file: !32, line: 210, type: !1626, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1628, retainedNodes: !1629)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{null, !1298, !92}
!1628 = !DISubprogram(name: "_M_capacity", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm", scope: !33, file: !32, line: 210, type: !1626, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1629 = !{!1630, !1631}
!1630 = !DILocalVariable(name: "this", arg: 1, scope: !1625, type: !1302, flags: DIFlagArtificial | DIFlagObjectPointer)
!1631 = !DILocalVariable(name: "__capacity", arg: 2, scope: !1625, file: !32, line: 210, type: !92)
!1632 = !DILocation(line: 0, scope: !1625)
!1633 = !DILocation(line: 210, column: 29, scope: !1625)
!1634 = !DILocation(line: 211, column: 33, scope: !1625)
!1635 = !DILocation(line: 211, column: 9, scope: !1625)
!1636 = !DILocation(line: 211, column: 31, scope: !1625)
!1637 = !{!1185, !1185, i64 0}
!1638 = !DILocation(line: 211, column: 45, scope: !1625)
!1639 = distinct !DISubprogram(name: "_S_copy_chars", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_", scope: !33, file: !32, line: 396, type: !1640, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1642, retainedNodes: !1643)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null, !106, !45, !45}
!1642 = !DISubprogram(name: "_S_copy_chars", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_", scope: !33, file: !32, line: 396, type: !1640, scopeLine: 396, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1643 = !{!1644, !1645, !1646}
!1644 = !DILocalVariable(name: "__p", arg: 1, scope: !1639, file: !32, line: 396, type: !106)
!1645 = !DILocalVariable(name: "__k1", arg: 2, scope: !1639, file: !32, line: 396, type: !45)
!1646 = !DILocalVariable(name: "__k2", arg: 3, scope: !1639, file: !32, line: 396, type: !45)
!1647 = !DILocation(line: 396, column: 29, scope: !1639)
!1648 = !DILocation(line: 396, column: 48, scope: !1639)
!1649 = !DILocation(line: 396, column: 68, scope: !1639)
!1650 = !DILocation(line: 398, column: 17, scope: !1639)
!1651 = !DILocation(line: 398, column: 22, scope: !1639)
!1652 = !DILocation(line: 398, column: 28, scope: !1639)
!1653 = !DILocation(line: 398, column: 35, scope: !1639)
!1654 = !DILocation(line: 398, column: 33, scope: !1639)
!1655 = !DILocation(line: 398, column: 9, scope: !1639)
!1656 = !DILocation(line: 398, column: 42, scope: !1639)
!1657 = distinct !DISubprogram(name: "_M_data", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv", scope: !33, file: !32, line: 186, type: !1658, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1662, retainedNodes: !1663)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!1371, !1660}
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!1662 = !DISubprogram(name: "_M_data", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv", scope: !33, file: !32, line: 186, type: !1658, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1663 = !{!1664}
!1664 = !DILocalVariable(name: "this", arg: 1, scope: !1657, type: !1665, flags: DIFlagArtificial | DIFlagObjectPointer)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1666 = !DILocation(line: 0, scope: !1657)
!1667 = !DILocation(line: 187, column: 16, scope: !1657)
!1668 = !DILocation(line: 187, column: 28, scope: !1657)
!1669 = !DILocation(line: 187, column: 9, scope: !1657)
!1670 = distinct !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv", scope: !33, file: !32, line: 229, type: !1671, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1673, retainedNodes: !1674)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{null, !1298}
!1673 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv", scope: !33, file: !32, line: 229, type: !1671, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1674 = !{!1675}
!1675 = !DILocalVariable(name: "this", arg: 1, scope: !1670, type: !1302, flags: DIFlagArtificial | DIFlagObjectPointer)
!1676 = !DILocation(line: 0, scope: !1670)
!1677 = !DILocation(line: 231, column: 7, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1670, file: !32, line: 231, column: 6)
!1679 = !DILocation(line: 231, column: 6, scope: !1670)
!1680 = !DILocation(line: 232, column: 15, scope: !1678)
!1681 = !DILocation(line: 232, column: 4, scope: !1678)
!1682 = !DILocation(line: 233, column: 7, scope: !1670)
!1683 = distinct !DISubprogram(name: "_M_set_length", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm", scope: !33, file: !32, line: 214, type: !1626, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1684, retainedNodes: !1685)
!1684 = !DISubprogram(name: "_M_set_length", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm", scope: !33, file: !32, line: 214, type: !1626, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1685 = !{!1686, !1687}
!1686 = !DILocalVariable(name: "this", arg: 1, scope: !1683, type: !1302, flags: DIFlagArtificial | DIFlagObjectPointer)
!1687 = !DILocalVariable(name: "__n", arg: 2, scope: !1683, file: !32, line: 214, type: !92)
!1688 = !DILocation(line: 0, scope: !1683)
!1689 = !DILocation(line: 214, column: 31, scope: !1683)
!1690 = !DILocation(line: 216, column: 12, scope: !1683)
!1691 = !DILocation(line: 216, column: 2, scope: !1683)
!1692 = !DILocation(line: 217, column: 22, scope: !1683)
!1693 = !DILocation(line: 217, column: 32, scope: !1683)
!1694 = !DILocation(line: 217, column: 38, scope: !1683)
!1695 = !DILocation(line: 217, column: 2, scope: !1683)
!1696 = !DILocation(line: 218, column: 7, scope: !1683)
!1697 = distinct !DISubprogram(name: "__distance<const char *>", linkageName: "_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag", scope: !2, file: !1589, line: 98, type: !1698, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1710, retainedNodes: !1706)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!1592, !45, !45, !1700}
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "random_access_iterator_tag", scope: !2, file: !1520, line: 107, size: 8, flags: DIFlagTypePassByValue, elements: !1701, identifier: "_ZTSSt26random_access_iterator_tag")
!1701 = !{!1702}
!1702 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1700, baseType: !1703, extraData: i32 0)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bidirectional_iterator_tag", scope: !2, file: !1520, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !1704, identifier: "_ZTSSt26bidirectional_iterator_tag")
!1704 = !{!1705}
!1705 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1703, baseType: !1519, extraData: i32 0)
!1706 = !{!1707, !1708, !1709}
!1707 = !DILocalVariable(name: "__first", arg: 1, scope: !1697, file: !1589, line: 98, type: !45)
!1708 = !DILocalVariable(name: "__last", arg: 2, scope: !1697, file: !1589, line: 98, type: !45)
!1709 = !DILocalVariable(arg: 3, scope: !1697, file: !1589, line: 99, type: !1700)
!1710 = !{!1711}
!1711 = !DITemplateTypeParameter(name: "_RandomAccessIterator", type: !45)
!1712 = !DILocation(line: 98, column: 38, scope: !1697)
!1713 = !DILocation(line: 98, column: 69, scope: !1697)
!1714 = !DILocation(line: 99, column: 42, scope: !1697)
!1715 = !DILocation(line: 104, column: 14, scope: !1697)
!1716 = !DILocation(line: 104, column: 23, scope: !1697)
!1717 = !DILocation(line: 104, column: 21, scope: !1697)
!1718 = !DILocation(line: 104, column: 7, scope: !1697)
!1719 = distinct !DISubprogram(name: "__iterator_category<const char *>", linkageName: "_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_", scope: !2, file: !1520, line: 238, type: !1720, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1727, retainedNodes: !1725)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!1722, !1723}
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_category", scope: !1593, file: !1520, line: 223, baseType: !1700)
!1723 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!1725 = !{!1726}
!1726 = !DILocalVariable(arg: 1, scope: !1719, file: !1520, line: 238, type: !1723)
!1727 = !{!1728}
!1728 = !DITemplateTypeParameter(name: "_Iter", type: !45)
!1729 = !DILocation(line: 238, column: 37, scope: !1719)
!1730 = !DILocation(line: 239, column: 7, scope: !1719)
!1731 = distinct !DISubprogram(name: "_S_copy", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm", scope: !33, file: !32, line: 346, type: !1732, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1734, retainedNodes: !1735)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !106, !45, !92}
!1734 = !DISubprogram(name: "_S_copy", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm", scope: !33, file: !32, line: 346, type: !1732, scopeLine: 346, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1735 = !{!1736, !1737, !1738}
!1736 = !DILocalVariable(name: "__d", arg: 1, scope: !1731, file: !32, line: 346, type: !106)
!1737 = !DILocalVariable(name: "__s", arg: 2, scope: !1731, file: !32, line: 346, type: !45)
!1738 = !DILocalVariable(name: "__n", arg: 3, scope: !1731, file: !32, line: 346, type: !92)
!1739 = !DILocation(line: 346, column: 23, scope: !1731)
!1740 = !DILocation(line: 346, column: 42, scope: !1731)
!1741 = !DILocation(line: 346, column: 57, scope: !1731)
!1742 = !DILocation(line: 348, column: 6, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1731, file: !32, line: 348, column: 6)
!1744 = !DILocation(line: 348, column: 10, scope: !1743)
!1745 = !DILocation(line: 348, column: 6, scope: !1731)
!1746 = !DILocation(line: 349, column: 25, scope: !1743)
!1747 = !DILocation(line: 349, column: 31, scope: !1743)
!1748 = !DILocation(line: 349, column: 4, scope: !1743)
!1749 = !DILocation(line: 351, column: 22, scope: !1743)
!1750 = !DILocation(line: 351, column: 27, scope: !1743)
!1751 = !DILocation(line: 351, column: 32, scope: !1743)
!1752 = !DILocation(line: 351, column: 4, scope: !1743)
!1753 = !DILocation(line: 352, column: 7, scope: !1731)
!1754 = distinct !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignERcRKc", scope: !155, file: !154, line: 321, type: !158, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !157, retainedNodes: !1755)
!1755 = !{!1756, !1757}
!1756 = !DILocalVariable(name: "__c1", arg: 1, scope: !1754, file: !154, line: 321, type: !160)
!1757 = !DILocalVariable(name: "__c2", arg: 2, scope: !1754, file: !154, line: 321, type: !161)
!1758 = !DILocation(line: 321, column: 25, scope: !1754)
!1759 = !DILocation(line: 321, column: 48, scope: !1754)
!1760 = !DILocation(line: 322, column: 16, scope: !1754)
!1761 = !DILocation(line: 322, column: 9, scope: !1754)
!1762 = !DILocation(line: 322, column: 14, scope: !1754)
!1763 = !DILocation(line: 322, column: 22, scope: !1754)
!1764 = distinct !DISubprogram(name: "copy", linkageName: "_ZNSt11char_traitsIcE4copyEPcPKcm", scope: !155, file: !154, line: 387, type: !178, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !180, retainedNodes: !1765)
!1765 = !{!1766, !1767, !1768}
!1766 = !DILocalVariable(name: "__s1", arg: 1, scope: !1764, file: !154, line: 387, type: !152)
!1767 = !DILocalVariable(name: "__s2", arg: 2, scope: !1764, file: !154, line: 387, type: !170)
!1768 = !DILocalVariable(name: "__n", arg: 3, scope: !1764, file: !154, line: 387, type: !112)
!1769 = !DILocation(line: 387, column: 23, scope: !1764)
!1770 = !DILocation(line: 387, column: 46, scope: !1764)
!1771 = !DILocation(line: 387, column: 59, scope: !1764)
!1772 = !DILocation(line: 389, column: 6, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1764, file: !154, line: 389, column: 6)
!1774 = !DILocation(line: 389, column: 10, scope: !1773)
!1775 = !DILocation(line: 389, column: 6, scope: !1764)
!1776 = !DILocation(line: 390, column: 11, scope: !1773)
!1777 = !DILocation(line: 390, column: 4, scope: !1773)
!1778 = !DILocation(line: 395, column: 50, scope: !1764)
!1779 = !DILocation(line: 395, column: 56, scope: !1764)
!1780 = !DILocation(line: 395, column: 62, scope: !1764)
!1781 = !DILocation(line: 395, column: 33, scope: !1764)
!1782 = !DILocation(line: 395, column: 2, scope: !1764)
!1783 = !DILocation(line: 396, column: 7, scope: !1764)
!1784 = distinct !DISubprogram(name: "_M_is_local", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv", scope: !33, file: !32, line: 221, type: !1785, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1787, retainedNodes: !1788)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!13, !1660}
!1787 = !DISubprogram(name: "_M_is_local", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv", scope: !33, file: !32, line: 221, type: !1785, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1788 = !{!1789}
!1789 = !DILocalVariable(name: "this", arg: 1, scope: !1784, type: !1665, flags: DIFlagArtificial | DIFlagObjectPointer)
!1790 = !DILocation(line: 0, scope: !1784)
!1791 = !DILocation(line: 222, column: 16, scope: !1784)
!1792 = !DILocation(line: 222, column: 29, scope: !1784)
!1793 = !DILocation(line: 222, column: 26, scope: !1784)
!1794 = !DILocation(line: 222, column: 9, scope: !1784)
!1795 = distinct !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm", scope: !33, file: !32, line: 236, type: !1626, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1796, retainedNodes: !1797)
!1796 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm", scope: !33, file: !32, line: 236, type: !1626, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1797 = !{!1798, !1799}
!1798 = !DILocalVariable(name: "this", arg: 1, scope: !1795, type: !1302, flags: DIFlagArtificial | DIFlagObjectPointer)
!1799 = !DILocalVariable(name: "__size", arg: 2, scope: !1795, file: !32, line: 236, type: !92)
!1800 = !DILocation(line: 0, scope: !1795)
!1801 = !DILocation(line: 236, column: 28, scope: !1795)
!1802 = !DILocation(line: 237, column: 35, scope: !1795)
!1803 = !DILocation(line: 237, column: 55, scope: !1795)
!1804 = !DILocation(line: 237, column: 66, scope: !1795)
!1805 = !DILocation(line: 237, column: 73, scope: !1795)
!1806 = !DILocation(line: 237, column: 9, scope: !1795)
!1807 = !DILocation(line: 237, column: 79, scope: !1795)
!1808 = distinct !DISubprogram(name: "_M_local_data", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv", scope: !33, file: !32, line: 200, type: !1809, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1814, retainedNodes: !1815)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!1811, !1660}
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !33, file: !32, line: 93, baseType: !1812)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !95, file: !94, line: 58, baseType: !1813)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !99, file: !100, line: 419, baseType: !45)
!1814 = !DISubprogram(name: "_M_local_data", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv", scope: !33, file: !32, line: 200, type: !1809, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1815 = !{!1816}
!1816 = !DILocalVariable(name: "this", arg: 1, scope: !1808, type: !1665, flags: DIFlagArtificial | DIFlagObjectPointer)
!1817 = !DILocation(line: 0, scope: !1808)
!1818 = !DILocation(line: 203, column: 57, scope: !1808)
!1819 = !DILocation(line: 203, column: 56, scope: !1808)
!1820 = !DILocation(line: 203, column: 9, scope: !1808)
!1821 = !DILocation(line: 203, column: 2, scope: !1808)
!1822 = distinct !DISubprogram(name: "pointer_to", linkageName: "_ZNSt14pointer_traitsIPKcE10pointer_toERS0_", scope: !1823, file: !1448, line: 146, type: !1826, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1825, retainedNodes: !1837)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_traits<const char *>", scope: !2, file: !1448, line: 128, size: 8, flags: DIFlagTypePassByValue, elements: !1824, templateParams: !1835, identifier: "_ZTSSt14pointer_traitsIPKcE")
!1824 = !{!1825}
!1825 = !DISubprogram(name: "pointer_to", linkageName: "_ZNSt14pointer_traitsIPKcE10pointer_toERS0_", scope: !1823, file: !1448, line: 146, type: !1826, scopeLine: 146, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!1828, !1829}
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1823, file: !1448, line: 131, baseType: !45)
!1829 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__make_not_void<std::pointer_traits<const char *>::element_type>", scope: !2, file: !1448, line: 75, baseType: !1831)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1832, file: !1458, line: 2206, baseType: !46)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional<false, std::__undefined, const char>", scope: !2, file: !1458, line: 2205, size: 8, flags: DIFlagTypePassByValue, elements: !48, templateParams: !1833, identifier: "_ZTSSt11conditionalILb0ESt11__undefinedKcE")
!1833 = !{!1461, !1462, !1834}
!1834 = !DITemplateTypeParameter(name: "_Iffalse", type: !46)
!1835 = !{!1836}
!1836 = !DITemplateTypeParameter(name: "_Ptr", type: !45)
!1837 = !{!1838}
!1838 = !DILocalVariable(name: "__r", arg: 1, scope: !1822, file: !1448, line: 146, type: !1829)
!1839 = !DILocation(line: 146, column: 49, scope: !1822)
!1840 = !DILocation(line: 147, column: 31, scope: !1822)
!1841 = !DILocation(line: 147, column: 16, scope: !1822)
!1842 = !DILocation(line: 147, column: 9, scope: !1822)
!1843 = distinct !DISubprogram(name: "addressof<const char>", linkageName: "_ZSt9addressofIKcEPT_RS1_", scope: !2, file: !1474, line: 140, type: !1844, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1848, retainedNodes: !1846)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!45, !1349}
!1846 = !{!1847}
!1847 = !DILocalVariable(name: "__r", arg: 1, scope: !1843, file: !1474, line: 140, type: !1349)
!1848 = !{!1849}
!1849 = !DITemplateTypeParameter(name: "_Tp", type: !46)
!1850 = !DILocation(line: 140, column: 20, scope: !1843)
!1851 = !DILocation(line: 141, column: 31, scope: !1843)
!1852 = !DILocation(line: 141, column: 14, scope: !1843)
!1853 = !DILocation(line: 141, column: 7, scope: !1843)
!1854 = distinct !DISubprogram(name: "__addressof<const char>", linkageName: "_ZSt11__addressofIKcEPT_RS1_", scope: !2, file: !1474, line: 49, type: !1844, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1848, retainedNodes: !1855)
!1855 = !{!1856}
!1856 = !DILocalVariable(name: "__r", arg: 1, scope: !1854, file: !1474, line: 49, type: !1349)
!1857 = !DILocation(line: 49, column: 22, scope: !1854)
!1858 = !DILocation(line: 50, column: 34, scope: !1854)
!1859 = !DILocation(line: 50, column: 7, scope: !1854)
!1860 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm", scope: !99, file: !100, line: 491, type: !121, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !120, retainedNodes: !1861)
!1861 = !{!1862, !1863, !1864}
!1862 = !DILocalVariable(name: "__a", arg: 1, scope: !1860, file: !100, line: 491, type: !107)
!1863 = !DILocalVariable(name: "__p", arg: 2, scope: !1860, file: !100, line: 491, type: !105)
!1864 = !DILocalVariable(name: "__n", arg: 3, scope: !1860, file: !100, line: 491, type: !111)
!1865 = !DILocation(line: 491, column: 34, scope: !1860)
!1866 = !DILocation(line: 491, column: 47, scope: !1860)
!1867 = !DILocation(line: 491, column: 62, scope: !1860)
!1868 = !DILocation(line: 492, column: 9, scope: !1860)
!1869 = !DILocation(line: 492, column: 24, scope: !1860)
!1870 = !DILocation(line: 492, column: 29, scope: !1860)
!1871 = !DILocation(line: 492, column: 13, scope: !1860)
!1872 = !DILocation(line: 492, column: 35, scope: !1860)
!1873 = distinct !DISubprogram(name: "_M_get_allocator", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv", scope: !33, file: !32, line: 286, type: !1874, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1877, retainedNodes: !1878)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!1876, !1298}
!1876 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1385, size: 64)
!1877 = !DISubprogram(name: "_M_get_allocator", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv", scope: !33, file: !32, line: 286, type: !1874, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1878 = !{!1879}
!1879 = !DILocalVariable(name: "this", arg: 1, scope: !1873, type: !1302, flags: DIFlagArtificial | DIFlagObjectPointer)
!1880 = !DILocation(line: 0, scope: !1873)
!1881 = !DILocation(line: 287, column: 16, scope: !1873)
!1882 = !DILocation(line: 287, column: 9, scope: !1873)
!1883 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm", scope: !1325, file: !1324, line: 120, type: !1355, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1354, retainedNodes: !1884)
!1884 = !{!1885, !1886, !1887}
!1885 = !DILocalVariable(name: "this", arg: 1, scope: !1883, type: !1365, flags: DIFlagArtificial | DIFlagObjectPointer)
!1886 = !DILocalVariable(name: "__p", arg: 2, scope: !1883, file: !1324, line: 120, type: !106)
!1887 = !DILocalVariable(name: "__t", arg: 3, scope: !1883, file: !1324, line: 120, type: !1353)
!1888 = !DILocation(line: 0, scope: !1883)
!1889 = !DILocation(line: 120, column: 23, scope: !1883)
!1890 = !DILocation(line: 120, column: 38, scope: !1883)
!1891 = !DILocation(line: 133, column: 20, scope: !1883)
!1892 = !DILocation(line: 133, column: 2, scope: !1883)
!1893 = !DILocation(line: 138, column: 7, scope: !1883)
!1894 = distinct !DISubprogram(name: "_M_length", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm", scope: !33, file: !32, line: 182, type: !1626, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1895, retainedNodes: !1896)
!1895 = !DISubprogram(name: "_M_length", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm", scope: !33, file: !32, line: 182, type: !1626, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1896 = !{!1897, !1898}
!1897 = !DILocalVariable(name: "this", arg: 1, scope: !1894, type: !1302, flags: DIFlagArtificial | DIFlagObjectPointer)
!1898 = !DILocalVariable(name: "__length", arg: 2, scope: !1894, file: !32, line: 182, type: !92)
!1899 = !DILocation(line: 0, scope: !1894)
!1900 = !DILocation(line: 182, column: 27, scope: !1894)
!1901 = !DILocation(line: 183, column: 28, scope: !1894)
!1902 = !DILocation(line: 183, column: 9, scope: !1894)
!1903 = !DILocation(line: 183, column: 26, scope: !1894)
!1904 = !{!1623, !1206, i64 8}
!1905 = !DILocation(line: 183, column: 38, scope: !1894)
!1906 = distinct !DISubprogram(name: "~new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIcED2Ev", scope: !1325, file: !1324, line: 89, type: !1328, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1336, retainedNodes: !1907)
!1907 = !{!1908}
!1908 = !DILocalVariable(name: "this", arg: 1, scope: !1906, type: !1365, flags: DIFlagArtificial | DIFlagObjectPointer)
!1909 = !DILocation(line: 0, scope: !1906)
!1910 = !DILocation(line: 89, column: 48, scope: !1906)
!1911 = distinct !DISubprogram(name: "Update", linkageName: "_ZN14BulletinRWLock6UpdateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", scope: !209, file: !29, line: 28, type: !225, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !224, retainedNodes: !1912)
!1912 = !{!1913, !1914}
!1913 = !DILocalVariable(name: "this", arg: 1, scope: !1911, type: !208, flags: DIFlagArtificial | DIFlagObjectPointer)
!1914 = !DILocalVariable(name: "message", arg: 2, scope: !1911, file: !29, line: 28, type: !227)
!1915 = !DILocation(line: 0, scope: !1911)
!1916 = !DILocation(line: 28, column: 33, scope: !1911)
!1917 = !DILocation(line: 29, column: 28, scope: !1911)
!1918 = !DILocation(line: 29, column: 5, scope: !1911)
!1919 = !DILocation(line: 30, column: 5, scope: !1911)
!1920 = !DILocation(line: 30, column: 14, scope: !1911)
!1921 = !DILocation(line: 31, column: 28, scope: !1911)
!1922 = !DILocation(line: 31, column: 5, scope: !1911)
!1923 = !DILocation(line: 32, column: 3, scope: !1911)
!1924 = distinct !DISubprogram(name: "~basic_string", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev", scope: !33, file: !32, line: 657, type: !1671, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1925, retainedNodes: !1926)
!1925 = !DISubprogram(name: "~basic_string", scope: !33, file: !32, line: 657, type: !1671, scopeLine: 657, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1926 = !{!1927}
!1927 = !DILocalVariable(name: "this", arg: 1, scope: !1924, type: !1302, flags: DIFlagArtificial | DIFlagObjectPointer)
!1928 = !DILocation(line: 0, scope: !1924)
!1929 = !DILocation(line: 658, column: 9, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1924, file: !32, line: 658, column: 7)
!1931 = !DILocation(line: 658, column: 23, scope: !1930)
!1932 = !DILocation(line: 658, column: 23, scope: !1924)
!1933 = distinct !DISubprogram(name: "operator=", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_", scope: !33, file: !32, line: 665, type: !1934, scopeLine: 666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1938, retainedNodes: !1939)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!1936, !1298, !1937}
!1936 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !33, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1661, size: 64)
!1938 = !DISubprogram(name: "operator=", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_", scope: !33, file: !32, line: 665, type: !1934, scopeLine: 665, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1939 = !{!1940, !1941}
!1940 = !DILocalVariable(name: "this", arg: 1, scope: !1933, type: !1302, flags: DIFlagArtificial | DIFlagObjectPointer)
!1941 = !DILocalVariable(name: "__str", arg: 2, scope: !1933, file: !32, line: 665, type: !1937)
!1942 = !DILocation(line: 0, scope: !1933)
!1943 = !DILocation(line: 665, column: 37, scope: !1933)
!1944 = !DILocation(line: 667, column: 22, scope: !1933)
!1945 = !DILocation(line: 667, column: 15, scope: !1933)
!1946 = !DILocation(line: 667, column: 2, scope: !1933)
!1947 = distinct !DISubprogram(name: "assign", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_", scope: !33, file: !32, line: 1335, type: !1934, scopeLine: 1336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1948, retainedNodes: !1949)
!1948 = !DISubprogram(name: "assign", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_", scope: !33, file: !32, line: 1335, type: !1934, scopeLine: 1335, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1949 = !{!1950, !1951}
!1950 = !DILocalVariable(name: "this", arg: 1, scope: !1947, type: !1302, flags: DIFlagArtificial | DIFlagObjectPointer)
!1951 = !DILocalVariable(name: "__str", arg: 2, scope: !1947, file: !32, line: 1335, type: !1937)
!1952 = !DILocation(line: 0, scope: !1947)
!1953 = !DILocation(line: 1335, column: 34, scope: !1947)
!1954 = !DILocation(line: 1366, column: 18, scope: !1947)
!1955 = !DILocation(line: 1366, column: 8, scope: !1947)
!1956 = !DILocation(line: 1367, column: 2, scope: !1947)
!1957 = distinct !DISubprogram(name: "Read", linkageName: "_ZN14BulletinRWLock4ReadB5cxx11Ev", scope: !209, file: !29, line: 22, type: !222, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !221, retainedNodes: !1958)
!1958 = !{!1959, !1960}
!1959 = !DILocalVariable(name: "this", arg: 1, scope: !1957, type: !208, flags: DIFlagArtificial | DIFlagObjectPointer)
!1960 = !DILocalVariable(name: "msg", scope: !1957, file: !29, line: 23, type: !214)
!1961 = !DILocation(line: 0, scope: !1957)
!1962 = !DILocation(line: 23, column: 5, scope: !1957)
!1963 = !DILocation(line: 23, column: 17, scope: !1957)
!1964 = !DILocation(line: 23, column: 23, scope: !1957)
!1965 = !DILocation(line: 24, column: 28, scope: !1957)
!1966 = !DILocation(line: 24, column: 5, scope: !1957)
!1967 = !DILocation(line: 25, column: 5, scope: !1957)
!1968 = !DILocation(line: 26, column: 3, scope: !1957)
!1969 = distinct !DISubprogram(name: "operator<<<char, std::char_traits<char>, std::allocator<char> >", linkageName: "_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE", scope: !2, file: !32, line: 6458, type: !1970, scopeLine: 6460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !1978, retainedNodes: !1975)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!1972, !1972, !1937}
!1972 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1973, size: 64)
!1973 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::char_traits<char> >", scope: !2, file: !1974, line: 359, flags: DIFlagFwdDecl)
!1974 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/ostream.tcc", directory: "")
!1975 = !{!1976, !1977}
!1976 = !DILocalVariable(name: "__os", arg: 1, scope: !1969, file: !32, line: 6458, type: !1972)
!1977 = !DILocalVariable(name: "__str", arg: 2, scope: !1969, file: !32, line: 6459, type: !1937)
!1978 = !{!203, !1979, !133}
!1979 = !DITemplateTypeParameter(name: "_Traits", type: !155)
!1980 = !DILocation(line: 6458, column: 48, scope: !1969)
!1981 = !DILocation(line: 6459, column: 54, scope: !1969)
!1982 = !DILocation(line: 6463, column: 31, scope: !1969)
!1983 = !DILocation(line: 6463, column: 37, scope: !1969)
!1984 = !DILocation(line: 6463, column: 43, scope: !1969)
!1985 = !DILocation(line: 6463, column: 51, scope: !1969)
!1986 = !DILocation(line: 6463, column: 57, scope: !1969)
!1987 = !DILocation(line: 6463, column: 14, scope: !1969)
!1988 = !DILocation(line: 6463, column: 7, scope: !1969)
!1989 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZNSolsEPFRSoS_E", scope: !1973, file: !1990, line: 108, type: !1991, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1999, retainedNodes: !2000)
!1990 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/ostream", directory: "")
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!1993, !1995, !1996}
!1993 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ostream_type", scope: !1973, file: !1990, line: 71, baseType: !1973)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!1993, !1993}
!1999 = !DISubprogram(name: "operator<<", linkageName: "_ZNSolsEPFRSoS_E", scope: !1973, file: !1990, line: 108, type: !1991, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2000 = !{!2001, !2003}
!2001 = !DILocalVariable(name: "this", arg: 1, scope: !1989, type: !2002, flags: DIFlagArtificial | DIFlagObjectPointer)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!2003 = !DILocalVariable(name: "__pf", arg: 2, scope: !1989, file: !1990, line: 108, type: !1996)
!2004 = !DILocation(line: 0, scope: !1989)
!2005 = !DILocation(line: 108, column: 36, scope: !1989)
!2006 = !DILocation(line: 113, column: 9, scope: !1989)
!2007 = !DILocation(line: 113, column: 2, scope: !1989)
!2008 = distinct !DISubprogram(name: "endl<char, std::char_traits<char> >", linkageName: "_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_", scope: !2, file: !1990, line: 681, type: !2009, scopeLine: 682, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !2013, retainedNodes: !2011)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!1972, !1972}
!2011 = !{!2012}
!2012 = !DILocalVariable(name: "__os", arg: 1, scope: !2008, file: !1990, line: 681, type: !1972)
!2013 = !{!203, !1979}
!2014 = !DILocation(line: 681, column: 42, scope: !2008)
!2015 = !DILocation(line: 682, column: 20, scope: !2008)
!2016 = !DILocation(line: 682, column: 29, scope: !2008)
!2017 = !{!2018, !2018, i64 0}
!2018 = !{!"vtable pointer", !1186, i64 0}
!2019 = !DILocation(line: 682, column: 34, scope: !2008)
!2020 = !DILocation(line: 682, column: 25, scope: !2008)
!2021 = !DILocation(line: 682, column: 14, scope: !2008)
!2022 = !DILocation(line: 682, column: 7, scope: !2008)
!2023 = distinct !DISubprogram(name: "basic_string", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_", scope: !33, file: !32, line: 448, type: !2024, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !2026, retainedNodes: !2027)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{null, !1298, !1937}
!2026 = !DISubprogram(name: "basic_string", scope: !33, file: !32, line: 448, type: !2024, scopeLine: 448, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2027 = !{!2028, !2029}
!2028 = !DILocalVariable(name: "this", arg: 1, scope: !2023, type: !1302, flags: DIFlagArtificial | DIFlagObjectPointer)
!2029 = !DILocalVariable(name: "__str", arg: 2, scope: !2023, file: !32, line: 448, type: !1937)
!2030 = !DILocation(line: 0, scope: !2023)
!2031 = !DILocation(line: 448, column: 40, scope: !2023)
!2032 = !DILocation(line: 449, column: 9, scope: !2023)
!2033 = !DILocation(line: 449, column: 21, scope: !2023)
!2034 = !DILocation(line: 450, column: 7, scope: !2023)
!2035 = !DILocation(line: 450, column: 40, scope: !2023)
!2036 = !DILocation(line: 450, column: 46, scope: !2023)
!2037 = !DILocation(line: 451, column: 22, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2023, file: !32, line: 451, column: 7)
!2039 = !DILocation(line: 451, column: 28, scope: !2038)
!2040 = !DILocation(line: 451, column: 39, scope: !2038)
!2041 = !DILocation(line: 451, column: 45, scope: !2038)
!2042 = !DILocation(line: 451, column: 57, scope: !2038)
!2043 = !DILocation(line: 451, column: 63, scope: !2038)
!2044 = !DILocation(line: 451, column: 55, scope: !2038)
!2045 = !DILocation(line: 451, column: 9, scope: !2038)
!2046 = !DILocation(line: 451, column: 74, scope: !2023)
!2047 = !DILocation(line: 451, column: 74, scope: !2038)
!2048 = distinct !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_", scope: !95, file: !94, line: 97, type: !135, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !134, retainedNodes: !2049)
!2049 = !{!2050}
!2050 = !DILocalVariable(name: "__a", arg: 1, scope: !2048, file: !94, line: 97, type: !137)
!2051 = !DILocation(line: 97, column: 61, scope: !2048)
!2052 = !DILocation(line: 98, column: 64, scope: !2048)
!2053 = !DILocation(line: 98, column: 14, scope: !2048)
!2054 = !DILocation(line: 98, column: 7, scope: !2048)
!2055 = distinct !DISubprogram(name: "_M_get_allocator", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv", scope: !33, file: !32, line: 290, type: !2056, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !2060, retainedNodes: !2061)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!2058, !1660}
!2058 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1385)
!2060 = !DISubprogram(name: "_M_get_allocator", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv", scope: !33, file: !32, line: 290, type: !2056, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2061 = !{!2062}
!2062 = !DILocalVariable(name: "this", arg: 1, scope: !2055, type: !1665, flags: DIFlagArtificial | DIFlagObjectPointer)
!2063 = !DILocation(line: 0, scope: !2055)
!2064 = !DILocation(line: 291, column: 16, scope: !2055)
!2065 = !DILocation(line: 291, column: 9, scope: !2055)
!2066 = distinct !DISubprogram(name: "_Alloc_hider", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcOS3_", scope: !1382, file: !32, line: 159, type: !1396, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !1395, retainedNodes: !2067)
!2067 = !{!2068, !2069, !2070}
!2068 = !DILocalVariable(name: "this", arg: 1, scope: !2066, type: !1401, flags: DIFlagArtificial | DIFlagObjectPointer)
!2069 = !DILocalVariable(name: "__dat", arg: 2, scope: !2066, file: !32, line: 159, type: !1371)
!2070 = !DILocalVariable(name: "__a", arg: 3, scope: !2066, file: !32, line: 159, type: !1398)
!2071 = !DILocation(line: 0, scope: !2066)
!2072 = !DILocation(line: 159, column: 23, scope: !2066)
!2073 = !DILocation(line: 159, column: 39, scope: !2066)
!2074 = !DILocation(line: 160, column: 48, scope: !2066)
!2075 = !DILocation(line: 160, column: 29, scope: !2066)
!2076 = !DILocation(line: 160, column: 19, scope: !2066)
!2077 = !DILocation(line: 160, column: 4, scope: !2066)
!2078 = !DILocation(line: 160, column: 36, scope: !2066)
!2079 = !DILocation(line: 160, column: 41, scope: !2066)
!2080 = !DILocation(line: 160, column: 50, scope: !2066)
!2081 = distinct !DISubprogram(name: "_M_construct<char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_", scope: !33, file: !32, line: 263, type: !2082, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !2085, declaration: !2084, retainedNodes: !2087)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{null, !1298, !106, !106}
!2084 = !DISubprogram(name: "_M_construct<char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_", scope: !33, file: !32, line: 263, type: !2082, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !2085)
!2085 = !{!2086}
!2086 = !DITemplateTypeParameter(name: "_InIterator", type: !106)
!2087 = !{!2088, !2089, !2090}
!2088 = !DILocalVariable(name: "this", arg: 1, scope: !2081, type: !1302, flags: DIFlagArtificial | DIFlagObjectPointer)
!2089 = !DILocalVariable(name: "__beg", arg: 2, scope: !2081, file: !32, line: 263, type: !106)
!2090 = !DILocalVariable(name: "__end", arg: 3, scope: !2081, file: !32, line: 263, type: !106)
!2091 = !DILocation(line: 0, scope: !2081)
!2092 = !DILocation(line: 263, column: 34, scope: !2081)
!2093 = !DILocation(line: 263, column: 53, scope: !2081)
!2094 = !DILocation(line: 266, column: 21, scope: !2081)
!2095 = !DILocation(line: 266, column: 28, scope: !2081)
!2096 = !DILocation(line: 266, column: 4, scope: !2081)
!2097 = !DILocation(line: 267, column: 9, scope: !2081)
!2098 = distinct !DISubprogram(name: "length", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv", scope: !33, file: !32, line: 907, type: !2099, scopeLine: 908, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !2101, retainedNodes: !2102)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!92, !1660}
!2101 = !DISubprogram(name: "length", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv", scope: !33, file: !32, line: 907, type: !2099, scopeLine: 907, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2102 = !{!2103}
!2103 = !DILocalVariable(name: "this", arg: 1, scope: !2098, type: !1665, flags: DIFlagArtificial | DIFlagObjectPointer)
!2104 = !DILocation(line: 0, scope: !2098)
!2105 = !DILocation(line: 908, column: 16, scope: !2098)
!2106 = !DILocation(line: 908, column: 9, scope: !2098)
!2107 = distinct !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_", scope: !99, file: !100, line: 558, type: !130, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !129, retainedNodes: !2108)
!2108 = !{!2109}
!2109 = !DILocalVariable(name: "__rhs", arg: 1, scope: !2107, file: !100, line: 558, type: !127)
!2110 = !DILocation(line: 558, column: 67, scope: !2107)
!2111 = !DILocation(line: 559, column: 16, scope: !2107)
!2112 = !DILocation(line: 559, column: 9, scope: !2107)
!2113 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSaIcEC2ERKS_", scope: !109, file: !110, line: 147, type: !2114, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !2116, retainedNodes: !2117)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{null, !1286, !137}
!2116 = !DISubprogram(name: "allocator", scope: !109, file: !110, line: 147, type: !2114, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2117 = !{!2118, !2119}
!2118 = !DILocalVariable(name: "this", arg: 1, scope: !2113, type: !1290, flags: DIFlagArtificial | DIFlagObjectPointer)
!2119 = !DILocalVariable(name: "__a", arg: 2, scope: !2113, file: !110, line: 147, type: !137)
!2120 = !DILocation(line: 0, scope: !2113)
!2121 = !DILocation(line: 147, column: 34, scope: !2113)
!2122 = !DILocation(line: 148, column: 36, scope: !2113)
!2123 = !DILocation(line: 148, column: 31, scope: !2113)
!2124 = !DILocation(line: 148, column: 9, scope: !2113)
!2125 = !DILocation(line: 148, column: 38, scope: !2113)
!2126 = distinct !DISubprogram(name: "move<std::allocator<char> &>", linkageName: "_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_", scope: !2, file: !1474, line: 101, type: !2127, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !2132, retainedNodes: !2134)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!2129, !142}
!2129 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2131, file: !1458, line: 1598, baseType: !109)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::allocator<char> &>", scope: !2, file: !1458, line: 1597, size: 8, flags: DIFlagTypePassByValue, elements: !48, templateParams: !2132, identifier: "_ZTSSt16remove_referenceIRSaIcEE")
!2132 = !{!2133}
!2133 = !DITemplateTypeParameter(name: "_Tp", type: !142)
!2134 = !{!2135}
!2135 = !DILocalVariable(name: "__t", arg: 1, scope: !2126, file: !1474, line: 101, type: !142)
!2136 = !DILocation(line: 101, column: 16, scope: !2126)
!2137 = !DILocation(line: 102, column: 71, scope: !2126)
!2138 = !DILocation(line: 102, column: 7, scope: !2126)
!2139 = distinct !DISubprogram(name: "_M_construct_aux<char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type", scope: !33, file: !32, line: 243, type: !2140, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !2085, declaration: !2142, retainedNodes: !2143)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !1298, !106, !106, !1499}
!2142 = !DISubprogram(name: "_M_construct_aux<char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type", scope: !33, file: !32, line: 243, type: !2140, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !2085)
!2143 = !{!2144, !2145, !2146, !2147}
!2144 = !DILocalVariable(name: "this", arg: 1, scope: !2139, type: !1302, flags: DIFlagArtificial | DIFlagObjectPointer)
!2145 = !DILocalVariable(name: "__beg", arg: 2, scope: !2139, file: !32, line: 243, type: !106)
!2146 = !DILocalVariable(name: "__end", arg: 3, scope: !2139, file: !32, line: 243, type: !106)
!2147 = !DILocalVariable(arg: 4, scope: !2139, file: !32, line: 244, type: !1499)
!2148 = !DILocation(line: 0, scope: !2139)
!2149 = !DILocation(line: 243, column: 38, scope: !2139)
!2150 = !DILocation(line: 243, column: 57, scope: !2139)
!2151 = !DILocation(line: 244, column: 22, scope: !2139)
!2152 = !DILocation(line: 247, column: 24, scope: !2139)
!2153 = !DILocation(line: 247, column: 31, scope: !2139)
!2154 = !DILocation(line: 247, column: 38, scope: !2139)
!2155 = !DILocation(line: 247, column: 11, scope: !2139)
!2156 = !DILocation(line: 248, column: 2, scope: !2139)
!2157 = distinct !DISubprogram(name: "_M_construct<char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag", scope: !33, file: !34, line: 207, type: !2158, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !2161, declaration: !2160, retainedNodes: !2163)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{null, !1298, !106, !106, !1519}
!2160 = !DISubprogram(name: "_M_construct<char *>", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag", scope: !33, file: !32, line: 279, type: !2158, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !2161)
!2161 = !{!2162}
!2162 = !DITemplateTypeParameter(name: "_FwdIterator", type: !106)
!2163 = !{!2164, !2165, !2166, !2167, !2168}
!2164 = !DILocalVariable(name: "this", arg: 1, scope: !2157, type: !1302, flags: DIFlagArtificial | DIFlagObjectPointer)
!2165 = !DILocalVariable(name: "__beg", arg: 2, scope: !2157, file: !32, line: 279, type: !106)
!2166 = !DILocalVariable(name: "__end", arg: 3, scope: !2157, file: !32, line: 279, type: !106)
!2167 = !DILocalVariable(arg: 4, scope: !2157, file: !32, line: 280, type: !1519)
!2168 = !DILocalVariable(name: "__dnew", scope: !2157, file: !34, line: 215, type: !92)
!2169 = !DILocation(line: 0, scope: !2157)
!2170 = !DILocation(line: 279, column: 35, scope: !2157)
!2171 = !DILocation(line: 279, column: 55, scope: !2157)
!2172 = !DILocation(line: 280, column: 33, scope: !2157)
!2173 = !DILocation(line: 211, column: 35, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2157, file: !34, line: 211, column: 6)
!2175 = !DILocation(line: 211, column: 6, scope: !2174)
!2176 = !DILocation(line: 211, column: 42, scope: !2174)
!2177 = !DILocation(line: 211, column: 45, scope: !2174)
!2178 = !DILocation(line: 211, column: 54, scope: !2174)
!2179 = !DILocation(line: 211, column: 51, scope: !2174)
!2180 = !DILocation(line: 211, column: 6, scope: !2157)
!2181 = !DILocation(line: 212, column: 4, scope: !2174)
!2182 = !DILocation(line: 215, column: 2, scope: !2157)
!2183 = !DILocation(line: 215, column: 12, scope: !2157)
!2184 = !DILocation(line: 215, column: 58, scope: !2157)
!2185 = !DILocation(line: 215, column: 65, scope: !2157)
!2186 = !DILocation(line: 215, column: 44, scope: !2157)
!2187 = !DILocation(line: 217, column: 6, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2157, file: !34, line: 217, column: 6)
!2189 = !DILocation(line: 217, column: 13, scope: !2188)
!2190 = !DILocation(line: 217, column: 6, scope: !2157)
!2191 = !DILocation(line: 219, column: 14, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2188, file: !34, line: 218, column: 4)
!2193 = !DILocation(line: 219, column: 6, scope: !2192)
!2194 = !DILocation(line: 220, column: 18, scope: !2192)
!2195 = !DILocation(line: 220, column: 6, scope: !2192)
!2196 = !DILocation(line: 221, column: 4, scope: !2192)
!2197 = !DILocation(line: 225, column: 26, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2157, file: !34, line: 225, column: 4)
!2199 = !DILocation(line: 225, column: 37, scope: !2198)
!2200 = !DILocation(line: 225, column: 44, scope: !2198)
!2201 = !DILocation(line: 225, column: 6, scope: !2198)
!2202 = !DILocation(line: 225, column: 52, scope: !2198)
!2203 = !DILocation(line: 233, column: 7, scope: !2198)
!2204 = !DILocation(line: 228, column: 6, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2157, file: !34, line: 227, column: 4)
!2206 = !DILocation(line: 229, column: 6, scope: !2205)
!2207 = !DILocation(line: 233, column: 7, scope: !2205)
!2208 = !DILocation(line: 230, column: 4, scope: !2205)
!2209 = !DILocation(line: 233, column: 7, scope: !2157)
!2210 = !DILocation(line: 232, column: 16, scope: !2157)
!2211 = !DILocation(line: 232, column: 2, scope: !2157)
!2212 = distinct !DISubprogram(name: "__is_null_pointer<char>", linkageName: "_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_", scope: !96, file: !1577, line: 152, type: !2213, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !2217, retainedNodes: !2215)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!13, !106}
!2215 = !{!2216}
!2216 = !DILocalVariable(name: "__ptr", arg: 1, scope: !2212, file: !1577, line: 152, type: !106)
!2217 = !{!2218}
!2218 = !DITemplateTypeParameter(name: "_Type", type: !47)
!2219 = !DILocation(line: 152, column: 30, scope: !2212)
!2220 = !DILocation(line: 153, column: 14, scope: !2212)
!2221 = !DILocation(line: 153, column: 20, scope: !2212)
!2222 = !DILocation(line: 153, column: 7, scope: !2212)
!2223 = distinct !DISubprogram(name: "distance<char *>", linkageName: "_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_", scope: !2, file: !1589, line: 138, type: !2224, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !2233, retainedNodes: !2230)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!2226, !106, !106}
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !2227, file: !1520, line: 214, baseType: !1596)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<char *>", scope: !2, file: !1520, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !48, templateParams: !2228, identifier: "_ZTSSt15iterator_traitsIPcE")
!2228 = !{!2229}
!2229 = !DITemplateTypeParameter(name: "_Iterator", type: !106)
!2230 = !{!2231, !2232}
!2231 = !DILocalVariable(name: "__first", arg: 1, scope: !2223, file: !1589, line: 138, type: !106)
!2232 = !DILocalVariable(name: "__last", arg: 2, scope: !2223, file: !1589, line: 138, type: !106)
!2233 = !{!2234}
!2234 = !DITemplateTypeParameter(name: "_InputIterator", type: !106)
!2235 = !DILocation(line: 138, column: 29, scope: !2223)
!2236 = !DILocation(line: 138, column: 53, scope: !2223)
!2237 = !DILocation(line: 141, column: 30, scope: !2223)
!2238 = !DILocation(line: 141, column: 39, scope: !2223)
!2239 = !DILocation(line: 142, column: 9, scope: !2223)
!2240 = !DILocation(line: 141, column: 14, scope: !2223)
!2241 = !DILocation(line: 141, column: 7, scope: !2223)
!2242 = distinct !DISubprogram(name: "_S_copy_chars", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_", scope: !33, file: !32, line: 392, type: !2243, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !2245, retainedNodes: !2246)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{null, !106, !106, !106}
!2245 = !DISubprogram(name: "_S_copy_chars", linkageName: "_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_", scope: !33, file: !32, line: 392, type: !2243, scopeLine: 392, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!2246 = !{!2247, !2248, !2249}
!2247 = !DILocalVariable(name: "__p", arg: 1, scope: !2242, file: !32, line: 392, type: !106)
!2248 = !DILocalVariable(name: "__k1", arg: 2, scope: !2242, file: !32, line: 392, type: !106)
!2249 = !DILocalVariable(name: "__k2", arg: 3, scope: !2242, file: !32, line: 392, type: !106)
!2250 = !DILocation(line: 392, column: 29, scope: !2242)
!2251 = !DILocation(line: 392, column: 42, scope: !2242)
!2252 = !DILocation(line: 392, column: 56, scope: !2242)
!2253 = !DILocation(line: 393, column: 17, scope: !2242)
!2254 = !DILocation(line: 393, column: 22, scope: !2242)
!2255 = !DILocation(line: 393, column: 28, scope: !2242)
!2256 = !DILocation(line: 393, column: 35, scope: !2242)
!2257 = !DILocation(line: 393, column: 33, scope: !2242)
!2258 = !DILocation(line: 393, column: 9, scope: !2242)
!2259 = !DILocation(line: 393, column: 42, scope: !2242)
!2260 = distinct !DISubprogram(name: "__distance<char *>", linkageName: "_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag", scope: !2, file: !1589, line: 98, type: !2261, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !2267, retainedNodes: !2263)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!2226, !106, !106, !1700}
!2263 = !{!2264, !2265, !2266}
!2264 = !DILocalVariable(name: "__first", arg: 1, scope: !2260, file: !1589, line: 98, type: !106)
!2265 = !DILocalVariable(name: "__last", arg: 2, scope: !2260, file: !1589, line: 98, type: !106)
!2266 = !DILocalVariable(arg: 3, scope: !2260, file: !1589, line: 99, type: !1700)
!2267 = !{!2268}
!2268 = !DITemplateTypeParameter(name: "_RandomAccessIterator", type: !106)
!2269 = !DILocation(line: 98, column: 38, scope: !2260)
!2270 = !DILocation(line: 98, column: 69, scope: !2260)
!2271 = !DILocation(line: 99, column: 42, scope: !2260)
!2272 = !DILocation(line: 104, column: 14, scope: !2260)
!2273 = !DILocation(line: 104, column: 23, scope: !2260)
!2274 = !DILocation(line: 104, column: 21, scope: !2260)
!2275 = !DILocation(line: 104, column: 7, scope: !2260)
!2276 = distinct !DISubprogram(name: "__iterator_category<char *>", linkageName: "_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_", scope: !2, file: !1520, line: 238, type: !2277, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !2284, retainedNodes: !2282)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!2279, !2280}
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_category", scope: !2227, file: !1520, line: 212, baseType: !1700)
!2280 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!2282 = !{!2283}
!2283 = !DILocalVariable(arg: 1, scope: !2276, file: !1520, line: 238, type: !2280)
!2284 = !{!2285}
!2285 = !DITemplateTypeParameter(name: "_Iter", type: !106)
!2286 = !DILocation(line: 238, column: 37, scope: !2276)
!2287 = !DILocation(line: 239, column: 7, scope: !2276)
!2288 = distinct !DISubprogram(name: "data", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv", scope: !33, file: !32, line: 2311, type: !2289, scopeLine: 2312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !2291, retainedNodes: !2292)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!45, !1660}
!2291 = !DISubprogram(name: "data", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv", scope: !33, file: !32, line: 2311, type: !2289, scopeLine: 2311, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2292 = !{!2293}
!2293 = !DILocalVariable(name: "this", arg: 1, scope: !2288, type: !1665, flags: DIFlagArtificial | DIFlagObjectPointer)
!2294 = !DILocation(line: 0, scope: !2288)
!2295 = !DILocation(line: 2312, column: 16, scope: !2288)
!2296 = !DILocation(line: 2312, column: 9, scope: !2288)
!2297 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv", scope: !33, file: !32, line: 901, type: !2099, scopeLine: 902, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !2298, retainedNodes: !2299)
!2298 = !DISubprogram(name: "size", linkageName: "_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv", scope: !33, file: !32, line: 901, type: !2099, scopeLine: 901, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2299 = !{!2300}
!2300 = !DILocalVariable(name: "this", arg: 1, scope: !2297, type: !1665, flags: DIFlagArtificial | DIFlagObjectPointer)
!2301 = !DILocation(line: 0, scope: !2297)
!2302 = !DILocation(line: 902, column: 16, scope: !2297)
!2303 = !DILocation(line: 902, column: 9, scope: !2297)
!2304 = distinct !DISubprogram(name: "flush<char, std::char_traits<char> >", linkageName: "_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_", scope: !2, file: !1990, line: 703, type: !2009, scopeLine: 704, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !2013, retainedNodes: !2305)
!2305 = !{!2306}
!2306 = !DILocalVariable(name: "__os", arg: 1, scope: !2304, file: !1990, line: 703, type: !1972)
!2307 = !DILocation(line: 703, column: 43, scope: !2304)
!2308 = !DILocation(line: 704, column: 14, scope: !2304)
!2309 = !DILocation(line: 704, column: 19, scope: !2304)
!2310 = !DILocation(line: 704, column: 7, scope: !2304)
!2311 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc", scope: !2313, file: !2312, line: 449, type: !2315, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !2320, retainedNodes: !2321)
!2312 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/basic_ios.h", directory: "")
!2313 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ios<char, std::char_traits<char> >", scope: !2, file: !2314, line: 178, flags: DIFlagFwdDecl)
!2314 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/basic_ios.tcc", directory: "")
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!2317, !2318, !47}
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !2313, file: !2312, line: 76, baseType: !47)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2313)
!2320 = !DISubprogram(name: "widen", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc", scope: !2313, file: !2312, line: 449, type: !2315, scopeLine: 449, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2321 = !{!2322, !2324}
!2322 = !DILocalVariable(name: "this", arg: 1, scope: !2311, type: !2323, flags: DIFlagArtificial | DIFlagObjectPointer)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2324 = !DILocalVariable(name: "__c", arg: 2, scope: !2311, file: !2312, line: 449, type: !47)
!2325 = !DILocation(line: 0, scope: !2311)
!2326 = !DILocation(line: 449, column: 18, scope: !2311)
!2327 = !DILocation(line: 450, column: 30, scope: !2311)
!2328 = !{!2329, !1214, i64 240}
!2329 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !1214, i64 216, !1185, i64 224, !2330, i64 225, !1214, i64 232, !1214, i64 240, !1214, i64 248, !1214, i64 256}
!2330 = !{!"bool", !1185, i64 0}
!2331 = !DILocation(line: 450, column: 16, scope: !2311)
!2332 = !DILocation(line: 450, column: 46, scope: !2311)
!2333 = !DILocation(line: 450, column: 40, scope: !2311)
!2334 = !DILocation(line: 450, column: 9, scope: !2311)
!2335 = distinct !DISubprogram(name: "__check_facet<std::ctype<char> >", linkageName: "_ZSt13__check_facetISt5ctypeIcEERKT_PS3_", scope: !2, file: !2312, line: 47, type: !2336, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, templateParams: !2345, retainedNodes: !2343)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!2338, !2342}
!2338 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2340)
!2340 = !DICompositeType(tag: DW_TAG_class_type, name: "ctype<char>", scope: !2, file: !2341, line: 681, flags: DIFlagFwdDecl, identifier: "_ZTSSt5ctypeIcE")
!2341 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/locale_facets.h", directory: "")
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2343 = !{!2344}
!2344 = !DILocalVariable(name: "__f", arg: 1, scope: !2335, file: !2312, line: 47, type: !2342)
!2345 = !{!2346}
!2346 = !DITemplateTypeParameter(name: "_Facet", type: !2340)
!2347 = !DILocation(line: 47, column: 33, scope: !2335)
!2348 = !DILocation(line: 49, column: 12, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2335, file: !2312, line: 49, column: 11)
!2350 = !DILocation(line: 49, column: 11, scope: !2335)
!2351 = !DILocation(line: 50, column: 2, scope: !2349)
!2352 = !DILocation(line: 51, column: 15, scope: !2335)
!2353 = !DILocation(line: 51, column: 7, scope: !2335)
!2354 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt5ctypeIcE5widenEc", scope: !2340, file: !2341, line: 872, type: !2355, scopeLine: 873, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, declaration: !2359, retainedNodes: !2360)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!2357, !2358, !47}
!2357 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !2340, file: !2341, line: 686, baseType: !47)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2359 = !DISubprogram(name: "widen", linkageName: "_ZNKSt5ctypeIcE5widenEc", scope: !2340, file: !2341, line: 872, type: !2355, scopeLine: 872, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2360 = !{!2361, !2362}
!2361 = !DILocalVariable(name: "this", arg: 1, scope: !2354, type: !2342, flags: DIFlagArtificial | DIFlagObjectPointer)
!2362 = !DILocalVariable(name: "__c", arg: 2, scope: !2354, file: !2341, line: 872, type: !47)
!2363 = !DILocation(line: 0, scope: !2354)
!2364 = !DILocation(line: 872, column: 18, scope: !2354)
!2365 = !DILocation(line: 874, column: 6, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2354, file: !2341, line: 874, column: 6)
!2367 = !{!2368, !1185, i64 56}
!2368 = !{!"_ZTSSt5ctypeIcE", !1214, i64 16, !2330, i64 24, !1214, i64 32, !1214, i64 40, !1214, i64 48, !1185, i64 56, !1185, i64 57, !1185, i64 313, !1185, i64 569}
!2369 = !DILocation(line: 874, column: 6, scope: !2354)
!2370 = !DILocation(line: 875, column: 11, scope: !2366)
!2371 = !DILocation(line: 875, column: 47, scope: !2366)
!2372 = !DILocation(line: 875, column: 4, scope: !2366)
!2373 = !DILocation(line: 876, column: 8, scope: !2354)
!2374 = !DILocation(line: 877, column: 24, scope: !2354)
!2375 = !DILocation(line: 877, column: 15, scope: !2354)
!2376 = !DILocation(line: 877, column: 2, scope: !2354)
!2377 = !DILocation(line: 878, column: 7, scope: !2354)
!2378 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_pthread_rwlock_yes.cpp", scope: !29, file: !29, type: !2379, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !48)
!2379 = !DISubroutineType(types: !48)
!2380 = !DILocation(line: 0, scope: !2378)
