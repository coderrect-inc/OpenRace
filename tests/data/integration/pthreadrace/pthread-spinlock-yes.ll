; ModuleID = 'integration/pthreadrace/pthread-spinlock-yes.cpp'
source_filename = "integration/pthreadrace/pthread-spinlock-yes.cpp"
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
%union.pthread_attr_t = type { i64, [48 x i8] }

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

@_ZL3buf = internal global i32* null, align 8, !dbg !0
@_ZL4lock = internal global i32 0, align 4, !dbg !71
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !47
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_pthread_spinlock_yes.cpp, i8* null }]

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !1015 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %thr_sum = alloca i64, align 8
  %thr_generate = alloca i64, align 8
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !1024
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !1019, metadata !DIExpression()), !dbg !1028
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !1029
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !1020, metadata !DIExpression()), !dbg !1031
  %0 = bitcast i64* %thr_sum to i8*, !dbg !1032
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #7, !dbg !1032
  call void @llvm.dbg.declare(metadata i64* %thr_sum, metadata !1021, metadata !DIExpression()), !dbg !1033
  %1 = bitcast i64* %thr_generate to i8*, !dbg !1032
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #7, !dbg !1032
  call void @llvm.dbg.declare(metadata i64* %thr_generate, metadata !1023, metadata !DIExpression()), !dbg !1034
  %call = call i8* @_Znam(i64 4096) #12, !dbg !1035
  %2 = bitcast i8* %call to i32*, !dbg !1035
  store i32* %2, i32** @_ZL3buf, align 8, !dbg !1036, !tbaa !1029
  %call1 = call i32 @pthread_spin_init(i32* @_ZL4lock, i32 0) #7, !dbg !1037
  %call2 = call i32 @pthread_create(i64* %thr_sum, %union.pthread_attr_t* null, i8* (i8*)* @_ZL9SumThreadPv, i8* null) #7, !dbg !1038
  %call3 = call i32 @pthread_create(i64* %thr_generate, %union.pthread_attr_t* null, i8* (i8*)* @_ZL14GenerateThreadPv, i8* null) #7, !dbg !1039
  %3 = load i64, i64* %thr_sum, align 8, !dbg !1040, !tbaa !1041
  %call4 = call i32 @pthread_join(i64 %3, i8** null), !dbg !1043
  %4 = load i64, i64* %thr_generate, align 8, !dbg !1044, !tbaa !1041
  %call5 = call i32 @pthread_join(i64 %4, i8** null), !dbg !1045
  %5 = bitcast i64* %thr_generate to i8*, !dbg !1046
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #7, !dbg !1046
  %6 = bitcast i64* %thr_sum to i8*, !dbg !1046
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #7, !dbg !1046
  ret i32 0, !dbg !1046
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #3

; Function Attrs: nounwind
declare !dbg !24 dso_local i32 @pthread_spin_init(i32*, i32) #4

; Function Attrs: nounwind
declare !callback !1047 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #4

; Function Attrs: uwtable
define internal i8* @_ZL9SumThreadPv(i8* %unused) #5 !dbg !1049 {
entry:
  %unused.addr = alloca i8*, align 8
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %unused, i8** %unused.addr, align 8, !tbaa !1029
  call void @llvm.dbg.declare(metadata i8** %unused.addr, metadata !1053, metadata !DIExpression()), !dbg !1058
  br label %while.body, !dbg !1059

while.body:                                       ; preds = %entry, %for.end
  %call = call i32 @pthread_spin_lock(i32* @_ZL4lock) #7, !dbg !1060
  %0 = bitcast i32* %sum to i8*, !dbg !1061
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #7, !dbg !1061
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !1054, metadata !DIExpression()), !dbg !1062
  store i32 0, i32* %sum, align 4, !dbg !1062, !tbaa !1024
  %1 = bitcast i32* %i to i8*, !dbg !1063
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #7, !dbg !1063
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1056, metadata !DIExpression()), !dbg !1064
  store i32 0, i32* %i, align 4, !dbg !1064, !tbaa !1024
  br label %for.cond, !dbg !1063

for.cond:                                         ; preds = %for.inc, %while.body
  %2 = load i32, i32* %i, align 4, !dbg !1065, !tbaa !1024
  %cmp = icmp slt i32 %2, 1024, !dbg !1067
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1068

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*, !dbg !1069
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #7, !dbg !1069
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** @_ZL3buf, align 8, !dbg !1070, !tbaa !1029
  %5 = load i32, i32* %i, align 4, !dbg !1072, !tbaa !1024
  %idxprom = sext i32 %5 to i64, !dbg !1070
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !1070
  %6 = load i32, i32* %arrayidx, align 4, !dbg !1070, !tbaa !1024
  %7 = load i32, i32* %sum, align 4, !dbg !1073, !tbaa !1024
  %add = add i32 %7, %6, !dbg !1073
  store i32 %add, i32* %sum, align 4, !dbg !1073, !tbaa !1024
  br label %for.inc, !dbg !1074

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !1075, !tbaa !1024
  %inc = add nsw i32 %8, 1, !dbg !1075
  store i32 %inc, i32* %i, align 4, !dbg !1075, !tbaa !1024
  br label %for.cond, !dbg !1069, !llvm.loop !1076

for.end:                                          ; preds = %for.cond.cleanup
  %9 = load i32, i32* %sum, align 4, !dbg !1078, !tbaa !1024
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"* @_ZSt4cout, i32 %9), !dbg !1079
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !1080
  %call3 = call i32 @pthread_spin_unlock(i32* @_ZL4lock) #7, !dbg !1081
  %10 = bitcast i32* %sum to i8*, !dbg !1082
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #7, !dbg !1082
  br label %while.body, !dbg !1059, !llvm.loop !1083
}

; Function Attrs: uwtable
define internal i8* @_ZL14GenerateThreadPv(i8* %unused) #5 !dbg !1084 {
entry:
  %unused.addr = alloca i8*, align 8
  store i8* %unused, i8** %unused.addr, align 8, !tbaa !1029
  call void @llvm.dbg.declare(metadata i8** %unused.addr, metadata !1086, metadata !DIExpression()), !dbg !1087
  br label %while.body, !dbg !1088

while.body:                                       ; preds = %entry, %delete.end
  %call = call i32 @pthread_spin_lock(i32* @_ZL4lock) #7, !dbg !1089
  %0 = load i32*, i32** @_ZL3buf, align 8, !dbg !1091, !tbaa !1029
  %isnull = icmp eq i32* %0, null, !dbg !1092
  br i1 %isnull, label %delete.end, label %delete.notnull, !dbg !1092

delete.notnull:                                   ; preds = %while.body
  %1 = bitcast i32* %0 to i8*, !dbg !1092
  call void @_ZdlPv(i8* %1) #13, !dbg !1092
  br label %delete.end, !dbg !1092

delete.end:                                       ; preds = %delete.notnull, %while.body
  %call1 = call i8* @_Znam(i64 4096) #12, !dbg !1093
  %2 = bitcast i8* %call1 to i32*, !dbg !1093
  store i32* %2, i32** @_ZL3buf, align 8, !dbg !1094, !tbaa !1029
  br label %while.body, !dbg !1088, !llvm.loop !1095
}

declare !dbg !30 dso_local i32 @pthread_join(i64, i8**) #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: uwtable
define internal void @__cxx_global_var_init() #5 section ".text.startup" !dbg !1097 {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !dbg !1098
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #7, !dbg !1098
  ret void, !dbg !1098
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #6

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #7

; Function Attrs: nounwind
declare !dbg !36 dso_local i32 @pthread_spin_lock(i32*) #4

; Function Attrs: inlinehint uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %__out, i8* %__s) #8 !dbg !1099 {
entry:
  %__out.addr = alloca %"class.std::basic_ostream"*, align 8
  %__s.addr = alloca i8*, align 8
  store %"class.std::basic_ostream"* %__out, %"class.std::basic_ostream"** %__out.addr, align 8, !tbaa !1029
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %__out.addr, metadata !1107, metadata !DIExpression()), !dbg !1164
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1029
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !1108, metadata !DIExpression()), !dbg !1165
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !1166, !tbaa !1029
  %tobool = icmp ne i8* %0, null, !dbg !1166
  br i1 %tobool, label %if.else, label %if.then, !dbg !1168

if.then:                                          ; preds = %entry
  %1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__out.addr, align 8, !dbg !1169, !tbaa !1029
  %2 = bitcast %"class.std::basic_ostream"* %1 to i8**, !dbg !1169
  %vtable = load i8*, i8** %2, align 8, !dbg !1169, !tbaa !1170
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24, !dbg !1169
  %3 = bitcast i8* %vbase.offset.ptr to i64*, !dbg !1169
  %vbase.offset = load i64, i64* %3, align 8, !dbg !1169
  %4 = bitcast %"class.std::basic_ostream"* %1 to i8*, !dbg !1169
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %vbase.offset, !dbg !1169
  %5 = bitcast i8* %add.ptr to %"class.std::basic_ios"*, !dbg !1169
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* %5, i32 1), !dbg !1172
  br label %if.end, !dbg !1169

if.else:                                          ; preds = %entry
  %6 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__out.addr, align 8, !dbg !1173, !tbaa !1029
  %7 = load i8*, i8** %__s.addr, align 8, !dbg !1174, !tbaa !1029
  %8 = load i8*, i8** %__s.addr, align 8, !dbg !1175, !tbaa !1029
  %call = call i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %8), !dbg !1176
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272) %6, i8* %7, i64 %call), !dbg !1177
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__out.addr, align 8, !dbg !1178, !tbaa !1029
  ret %"class.std::basic_ostream"* %9, !dbg !1179
}

; Function Attrs: uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"* %this, i32 %__n) #5 align 2 !dbg !1180 {
entry:
  %this.addr = alloca %"class.std::basic_ostream"*, align 8
  %__n.addr = alloca i32, align 4
  store %"class.std::basic_ostream"* %this, %"class.std::basic_ostream"** %this.addr, align 8, !tbaa !1029
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %this.addr, metadata !1188, metadata !DIExpression()), !dbg !1191
  store i32 %__n, i32* %__n.addr, align 4, !tbaa !1024
  call void @llvm.dbg.declare(metadata i32* %__n.addr, metadata !1190, metadata !DIExpression()), !dbg !1192
  %this1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %this.addr, align 8
  %0 = load i32, i32* %__n.addr, align 4, !dbg !1193, !tbaa !1024
  %conv = zext i32 %0 to i64, !dbg !1193
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* %this1, i64 %conv), !dbg !1194
  ret %"class.std::basic_ostream"* %call, !dbg !1195
}

; Function Attrs: nounwind
declare !dbg !39 dso_local i32 @pthread_spin_unlock(i32*) #4

; Function Attrs: uwtable
define available_externally dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* %this, i32 %__state) #5 align 2 !dbg !1196 {
entry:
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  %__state.addr = alloca i32, align 4
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8, !tbaa !1029
  call void @llvm.dbg.declare(metadata %"class.std::basic_ios"** %this.addr, metadata !1206, metadata !DIExpression()), !dbg !1209
  store i32 %__state, i32* %__state.addr, align 4, !tbaa !1210
  call void @llvm.dbg.declare(metadata i32* %__state.addr, metadata !1208, metadata !DIExpression()), !dbg !1212
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %call = call i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(%"class.std::basic_ios"* %this1), !dbg !1213
  %0 = load i32, i32* %__state.addr, align 4, !dbg !1214, !tbaa !1210
  %call2 = call i32 @_ZStorSt12_Ios_IostateS_(i32 %call, i32 %0), !dbg !1215
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* %this1, i32 %call2), !dbg !1216
  ret void, !dbg !1217
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272), i8*, i64) #6

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %__s) #9 comdat align 2 !dbg !1218 {
entry:
  %__s.addr = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1029
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !1220, metadata !DIExpression()), !dbg !1221
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !1222, !tbaa !1029
  %call = call i64 @strlen(i8* %0) #7, !dbg !1223
  ret i64 %call, !dbg !1224
}

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"*, i32) #6

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @_ZStorSt12_Ios_IostateS_(i32 %__a, i32 %__b) #10 comdat !dbg !1225 {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, i32* %__a.addr, align 4, !tbaa !1210
  call void @llvm.dbg.declare(metadata i32* %__a.addr, metadata !1229, metadata !DIExpression()), !dbg !1231
  store i32 %__b, i32* %__b.addr, align 4, !tbaa !1210
  call void @llvm.dbg.declare(metadata i32* %__b.addr, metadata !1230, metadata !DIExpression()), !dbg !1232
  %0 = load i32, i32* %__a.addr, align 4, !dbg !1233, !tbaa !1210
  %1 = load i32, i32* %__b.addr, align 4, !dbg !1234, !tbaa !1210
  %or = or i32 %0, %1, !dbg !1235
  ret i32 %or, !dbg !1236
}

; Function Attrs: nounwind uwtable
define available_externally dso_local i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(%"class.std::basic_ios"* %this) #9 align 2 !dbg !1237 {
entry:
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8, !tbaa !1029
  call void @llvm.dbg.declare(metadata %"class.std::basic_ios"** %this.addr, metadata !1244, metadata !DIExpression()), !dbg !1246
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::basic_ios"* %this1 to %"class.std::ios_base"*, !dbg !1247
  %_M_streambuf_state = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %0, i32 0, i32 5, !dbg !1247
  %1 = load i32, i32* %_M_streambuf_state, align 8, !dbg !1247, !tbaa !1248
  ret i32 %1, !dbg !1253
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8*) #4

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"*, i64) #6

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #11

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_pthread_spinlock_yes.cpp() #5 section ".text.startup" !dbg !1254 {
entry:
  call void @__cxx_global_var_init(), !dbg !1256
  ret void
}

attributes #0 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { inlinehint uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { builtin }
attributes #13 = { builtin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1011, !1012, !1013}
!llvm.ident = !{!1014}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "buf", linkageName: "_ZL3buf", scope: !2, file: !3, line: 12, type: !1010, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !23, globals: !46, imports: !75, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/pthreadrace/pthread-spinlock-yes.cpp", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 142, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/pthread.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "PTHREAD_PROCESS_PRIVATE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "PTHREAD_PROCESS_SHARED", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Ios_Iostate", scope: !13, file: !12, line: 153, baseType: !14, size: 32, elements: !15, identifier: "_ZTSSt12_Ios_Iostate")
!12 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/ios_base.h", directory: "")
!13 = !DINamespace(name: "std", scope: null)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17, !18, !19, !20, !21, !22}
!16 = !DIEnumerator(name: "_S_goodbit", value: 0)
!17 = !DIEnumerator(name: "_S_badbit", value: 1)
!18 = !DIEnumerator(name: "_S_eofbit", value: 2)
!19 = !DIEnumerator(name: "_S_failbit", value: 4)
!20 = !DIEnumerator(name: "_S_ios_iostate_end", value: 65536)
!21 = !DIEnumerator(name: "_S_ios_iostate_max", value: 2147483647)
!22 = !DIEnumerator(name: "_S_ios_iostate_min", value: -2147483648)
!23 = !{!24, !30, !36, !39, !40, !11, !14, !33, !45}
!24 = !DISubprogram(name: "pthread_spin_init", scope: !6, file: !6, line: 1089, type: !25, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !29)
!25 = !DISubroutineType(types: !26)
!26 = !{!14, !27, !14}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!29 = !{}
!30 = !DISubprogram(name: "pthread_join", scope: !6, file: !6, line: 217, type: !31, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !29)
!31 = !DISubroutineType(types: !32)
!32 = !{!14, !33, !34}
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DISubprogram(name: "pthread_spin_lock", scope: !6, file: !6, line: 1097, type: !37, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !29)
!37 = !DISubroutineType(types: !38)
!38 = !{!14, !27}
!39 = !DISubprogram(name: "pthread_spin_unlock", scope: !6, file: !6, line: 1105, type: !37, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !29)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamsize", scope: !13, file: !41, line: 98, baseType: !42)
!41 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/postypes.h", directory: "")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !13, file: !43, line: 261, baseType: !44)
!43 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/x86_64-pc-linux-gnu/bits/c++config.h", directory: "")
!44 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!45 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !13, file: !12, line: 228, flags: DIFlagFwdDecl, identifier: "_ZTSSt8ios_base")
!46 = !{!47, !0, !71}
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !13, file: !49, line: 74, type: !50, isLocal: true, isDefinition: true)
!49 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/iostream", directory: "")
!50 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !45, file: !12, line: 603, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !51, identifier: "_ZTSNSt8ios_base4InitE")
!51 = !{!52, !55, !57, !61, !62, !67}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_S_refcount", scope: !50, file: !12, line: 616, baseType: !53, flags: DIFlagStaticMember)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Atomic_word", file: !54, line: 32, baseType: !14)
!54 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/x86_64-pc-linux-gnu/bits/atomic_word.h", directory: "")
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_S_synced_with_stdio", scope: !50, file: !12, line: 617, baseType: !56, flags: DIFlagStaticMember)
!56 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!57 = !DISubprogram(name: "Init", scope: !50, file: !12, line: 607, type: !58, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !60}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!61 = !DISubprogram(name: "~Init", scope: !50, file: !12, line: 608, type: !58, scopeLine: 608, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!62 = !DISubprogram(name: "Init", scope: !50, file: !12, line: 611, type: !63, scopeLine: 611, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !60, !65}
!65 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!67 = !DISubprogram(name: "operator=", linkageName: "_ZNSt8ios_base4InitaSERKS0_", scope: !50, file: !12, line: 612, type: !68, scopeLine: 612, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!68 = !DISubroutineType(types: !69)
!69 = !{!70, !60, !65}
!70 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !50, size: 64)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "lock", linkageName: "_ZL4lock", scope: !2, file: !3, line: 11, type: !73, isLocal: true, isDefinition: true)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_spinlock_t", file: !74, line: 103, baseType: !28)
!74 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "")
!75 = !{!76, !94, !97, !102, !164, !172, !176, !183, !187, !191, !193, !195, !199, !208, !212, !218, !224, !226, !230, !234, !238, !242, !253, !255, !259, !263, !267, !269, !274, !278, !282, !284, !286, !290, !299, !303, !307, !311, !313, !319, !321, !328, !333, !337, !341, !345, !349, !353, !355, !357, !361, !365, !369, !371, !375, !379, !381, !383, !387, !393, !398, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !467, !471, !475, !480, !484, !487, !490, !493, !495, !497, !499, !502, !505, !508, !511, !514, !516, !521, !524, !527, !530, !532, !534, !536, !538, !541, !544, !547, !550, !553, !555, !559, !563, !568, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !604, !608, !614, !618, !623, !625, !630, !634, !638, !649, !653, !657, !661, !665, !669, !673, !677, !681, !685, !689, !693, !697, !699, !703, !707, !711, !717, !721, !725, !727, !731, !735, !741, !743, !747, !751, !755, !759, !763, !767, !771, !772, !773, !774, !776, !777, !778, !779, !780, !781, !782, !786, !792, !797, !801, !803, !805, !807, !809, !816, !820, !824, !828, !832, !836, !841, !845, !847, !851, !857, !861, !866, !868, !871, !875, !879, !881, !883, !885, !887, !891, !893, !895, !899, !903, !907, !911, !915, !919, !921, !925, !929, !933, !937, !939, !941, !945, !949, !950, !951, !952, !953, !954, !960, !963, !964, !966, !968, !970, !972, !976, !978, !980, !982, !984, !986, !988, !990, !992, !996, !1000, !1002, !1006}
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !77, file: !93, line: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !78, line: 6, baseType: !79)
!78 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !80, line: 21, baseType: !81)
!80 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !82, identifier: "_ZTS11__mbstate_t")
!82 = !{!83, !84}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !81, file: !80, line: 15, baseType: !14, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !81, file: !80, line: 20, baseType: !85, size: 32, offset: 32)
!85 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !80, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !86, identifier: "_ZTSN11__mbstate_tUt_E")
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !85, file: !80, line: 18, baseType: !7, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !85, file: !80, line: 19, baseType: !89, size: 32)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 32, elements: !91)
!90 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!91 = !{!92}
!92 = !DISubrange(count: 4)
!93 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cwchar", directory: "")
!94 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !95, file: !93, line: 141)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !96, line: 20, baseType: !7)
!96 = !DIFile(filename: "/usr/include/bits/types/wint_t.h", directory: "")
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !98, file: !93, line: 143)
!98 = !DISubprogram(name: "btowc", scope: !99, file: !99, line: 318, type: !100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!99 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!100 = !DISubroutineType(types: !101)
!101 = !{!95, !14}
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !103, file: !93, line: 144)
!103 = !DISubprogram(name: "fgetwc", scope: !99, file: !99, line: 729, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!104 = !DISubroutineType(types: !105)
!105 = !{!95, !106}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !108, line: 5, baseType: !109)
!108 = !DIFile(filename: "/usr/include/bits/types/__FILE.h", directory: "")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !110, line: 49, size: 1728, flags: DIFlagTypePassByValue, elements: !111, identifier: "_ZTS8_IO_FILE")
!110 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!111 = !{!112, !113, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !128, !130, !131, !132, !135, !137, !139, !143, !146, !148, !151, !154, !155, !156, !159, !160}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !109, file: !110, line: 51, baseType: !14, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !109, file: !110, line: 54, baseType: !114, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !109, file: !110, line: 55, baseType: !114, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !109, file: !110, line: 56, baseType: !114, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !109, file: !110, line: 57, baseType: !114, size: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !109, file: !110, line: 58, baseType: !114, size: 64, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !109, file: !110, line: 59, baseType: !114, size: 64, offset: 384)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !109, file: !110, line: 60, baseType: !114, size: 64, offset: 448)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !109, file: !110, line: 61, baseType: !114, size: 64, offset: 512)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !109, file: !110, line: 64, baseType: !114, size: 64, offset: 576)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !109, file: !110, line: 65, baseType: !114, size: 64, offset: 640)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !109, file: !110, line: 66, baseType: !114, size: 64, offset: 704)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !109, file: !110, line: 68, baseType: !126, size: 64, offset: 768)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !110, line: 36, flags: DIFlagFwdDecl, identifier: "_ZTS10_IO_marker")
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !109, file: !110, line: 70, baseType: !129, size: 64, offset: 832)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !109, file: !110, line: 72, baseType: !14, size: 32, offset: 896)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !109, file: !110, line: 73, baseType: !14, size: 32, offset: 928)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !109, file: !110, line: 74, baseType: !133, size: 64, offset: 960)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !134, line: 152, baseType: !44)
!134 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !109, file: !110, line: 77, baseType: !136, size: 16, offset: 1024)
!136 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !109, file: !110, line: 78, baseType: !138, size: 8, offset: 1040)
!138 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !109, file: !110, line: 79, baseType: !140, size: 8, offset: 1048)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 8, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 1)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !109, file: !110, line: 81, baseType: !144, size: 64, offset: 1088)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !110, line: 43, baseType: null)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !109, file: !110, line: 89, baseType: !147, size: 64, offset: 1152)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !134, line: 153, baseType: !44)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !109, file: !110, line: 91, baseType: !149, size: 64, offset: 1216)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !110, line: 37, flags: DIFlagFwdDecl, identifier: "_ZTS11_IO_codecvt")
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !109, file: !110, line: 92, baseType: !152, size: 64, offset: 1280)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !110, line: 38, flags: DIFlagFwdDecl, identifier: "_ZTS13_IO_wide_data")
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !109, file: !110, line: 93, baseType: !129, size: 64, offset: 1344)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !109, file: !110, line: 94, baseType: !35, size: 64, offset: 1408)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !109, file: !110, line: 95, baseType: !157, size: 64, offset: 1472)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !158, line: 46, baseType: !33)
!158 = !DIFile(filename: "OpenRace-env/install/lib/clang/10.0.1/include/stddef.h", directory: "/home/brad/Code")
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !109, file: !110, line: 96, baseType: !14, size: 32, offset: 1536)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !109, file: !110, line: 98, baseType: !161, size: 160, offset: 1568)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 160, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 20)
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !165, file: !93, line: 145)
!165 = !DISubprogram(name: "fgetws", scope: !99, file: !99, line: 758, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!166 = !DISubroutineType(types: !167)
!167 = !{!168, !170, !14, !171}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!170 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !168)
!171 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !173, file: !93, line: 146)
!173 = !DISubprogram(name: "fputwc", scope: !99, file: !99, line: 743, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!174 = !DISubroutineType(types: !175)
!175 = !{!95, !169, !106}
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !177, file: !93, line: 147)
!177 = !DISubprogram(name: "fputws", scope: !99, file: !99, line: 765, type: !178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!178 = !DISubroutineType(types: !179)
!179 = !{!14, !180, !171}
!180 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !184, file: !93, line: 148)
!184 = !DISubprogram(name: "fwide", scope: !99, file: !99, line: 573, type: !185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!185 = !DISubroutineType(types: !186)
!186 = !{!14, !106, !14}
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !188, file: !93, line: 149)
!188 = !DISubprogram(name: "fwprintf", scope: !99, file: !99, line: 580, type: !189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!189 = !DISubroutineType(types: !190)
!190 = !{!14, !171, !180, null}
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !192, file: !93, line: 150)
!192 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !99, file: !99, line: 642, type: !189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !194, file: !93, line: 151)
!194 = !DISubprogram(name: "getwc", scope: !99, file: !99, line: 730, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !196, file: !93, line: 152)
!196 = !DISubprogram(name: "getwchar", scope: !99, file: !99, line: 736, type: !197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!197 = !DISubroutineType(types: !198)
!198 = !{!95}
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !200, file: !93, line: 153)
!200 = !DISubprogram(name: "mbrlen", scope: !99, file: !99, line: 329, type: !201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!201 = !DISubroutineType(types: !202)
!202 = !{!157, !203, !157, !206}
!203 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!206 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !209, file: !93, line: 154)
!209 = !DISubprogram(name: "mbrtowc", scope: !99, file: !99, line: 296, type: !210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!210 = !DISubroutineType(types: !211)
!211 = !{!157, !170, !203, !157, !206}
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !213, file: !93, line: 155)
!213 = !DISubprogram(name: "mbsinit", scope: !99, file: !99, line: 292, type: !214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!214 = !DISubroutineType(types: !215)
!215 = !{!14, !216}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !219, file: !93, line: 156)
!219 = !DISubprogram(name: "mbsrtowcs", scope: !99, file: !99, line: 337, type: !220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!220 = !DISubroutineType(types: !221)
!221 = !{!157, !170, !222, !157, !206}
!222 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !225, file: !93, line: 157)
!225 = !DISubprogram(name: "putwc", scope: !99, file: !99, line: 744, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !227, file: !93, line: 158)
!227 = !DISubprogram(name: "putwchar", scope: !99, file: !99, line: 750, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = !DISubroutineType(types: !229)
!229 = !{!95, !169}
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !231, file: !93, line: 160)
!231 = !DISubprogram(name: "swprintf", scope: !99, file: !99, line: 590, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!232 = !DISubroutineType(types: !233)
!233 = !{!14, !170, !157, !180, null}
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !235, file: !93, line: 162)
!235 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !99, file: !99, line: 649, type: !236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!236 = !DISubroutineType(types: !237)
!237 = !{!14, !180, !180, null}
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !239, file: !93, line: 163)
!239 = !DISubprogram(name: "ungetwc", scope: !99, file: !99, line: 773, type: !240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!240 = !DISubroutineType(types: !241)
!241 = !{!95, !95, !106}
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !243, file: !93, line: 164)
!243 = !DISubprogram(name: "vfwprintf", scope: !99, file: !99, line: 598, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!244 = !DISubroutineType(types: !245)
!245 = !{!14, !171, !180, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, flags: DIFlagTypePassByValue, elements: !248, identifier: "_ZTS13__va_list_tag")
!248 = !{!249, !250, !251, !252}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !247, file: !3, baseType: !7, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !247, file: !3, baseType: !7, size: 32, offset: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !247, file: !3, baseType: !35, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !247, file: !3, baseType: !35, size: 64, offset: 128)
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !254, file: !93, line: 166)
!254 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !99, file: !99, line: 696, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !256, file: !93, line: 169)
!256 = !DISubprogram(name: "vswprintf", scope: !99, file: !99, line: 611, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DISubroutineType(types: !258)
!258 = !{!14, !170, !157, !180, !246}
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !260, file: !93, line: 172)
!260 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !99, file: !99, line: 703, type: !261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DISubroutineType(types: !262)
!262 = !{!14, !180, !180, !246}
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !264, file: !93, line: 174)
!264 = !DISubprogram(name: "vwprintf", scope: !99, file: !99, line: 606, type: !265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!265 = !DISubroutineType(types: !266)
!266 = !{!14, !180, !246}
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !268, file: !93, line: 176)
!268 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !99, file: !99, line: 700, type: !265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !270, file: !93, line: 178)
!270 = !DISubprogram(name: "wcrtomb", scope: !99, file: !99, line: 301, type: !271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!271 = !DISubroutineType(types: !272)
!272 = !{!157, !273, !169, !206}
!273 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !114)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !275, file: !93, line: 179)
!275 = !DISubprogram(name: "wcscat", scope: !99, file: !99, line: 97, type: !276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!276 = !DISubroutineType(types: !277)
!277 = !{!168, !170, !180}
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !279, file: !93, line: 180)
!279 = !DISubprogram(name: "wcscmp", scope: !99, file: !99, line: 106, type: !280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!280 = !DISubroutineType(types: !281)
!281 = !{!14, !181, !181}
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !283, file: !93, line: 181)
!283 = !DISubprogram(name: "wcscoll", scope: !99, file: !99, line: 131, type: !280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !285, file: !93, line: 182)
!285 = !DISubprogram(name: "wcscpy", scope: !99, file: !99, line: 87, type: !276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !287, file: !93, line: 183)
!287 = !DISubprogram(name: "wcscspn", scope: !99, file: !99, line: 187, type: !288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!288 = !DISubroutineType(types: !289)
!289 = !{!157, !181, !181}
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !291, file: !93, line: 184)
!291 = !DISubprogram(name: "wcsftime", scope: !99, file: !99, line: 837, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!292 = !DISubroutineType(types: !293)
!293 = !{!157, !170, !157, !180, !294}
!294 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !298, line: 7, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!298 = !DIFile(filename: "/usr/include/bits/types/struct_tm.h", directory: "")
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !300, file: !93, line: 185)
!300 = !DISubprogram(name: "wcslen", scope: !99, file: !99, line: 222, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!301 = !DISubroutineType(types: !302)
!302 = !{!157, !181}
!303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !304, file: !93, line: 186)
!304 = !DISubprogram(name: "wcsncat", scope: !99, file: !99, line: 101, type: !305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!305 = !DISubroutineType(types: !306)
!306 = !{!168, !170, !180, !157}
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !308, file: !93, line: 187)
!308 = !DISubprogram(name: "wcsncmp", scope: !99, file: !99, line: 109, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!309 = !DISubroutineType(types: !310)
!310 = !{!14, !181, !181, !157}
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !312, file: !93, line: 188)
!312 = !DISubprogram(name: "wcsncpy", scope: !99, file: !99, line: 92, type: !305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !314, file: !93, line: 189)
!314 = !DISubprogram(name: "wcsrtombs", scope: !99, file: !99, line: 343, type: !315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!315 = !DISubroutineType(types: !316)
!316 = !{!157, !273, !317, !157, !206}
!317 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !320, file: !93, line: 190)
!320 = !DISubprogram(name: "wcsspn", scope: !99, file: !99, line: 191, type: !288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !322, file: !93, line: 191)
!322 = !DISubprogram(name: "wcstod", scope: !99, file: !99, line: 377, type: !323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!323 = !DISubroutineType(types: !324)
!324 = !{!325, !180, !326}
!325 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!326 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !329, file: !93, line: 193)
!329 = !DISubprogram(name: "wcstof", scope: !99, file: !99, line: 382, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!330 = !DISubroutineType(types: !331)
!331 = !{!332, !180, !326}
!332 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !334, file: !93, line: 195)
!334 = !DISubprogram(name: "wcstok", scope: !99, file: !99, line: 217, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!335 = !DISubroutineType(types: !336)
!336 = !{!168, !170, !180, !326}
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !338, file: !93, line: 196)
!338 = !DISubprogram(name: "wcstol", scope: !99, file: !99, line: 428, type: !339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!339 = !DISubroutineType(types: !340)
!340 = !{!44, !180, !326, !14}
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !342, file: !93, line: 197)
!342 = !DISubprogram(name: "wcstoul", scope: !99, file: !99, line: 433, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!343 = !DISubroutineType(types: !344)
!344 = !{!33, !180, !326, !14}
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !346, file: !93, line: 198)
!346 = !DISubprogram(name: "wcsxfrm", scope: !99, file: !99, line: 135, type: !347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!347 = !DISubroutineType(types: !348)
!348 = !{!157, !170, !180, !157}
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !350, file: !93, line: 199)
!350 = !DISubprogram(name: "wctob", scope: !99, file: !99, line: 324, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!351 = !DISubroutineType(types: !352)
!352 = !{!14, !95}
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !354, file: !93, line: 200)
!354 = !DISubprogram(name: "wmemcmp", scope: !99, file: !99, line: 258, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !356, file: !93, line: 201)
!356 = !DISubprogram(name: "wmemcpy", scope: !99, file: !99, line: 262, type: !305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !358, file: !93, line: 202)
!358 = !DISubprogram(name: "wmemmove", scope: !99, file: !99, line: 267, type: !359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!359 = !DISubroutineType(types: !360)
!360 = !{!168, !168, !181, !157}
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !362, file: !93, line: 203)
!362 = !DISubprogram(name: "wmemset", scope: !99, file: !99, line: 271, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!363 = !DISubroutineType(types: !364)
!364 = !{!168, !168, !169, !157}
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !366, file: !93, line: 204)
!366 = !DISubprogram(name: "wprintf", scope: !99, file: !99, line: 587, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!367 = !DISubroutineType(types: !368)
!368 = !{!14, !180, null}
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !370, file: !93, line: 205)
!370 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !99, file: !99, line: 646, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !372, file: !93, line: 206)
!372 = !DISubprogram(name: "wcschr", scope: !99, file: !99, line: 164, type: !373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!373 = !DISubroutineType(types: !374)
!374 = !{!168, !181, !169}
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !376, file: !93, line: 207)
!376 = !DISubprogram(name: "wcspbrk", scope: !99, file: !99, line: 201, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!377 = !DISubroutineType(types: !378)
!378 = !{!168, !181, !181}
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !380, file: !93, line: 208)
!380 = !DISubprogram(name: "wcsrchr", scope: !99, file: !99, line: 174, type: !373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !382, file: !93, line: 209)
!382 = !DISubprogram(name: "wcsstr", scope: !99, file: !99, line: 212, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !384, file: !93, line: 210)
!384 = !DISubprogram(name: "wmemchr", scope: !99, file: !99, line: 253, type: !385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!385 = !DISubroutineType(types: !386)
!386 = !{!168, !181, !169, !157}
!387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !388, entity: !389, file: !93, line: 251)
!388 = !DINamespace(name: "__gnu_cxx", scope: null)
!389 = !DISubprogram(name: "wcstold", scope: !99, file: !99, line: 384, type: !390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!390 = !DISubroutineType(types: !391)
!391 = !{!392, !180, !326}
!392 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !388, entity: !394, file: !93, line: 260)
!394 = !DISubprogram(name: "wcstoll", scope: !99, file: !99, line: 441, type: !395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!395 = !DISubroutineType(types: !396)
!396 = !{!397, !180, !326, !14}
!397 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !388, entity: !399, file: !93, line: 261)
!399 = !DISubprogram(name: "wcstoull", scope: !99, file: !99, line: 448, type: !400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!400 = !DISubroutineType(types: !401)
!401 = !{!402, !180, !326, !14}
!402 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !389, file: !93, line: 267)
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !394, file: !93, line: 268)
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !399, file: !93, line: 269)
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !329, file: !93, line: 283)
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !254, file: !93, line: 286)
!408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !260, file: !93, line: 289)
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !268, file: !93, line: 292)
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !389, file: !93, line: 296)
!411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !394, file: !93, line: 297)
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !399, file: !93, line: 298)
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !414, file: !415, line: 58)
!414 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !416, file: !415, line: 80, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !417, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!415 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/exception_ptr.h", directory: "")
!416 = !DINamespace(name: "__exception_ptr", scope: !13)
!417 = !{!418, !419, !423, !426, !427, !432, !433, !437, !442, !446, !450, !453, !454, !457, !460}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !414, file: !415, line: 82, baseType: !35, size: 64)
!419 = !DISubprogram(name: "exception_ptr", scope: !414, file: !415, line: 84, type: !420, scopeLine: 84, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !422, !35}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!423 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !414, file: !415, line: 86, type: !424, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !422}
!426 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !414, file: !415, line: 87, type: !424, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!427 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !414, file: !415, line: 89, type: !428, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!428 = !DISubroutineType(types: !429)
!429 = !{!35, !430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!432 = !DISubprogram(name: "exception_ptr", scope: !414, file: !415, line: 97, type: !424, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!433 = !DISubprogram(name: "exception_ptr", scope: !414, file: !415, line: 99, type: !434, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !422, !436}
!436 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !431, size: 64)
!437 = !DISubprogram(name: "exception_ptr", scope: !414, file: !415, line: 102, type: !438, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !422, !440}
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !13, file: !43, line: 264, baseType: !441)
!441 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!442 = !DISubprogram(name: "exception_ptr", scope: !414, file: !415, line: 106, type: !443, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !422, !445}
!445 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !414, size: 64)
!446 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !414, file: !415, line: 119, type: !447, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!447 = !DISubroutineType(types: !448)
!448 = !{!449, !422, !436}
!449 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !414, size: 64)
!450 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !414, file: !415, line: 123, type: !451, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!451 = !DISubroutineType(types: !452)
!452 = !{!449, !422, !445}
!453 = !DISubprogram(name: "~exception_ptr", scope: !414, file: !415, line: 130, type: !424, scopeLine: 130, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!454 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !414, file: !415, line: 133, type: !455, scopeLine: 133, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !422, !449}
!457 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !414, file: !415, line: 145, type: !458, scopeLine: 145, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!458 = !DISubroutineType(types: !459)
!459 = !{!56, !430}
!460 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !414, file: !415, line: 154, type: !461, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!461 = !DISubroutineType(types: !462)
!462 = !{!463, !430}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!465 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !13, file: !466, line: 88, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!466 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/typeinfo", directory: "")
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !416, entity: !468, file: !415, line: 74)
!468 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !13, file: !415, line: 70, type: !469, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !414}
!471 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !472, entity: !473, file: !474, line: 58)
!472 = !DINamespace(name: "__gnu_debug", scope: null)
!473 = !DINamespace(name: "__debug", scope: !13)
!474 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/debug/debug.h", directory: "")
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !476, file: !479, line: 47)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !477, line: 24, baseType: !478)
!477 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "")
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !134, line: 37, baseType: !138)
!479 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdint", directory: "")
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !481, file: !479, line: 48)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !477, line: 25, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !134, line: 39, baseType: !483)
!483 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !485, file: !479, line: 49)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !477, line: 26, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !134, line: 41, baseType: !14)
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !488, file: !479, line: 50)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !477, line: 27, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !134, line: 44, baseType: !44)
!490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !491, file: !479, line: 52)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !492, line: 58, baseType: !138)
!492 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !494, file: !479, line: 53)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !492, line: 60, baseType: !44)
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !496, file: !479, line: 54)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !492, line: 61, baseType: !44)
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !498, file: !479, line: 55)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !492, line: 62, baseType: !44)
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !500, file: !479, line: 57)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !492, line: 43, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !134, line: 52, baseType: !478)
!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !503, file: !479, line: 58)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !492, line: 44, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !134, line: 54, baseType: !482)
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !506, file: !479, line: 59)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !492, line: 45, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !134, line: 56, baseType: !486)
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !509, file: !479, line: 60)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !492, line: 46, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !134, line: 58, baseType: !489)
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !512, file: !479, line: 62)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !492, line: 101, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !134, line: 72, baseType: !44)
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !515, file: !479, line: 63)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !492, line: 87, baseType: !44)
!516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !517, file: !479, line: 65)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !518, line: 24, baseType: !519)
!518 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "")
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !134, line: 38, baseType: !520)
!520 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !522, file: !479, line: 66)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !518, line: 25, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !134, line: 40, baseType: !136)
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !525, file: !479, line: 67)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !518, line: 26, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !134, line: 42, baseType: !7)
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !528, file: !479, line: 68)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !518, line: 27, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !134, line: 45, baseType: !33)
!530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !531, file: !479, line: 70)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !492, line: 71, baseType: !520)
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !533, file: !479, line: 71)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !492, line: 73, baseType: !33)
!534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !535, file: !479, line: 72)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !492, line: 74, baseType: !33)
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !537, file: !479, line: 73)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !492, line: 75, baseType: !33)
!538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !539, file: !479, line: 75)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !492, line: 49, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !134, line: 53, baseType: !519)
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !542, file: !479, line: 76)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !492, line: 50, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !134, line: 55, baseType: !523)
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !545, file: !479, line: 77)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !492, line: 51, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !134, line: 57, baseType: !526)
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !548, file: !479, line: 78)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !492, line: 52, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !134, line: 59, baseType: !529)
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !551, file: !479, line: 80)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !492, line: 102, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !134, line: 73, baseType: !33)
!553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !554, file: !479, line: 81)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !492, line: 90, baseType: !33)
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !556, file: !558, line: 53)
!556 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !557, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!557 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!558 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/clocale", directory: "")
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !560, file: !558, line: 54)
!560 = !DISubprogram(name: "setlocale", scope: !557, file: !557, line: 122, type: !561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!561 = !DISubroutineType(types: !562)
!562 = !{!114, !14, !204}
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !564, file: !558, line: 55)
!564 = !DISubprogram(name: "localeconv", scope: !557, file: !557, line: 125, type: !565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!565 = !DISubroutineType(types: !566)
!566 = !{!567}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !569, file: !573, line: 64)
!569 = !DISubprogram(name: "isalnum", scope: !570, file: !570, line: 108, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!570 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!571 = !DISubroutineType(types: !572)
!572 = !{!14, !14}
!573 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cctype", directory: "")
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !575, file: !573, line: 65)
!575 = !DISubprogram(name: "isalpha", scope: !570, file: !570, line: 109, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !577, file: !573, line: 66)
!577 = !DISubprogram(name: "iscntrl", scope: !570, file: !570, line: 110, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !579, file: !573, line: 67)
!579 = !DISubprogram(name: "isdigit", scope: !570, file: !570, line: 111, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !581, file: !573, line: 68)
!581 = !DISubprogram(name: "isgraph", scope: !570, file: !570, line: 113, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !583, file: !573, line: 69)
!583 = !DISubprogram(name: "islower", scope: !570, file: !570, line: 112, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !585, file: !573, line: 70)
!585 = !DISubprogram(name: "isprint", scope: !570, file: !570, line: 114, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !587, file: !573, line: 71)
!587 = !DISubprogram(name: "ispunct", scope: !570, file: !570, line: 115, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !589, file: !573, line: 72)
!589 = !DISubprogram(name: "isspace", scope: !570, file: !570, line: 116, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !591, file: !573, line: 73)
!591 = !DISubprogram(name: "isupper", scope: !570, file: !570, line: 117, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !593, file: !573, line: 74)
!593 = !DISubprogram(name: "isxdigit", scope: !570, file: !570, line: 118, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !595, file: !573, line: 75)
!595 = !DISubprogram(name: "tolower", scope: !570, file: !570, line: 122, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !597, file: !573, line: 76)
!597 = !DISubprogram(name: "toupper", scope: !570, file: !570, line: 125, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !599, file: !573, line: 87)
!599 = !DISubprogram(name: "isblank", scope: !570, file: !570, line: 130, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !601, file: !603, line: 52)
!601 = !DISubprogram(name: "abs", scope: !602, file: !602, line: 840, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!602 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!603 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/std_abs.h", directory: "")
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !605, file: !607, line: 127)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !602, line: 62, baseType: !606)
!606 = !DICompositeType(tag: DW_TAG_structure_type, file: !602, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!607 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdlib", directory: "")
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !609, file: !607, line: 128)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !602, line: 70, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !602, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !611, identifier: "_ZTS6ldiv_t")
!611 = !{!612, !613}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !610, file: !602, line: 68, baseType: !44, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !610, file: !602, line: 69, baseType: !44, size: 64, offset: 64)
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !615, file: !607, line: 130)
!615 = !DISubprogram(name: "abort", scope: !602, file: !602, line: 591, type: !616, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!616 = !DISubroutineType(types: !617)
!617 = !{null}
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !619, file: !607, line: 134)
!619 = !DISubprogram(name: "atexit", scope: !602, file: !602, line: 595, type: !620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!620 = !DISubroutineType(types: !621)
!621 = !{!14, !622}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !624, file: !607, line: 137)
!624 = !DISubprogram(name: "at_quick_exit", scope: !602, file: !602, line: 600, type: !620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !626, file: !607, line: 140)
!626 = !DISubprogram(name: "atof", scope: !627, file: !627, line: 25, type: !628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!627 = !DIFile(filename: "/usr/include/bits/stdlib-float.h", directory: "")
!628 = !DISubroutineType(types: !629)
!629 = !{!325, !204}
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !631, file: !607, line: 141)
!631 = !DISubprogram(name: "atoi", scope: !602, file: !602, line: 361, type: !632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!632 = !DISubroutineType(types: !633)
!633 = !{!14, !204}
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !635, file: !607, line: 142)
!635 = !DISubprogram(name: "atol", scope: !602, file: !602, line: 366, type: !636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!636 = !DISubroutineType(types: !637)
!637 = !{!44, !204}
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !639, file: !607, line: 143)
!639 = !DISubprogram(name: "bsearch", scope: !640, file: !640, line: 20, type: !641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!640 = !DIFile(filename: "/usr/include/bits/stdlib-bsearch.h", directory: "")
!641 = !DISubroutineType(types: !642)
!642 = !{!35, !643, !643, !157, !157, !645}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !602, line: 808, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!14, !643, !643}
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !650, file: !607, line: 144)
!650 = !DISubprogram(name: "calloc", scope: !602, file: !602, line: 542, type: !651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!651 = !DISubroutineType(types: !652)
!652 = !{!35, !157, !157}
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !654, file: !607, line: 145)
!654 = !DISubprogram(name: "div", scope: !602, file: !602, line: 852, type: !655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!655 = !DISubroutineType(types: !656)
!656 = !{!605, !14, !14}
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !658, file: !607, line: 146)
!658 = !DISubprogram(name: "exit", scope: !602, file: !602, line: 617, type: !659, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !14}
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !662, file: !607, line: 147)
!662 = !DISubprogram(name: "free", scope: !602, file: !602, line: 565, type: !663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !35}
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !666, file: !607, line: 148)
!666 = !DISubprogram(name: "getenv", scope: !602, file: !602, line: 634, type: !667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!667 = !DISubroutineType(types: !668)
!668 = !{!114, !204}
!669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !670, file: !607, line: 149)
!670 = !DISubprogram(name: "labs", scope: !602, file: !602, line: 841, type: !671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!671 = !DISubroutineType(types: !672)
!672 = !{!44, !44}
!673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !674, file: !607, line: 150)
!674 = !DISubprogram(name: "ldiv", scope: !602, file: !602, line: 854, type: !675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!675 = !DISubroutineType(types: !676)
!676 = !{!609, !44, !44}
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !678, file: !607, line: 151)
!678 = !DISubprogram(name: "malloc", scope: !602, file: !602, line: 539, type: !679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!679 = !DISubroutineType(types: !680)
!680 = !{!35, !157}
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !682, file: !607, line: 153)
!682 = !DISubprogram(name: "mblen", scope: !602, file: !602, line: 922, type: !683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!683 = !DISubroutineType(types: !684)
!684 = !{!14, !204, !157}
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !686, file: !607, line: 154)
!686 = !DISubprogram(name: "mbstowcs", scope: !602, file: !602, line: 933, type: !687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!687 = !DISubroutineType(types: !688)
!688 = !{!157, !170, !203, !157}
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !690, file: !607, line: 155)
!690 = !DISubprogram(name: "mbtowc", scope: !602, file: !602, line: 925, type: !691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!691 = !DISubroutineType(types: !692)
!692 = !{!14, !170, !203, !157}
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !694, file: !607, line: 157)
!694 = !DISubprogram(name: "qsort", scope: !602, file: !602, line: 830, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !35, !157, !157, !645}
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !698, file: !607, line: 160)
!698 = !DISubprogram(name: "quick_exit", scope: !602, file: !602, line: 623, type: !659, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !700, file: !607, line: 163)
!700 = !DISubprogram(name: "rand", scope: !602, file: !602, line: 453, type: !701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!701 = !DISubroutineType(types: !702)
!702 = !{!14}
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !704, file: !607, line: 164)
!704 = !DISubprogram(name: "realloc", scope: !602, file: !602, line: 550, type: !705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!705 = !DISubroutineType(types: !706)
!706 = !{!35, !35, !157}
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !708, file: !607, line: 165)
!708 = !DISubprogram(name: "srand", scope: !602, file: !602, line: 455, type: !709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !7}
!711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !712, file: !607, line: 166)
!712 = !DISubprogram(name: "strtod", scope: !602, file: !602, line: 117, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!713 = !DISubroutineType(types: !714)
!714 = !{!325, !203, !715}
!715 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !718, file: !607, line: 167)
!718 = !DISubprogram(name: "strtol", scope: !602, file: !602, line: 176, type: !719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!719 = !DISubroutineType(types: !720)
!720 = !{!44, !203, !715, !14}
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !722, file: !607, line: 168)
!722 = !DISubprogram(name: "strtoul", scope: !602, file: !602, line: 180, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!723 = !DISubroutineType(types: !724)
!724 = !{!33, !203, !715, !14}
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !726, file: !607, line: 169)
!726 = !DISubprogram(name: "system", scope: !602, file: !602, line: 784, type: !632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !728, file: !607, line: 171)
!728 = !DISubprogram(name: "wcstombs", scope: !602, file: !602, line: 937, type: !729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!729 = !DISubroutineType(types: !730)
!730 = !{!157, !273, !180, !157}
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !732, file: !607, line: 172)
!732 = !DISubprogram(name: "wctomb", scope: !602, file: !602, line: 929, type: !733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!733 = !DISubroutineType(types: !734)
!734 = !{!14, !114, !169}
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !388, entity: !736, file: !607, line: 200)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !602, line: 80, baseType: !737)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !602, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !738, identifier: "_ZTS7lldiv_t")
!738 = !{!739, !740}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !737, file: !602, line: 78, baseType: !397, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !737, file: !602, line: 79, baseType: !397, size: 64, offset: 64)
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !388, entity: !742, file: !607, line: 206)
!742 = !DISubprogram(name: "_Exit", scope: !602, file: !602, line: 629, type: !659, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !388, entity: !744, file: !607, line: 210)
!744 = !DISubprogram(name: "llabs", scope: !602, file: !602, line: 844, type: !745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!745 = !DISubroutineType(types: !746)
!746 = !{!397, !397}
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !388, entity: !748, file: !607, line: 216)
!748 = !DISubprogram(name: "lldiv", scope: !602, file: !602, line: 858, type: !749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!749 = !DISubroutineType(types: !750)
!750 = !{!736, !397, !397}
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !388, entity: !752, file: !607, line: 227)
!752 = !DISubprogram(name: "atoll", scope: !602, file: !602, line: 373, type: !753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!753 = !DISubroutineType(types: !754)
!754 = !{!397, !204}
!755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !388, entity: !756, file: !607, line: 228)
!756 = !DISubprogram(name: "strtoll", scope: !602, file: !602, line: 200, type: !757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!757 = !DISubroutineType(types: !758)
!758 = !{!397, !203, !715, !14}
!759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !388, entity: !760, file: !607, line: 229)
!760 = !DISubprogram(name: "strtoull", scope: !602, file: !602, line: 205, type: !761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!761 = !DISubroutineType(types: !762)
!762 = !{!402, !203, !715, !14}
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !388, entity: !764, file: !607, line: 231)
!764 = !DISubprogram(name: "strtof", scope: !602, file: !602, line: 123, type: !765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!765 = !DISubroutineType(types: !766)
!766 = !{!332, !203, !715}
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !388, entity: !768, file: !607, line: 232)
!768 = !DISubprogram(name: "strtold", scope: !602, file: !602, line: 126, type: !769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!769 = !DISubroutineType(types: !770)
!770 = !{!392, !203, !715}
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !736, file: !607, line: 240)
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !742, file: !607, line: 242)
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !744, file: !607, line: 244)
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !775, file: !607, line: 245)
!775 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !388, file: !607, line: 213, type: !749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !748, file: !607, line: 246)
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !752, file: !607, line: 248)
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !764, file: !607, line: 249)
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !756, file: !607, line: 250)
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !760, file: !607, line: 251)
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !768, file: !607, line: 252)
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !783, file: !785, line: 98)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !784, line: 7, baseType: !109)
!784 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!785 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdio", directory: "")
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !787, file: !785, line: 99)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !788, line: 84, baseType: !789)
!788 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !790, line: 14, baseType: !791)
!790 = !DIFile(filename: "/usr/include/bits/types/__fpos_t.h", directory: "")
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !790, line: 10, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !793, file: !785, line: 101)
!793 = !DISubprogram(name: "clearerr", scope: !788, file: !788, line: 762, type: !794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !796}
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !798, file: !785, line: 102)
!798 = !DISubprogram(name: "fclose", scope: !788, file: !788, line: 213, type: !799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!799 = !DISubroutineType(types: !800)
!800 = !{!14, !796}
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !802, file: !785, line: 103)
!802 = !DISubprogram(name: "feof", scope: !788, file: !788, line: 764, type: !799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !804, file: !785, line: 104)
!804 = !DISubprogram(name: "ferror", scope: !788, file: !788, line: 766, type: !799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !806, file: !785, line: 105)
!806 = !DISubprogram(name: "fflush", scope: !788, file: !788, line: 218, type: !799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !808, file: !785, line: 106)
!808 = !DISubprogram(name: "fgetc", scope: !788, file: !788, line: 489, type: !799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !810, file: !785, line: 107)
!810 = !DISubprogram(name: "fgetpos", scope: !788, file: !788, line: 736, type: !811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!811 = !DISubroutineType(types: !812)
!812 = !{!14, !813, !814}
!813 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !796)
!814 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !815)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !817, file: !785, line: 108)
!817 = !DISubprogram(name: "fgets", scope: !788, file: !788, line: 568, type: !818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!818 = !DISubroutineType(types: !819)
!819 = !{!114, !273, !14, !813}
!820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !821, file: !785, line: 109)
!821 = !DISubprogram(name: "fopen", scope: !788, file: !788, line: 246, type: !822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!822 = !DISubroutineType(types: !823)
!823 = !{!796, !203, !203}
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !825, file: !785, line: 110)
!825 = !DISubprogram(name: "fprintf", scope: !788, file: !788, line: 326, type: !826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!826 = !DISubroutineType(types: !827)
!827 = !{!14, !813, !203, null}
!828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !829, file: !785, line: 111)
!829 = !DISubprogram(name: "fputc", scope: !788, file: !788, line: 525, type: !830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!830 = !DISubroutineType(types: !831)
!831 = !{!14, !14, !796}
!832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !833, file: !785, line: 112)
!833 = !DISubprogram(name: "fputs", scope: !788, file: !788, line: 631, type: !834, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!834 = !DISubroutineType(types: !835)
!835 = !{!14, !203, !813}
!836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !837, file: !785, line: 113)
!837 = !DISubprogram(name: "fread", scope: !788, file: !788, line: 651, type: !838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!838 = !DISubroutineType(types: !839)
!839 = !{!157, !840, !157, !157, !813}
!840 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !35)
!841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !842, file: !785, line: 114)
!842 = !DISubprogram(name: "freopen", scope: !788, file: !788, line: 252, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!843 = !DISubroutineType(types: !844)
!844 = !{!796, !203, !203, !813}
!845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !846, file: !785, line: 115)
!846 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !788, file: !788, line: 410, type: !826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!847 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !848, file: !785, line: 116)
!848 = !DISubprogram(name: "fseek", scope: !788, file: !788, line: 689, type: !849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!849 = !DISubroutineType(types: !850)
!850 = !{!14, !796, !44, !14}
!851 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !852, file: !785, line: 117)
!852 = !DISubprogram(name: "fsetpos", scope: !788, file: !788, line: 741, type: !853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!853 = !DISubroutineType(types: !854)
!854 = !{!14, !796, !855}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !787)
!857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !858, file: !785, line: 118)
!858 = !DISubprogram(name: "ftell", scope: !788, file: !788, line: 694, type: !859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!859 = !DISubroutineType(types: !860)
!860 = !{!44, !796}
!861 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !862, file: !785, line: 119)
!862 = !DISubprogram(name: "fwrite", scope: !788, file: !788, line: 657, type: !863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!863 = !DISubroutineType(types: !864)
!864 = !{!157, !865, !157, !157, !813}
!865 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !643)
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !867, file: !785, line: 120)
!867 = !DISubprogram(name: "getc", scope: !788, file: !788, line: 490, type: !799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !869, file: !785, line: 121)
!869 = !DISubprogram(name: "getchar", scope: !870, file: !870, line: 47, type: !701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!870 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !872, file: !785, line: 126)
!872 = !DISubprogram(name: "perror", scope: !788, file: !788, line: 780, type: !873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!873 = !DISubroutineType(types: !874)
!874 = !{null, !204}
!875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !876, file: !785, line: 127)
!876 = !DISubprogram(name: "printf", scope: !788, file: !788, line: 332, type: !877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!877 = !DISubroutineType(types: !878)
!878 = !{!14, !203, null}
!879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !880, file: !785, line: 128)
!880 = !DISubprogram(name: "putc", scope: !788, file: !788, line: 526, type: !830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!881 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !882, file: !785, line: 129)
!882 = !DISubprogram(name: "putchar", scope: !870, file: !870, line: 82, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !884, file: !785, line: 130)
!884 = !DISubprogram(name: "puts", scope: !788, file: !788, line: 637, type: !632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!885 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !886, file: !785, line: 131)
!886 = !DISubprogram(name: "remove", scope: !788, file: !788, line: 146, type: !632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !888, file: !785, line: 132)
!888 = !DISubprogram(name: "rename", scope: !788, file: !788, line: 148, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!889 = !DISubroutineType(types: !890)
!890 = !{!14, !204, !204}
!891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !892, file: !785, line: 133)
!892 = !DISubprogram(name: "rewind", scope: !788, file: !788, line: 699, type: !794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !894, file: !785, line: 134)
!894 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !788, file: !788, line: 413, type: !877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !896, file: !785, line: 135)
!896 = !DISubprogram(name: "setbuf", scope: !788, file: !788, line: 304, type: !897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!897 = !DISubroutineType(types: !898)
!898 = !{null, !813, !273}
!899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !900, file: !785, line: 136)
!900 = !DISubprogram(name: "setvbuf", scope: !788, file: !788, line: 308, type: !901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!901 = !DISubroutineType(types: !902)
!902 = !{!14, !813, !273, !14, !157}
!903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !904, file: !785, line: 137)
!904 = !DISubprogram(name: "sprintf", scope: !788, file: !788, line: 334, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!905 = !DISubroutineType(types: !906)
!906 = !{!14, !273, !203, null}
!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !908, file: !785, line: 138)
!908 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !788, file: !788, line: 415, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!909 = !DISubroutineType(types: !910)
!910 = !{!14, !203, !203, null}
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !912, file: !785, line: 139)
!912 = !DISubprogram(name: "tmpfile", scope: !788, file: !788, line: 173, type: !913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!913 = !DISubroutineType(types: !914)
!914 = !{!796}
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !916, file: !785, line: 141)
!916 = !DISubprogram(name: "tmpnam", scope: !788, file: !788, line: 187, type: !917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!917 = !DISubroutineType(types: !918)
!918 = !{!114, !114}
!919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !920, file: !785, line: 143)
!920 = !DISubprogram(name: "ungetc", scope: !788, file: !788, line: 644, type: !830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !922, file: !785, line: 144)
!922 = !DISubprogram(name: "vfprintf", scope: !788, file: !788, line: 341, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!923 = !DISubroutineType(types: !924)
!924 = !{!14, !813, !203, !246}
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !926, file: !785, line: 145)
!926 = !DISubprogram(name: "vprintf", scope: !870, file: !870, line: 39, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!927 = !DISubroutineType(types: !928)
!928 = !{!14, !203, !246}
!929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !930, file: !785, line: 146)
!930 = !DISubprogram(name: "vsprintf", scope: !788, file: !788, line: 349, type: !931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!931 = !DISubroutineType(types: !932)
!932 = !{!14, !273, !203, !246}
!933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !388, entity: !934, file: !785, line: 175)
!934 = !DISubprogram(name: "snprintf", scope: !788, file: !788, line: 354, type: !935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!935 = !DISubroutineType(types: !936)
!936 = !{!14, !273, !157, !203, null}
!937 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !388, entity: !938, file: !785, line: 176)
!938 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !788, file: !788, line: 455, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !388, entity: !940, file: !785, line: 177)
!940 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !788, file: !788, line: 460, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !388, entity: !942, file: !785, line: 178)
!942 = !DISubprogram(name: "vsnprintf", scope: !788, file: !788, line: 358, type: !943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!943 = !DISubroutineType(types: !944)
!944 = !{!14, !273, !157, !203, !246}
!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !388, entity: !946, file: !785, line: 179)
!946 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !788, file: !788, line: 463, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!947 = !DISubroutineType(types: !948)
!948 = !{!14, !203, !203, !246}
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !934, file: !785, line: 185)
!950 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !938, file: !785, line: 186)
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !940, file: !785, line: 187)
!952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !942, file: !785, line: 188)
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !946, file: !785, line: 189)
!954 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !955, file: !959, line: 82)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !956, line: 48, baseType: !957)
!956 = !DIFile(filename: "/usr/include/wctype.h", directory: "")
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!959 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cwctype", directory: "")
!960 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !961, file: !959, line: 83)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !962, line: 38, baseType: !33)
!962 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !95, file: !959, line: 84)
!964 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !965, file: !959, line: 86)
!965 = !DISubprogram(name: "iswalnum", scope: !962, file: !962, line: 95, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!966 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !967, file: !959, line: 87)
!967 = !DISubprogram(name: "iswalpha", scope: !962, file: !962, line: 101, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!968 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !969, file: !959, line: 89)
!969 = !DISubprogram(name: "iswblank", scope: !962, file: !962, line: 146, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!970 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !971, file: !959, line: 91)
!971 = !DISubprogram(name: "iswcntrl", scope: !962, file: !962, line: 104, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!972 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !973, file: !959, line: 92)
!973 = !DISubprogram(name: "iswctype", scope: !962, file: !962, line: 159, type: !974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!974 = !DISubroutineType(types: !975)
!975 = !{!14, !95, !961}
!976 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !977, file: !959, line: 93)
!977 = !DISubprogram(name: "iswdigit", scope: !962, file: !962, line: 108, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!978 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !979, file: !959, line: 94)
!979 = !DISubprogram(name: "iswgraph", scope: !962, file: !962, line: 112, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!980 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !981, file: !959, line: 95)
!981 = !DISubprogram(name: "iswlower", scope: !962, file: !962, line: 117, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!982 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !983, file: !959, line: 96)
!983 = !DISubprogram(name: "iswprint", scope: !962, file: !962, line: 120, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!984 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !985, file: !959, line: 97)
!985 = !DISubprogram(name: "iswpunct", scope: !962, file: !962, line: 125, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!986 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !987, file: !959, line: 98)
!987 = !DISubprogram(name: "iswspace", scope: !962, file: !962, line: 130, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !989, file: !959, line: 99)
!989 = !DISubprogram(name: "iswupper", scope: !962, file: !962, line: 135, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!990 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !991, file: !959, line: 100)
!991 = !DISubprogram(name: "iswxdigit", scope: !962, file: !962, line: 140, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!992 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !993, file: !959, line: 101)
!993 = !DISubprogram(name: "towctrans", scope: !956, file: !956, line: 55, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!994 = !DISubroutineType(types: !995)
!995 = !{!95, !95, !955}
!996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !997, file: !959, line: 102)
!997 = !DISubprogram(name: "towlower", scope: !962, file: !962, line: 166, type: !998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!998 = !DISubroutineType(types: !999)
!999 = !{!95, !95}
!1000 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !1001, file: !959, line: 103)
!1001 = !DISubprogram(name: "towupper", scope: !962, file: !962, line: 169, type: !998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1002 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !1003, file: !959, line: 104)
!1003 = !DISubprogram(name: "wctrans", scope: !956, file: !956, line: 52, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!955, !204}
!1006 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !1007, file: !959, line: 105)
!1007 = !DISubprogram(name: "wctype", scope: !962, file: !962, line: 155, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!961, !204}
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!1011 = !{i32 7, !"Dwarf Version", i32 4}
!1012 = !{i32 2, !"Debug Info Version", i32 3}
!1013 = !{i32 1, !"wchar_size", i32 4}
!1014 = !{!"clang version 10.0.1 "}
!1015 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 35, type: !1016, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1018)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!14, !14, !716}
!1018 = !{!1019, !1020, !1021, !1023}
!1019 = !DILocalVariable(name: "argc", arg: 1, scope: !1015, file: !3, line: 35, type: !14)
!1020 = !DILocalVariable(name: "argv", arg: 2, scope: !1015, file: !3, line: 35, type: !716)
!1021 = !DILocalVariable(name: "thr_sum", scope: !1015, file: !3, line: 36, type: !1022)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !74, line: 27, baseType: !33)
!1023 = !DILocalVariable(name: "thr_generate", scope: !1015, file: !3, line: 36, type: !1022)
!1024 = !{!1025, !1025, i64 0}
!1025 = !{!"int", !1026, i64 0}
!1026 = !{!"omnipotent char", !1027, i64 0}
!1027 = !{!"Simple C++ TBAA"}
!1028 = !DILocation(line: 35, column: 14, scope: !1015)
!1029 = !{!1030, !1030, i64 0}
!1030 = !{!"any pointer", !1026, i64 0}
!1031 = !DILocation(line: 35, column: 26, scope: !1015)
!1032 = !DILocation(line: 36, column: 3, scope: !1015)
!1033 = !DILocation(line: 36, column: 13, scope: !1015)
!1034 = !DILocation(line: 36, column: 22, scope: !1015)
!1035 = !DILocation(line: 38, column: 9, scope: !1015)
!1036 = !DILocation(line: 38, column: 7, scope: !1015)
!1037 = !DILocation(line: 39, column: 3, scope: !1015)
!1038 = !DILocation(line: 41, column: 3, scope: !1015)
!1039 = !DILocation(line: 42, column: 3, scope: !1015)
!1040 = !DILocation(line: 44, column: 16, scope: !1015)
!1041 = !{!1042, !1042, i64 0}
!1042 = !{!"long", !1026, i64 0}
!1043 = !DILocation(line: 44, column: 3, scope: !1015)
!1044 = !DILocation(line: 45, column: 16, scope: !1015)
!1045 = !DILocation(line: 45, column: 3, scope: !1015)
!1046 = !DILocation(line: 46, column: 1, scope: !1015)
!1047 = !{!1048}
!1048 = !{i64 2, i64 3, i1 false}
!1049 = distinct !DISubprogram(name: "SumThread", linkageName: "_ZL9SumThreadPv", scope: !3, file: !3, line: 14, type: !1050, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1052)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!35, !35}
!1052 = !{!1053, !1054, !1056}
!1053 = !DILocalVariable(name: "unused", arg: 1, scope: !1049, file: !3, line: 14, type: !35)
!1054 = !DILocalVariable(name: "sum", scope: !1055, file: !3, line: 17, type: !525)
!1055 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 15, column: 16)
!1056 = !DILocalVariable(name: "i", scope: !1057, file: !3, line: 18, type: !14)
!1057 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 18, column: 5)
!1058 = !DILocation(line: 14, column: 30, scope: !1049)
!1059 = !DILocation(line: 15, column: 3, scope: !1049)
!1060 = !DILocation(line: 16, column: 5, scope: !1055)
!1061 = !DILocation(line: 17, column: 5, scope: !1055)
!1062 = !DILocation(line: 17, column: 14, scope: !1055)
!1063 = !DILocation(line: 18, column: 10, scope: !1057)
!1064 = !DILocation(line: 18, column: 14, scope: !1057)
!1065 = !DILocation(line: 18, column: 21, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 18, column: 5)
!1067 = !DILocation(line: 18, column: 23, scope: !1066)
!1068 = !DILocation(line: 18, column: 5, scope: !1057)
!1069 = !DILocation(line: 18, column: 5, scope: !1066)
!1070 = !DILocation(line: 19, column: 14, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 18, column: 36)
!1072 = !DILocation(line: 19, column: 18, scope: !1071)
!1073 = !DILocation(line: 19, column: 11, scope: !1071)
!1074 = !DILocation(line: 20, column: 5, scope: !1071)
!1075 = !DILocation(line: 18, column: 32, scope: !1066)
!1076 = distinct !{!1076, !1068, !1077}
!1077 = !DILocation(line: 20, column: 5, scope: !1057)
!1078 = !DILocation(line: 21, column: 18, scope: !1055)
!1079 = !DILocation(line: 21, column: 15, scope: !1055)
!1080 = !DILocation(line: 21, column: 22, scope: !1055)
!1081 = !DILocation(line: 22, column: 5, scope: !1055)
!1082 = !DILocation(line: 23, column: 3, scope: !1049)
!1083 = distinct !{!1083, !1059, !1082}
!1084 = distinct !DISubprogram(name: "GenerateThread", linkageName: "_ZL14GenerateThreadPv", scope: !3, file: !3, line: 26, type: !1050, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1085)
!1085 = !{!1086}
!1086 = !DILocalVariable(name: "unused", arg: 1, scope: !1084, file: !3, line: 26, type: !35)
!1087 = !DILocation(line: 26, column: 35, scope: !1084)
!1088 = !DILocation(line: 27, column: 3, scope: !1084)
!1089 = !DILocation(line: 28, column: 5, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 27, column: 16)
!1091 = !DILocation(line: 29, column: 12, scope: !1090)
!1092 = !DILocation(line: 29, column: 5, scope: !1090)
!1093 = !DILocation(line: 30, column: 11, scope: !1090)
!1094 = !DILocation(line: 30, column: 9, scope: !1090)
!1095 = distinct !{!1095, !1088, !1096}
!1096 = !DILocation(line: 32, column: 3, scope: !1084)
!1097 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !49, file: !49, line: 74, type: !616, scopeLine: 74, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !29)
!1098 = !DILocation(line: 74, column: 25, scope: !1097)
!1099 = distinct !DISubprogram(name: "operator<<<std::char_traits<char> >", linkageName: "_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc", scope: !13, file: !1100, line: 606, type: !1101, scopeLine: 607, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1109, retainedNodes: !1106)
!1100 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/ostream", directory: "")
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!1103, !1103, !204}
!1103 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1104, size: 64)
!1104 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::char_traits<char> >", scope: !13, file: !1105, line: 359, flags: DIFlagFwdDecl)
!1105 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/ostream.tcc", directory: "")
!1106 = !{!1107, !1108}
!1107 = !DILocalVariable(name: "__out", arg: 1, scope: !1099, file: !1100, line: 606, type: !1103)
!1108 = !DILocalVariable(name: "__s", arg: 2, scope: !1099, file: !1100, line: 606, type: !204)
!1109 = !{!1110}
!1110 = !DITemplateTypeParameter(name: "_Traits", type: !1111)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !13, file: !1112, line: 309, size: 8, flags: DIFlagTypePassByValue, elements: !1113, templateParams: !1162, identifier: "_ZTSSt11char_traitsIcE")
!1112 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/char_traits.h", directory: "")
!1113 = !{!1114, !1121, !1124, !1125, !1130, !1133, !1136, !1140, !1141, !1144, !1150, !1153, !1156, !1159}
!1114 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignERcRKc", scope: !1111, file: !1112, line: 321, type: !1115, scopeLine: 321, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{null, !1117, !1119}
!1117 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1111, file: !1112, line: 311, baseType: !90)
!1119 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1118)
!1121 = !DISubprogram(name: "eq", linkageName: "_ZNSt11char_traitsIcE2eqERKcS2_", scope: !1111, file: !1112, line: 325, type: !1122, scopeLine: 325, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!56, !1119, !1119}
!1124 = !DISubprogram(name: "lt", linkageName: "_ZNSt11char_traitsIcE2ltERKcS2_", scope: !1111, file: !1112, line: 329, type: !1122, scopeLine: 329, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1125 = !DISubprogram(name: "compare", linkageName: "_ZNSt11char_traitsIcE7compareEPKcS2_m", scope: !1111, file: !1112, line: 337, type: !1126, scopeLine: 337, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!14, !1128, !1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !13, file: !43, line: 260, baseType: !33)
!1130 = !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !1111, file: !1112, line: 351, type: !1131, scopeLine: 351, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!1129, !1128}
!1133 = !DISubprogram(name: "find", linkageName: "_ZNSt11char_traitsIcE4findEPKcmRS1_", scope: !1111, file: !1112, line: 361, type: !1134, scopeLine: 361, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!1128, !1128, !1129, !1119}
!1136 = !DISubprogram(name: "move", linkageName: "_ZNSt11char_traitsIcE4moveEPcPKcm", scope: !1111, file: !1112, line: 375, type: !1137, scopeLine: 375, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!1139, !1139, !1128, !1129}
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1140 = !DISubprogram(name: "copy", linkageName: "_ZNSt11char_traitsIcE4copyEPcPKcm", scope: !1111, file: !1112, line: 387, type: !1137, scopeLine: 387, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1141 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignEPcmc", scope: !1111, file: !1112, line: 399, type: !1142, scopeLine: 399, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!1139, !1139, !1129, !1118}
!1144 = !DISubprogram(name: "to_char_type", linkageName: "_ZNSt11char_traitsIcE12to_char_typeERKi", scope: !1111, file: !1112, line: 411, type: !1145, scopeLine: 411, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!1118, !1147}
!1147 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1149)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !1111, file: !1112, line: 312, baseType: !14)
!1150 = !DISubprogram(name: "to_int_type", linkageName: "_ZNSt11char_traitsIcE11to_int_typeERKc", scope: !1111, file: !1112, line: 417, type: !1151, scopeLine: 417, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!1149, !1119}
!1153 = !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt11char_traitsIcE11eq_int_typeERKiS2_", scope: !1111, file: !1112, line: 421, type: !1154, scopeLine: 421, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!56, !1147, !1147}
!1156 = !DISubprogram(name: "eof", linkageName: "_ZNSt11char_traitsIcE3eofEv", scope: !1111, file: !1112, line: 425, type: !1157, scopeLine: 425, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!1149}
!1159 = !DISubprogram(name: "not_eof", linkageName: "_ZNSt11char_traitsIcE7not_eofERKi", scope: !1111, file: !1112, line: 429, type: !1160, scopeLine: 429, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!1149, !1147}
!1162 = !{!1163}
!1163 = !DITemplateTypeParameter(name: "_CharT", type: !90)
!1164 = !DILocation(line: 606, column: 46, scope: !1099)
!1165 = !DILocation(line: 606, column: 65, scope: !1099)
!1166 = !DILocation(line: 608, column: 12, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1099, file: !1100, line: 608, column: 11)
!1168 = !DILocation(line: 608, column: 11, scope: !1099)
!1169 = !DILocation(line: 609, column: 2, scope: !1167)
!1170 = !{!1171, !1171, i64 0}
!1171 = !{!"vtable pointer", !1027, i64 0}
!1172 = !DILocation(line: 609, column: 8, scope: !1167)
!1173 = !DILocation(line: 611, column: 19, scope: !1167)
!1174 = !DILocation(line: 611, column: 26, scope: !1167)
!1175 = !DILocation(line: 612, column: 45, scope: !1167)
!1176 = !DILocation(line: 612, column: 29, scope: !1167)
!1177 = !DILocation(line: 611, column: 2, scope: !1167)
!1178 = !DILocation(line: 613, column: 14, scope: !1099)
!1179 = !DILocation(line: 613, column: 7, scope: !1099)
!1180 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZNSolsEj", scope: !1104, file: !1100, line: 192, type: !1181, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1186, retainedNodes: !1187)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!1183, !1185, !7}
!1183 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ostream_type", scope: !1104, file: !1100, line: 71, baseType: !1104)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1186 = !DISubprogram(name: "operator<<", linkageName: "_ZNSolsEj", scope: !1104, file: !1100, line: 192, type: !1181, scopeLine: 192, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1187 = !{!1188, !1190}
!1188 = !DILocalVariable(name: "this", arg: 1, scope: !1180, type: !1189, flags: DIFlagArtificial | DIFlagObjectPointer)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1190 = !DILocalVariable(name: "__n", arg: 2, scope: !1180, file: !1100, line: 192, type: !7)
!1191 = !DILocation(line: 0, scope: !1180)
!1192 = !DILocation(line: 192, column: 31, scope: !1180)
!1193 = !DILocation(line: 196, column: 46, scope: !1180)
!1194 = !DILocation(line: 196, column: 9, scope: !1180)
!1195 = !DILocation(line: 196, column: 2, scope: !1180)
!1196 = distinct !DISubprogram(name: "setstate", linkageName: "_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate", scope: !1198, file: !1197, line: 157, type: !1200, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1204, retainedNodes: !1205)
!1197 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/basic_ios.h", directory: "")
!1198 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ios<char, std::char_traits<char> >", scope: !13, file: !1199, line: 178, flags: DIFlagFwdDecl)
!1199 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/basic_ios.tcc", directory: "")
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !1202, !1203}
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "iostate", scope: !45, file: !12, line: 398, baseType: !11)
!1204 = !DISubprogram(name: "setstate", linkageName: "_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate", scope: !1198, file: !1197, line: 157, type: !1200, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1205 = !{!1206, !1208}
!1206 = !DILocalVariable(name: "this", arg: 1, scope: !1196, type: !1207, flags: DIFlagArtificial | DIFlagObjectPointer)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1208 = !DILocalVariable(name: "__state", arg: 2, scope: !1196, file: !1197, line: 157, type: !1203)
!1209 = !DILocation(line: 0, scope: !1196)
!1210 = !{!1211, !1211, i64 0}
!1211 = !{!"_ZTSSt12_Ios_Iostate", !1026, i64 0}
!1212 = !DILocation(line: 157, column: 24, scope: !1196)
!1213 = !DILocation(line: 158, column: 27, scope: !1196)
!1214 = !DILocation(line: 158, column: 39, scope: !1196)
!1215 = !DILocation(line: 158, column: 37, scope: !1196)
!1216 = !DILocation(line: 158, column: 15, scope: !1196)
!1217 = !DILocation(line: 158, column: 49, scope: !1196)
!1218 = distinct !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !1111, file: !1112, line: 351, type: !1131, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1130, retainedNodes: !1219)
!1219 = !{!1220}
!1220 = !DILocalVariable(name: "__s", arg: 1, scope: !1218, file: !1112, line: 351, type: !1128)
!1221 = !DILocation(line: 351, column: 31, scope: !1218)
!1222 = !DILocation(line: 357, column: 26, scope: !1218)
!1223 = !DILocation(line: 357, column: 9, scope: !1218)
!1224 = !DILocation(line: 357, column: 2, scope: !1218)
!1225 = distinct !DISubprogram(name: "operator|", linkageName: "_ZStorSt12_Ios_IostateS_", scope: !13, file: !12, line: 169, type: !1226, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1228)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!11, !11, !11}
!1228 = !{!1229, !1230}
!1229 = !DILocalVariable(name: "__a", arg: 1, scope: !1225, file: !12, line: 169, type: !11)
!1230 = !DILocalVariable(name: "__b", arg: 2, scope: !1225, file: !12, line: 169, type: !11)
!1231 = !DILocation(line: 169, column: 26, scope: !1225)
!1232 = !DILocation(line: 169, column: 44, scope: !1225)
!1233 = !DILocation(line: 170, column: 42, scope: !1225)
!1234 = !DILocation(line: 170, column: 66, scope: !1225)
!1235 = !DILocation(line: 170, column: 47, scope: !1225)
!1236 = !DILocation(line: 170, column: 5, scope: !1225)
!1237 = distinct !DISubprogram(name: "rdstate", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv", scope: !1198, file: !1197, line: 137, type: !1238, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1242, retainedNodes: !1243)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!1203, !1240}
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1198)
!1242 = !DISubprogram(name: "rdstate", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv", scope: !1198, file: !1197, line: 137, type: !1238, scopeLine: 137, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1243 = !{!1244}
!1244 = !DILocalVariable(name: "this", arg: 1, scope: !1237, type: !1245, flags: DIFlagArtificial | DIFlagObjectPointer)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1246 = !DILocation(line: 0, scope: !1237)
!1247 = !DILocation(line: 138, column: 16, scope: !1237)
!1248 = !{!1249, !1211, i64 32}
!1249 = !{!"_ZTSSt8ios_base", !1042, i64 8, !1042, i64 16, !1250, i64 24, !1211, i64 28, !1211, i64 32, !1030, i64 40, !1251, i64 48, !1026, i64 64, !1025, i64 192, !1030, i64 200, !1252, i64 208}
!1250 = !{!"_ZTSSt13_Ios_Fmtflags", !1026, i64 0}
!1251 = !{!"_ZTSNSt8ios_base6_WordsE", !1030, i64 0, !1042, i64 8}
!1252 = !{!"_ZTSSt6locale", !1030, i64 0}
!1253 = !DILocation(line: 138, column: 9, scope: !1237)
!1254 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_pthread_spinlock_yes.cpp", scope: !3, file: !3, type: !1255, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !29)
!1255 = !DISubroutineType(types: !29)
!1256 = !DILocation(line: 0, scope: !1254)
