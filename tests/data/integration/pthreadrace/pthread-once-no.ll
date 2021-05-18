; ModuleID = 'integration/pthreadrace/pthread-once-no.cpp'
source_filename = "integration/pthreadrace/pthread-once-no.cpp"
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
%union.pthread_attr_t = type { i64, [48 x i8] }

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

@_ZL13walModuleInit = internal global i32 0, align 4, !dbg !0
@_ZL10walTmrCtrl = internal global i32* null, align 8, !dbg !64
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [20 x i8] c"unable to init wal\0A\00", align 1
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !40
@__dso_handle = external hidden global i8
@.str.1 = private unnamed_addr constant [27 x i8] c"WAL module is initialized\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_pthread_once_no.cpp, i8* null }]

; Function Attrs: uwtable
define dso_local i8* @_Z7walOpenv() #0 !dbg !1005 {
entry:
  %call = call i32 @pthread_once(i32* @_ZL13walModuleInit, void ()* @_ZL17walModuleInitFuncv), !dbg !1008
  %0 = load i32*, i32** @_ZL10walTmrCtrl, align 8, !dbg !1009, !tbaa !1011
  %cmp = icmp eq i32* %0, null, !dbg !1015
  br i1 %cmp, label %if.then, label %if.end, !dbg !1016

if.then:                                          ; preds = %entry
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0)), !dbg !1017
  br label %if.end, !dbg !1019

if.end:                                           ; preds = %if.then, %entry
  ret i8* null, !dbg !1020
}

declare !dbg !18 dso_local i32 @pthread_once(i32*, void ()*) #1

; Function Attrs: uwtable
define internal void @_ZL17walModuleInitFuncv() #0 !dbg !1021 {
entry:
  %call = call i8* @_Znam(i64 128) #11, !dbg !1022
  %0 = bitcast i8* %call to i32*, !dbg !1022
  store i32* %0, i32** @_ZL10walTmrCtrl, align 8, !dbg !1023, !tbaa !1011
  %1 = load i32*, i32** @_ZL10walTmrCtrl, align 8, !dbg !1024, !tbaa !1011
  %cmp = icmp eq i32* %1, null, !dbg !1026
  br i1 %cmp, label %if.then, label %if.else, !dbg !1027

if.then:                                          ; preds = %entry
  store i32 0, i32* @_ZL13walModuleInit, align 4, !dbg !1028, !tbaa !1029
  br label %if.end, !dbg !1031

if.else:                                          ; preds = %entry
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)), !dbg !1032
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1033
}

; Function Attrs: inlinehint uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %__out, i8* %__s) #2 !dbg !1034 {
entry:
  %__out.addr = alloca %"class.std::basic_ostream"*, align 8
  %__s.addr = alloca i8*, align 8
  store %"class.std::basic_ostream"* %__out, %"class.std::basic_ostream"** %__out.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %__out.addr, metadata !1042, metadata !DIExpression()), !dbg !1099
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !1043, metadata !DIExpression()), !dbg !1100
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !1101, !tbaa !1011
  %tobool = icmp ne i8* %0, null, !dbg !1101
  br i1 %tobool, label %if.else, label %if.then, !dbg !1103

if.then:                                          ; preds = %entry
  %1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__out.addr, align 8, !dbg !1104, !tbaa !1011
  %2 = bitcast %"class.std::basic_ostream"* %1 to i8**, !dbg !1104
  %vtable = load i8*, i8** %2, align 8, !dbg !1104, !tbaa !1105
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24, !dbg !1104
  %3 = bitcast i8* %vbase.offset.ptr to i64*, !dbg !1104
  %vbase.offset = load i64, i64* %3, align 8, !dbg !1104
  %4 = bitcast %"class.std::basic_ostream"* %1 to i8*, !dbg !1104
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %vbase.offset, !dbg !1104
  %5 = bitcast i8* %add.ptr to %"class.std::basic_ios"*, !dbg !1104
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* %5, i32 1), !dbg !1107
  br label %if.end, !dbg !1104

if.else:                                          ; preds = %entry
  %6 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__out.addr, align 8, !dbg !1108, !tbaa !1011
  %7 = load i8*, i8** %__s.addr, align 8, !dbg !1109, !tbaa !1011
  %8 = load i8*, i8** %__s.addr, align 8, !dbg !1110, !tbaa !1011
  %call = call i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %8), !dbg !1111
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272) %6, i8* %7, i64 %call), !dbg !1112
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__out.addr, align 8, !dbg !1113, !tbaa !1011
  ret %"class.std::basic_ostream"* %9, !dbg !1114
}

; Function Attrs: norecurse uwtable
define dso_local i32 @main() #3 !dbg !1115 {
entry:
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %0 = bitcast i64* %t1 to i8*, !dbg !1120
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #7, !dbg !1120
  call void @llvm.dbg.declare(metadata i64* %t1, metadata !1117, metadata !DIExpression()), !dbg !1121
  %1 = bitcast i64* %t2 to i8*, !dbg !1120
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #7, !dbg !1120
  call void @llvm.dbg.declare(metadata i64* %t2, metadata !1119, metadata !DIExpression()), !dbg !1122
  %call = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @_ZL6workerPv, i8* null) #7, !dbg !1123
  %call1 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @_ZL6workerPv, i8* null) #7, !dbg !1124
  %2 = load i64, i64* %t1, align 8, !dbg !1125, !tbaa !1126
  %call2 = call i32 @pthread_join(i64 %2, i8** null), !dbg !1128
  %3 = load i64, i64* %t2, align 8, !dbg !1129, !tbaa !1126
  %call3 = call i32 @pthread_join(i64 %3, i8** null), !dbg !1130
  %4 = bitcast i64* %t2 to i8*, !dbg !1131
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #7, !dbg !1131
  %5 = bitcast i64* %t1 to i8*, !dbg !1131
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #7, !dbg !1131
  ret i32 0, !dbg !1131
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: nounwind
declare !callback !1132 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #6

; Function Attrs: uwtable
define internal i8* @_ZL6workerPv(i8* %unused) #0 !dbg !1134 {
entry:
  %unused.addr = alloca i8*, align 8
  store i8* %unused, i8** %unused.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata i8** %unused.addr, metadata !1138, metadata !DIExpression()), !dbg !1139
  %call = call i8* @_Z7walOpenv(), !dbg !1140
  ret i8* null, !dbg !1141
}

declare !dbg !27 dso_local i32 @pthread_join(i64, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !1142 {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !dbg !1143
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #7, !dbg !1143
  ret void, !dbg !1143
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #6

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #7

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #8

; Function Attrs: uwtable
define available_externally dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* %this, i32 %__state) #0 align 2 !dbg !1144 {
entry:
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  %__state.addr = alloca i32, align 4
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %"class.std::basic_ios"** %this.addr, metadata !1154, metadata !DIExpression()), !dbg !1157
  store i32 %__state, i32* %__state.addr, align 4, !tbaa !1158
  call void @llvm.dbg.declare(metadata i32* %__state.addr, metadata !1156, metadata !DIExpression()), !dbg !1160
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %call = call i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(%"class.std::basic_ios"* %this1), !dbg !1161
  %0 = load i32, i32* %__state.addr, align 4, !dbg !1162, !tbaa !1158
  %call2 = call i32 @_ZStorSt12_Ios_IostateS_(i32 %call, i32 %0), !dbg !1163
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* %this1, i32 %call2), !dbg !1164
  ret void, !dbg !1165
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272), i8*, i64) #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %__s) #9 comdat align 2 !dbg !1166 {
entry:
  %__s.addr = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !1168, metadata !DIExpression()), !dbg !1169
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !1170, !tbaa !1011
  %call = call i64 @strlen(i8* %0) #7, !dbg !1171
  ret i64 %call, !dbg !1172
}

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @_ZStorSt12_Ios_IostateS_(i32 %__a, i32 %__b) #10 comdat !dbg !1173 {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, i32* %__a.addr, align 4, !tbaa !1158
  call void @llvm.dbg.declare(metadata i32* %__a.addr, metadata !1177, metadata !DIExpression()), !dbg !1179
  store i32 %__b, i32* %__b.addr, align 4, !tbaa !1158
  call void @llvm.dbg.declare(metadata i32* %__b.addr, metadata !1178, metadata !DIExpression()), !dbg !1180
  %0 = load i32, i32* %__a.addr, align 4, !dbg !1181, !tbaa !1158
  %1 = load i32, i32* %__b.addr, align 4, !dbg !1182, !tbaa !1158
  %or = or i32 %0, %1, !dbg !1183
  ret i32 %or, !dbg !1184
}

; Function Attrs: nounwind uwtable
define available_externally dso_local i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(%"class.std::basic_ios"* %this) #9 align 2 !dbg !1185 {
entry:
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8, !tbaa !1011
  call void @llvm.dbg.declare(metadata %"class.std::basic_ios"** %this.addr, metadata !1192, metadata !DIExpression()), !dbg !1194
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::basic_ios"* %this1 to %"class.std::ios_base"*, !dbg !1195
  %_M_streambuf_state = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %0, i32 0, i32 5, !dbg !1195
  %1 = load i32, i32* %_M_streambuf_state, align 8, !dbg !1195, !tbaa !1196
  ret i32 %1, !dbg !1201
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8*) #6

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_pthread_once_no.cpp() #0 section ".text.startup" !dbg !1202 {
entry:
  call void @__cxx_global_var_init(), !dbg !1204
  ret void
}

attributes #0 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone speculatable willreturn }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { builtin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1001, !1002, !1003}
!llvm.ident = !{!1004}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "walModuleInit", linkageName: "_ZL13walModuleInit", scope: !2, file: !3, line: 8, type: !999, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !39, imports: !66, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/pthreadrace/pthread-once-no.cpp", directory: "/home/brad/Code/OpenRace/tests/data")
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
!17 = !{!18, !27, !33, !5, !8, !38}
!18 = !DISubprogram(name: "pthread_once", scope: !19, file: !19, line: 486, type: !20, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !26)
!19 = !DIFile(filename: "/usr/include/pthread.h", directory: "")
!20 = !DISubroutineType(types: !21)
!21 = !{!8, !22, !23}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DISubroutineType(types: !25)
!25 = !{null}
!26 = !{}
!27 = !DISubprogram(name: "pthread_join", scope: !19, file: !19, line: 217, type: !28, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !26)
!28 = !DISubroutineType(types: !29)
!29 = !{!8, !30, !31}
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamsize", scope: !7, file: !34, line: 98, baseType: !35)
!34 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/postypes.h", directory: "")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !7, file: !36, line: 261, baseType: !37)
!36 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/x86_64-pc-linux-gnu/bits/c++config.h", directory: "")
!37 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!38 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !7, file: !6, line: 228, flags: DIFlagFwdDecl, identifier: "_ZTSSt8ios_base")
!39 = !{!40, !0, !64}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !7, file: !42, line: 74, type: !43, isLocal: true, isDefinition: true)
!42 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/iostream", directory: "")
!43 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !38, file: !6, line: 603, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !44, identifier: "_ZTSNSt8ios_base4InitE")
!44 = !{!45, !48, !50, !54, !55, !60}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_S_refcount", scope: !43, file: !6, line: 616, baseType: !46, flags: DIFlagStaticMember)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Atomic_word", file: !47, line: 32, baseType: !8)
!47 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/x86_64-pc-linux-gnu/bits/atomic_word.h", directory: "")
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_S_synced_with_stdio", scope: !43, file: !6, line: 617, baseType: !49, flags: DIFlagStaticMember)
!49 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!50 = !DISubprogram(name: "Init", scope: !43, file: !6, line: 607, type: !51, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !53}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!54 = !DISubprogram(name: "~Init", scope: !43, file: !6, line: 608, type: !51, scopeLine: 608, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!55 = !DISubprogram(name: "Init", scope: !43, file: !6, line: 611, type: !56, scopeLine: 611, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !53, !58}
!58 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!60 = !DISubprogram(name: "operator=", linkageName: "_ZNSt8ios_base4InitaSERKS0_", scope: !43, file: !6, line: 612, type: !61, scopeLine: 612, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !53, !58}
!63 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !43, size: 64)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "walTmrCtrl", linkageName: "_ZL10walTmrCtrl", scope: !2, file: !3, line: 9, type: !22, isLocal: true, isDefinition: true)
!66 = !{!67, !86, !89, !94, !156, !164, !168, !175, !179, !183, !185, !187, !191, !200, !204, !210, !216, !218, !222, !226, !230, !234, !245, !247, !251, !255, !259, !261, !266, !270, !274, !276, !278, !282, !291, !295, !299, !303, !305, !311, !313, !320, !325, !329, !333, !337, !341, !345, !347, !349, !353, !357, !361, !363, !367, !371, !373, !375, !379, !385, !390, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !459, !463, !467, !472, !476, !479, !482, !485, !487, !489, !491, !494, !497, !500, !503, !506, !508, !513, !516, !519, !522, !524, !526, !528, !530, !533, !536, !539, !542, !545, !547, !551, !555, !560, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !596, !600, !606, !608, !612, !614, !619, !623, !627, !638, !642, !646, !650, !654, !658, !662, !666, !670, !674, !678, !682, !686, !688, !692, !696, !700, !706, !710, !714, !716, !720, !724, !730, !732, !736, !740, !744, !748, !752, !756, !760, !761, !762, !763, !765, !766, !767, !768, !769, !770, !771, !775, !781, !786, !790, !792, !794, !796, !798, !805, !809, !813, !817, !821, !825, !830, !834, !836, !840, !846, !850, !855, !857, !860, !864, !868, !870, !872, !874, !876, !880, !882, !884, !888, !892, !896, !900, !904, !908, !910, !914, !918, !922, !926, !928, !930, !934, !938, !939, !940, !941, !942, !943, !949, !952, !953, !955, !957, !959, !961, !965, !967, !969, !971, !973, !975, !977, !979, !981, !985, !989, !991, !995}
!67 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !68, file: !85, line: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !69, line: 6, baseType: !70)
!69 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !71, line: 21, baseType: !72)
!71 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !73, identifier: "_ZTS11__mbstate_t")
!73 = !{!74, !75}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !72, file: !71, line: 15, baseType: !8, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !72, file: !71, line: 20, baseType: !76, size: 32, offset: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !72, file: !71, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !77, identifier: "_ZTSN11__mbstate_tUt_E")
!77 = !{!78, !80}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !76, file: !71, line: 18, baseType: !79, size: 32)
!79 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !76, file: !71, line: 19, baseType: !81, size: 32)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 32, elements: !83)
!82 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!83 = !{!84}
!84 = !DISubrange(count: 4)
!85 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cwchar", directory: "")
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !87, file: !85, line: 141)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !88, line: 20, baseType: !79)
!88 = !DIFile(filename: "/usr/include/bits/types/wint_t.h", directory: "")
!89 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !90, file: !85, line: 143)
!90 = !DISubprogram(name: "btowc", scope: !91, file: !91, line: 318, type: !92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!91 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!92 = !DISubroutineType(types: !93)
!93 = !{!87, !8}
!94 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !95, file: !85, line: 144)
!95 = !DISubprogram(name: "fgetwc", scope: !91, file: !91, line: 729, type: !96, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!96 = !DISubroutineType(types: !97)
!97 = !{!87, !98}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !100, line: 5, baseType: !101)
!100 = !DIFile(filename: "/usr/include/bits/types/__FILE.h", directory: "")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, flags: DIFlagTypePassByValue, elements: !103, identifier: "_ZTS8_IO_FILE")
!102 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!103 = !{!104, !105, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !120, !122, !123, !124, !127, !129, !131, !135, !138, !140, !143, !146, !147, !148, !151, !152}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !101, file: !102, line: 51, baseType: !8, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !101, file: !102, line: 54, baseType: !106, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !101, file: !102, line: 55, baseType: !106, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !101, file: !102, line: 56, baseType: !106, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !101, file: !102, line: 57, baseType: !106, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !101, file: !102, line: 58, baseType: !106, size: 64, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !101, file: !102, line: 59, baseType: !106, size: 64, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !101, file: !102, line: 60, baseType: !106, size: 64, offset: 448)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !101, file: !102, line: 61, baseType: !106, size: 64, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !101, file: !102, line: 64, baseType: !106, size: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !101, file: !102, line: 65, baseType: !106, size: 64, offset: 640)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !101, file: !102, line: 66, baseType: !106, size: 64, offset: 704)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !101, file: !102, line: 68, baseType: !118, size: 64, offset: 768)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !102, line: 36, flags: DIFlagFwdDecl, identifier: "_ZTS10_IO_marker")
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !101, file: !102, line: 70, baseType: !121, size: 64, offset: 832)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !101, file: !102, line: 72, baseType: !8, size: 32, offset: 896)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !101, file: !102, line: 73, baseType: !8, size: 32, offset: 928)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !101, file: !102, line: 74, baseType: !125, size: 64, offset: 960)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !126, line: 152, baseType: !37)
!126 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !101, file: !102, line: 77, baseType: !128, size: 16, offset: 1024)
!128 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !101, file: !102, line: 78, baseType: !130, size: 8, offset: 1040)
!130 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !101, file: !102, line: 79, baseType: !132, size: 8, offset: 1048)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 8, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 1)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !101, file: !102, line: 81, baseType: !136, size: 64, offset: 1088)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !102, line: 43, baseType: null)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !101, file: !102, line: 89, baseType: !139, size: 64, offset: 1152)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !126, line: 153, baseType: !37)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !101, file: !102, line: 91, baseType: !141, size: 64, offset: 1216)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !102, line: 37, flags: DIFlagFwdDecl, identifier: "_ZTS11_IO_codecvt")
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !101, file: !102, line: 92, baseType: !144, size: 64, offset: 1280)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !102, line: 38, flags: DIFlagFwdDecl, identifier: "_ZTS13_IO_wide_data")
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !101, file: !102, line: 93, baseType: !121, size: 64, offset: 1344)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !101, file: !102, line: 94, baseType: !32, size: 64, offset: 1408)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !101, file: !102, line: 95, baseType: !149, size: 64, offset: 1472)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !150, line: 46, baseType: !30)
!150 = !DIFile(filename: "OpenRace-env/install/lib/clang/10.0.1/include/stddef.h", directory: "/home/brad/Code")
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !101, file: !102, line: 96, baseType: !8, size: 32, offset: 1536)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !101, file: !102, line: 98, baseType: !153, size: 160, offset: 1568)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 160, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 20)
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !157, file: !85, line: 145)
!157 = !DISubprogram(name: "fgetws", scope: !91, file: !91, line: 758, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!158 = !DISubroutineType(types: !159)
!159 = !{!160, !162, !8, !163}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!162 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !160)
!163 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !98)
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !165, file: !85, line: 146)
!165 = !DISubprogram(name: "fputwc", scope: !91, file: !91, line: 743, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!166 = !DISubroutineType(types: !167)
!167 = !{!87, !161, !98}
!168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !169, file: !85, line: 147)
!169 = !DISubprogram(name: "fputws", scope: !91, file: !91, line: 765, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!170 = !DISubroutineType(types: !171)
!171 = !{!8, !172, !163}
!172 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !176, file: !85, line: 148)
!176 = !DISubprogram(name: "fwide", scope: !91, file: !91, line: 573, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!177 = !DISubroutineType(types: !178)
!178 = !{!8, !98, !8}
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !180, file: !85, line: 149)
!180 = !DISubprogram(name: "fwprintf", scope: !91, file: !91, line: 580, type: !181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!181 = !DISubroutineType(types: !182)
!182 = !{!8, !163, !172, null}
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !184, file: !85, line: 150)
!184 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !91, file: !91, line: 642, type: !181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !186, file: !85, line: 151)
!186 = !DISubprogram(name: "getwc", scope: !91, file: !91, line: 730, type: !96, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !188, file: !85, line: 152)
!188 = !DISubprogram(name: "getwchar", scope: !91, file: !91, line: 736, type: !189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!189 = !DISubroutineType(types: !190)
!190 = !{!87}
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !192, file: !85, line: 153)
!192 = !DISubprogram(name: "mbrlen", scope: !91, file: !91, line: 329, type: !193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!193 = !DISubroutineType(types: !194)
!194 = !{!149, !195, !149, !198}
!195 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!198 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !201, file: !85, line: 154)
!201 = !DISubprogram(name: "mbrtowc", scope: !91, file: !91, line: 296, type: !202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!202 = !DISubroutineType(types: !203)
!203 = !{!149, !162, !195, !149, !198}
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !205, file: !85, line: 155)
!205 = !DISubprogram(name: "mbsinit", scope: !91, file: !91, line: 292, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!206 = !DISubroutineType(types: !207)
!207 = !{!8, !208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !211, file: !85, line: 156)
!211 = !DISubprogram(name: "mbsrtowcs", scope: !91, file: !91, line: 337, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!212 = !DISubroutineType(types: !213)
!213 = !{!149, !162, !214, !149, !198}
!214 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !217, file: !85, line: 157)
!217 = !DISubprogram(name: "putwc", scope: !91, file: !91, line: 744, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !219, file: !85, line: 158)
!219 = !DISubprogram(name: "putwchar", scope: !91, file: !91, line: 750, type: !220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!220 = !DISubroutineType(types: !221)
!221 = !{!87, !161}
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !223, file: !85, line: 160)
!223 = !DISubprogram(name: "swprintf", scope: !91, file: !91, line: 590, type: !224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!224 = !DISubroutineType(types: !225)
!225 = !{!8, !162, !149, !172, null}
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !227, file: !85, line: 162)
!227 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !91, file: !91, line: 649, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = !DISubroutineType(types: !229)
!229 = !{!8, !172, !172, null}
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !231, file: !85, line: 163)
!231 = !DISubprogram(name: "ungetwc", scope: !91, file: !91, line: 773, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!232 = !DISubroutineType(types: !233)
!233 = !{!87, !87, !98}
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !235, file: !85, line: 164)
!235 = !DISubprogram(name: "vfwprintf", scope: !91, file: !91, line: 598, type: !236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!236 = !DISubroutineType(types: !237)
!237 = !{!8, !163, !172, !238}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, flags: DIFlagTypePassByValue, elements: !240, identifier: "_ZTS13__va_list_tag")
!240 = !{!241, !242, !243, !244}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !239, file: !3, baseType: !79, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !239, file: !3, baseType: !79, size: 32, offset: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !239, file: !3, baseType: !32, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !239, file: !3, baseType: !32, size: 64, offset: 128)
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !246, file: !85, line: 166)
!246 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !91, file: !91, line: 696, type: !236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !248, file: !85, line: 169)
!248 = !DISubprogram(name: "vswprintf", scope: !91, file: !91, line: 611, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!249 = !DISubroutineType(types: !250)
!250 = !{!8, !162, !149, !172, !238}
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !252, file: !85, line: 172)
!252 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !91, file: !91, line: 703, type: !253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DISubroutineType(types: !254)
!254 = !{!8, !172, !172, !238}
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !256, file: !85, line: 174)
!256 = !DISubprogram(name: "vwprintf", scope: !91, file: !91, line: 606, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DISubroutineType(types: !258)
!258 = !{!8, !172, !238}
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !260, file: !85, line: 176)
!260 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !91, file: !91, line: 700, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !262, file: !85, line: 178)
!262 = !DISubprogram(name: "wcrtomb", scope: !91, file: !91, line: 301, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!263 = !DISubroutineType(types: !264)
!264 = !{!149, !265, !161, !198}
!265 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !267, file: !85, line: 179)
!267 = !DISubprogram(name: "wcscat", scope: !91, file: !91, line: 97, type: !268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!268 = !DISubroutineType(types: !269)
!269 = !{!160, !162, !172}
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !271, file: !85, line: 180)
!271 = !DISubprogram(name: "wcscmp", scope: !91, file: !91, line: 106, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!272 = !DISubroutineType(types: !273)
!273 = !{!8, !173, !173}
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !275, file: !85, line: 181)
!275 = !DISubprogram(name: "wcscoll", scope: !91, file: !91, line: 131, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !277, file: !85, line: 182)
!277 = !DISubprogram(name: "wcscpy", scope: !91, file: !91, line: 87, type: !268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !279, file: !85, line: 183)
!279 = !DISubprogram(name: "wcscspn", scope: !91, file: !91, line: 187, type: !280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!280 = !DISubroutineType(types: !281)
!281 = !{!149, !173, !173}
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !283, file: !85, line: 184)
!283 = !DISubprogram(name: "wcsftime", scope: !91, file: !91, line: 837, type: !284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!284 = !DISubroutineType(types: !285)
!285 = !{!149, !162, !149, !172, !286}
!286 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !290, line: 7, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!290 = !DIFile(filename: "/usr/include/bits/types/struct_tm.h", directory: "")
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !292, file: !85, line: 185)
!292 = !DISubprogram(name: "wcslen", scope: !91, file: !91, line: 222, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!293 = !DISubroutineType(types: !294)
!294 = !{!149, !173}
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !296, file: !85, line: 186)
!296 = !DISubprogram(name: "wcsncat", scope: !91, file: !91, line: 101, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!297 = !DISubroutineType(types: !298)
!298 = !{!160, !162, !172, !149}
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !300, file: !85, line: 187)
!300 = !DISubprogram(name: "wcsncmp", scope: !91, file: !91, line: 109, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!301 = !DISubroutineType(types: !302)
!302 = !{!8, !173, !173, !149}
!303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !304, file: !85, line: 188)
!304 = !DISubprogram(name: "wcsncpy", scope: !91, file: !91, line: 92, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !306, file: !85, line: 189)
!306 = !DISubprogram(name: "wcsrtombs", scope: !91, file: !91, line: 343, type: !307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!307 = !DISubroutineType(types: !308)
!308 = !{!149, !265, !309, !149, !198}
!309 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !312, file: !85, line: 190)
!312 = !DISubprogram(name: "wcsspn", scope: !91, file: !91, line: 191, type: !280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !314, file: !85, line: 191)
!314 = !DISubprogram(name: "wcstod", scope: !91, file: !91, line: 377, type: !315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!315 = !DISubroutineType(types: !316)
!316 = !{!317, !172, !318}
!317 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!318 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !321, file: !85, line: 193)
!321 = !DISubprogram(name: "wcstof", scope: !91, file: !91, line: 382, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!322 = !DISubroutineType(types: !323)
!323 = !{!324, !172, !318}
!324 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !326, file: !85, line: 195)
!326 = !DISubprogram(name: "wcstok", scope: !91, file: !91, line: 217, type: !327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!327 = !DISubroutineType(types: !328)
!328 = !{!160, !162, !172, !318}
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !330, file: !85, line: 196)
!330 = !DISubprogram(name: "wcstol", scope: !91, file: !91, line: 428, type: !331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!331 = !DISubroutineType(types: !332)
!332 = !{!37, !172, !318, !8}
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !334, file: !85, line: 197)
!334 = !DISubprogram(name: "wcstoul", scope: !91, file: !91, line: 433, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!335 = !DISubroutineType(types: !336)
!336 = !{!30, !172, !318, !8}
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !338, file: !85, line: 198)
!338 = !DISubprogram(name: "wcsxfrm", scope: !91, file: !91, line: 135, type: !339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!339 = !DISubroutineType(types: !340)
!340 = !{!149, !162, !172, !149}
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !342, file: !85, line: 199)
!342 = !DISubprogram(name: "wctob", scope: !91, file: !91, line: 324, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!343 = !DISubroutineType(types: !344)
!344 = !{!8, !87}
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !346, file: !85, line: 200)
!346 = !DISubprogram(name: "wmemcmp", scope: !91, file: !91, line: 258, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !348, file: !85, line: 201)
!348 = !DISubprogram(name: "wmemcpy", scope: !91, file: !91, line: 262, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !350, file: !85, line: 202)
!350 = !DISubprogram(name: "wmemmove", scope: !91, file: !91, line: 267, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!351 = !DISubroutineType(types: !352)
!352 = !{!160, !160, !173, !149}
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !354, file: !85, line: 203)
!354 = !DISubprogram(name: "wmemset", scope: !91, file: !91, line: 271, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DISubroutineType(types: !356)
!356 = !{!160, !160, !161, !149}
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !358, file: !85, line: 204)
!358 = !DISubprogram(name: "wprintf", scope: !91, file: !91, line: 587, type: !359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!359 = !DISubroutineType(types: !360)
!360 = !{!8, !172, null}
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !362, file: !85, line: 205)
!362 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !91, file: !91, line: 646, type: !359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !364, file: !85, line: 206)
!364 = !DISubprogram(name: "wcschr", scope: !91, file: !91, line: 164, type: !365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!365 = !DISubroutineType(types: !366)
!366 = !{!160, !173, !161}
!367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !368, file: !85, line: 207)
!368 = !DISubprogram(name: "wcspbrk", scope: !91, file: !91, line: 201, type: !369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!369 = !DISubroutineType(types: !370)
!370 = !{!160, !173, !173}
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !372, file: !85, line: 208)
!372 = !DISubprogram(name: "wcsrchr", scope: !91, file: !91, line: 174, type: !365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !374, file: !85, line: 209)
!374 = !DISubprogram(name: "wcsstr", scope: !91, file: !91, line: 212, type: !369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !376, file: !85, line: 210)
!376 = !DISubprogram(name: "wmemchr", scope: !91, file: !91, line: 253, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!377 = !DISubroutineType(types: !378)
!378 = !{!160, !173, !161, !149}
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !380, entity: !381, file: !85, line: 251)
!380 = !DINamespace(name: "__gnu_cxx", scope: null)
!381 = !DISubprogram(name: "wcstold", scope: !91, file: !91, line: 384, type: !382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!382 = !DISubroutineType(types: !383)
!383 = !{!384, !172, !318}
!384 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !380, entity: !386, file: !85, line: 260)
!386 = !DISubprogram(name: "wcstoll", scope: !91, file: !91, line: 441, type: !387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!387 = !DISubroutineType(types: !388)
!388 = !{!389, !172, !318, !8}
!389 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !380, entity: !391, file: !85, line: 261)
!391 = !DISubprogram(name: "wcstoull", scope: !91, file: !91, line: 448, type: !392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!392 = !DISubroutineType(types: !393)
!393 = !{!394, !172, !318, !8}
!394 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !381, file: !85, line: 267)
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !386, file: !85, line: 268)
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !391, file: !85, line: 269)
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !321, file: !85, line: 283)
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !246, file: !85, line: 286)
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !252, file: !85, line: 289)
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !260, file: !85, line: 292)
!402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !381, file: !85, line: 296)
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !386, file: !85, line: 297)
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !391, file: !85, line: 298)
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !406, file: !407, line: 58)
!406 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !408, file: !407, line: 80, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !409, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!407 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/exception_ptr.h", directory: "")
!408 = !DINamespace(name: "__exception_ptr", scope: !7)
!409 = !{!410, !411, !415, !418, !419, !424, !425, !429, !434, !438, !442, !445, !446, !449, !452}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !406, file: !407, line: 82, baseType: !32, size: 64)
!411 = !DISubprogram(name: "exception_ptr", scope: !406, file: !407, line: 84, type: !412, scopeLine: 84, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !414, !32}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!415 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !406, file: !407, line: 86, type: !416, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !414}
!418 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !406, file: !407, line: 87, type: !416, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!419 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !406, file: !407, line: 89, type: !420, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!420 = !DISubroutineType(types: !421)
!421 = !{!32, !422}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!424 = !DISubprogram(name: "exception_ptr", scope: !406, file: !407, line: 97, type: !416, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!425 = !DISubprogram(name: "exception_ptr", scope: !406, file: !407, line: 99, type: !426, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !414, !428}
!428 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !423, size: 64)
!429 = !DISubprogram(name: "exception_ptr", scope: !406, file: !407, line: 102, type: !430, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !414, !432}
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !7, file: !36, line: 264, baseType: !433)
!433 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!434 = !DISubprogram(name: "exception_ptr", scope: !406, file: !407, line: 106, type: !435, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !414, !437}
!437 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !406, size: 64)
!438 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !406, file: !407, line: 119, type: !439, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!439 = !DISubroutineType(types: !440)
!440 = !{!441, !414, !428}
!441 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !406, size: 64)
!442 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !406, file: !407, line: 123, type: !443, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!443 = !DISubroutineType(types: !444)
!444 = !{!441, !414, !437}
!445 = !DISubprogram(name: "~exception_ptr", scope: !406, file: !407, line: 130, type: !416, scopeLine: 130, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!446 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !406, file: !407, line: 133, type: !447, scopeLine: 133, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !414, !441}
!449 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !406, file: !407, line: 145, type: !450, scopeLine: 145, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!450 = !DISubroutineType(types: !451)
!451 = !{!49, !422}
!452 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !406, file: !407, line: 154, type: !453, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!453 = !DISubroutineType(types: !454)
!454 = !{!455, !422}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!457 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !7, file: !458, line: 88, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!458 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/typeinfo", directory: "")
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !408, entity: !460, file: !407, line: 74)
!460 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !7, file: !407, line: 70, type: !461, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !406}
!463 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !464, entity: !465, file: !466, line: 58)
!464 = !DINamespace(name: "__gnu_debug", scope: null)
!465 = !DINamespace(name: "__debug", scope: !7)
!466 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/debug/debug.h", directory: "")
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !468, file: !471, line: 47)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !469, line: 24, baseType: !470)
!469 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "")
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !126, line: 37, baseType: !130)
!471 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdint", directory: "")
!472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !473, file: !471, line: 48)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !469, line: 25, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !126, line: 39, baseType: !475)
!475 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !477, file: !471, line: 49)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !469, line: 26, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !126, line: 41, baseType: !8)
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !480, file: !471, line: 50)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !469, line: 27, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !126, line: 44, baseType: !37)
!482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !483, file: !471, line: 52)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !484, line: 58, baseType: !130)
!484 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !486, file: !471, line: 53)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !484, line: 60, baseType: !37)
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !488, file: !471, line: 54)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !484, line: 61, baseType: !37)
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !490, file: !471, line: 55)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !484, line: 62, baseType: !37)
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !492, file: !471, line: 57)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !484, line: 43, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !126, line: 52, baseType: !470)
!494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !495, file: !471, line: 58)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !484, line: 44, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !126, line: 54, baseType: !474)
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !498, file: !471, line: 59)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !484, line: 45, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !126, line: 56, baseType: !478)
!500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !501, file: !471, line: 60)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !484, line: 46, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !126, line: 58, baseType: !481)
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !504, file: !471, line: 62)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !484, line: 101, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !126, line: 72, baseType: !37)
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !507, file: !471, line: 63)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !484, line: 87, baseType: !37)
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !509, file: !471, line: 65)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !510, line: 24, baseType: !511)
!510 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "")
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !126, line: 38, baseType: !512)
!512 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !514, file: !471, line: 66)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !510, line: 25, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !126, line: 40, baseType: !128)
!516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !517, file: !471, line: 67)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !510, line: 26, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !126, line: 42, baseType: !79)
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !520, file: !471, line: 68)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !510, line: 27, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !126, line: 45, baseType: !30)
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !523, file: !471, line: 70)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !484, line: 71, baseType: !512)
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !525, file: !471, line: 71)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !484, line: 73, baseType: !30)
!526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !527, file: !471, line: 72)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !484, line: 74, baseType: !30)
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !529, file: !471, line: 73)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !484, line: 75, baseType: !30)
!530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !531, file: !471, line: 75)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !484, line: 49, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !126, line: 53, baseType: !511)
!533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !534, file: !471, line: 76)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !484, line: 50, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !126, line: 55, baseType: !515)
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !537, file: !471, line: 77)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !484, line: 51, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !126, line: 57, baseType: !518)
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !540, file: !471, line: 78)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !484, line: 52, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !126, line: 59, baseType: !521)
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !543, file: !471, line: 80)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !484, line: 102, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !126, line: 73, baseType: !30)
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !546, file: !471, line: 81)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !484, line: 90, baseType: !30)
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !548, file: !550, line: 53)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !549, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!549 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!550 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/clocale", directory: "")
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !552, file: !550, line: 54)
!552 = !DISubprogram(name: "setlocale", scope: !549, file: !549, line: 122, type: !553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!553 = !DISubroutineType(types: !554)
!554 = !{!106, !8, !196}
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !556, file: !550, line: 55)
!556 = !DISubprogram(name: "localeconv", scope: !549, file: !549, line: 125, type: !557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!557 = !DISubroutineType(types: !558)
!558 = !{!559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !561, file: !565, line: 64)
!561 = !DISubprogram(name: "isalnum", scope: !562, file: !562, line: 108, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!562 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!563 = !DISubroutineType(types: !564)
!564 = !{!8, !8}
!565 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cctype", directory: "")
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !567, file: !565, line: 65)
!567 = !DISubprogram(name: "isalpha", scope: !562, file: !562, line: 109, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !569, file: !565, line: 66)
!569 = !DISubprogram(name: "iscntrl", scope: !562, file: !562, line: 110, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !571, file: !565, line: 67)
!571 = !DISubprogram(name: "isdigit", scope: !562, file: !562, line: 111, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !573, file: !565, line: 68)
!573 = !DISubprogram(name: "isgraph", scope: !562, file: !562, line: 113, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !575, file: !565, line: 69)
!575 = !DISubprogram(name: "islower", scope: !562, file: !562, line: 112, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !577, file: !565, line: 70)
!577 = !DISubprogram(name: "isprint", scope: !562, file: !562, line: 114, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !579, file: !565, line: 71)
!579 = !DISubprogram(name: "ispunct", scope: !562, file: !562, line: 115, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !581, file: !565, line: 72)
!581 = !DISubprogram(name: "isspace", scope: !562, file: !562, line: 116, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !583, file: !565, line: 73)
!583 = !DISubprogram(name: "isupper", scope: !562, file: !562, line: 117, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !585, file: !565, line: 74)
!585 = !DISubprogram(name: "isxdigit", scope: !562, file: !562, line: 118, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !587, file: !565, line: 75)
!587 = !DISubprogram(name: "tolower", scope: !562, file: !562, line: 122, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !589, file: !565, line: 76)
!589 = !DISubprogram(name: "toupper", scope: !562, file: !562, line: 125, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !591, file: !565, line: 87)
!591 = !DISubprogram(name: "isblank", scope: !562, file: !562, line: 130, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !593, file: !595, line: 52)
!593 = !DISubprogram(name: "abs", scope: !594, file: !594, line: 840, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!594 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!595 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/std_abs.h", directory: "")
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !597, file: !599, line: 127)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !594, line: 62, baseType: !598)
!598 = !DICompositeType(tag: DW_TAG_structure_type, file: !594, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!599 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdlib", directory: "")
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !601, file: !599, line: 128)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !594, line: 70, baseType: !602)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !594, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !603, identifier: "_ZTS6ldiv_t")
!603 = !{!604, !605}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !602, file: !594, line: 68, baseType: !37, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !602, file: !594, line: 69, baseType: !37, size: 64, offset: 64)
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !607, file: !599, line: 130)
!607 = !DISubprogram(name: "abort", scope: !594, file: !594, line: 591, type: !24, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !609, file: !599, line: 134)
!609 = !DISubprogram(name: "atexit", scope: !594, file: !594, line: 595, type: !610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!610 = !DISubroutineType(types: !611)
!611 = !{!8, !23}
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !613, file: !599, line: 137)
!613 = !DISubprogram(name: "at_quick_exit", scope: !594, file: !594, line: 600, type: !610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !615, file: !599, line: 140)
!615 = !DISubprogram(name: "atof", scope: !616, file: !616, line: 25, type: !617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!616 = !DIFile(filename: "/usr/include/bits/stdlib-float.h", directory: "")
!617 = !DISubroutineType(types: !618)
!618 = !{!317, !196}
!619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !620, file: !599, line: 141)
!620 = !DISubprogram(name: "atoi", scope: !594, file: !594, line: 361, type: !621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!621 = !DISubroutineType(types: !622)
!622 = !{!8, !196}
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !624, file: !599, line: 142)
!624 = !DISubprogram(name: "atol", scope: !594, file: !594, line: 366, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!625 = !DISubroutineType(types: !626)
!626 = !{!37, !196}
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !628, file: !599, line: 143)
!628 = !DISubprogram(name: "bsearch", scope: !629, file: !629, line: 20, type: !630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!629 = !DIFile(filename: "/usr/include/bits/stdlib-bsearch.h", directory: "")
!630 = !DISubroutineType(types: !631)
!631 = !{!32, !632, !632, !149, !149, !634}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !594, line: 808, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!8, !632, !632}
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !639, file: !599, line: 144)
!639 = !DISubprogram(name: "calloc", scope: !594, file: !594, line: 542, type: !640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!640 = !DISubroutineType(types: !641)
!641 = !{!32, !149, !149}
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !643, file: !599, line: 145)
!643 = !DISubprogram(name: "div", scope: !594, file: !594, line: 852, type: !644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!644 = !DISubroutineType(types: !645)
!645 = !{!597, !8, !8}
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !647, file: !599, line: 146)
!647 = !DISubprogram(name: "exit", scope: !594, file: !594, line: 617, type: !648, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !8}
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !651, file: !599, line: 147)
!651 = !DISubprogram(name: "free", scope: !594, file: !594, line: 565, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !32}
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !655, file: !599, line: 148)
!655 = !DISubprogram(name: "getenv", scope: !594, file: !594, line: 634, type: !656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!656 = !DISubroutineType(types: !657)
!657 = !{!106, !196}
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !659, file: !599, line: 149)
!659 = !DISubprogram(name: "labs", scope: !594, file: !594, line: 841, type: !660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!660 = !DISubroutineType(types: !661)
!661 = !{!37, !37}
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !663, file: !599, line: 150)
!663 = !DISubprogram(name: "ldiv", scope: !594, file: !594, line: 854, type: !664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!664 = !DISubroutineType(types: !665)
!665 = !{!601, !37, !37}
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !667, file: !599, line: 151)
!667 = !DISubprogram(name: "malloc", scope: !594, file: !594, line: 539, type: !668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!668 = !DISubroutineType(types: !669)
!669 = !{!32, !149}
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !671, file: !599, line: 153)
!671 = !DISubprogram(name: "mblen", scope: !594, file: !594, line: 922, type: !672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!672 = !DISubroutineType(types: !673)
!673 = !{!8, !196, !149}
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !675, file: !599, line: 154)
!675 = !DISubprogram(name: "mbstowcs", scope: !594, file: !594, line: 933, type: !676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!676 = !DISubroutineType(types: !677)
!677 = !{!149, !162, !195, !149}
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !679, file: !599, line: 155)
!679 = !DISubprogram(name: "mbtowc", scope: !594, file: !594, line: 925, type: !680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!680 = !DISubroutineType(types: !681)
!681 = !{!8, !162, !195, !149}
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !683, file: !599, line: 157)
!683 = !DISubprogram(name: "qsort", scope: !594, file: !594, line: 830, type: !684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !32, !149, !149, !634}
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !687, file: !599, line: 160)
!687 = !DISubprogram(name: "quick_exit", scope: !594, file: !594, line: 623, type: !648, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !689, file: !599, line: 163)
!689 = !DISubprogram(name: "rand", scope: !594, file: !594, line: 453, type: !690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!690 = !DISubroutineType(types: !691)
!691 = !{!8}
!692 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !693, file: !599, line: 164)
!693 = !DISubprogram(name: "realloc", scope: !594, file: !594, line: 550, type: !694, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!694 = !DISubroutineType(types: !695)
!695 = !{!32, !32, !149}
!696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !697, file: !599, line: 165)
!697 = !DISubprogram(name: "srand", scope: !594, file: !594, line: 455, type: !698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !79}
!700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !701, file: !599, line: 166)
!701 = !DISubprogram(name: "strtod", scope: !594, file: !594, line: 117, type: !702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!702 = !DISubroutineType(types: !703)
!703 = !{!317, !195, !704}
!704 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !707, file: !599, line: 167)
!707 = !DISubprogram(name: "strtol", scope: !594, file: !594, line: 176, type: !708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!708 = !DISubroutineType(types: !709)
!709 = !{!37, !195, !704, !8}
!710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !711, file: !599, line: 168)
!711 = !DISubprogram(name: "strtoul", scope: !594, file: !594, line: 180, type: !712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!712 = !DISubroutineType(types: !713)
!713 = !{!30, !195, !704, !8}
!714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !715, file: !599, line: 169)
!715 = !DISubprogram(name: "system", scope: !594, file: !594, line: 784, type: !621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !717, file: !599, line: 171)
!717 = !DISubprogram(name: "wcstombs", scope: !594, file: !594, line: 937, type: !718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!718 = !DISubroutineType(types: !719)
!719 = !{!149, !265, !172, !149}
!720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !721, file: !599, line: 172)
!721 = !DISubprogram(name: "wctomb", scope: !594, file: !594, line: 929, type: !722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!722 = !DISubroutineType(types: !723)
!723 = !{!8, !106, !161}
!724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !380, entity: !725, file: !599, line: 200)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !594, line: 80, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !594, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !727, identifier: "_ZTS7lldiv_t")
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !726, file: !594, line: 78, baseType: !389, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !726, file: !594, line: 79, baseType: !389, size: 64, offset: 64)
!730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !380, entity: !731, file: !599, line: 206)
!731 = !DISubprogram(name: "_Exit", scope: !594, file: !594, line: 629, type: !648, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !380, entity: !733, file: !599, line: 210)
!733 = !DISubprogram(name: "llabs", scope: !594, file: !594, line: 844, type: !734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!734 = !DISubroutineType(types: !735)
!735 = !{!389, !389}
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !380, entity: !737, file: !599, line: 216)
!737 = !DISubprogram(name: "lldiv", scope: !594, file: !594, line: 858, type: !738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!738 = !DISubroutineType(types: !739)
!739 = !{!725, !389, !389}
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !380, entity: !741, file: !599, line: 227)
!741 = !DISubprogram(name: "atoll", scope: !594, file: !594, line: 373, type: !742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!742 = !DISubroutineType(types: !743)
!743 = !{!389, !196}
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !380, entity: !745, file: !599, line: 228)
!745 = !DISubprogram(name: "strtoll", scope: !594, file: !594, line: 200, type: !746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!746 = !DISubroutineType(types: !747)
!747 = !{!389, !195, !704, !8}
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !380, entity: !749, file: !599, line: 229)
!749 = !DISubprogram(name: "strtoull", scope: !594, file: !594, line: 205, type: !750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!750 = !DISubroutineType(types: !751)
!751 = !{!394, !195, !704, !8}
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !380, entity: !753, file: !599, line: 231)
!753 = !DISubprogram(name: "strtof", scope: !594, file: !594, line: 123, type: !754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!754 = !DISubroutineType(types: !755)
!755 = !{!324, !195, !704}
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !380, entity: !757, file: !599, line: 232)
!757 = !DISubprogram(name: "strtold", scope: !594, file: !594, line: 126, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!758 = !DISubroutineType(types: !759)
!759 = !{!384, !195, !704}
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !725, file: !599, line: 240)
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !731, file: !599, line: 242)
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !733, file: !599, line: 244)
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !764, file: !599, line: 245)
!764 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !380, file: !599, line: 213, type: !738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !737, file: !599, line: 246)
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !741, file: !599, line: 248)
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !753, file: !599, line: 249)
!768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !745, file: !599, line: 250)
!769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !749, file: !599, line: 251)
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !757, file: !599, line: 252)
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !772, file: !774, line: 98)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !773, line: 7, baseType: !101)
!773 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!774 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdio", directory: "")
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !776, file: !774, line: 99)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !777, line: 84, baseType: !778)
!777 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !779, line: 14, baseType: !780)
!779 = !DIFile(filename: "/usr/include/bits/types/__fpos_t.h", directory: "")
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !779, line: 10, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !782, file: !774, line: 101)
!782 = !DISubprogram(name: "clearerr", scope: !777, file: !777, line: 762, type: !783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !785}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !787, file: !774, line: 102)
!787 = !DISubprogram(name: "fclose", scope: !777, file: !777, line: 213, type: !788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!788 = !DISubroutineType(types: !789)
!789 = !{!8, !785}
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !791, file: !774, line: 103)
!791 = !DISubprogram(name: "feof", scope: !777, file: !777, line: 764, type: !788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !793, file: !774, line: 104)
!793 = !DISubprogram(name: "ferror", scope: !777, file: !777, line: 766, type: !788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !795, file: !774, line: 105)
!795 = !DISubprogram(name: "fflush", scope: !777, file: !777, line: 218, type: !788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !797, file: !774, line: 106)
!797 = !DISubprogram(name: "fgetc", scope: !777, file: !777, line: 489, type: !788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !799, file: !774, line: 107)
!799 = !DISubprogram(name: "fgetpos", scope: !777, file: !777, line: 736, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!800 = !DISubroutineType(types: !801)
!801 = !{!8, !802, !803}
!802 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !785)
!803 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !804)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !806, file: !774, line: 108)
!806 = !DISubprogram(name: "fgets", scope: !777, file: !777, line: 568, type: !807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!807 = !DISubroutineType(types: !808)
!808 = !{!106, !265, !8, !802}
!809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !810, file: !774, line: 109)
!810 = !DISubprogram(name: "fopen", scope: !777, file: !777, line: 246, type: !811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!811 = !DISubroutineType(types: !812)
!812 = !{!785, !195, !195}
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !814, file: !774, line: 110)
!814 = !DISubprogram(name: "fprintf", scope: !777, file: !777, line: 326, type: !815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!815 = !DISubroutineType(types: !816)
!816 = !{!8, !802, !195, null}
!817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !818, file: !774, line: 111)
!818 = !DISubprogram(name: "fputc", scope: !777, file: !777, line: 525, type: !819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!819 = !DISubroutineType(types: !820)
!820 = !{!8, !8, !785}
!821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !822, file: !774, line: 112)
!822 = !DISubprogram(name: "fputs", scope: !777, file: !777, line: 631, type: !823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!823 = !DISubroutineType(types: !824)
!824 = !{!8, !195, !802}
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !826, file: !774, line: 113)
!826 = !DISubprogram(name: "fread", scope: !777, file: !777, line: 651, type: !827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!827 = !DISubroutineType(types: !828)
!828 = !{!149, !829, !149, !149, !802}
!829 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !831, file: !774, line: 114)
!831 = !DISubprogram(name: "freopen", scope: !777, file: !777, line: 252, type: !832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!832 = !DISubroutineType(types: !833)
!833 = !{!785, !195, !195, !802}
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !835, file: !774, line: 115)
!835 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !777, file: !777, line: 410, type: !815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !837, file: !774, line: 116)
!837 = !DISubprogram(name: "fseek", scope: !777, file: !777, line: 689, type: !838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!838 = !DISubroutineType(types: !839)
!839 = !{!8, !785, !37, !8}
!840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !841, file: !774, line: 117)
!841 = !DISubprogram(name: "fsetpos", scope: !777, file: !777, line: 741, type: !842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!842 = !DISubroutineType(types: !843)
!843 = !{!8, !785, !844}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !776)
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !847, file: !774, line: 118)
!847 = !DISubprogram(name: "ftell", scope: !777, file: !777, line: 694, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!848 = !DISubroutineType(types: !849)
!849 = !{!37, !785}
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !851, file: !774, line: 119)
!851 = !DISubprogram(name: "fwrite", scope: !777, file: !777, line: 657, type: !852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!852 = !DISubroutineType(types: !853)
!853 = !{!149, !854, !149, !149, !802}
!854 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !632)
!855 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !856, file: !774, line: 120)
!856 = !DISubprogram(name: "getc", scope: !777, file: !777, line: 490, type: !788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !858, file: !774, line: 121)
!858 = !DISubprogram(name: "getchar", scope: !859, file: !859, line: 47, type: !690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!859 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !861, file: !774, line: 126)
!861 = !DISubprogram(name: "perror", scope: !777, file: !777, line: 780, type: !862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !196}
!864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !865, file: !774, line: 127)
!865 = !DISubprogram(name: "printf", scope: !777, file: !777, line: 332, type: !866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!866 = !DISubroutineType(types: !867)
!867 = !{!8, !195, null}
!868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !869, file: !774, line: 128)
!869 = !DISubprogram(name: "putc", scope: !777, file: !777, line: 526, type: !819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !871, file: !774, line: 129)
!871 = !DISubprogram(name: "putchar", scope: !859, file: !859, line: 82, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !873, file: !774, line: 130)
!873 = !DISubprogram(name: "puts", scope: !777, file: !777, line: 637, type: !621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !875, file: !774, line: 131)
!875 = !DISubprogram(name: "remove", scope: !777, file: !777, line: 146, type: !621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !877, file: !774, line: 132)
!877 = !DISubprogram(name: "rename", scope: !777, file: !777, line: 148, type: !878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!878 = !DISubroutineType(types: !879)
!879 = !{!8, !196, !196}
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !881, file: !774, line: 133)
!881 = !DISubprogram(name: "rewind", scope: !777, file: !777, line: 699, type: !783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !883, file: !774, line: 134)
!883 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !777, file: !777, line: 413, type: !866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !885, file: !774, line: 135)
!885 = !DISubprogram(name: "setbuf", scope: !777, file: !777, line: 304, type: !886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !802, !265}
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !889, file: !774, line: 136)
!889 = !DISubprogram(name: "setvbuf", scope: !777, file: !777, line: 308, type: !890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!890 = !DISubroutineType(types: !891)
!891 = !{!8, !802, !265, !8, !149}
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !893, file: !774, line: 137)
!893 = !DISubprogram(name: "sprintf", scope: !777, file: !777, line: 334, type: !894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!894 = !DISubroutineType(types: !895)
!895 = !{!8, !265, !195, null}
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !897, file: !774, line: 138)
!897 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !777, file: !777, line: 415, type: !898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!898 = !DISubroutineType(types: !899)
!899 = !{!8, !195, !195, null}
!900 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !901, file: !774, line: 139)
!901 = !DISubprogram(name: "tmpfile", scope: !777, file: !777, line: 173, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!902 = !DISubroutineType(types: !903)
!903 = !{!785}
!904 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !905, file: !774, line: 141)
!905 = !DISubprogram(name: "tmpnam", scope: !777, file: !777, line: 187, type: !906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!906 = !DISubroutineType(types: !907)
!907 = !{!106, !106}
!908 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !909, file: !774, line: 143)
!909 = !DISubprogram(name: "ungetc", scope: !777, file: !777, line: 644, type: !819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!910 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !911, file: !774, line: 144)
!911 = !DISubprogram(name: "vfprintf", scope: !777, file: !777, line: 341, type: !912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!912 = !DISubroutineType(types: !913)
!913 = !{!8, !802, !195, !238}
!914 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !915, file: !774, line: 145)
!915 = !DISubprogram(name: "vprintf", scope: !859, file: !859, line: 39, type: !916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!916 = !DISubroutineType(types: !917)
!917 = !{!8, !195, !238}
!918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !919, file: !774, line: 146)
!919 = !DISubprogram(name: "vsprintf", scope: !777, file: !777, line: 349, type: !920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!920 = !DISubroutineType(types: !921)
!921 = !{!8, !265, !195, !238}
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !380, entity: !923, file: !774, line: 175)
!923 = !DISubprogram(name: "snprintf", scope: !777, file: !777, line: 354, type: !924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!924 = !DISubroutineType(types: !925)
!925 = !{!8, !265, !149, !195, null}
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !380, entity: !927, file: !774, line: 176)
!927 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !777, file: !777, line: 455, type: !912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !380, entity: !929, file: !774, line: 177)
!929 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !777, file: !777, line: 460, type: !916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !380, entity: !931, file: !774, line: 178)
!931 = !DISubprogram(name: "vsnprintf", scope: !777, file: !777, line: 358, type: !932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!932 = !DISubroutineType(types: !933)
!933 = !{!8, !265, !149, !195, !238}
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !380, entity: !935, file: !774, line: 179)
!935 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !777, file: !777, line: 463, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!936 = !DISubroutineType(types: !937)
!937 = !{!8, !195, !195, !238}
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !923, file: !774, line: 185)
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !927, file: !774, line: 186)
!940 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !929, file: !774, line: 187)
!941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !931, file: !774, line: 188)
!942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !935, file: !774, line: 189)
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !944, file: !948, line: 82)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !945, line: 48, baseType: !946)
!945 = !DIFile(filename: "/usr/include/wctype.h", directory: "")
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!948 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cwctype", directory: "")
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !950, file: !948, line: 83)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !951, line: 38, baseType: !30)
!951 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !87, file: !948, line: 84)
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !954, file: !948, line: 86)
!954 = !DISubprogram(name: "iswalnum", scope: !951, file: !951, line: 95, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !956, file: !948, line: 87)
!956 = !DISubprogram(name: "iswalpha", scope: !951, file: !951, line: 101, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !958, file: !948, line: 89)
!958 = !DISubprogram(name: "iswblank", scope: !951, file: !951, line: 146, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !960, file: !948, line: 91)
!960 = !DISubprogram(name: "iswcntrl", scope: !951, file: !951, line: 104, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !962, file: !948, line: 92)
!962 = !DISubprogram(name: "iswctype", scope: !951, file: !951, line: 159, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!963 = !DISubroutineType(types: !964)
!964 = !{!8, !87, !950}
!965 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !966, file: !948, line: 93)
!966 = !DISubprogram(name: "iswdigit", scope: !951, file: !951, line: 108, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !968, file: !948, line: 94)
!968 = !DISubprogram(name: "iswgraph", scope: !951, file: !951, line: 112, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!969 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !970, file: !948, line: 95)
!970 = !DISubprogram(name: "iswlower", scope: !951, file: !951, line: 117, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !972, file: !948, line: 96)
!972 = !DISubprogram(name: "iswprint", scope: !951, file: !951, line: 120, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !974, file: !948, line: 97)
!974 = !DISubprogram(name: "iswpunct", scope: !951, file: !951, line: 125, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !976, file: !948, line: 98)
!976 = !DISubprogram(name: "iswspace", scope: !951, file: !951, line: 130, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !978, file: !948, line: 99)
!978 = !DISubprogram(name: "iswupper", scope: !951, file: !951, line: 135, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !980, file: !948, line: 100)
!980 = !DISubprogram(name: "iswxdigit", scope: !951, file: !951, line: 140, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !982, file: !948, line: 101)
!982 = !DISubprogram(name: "towctrans", scope: !945, file: !945, line: 55, type: !983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!983 = !DISubroutineType(types: !984)
!984 = !{!87, !87, !944}
!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !986, file: !948, line: 102)
!986 = !DISubprogram(name: "towlower", scope: !951, file: !951, line: 166, type: !987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!987 = !DISubroutineType(types: !988)
!988 = !{!87, !87}
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !990, file: !948, line: 103)
!990 = !DISubprogram(name: "towupper", scope: !951, file: !951, line: 169, type: !987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !992, file: !948, line: 104)
!992 = !DISubprogram(name: "wctrans", scope: !945, file: !945, line: 52, type: !993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!993 = !DISubroutineType(types: !994)
!994 = !{!944, !196}
!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !996, file: !948, line: 105)
!996 = !DISubprogram(name: "wctype", scope: !951, file: !951, line: 155, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!997 = !DISubroutineType(types: !998)
!998 = !{!950, !196}
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_once_t", file: !1000, line: 53, baseType: !8)
!1000 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "")
!1001 = !{i32 7, !"Dwarf Version", i32 4}
!1002 = !{i32 2, !"Debug Info Version", i32 3}
!1003 = !{i32 1, !"wchar_size", i32 4}
!1004 = !{!"clang version 10.0.1 "}
!1005 = distinct !DISubprogram(name: "walOpen", linkageName: "_Z7walOpenv", scope: !3, file: !3, line: 19, type: !1006, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !26)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!32}
!1008 = !DILocation(line: 20, column: 3, scope: !1005)
!1009 = !DILocation(line: 21, column: 7, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 21, column: 7)
!1011 = !{!1012, !1012, i64 0}
!1012 = !{!"any pointer", !1013, i64 0}
!1013 = !{!"omnipotent char", !1014, i64 0}
!1014 = !{!"Simple C++ TBAA"}
!1015 = !DILocation(line: 21, column: 18, scope: !1010)
!1016 = !DILocation(line: 21, column: 7, scope: !1005)
!1017 = !DILocation(line: 22, column: 15, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 21, column: 27)
!1019 = !DILocation(line: 23, column: 3, scope: !1018)
!1020 = !DILocation(line: 25, column: 3, scope: !1005)
!1021 = distinct !DISubprogram(name: "walModuleInitFunc", linkageName: "_ZL17walModuleInitFuncv", scope: !3, file: !3, line: 11, type: !24, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !26)
!1022 = !DILocation(line: 12, column: 16, scope: !1021)
!1023 = !DILocation(line: 12, column: 14, scope: !1021)
!1024 = !DILocation(line: 13, column: 7, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 13, column: 7)
!1026 = !DILocation(line: 13, column: 18, scope: !1025)
!1027 = !DILocation(line: 13, column: 7, scope: !1021)
!1028 = !DILocation(line: 14, column: 19, scope: !1025)
!1029 = !{!1030, !1030, i64 0}
!1030 = !{!"int", !1013, i64 0}
!1031 = !DILocation(line: 14, column: 5, scope: !1025)
!1032 = !DILocation(line: 16, column: 15, scope: !1025)
!1033 = !DILocation(line: 17, column: 1, scope: !1021)
!1034 = distinct !DISubprogram(name: "operator<<<std::char_traits<char> >", linkageName: "_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc", scope: !7, file: !1035, line: 606, type: !1036, scopeLine: 607, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1044, retainedNodes: !1041)
!1035 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/ostream", directory: "")
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!1038, !1038, !196}
!1038 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::char_traits<char> >", scope: !7, file: !1040, line: 359, flags: DIFlagFwdDecl)
!1040 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/ostream.tcc", directory: "")
!1041 = !{!1042, !1043}
!1042 = !DILocalVariable(name: "__out", arg: 1, scope: !1034, file: !1035, line: 606, type: !1038)
!1043 = !DILocalVariable(name: "__s", arg: 2, scope: !1034, file: !1035, line: 606, type: !196)
!1044 = !{!1045}
!1045 = !DITemplateTypeParameter(name: "_Traits", type: !1046)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !7, file: !1047, line: 309, size: 8, flags: DIFlagTypePassByValue, elements: !1048, templateParams: !1097, identifier: "_ZTSSt11char_traitsIcE")
!1047 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/char_traits.h", directory: "")
!1048 = !{!1049, !1056, !1059, !1060, !1065, !1068, !1071, !1075, !1076, !1079, !1085, !1088, !1091, !1094}
!1049 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignERcRKc", scope: !1046, file: !1047, line: 321, type: !1050, scopeLine: 321, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{null, !1052, !1054}
!1052 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1046, file: !1047, line: 311, baseType: !82)
!1054 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1053)
!1056 = !DISubprogram(name: "eq", linkageName: "_ZNSt11char_traitsIcE2eqERKcS2_", scope: !1046, file: !1047, line: 325, type: !1057, scopeLine: 325, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!49, !1054, !1054}
!1059 = !DISubprogram(name: "lt", linkageName: "_ZNSt11char_traitsIcE2ltERKcS2_", scope: !1046, file: !1047, line: 329, type: !1057, scopeLine: 329, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1060 = !DISubprogram(name: "compare", linkageName: "_ZNSt11char_traitsIcE7compareEPKcS2_m", scope: !1046, file: !1047, line: 337, type: !1061, scopeLine: 337, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!8, !1063, !1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !7, file: !36, line: 260, baseType: !30)
!1065 = !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !1046, file: !1047, line: 351, type: !1066, scopeLine: 351, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!1064, !1063}
!1068 = !DISubprogram(name: "find", linkageName: "_ZNSt11char_traitsIcE4findEPKcmRS1_", scope: !1046, file: !1047, line: 361, type: !1069, scopeLine: 361, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!1063, !1063, !1064, !1054}
!1071 = !DISubprogram(name: "move", linkageName: "_ZNSt11char_traitsIcE4moveEPcPKcm", scope: !1046, file: !1047, line: 375, type: !1072, scopeLine: 375, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!1074, !1074, !1063, !1064}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1075 = !DISubprogram(name: "copy", linkageName: "_ZNSt11char_traitsIcE4copyEPcPKcm", scope: !1046, file: !1047, line: 387, type: !1072, scopeLine: 387, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1076 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignEPcmc", scope: !1046, file: !1047, line: 399, type: !1077, scopeLine: 399, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!1074, !1074, !1064, !1053}
!1079 = !DISubprogram(name: "to_char_type", linkageName: "_ZNSt11char_traitsIcE12to_char_typeERKi", scope: !1046, file: !1047, line: 411, type: !1080, scopeLine: 411, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!1053, !1082}
!1082 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1084)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !1046, file: !1047, line: 312, baseType: !8)
!1085 = !DISubprogram(name: "to_int_type", linkageName: "_ZNSt11char_traitsIcE11to_int_typeERKc", scope: !1046, file: !1047, line: 417, type: !1086, scopeLine: 417, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!1084, !1054}
!1088 = !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt11char_traitsIcE11eq_int_typeERKiS2_", scope: !1046, file: !1047, line: 421, type: !1089, scopeLine: 421, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!49, !1082, !1082}
!1091 = !DISubprogram(name: "eof", linkageName: "_ZNSt11char_traitsIcE3eofEv", scope: !1046, file: !1047, line: 425, type: !1092, scopeLine: 425, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!1084}
!1094 = !DISubprogram(name: "not_eof", linkageName: "_ZNSt11char_traitsIcE7not_eofERKi", scope: !1046, file: !1047, line: 429, type: !1095, scopeLine: 429, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!1084, !1082}
!1097 = !{!1098}
!1098 = !DITemplateTypeParameter(name: "_CharT", type: !82)
!1099 = !DILocation(line: 606, column: 46, scope: !1034)
!1100 = !DILocation(line: 606, column: 65, scope: !1034)
!1101 = !DILocation(line: 608, column: 12, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1034, file: !1035, line: 608, column: 11)
!1103 = !DILocation(line: 608, column: 11, scope: !1034)
!1104 = !DILocation(line: 609, column: 2, scope: !1102)
!1105 = !{!1106, !1106, i64 0}
!1106 = !{!"vtable pointer", !1014, i64 0}
!1107 = !DILocation(line: 609, column: 8, scope: !1102)
!1108 = !DILocation(line: 611, column: 19, scope: !1102)
!1109 = !DILocation(line: 611, column: 26, scope: !1102)
!1110 = !DILocation(line: 612, column: 45, scope: !1102)
!1111 = !DILocation(line: 612, column: 29, scope: !1102)
!1112 = !DILocation(line: 611, column: 2, scope: !1102)
!1113 = !DILocation(line: 613, column: 14, scope: !1034)
!1114 = !DILocation(line: 613, column: 7, scope: !1034)
!1115 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 33, type: !690, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1116)
!1116 = !{!1117, !1119}
!1117 = !DILocalVariable(name: "t1", scope: !1115, file: !3, line: 34, type: !1118)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !1000, line: 27, baseType: !30)
!1119 = !DILocalVariable(name: "t2", scope: !1115, file: !3, line: 34, type: !1118)
!1120 = !DILocation(line: 34, column: 3, scope: !1115)
!1121 = !DILocation(line: 34, column: 13, scope: !1115)
!1122 = !DILocation(line: 34, column: 17, scope: !1115)
!1123 = !DILocation(line: 36, column: 3, scope: !1115)
!1124 = !DILocation(line: 37, column: 3, scope: !1115)
!1125 = !DILocation(line: 39, column: 16, scope: !1115)
!1126 = !{!1127, !1127, i64 0}
!1127 = !{!"long", !1013, i64 0}
!1128 = !DILocation(line: 39, column: 3, scope: !1115)
!1129 = !DILocation(line: 40, column: 16, scope: !1115)
!1130 = !DILocation(line: 40, column: 3, scope: !1115)
!1131 = !DILocation(line: 41, column: 1, scope: !1115)
!1132 = !{!1133}
!1133 = !{i64 2, i64 3, i1 false}
!1134 = distinct !DISubprogram(name: "worker", linkageName: "_ZL6workerPv", scope: !3, file: !3, line: 28, type: !1135, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1137)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!32, !32}
!1137 = !{!1138}
!1138 = !DILocalVariable(name: "unused", arg: 1, scope: !1134, file: !3, line: 28, type: !32)
!1139 = !DILocation(line: 28, column: 27, scope: !1134)
!1140 = !DILocation(line: 29, column: 3, scope: !1134)
!1141 = !DILocation(line: 30, column: 3, scope: !1134)
!1142 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !42, file: !42, line: 74, type: !24, scopeLine: 74, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !26)
!1143 = !DILocation(line: 74, column: 25, scope: !1142)
!1144 = distinct !DISubprogram(name: "setstate", linkageName: "_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate", scope: !1146, file: !1145, line: 157, type: !1148, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1152, retainedNodes: !1153)
!1145 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/basic_ios.h", directory: "")
!1146 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ios<char, std::char_traits<char> >", scope: !7, file: !1147, line: 178, flags: DIFlagFwdDecl)
!1147 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/basic_ios.tcc", directory: "")
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null, !1150, !1151}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "iostate", scope: !38, file: !6, line: 398, baseType: !5)
!1152 = !DISubprogram(name: "setstate", linkageName: "_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate", scope: !1146, file: !1145, line: 157, type: !1148, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1153 = !{!1154, !1156}
!1154 = !DILocalVariable(name: "this", arg: 1, scope: !1144, type: !1155, flags: DIFlagArtificial | DIFlagObjectPointer)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1156 = !DILocalVariable(name: "__state", arg: 2, scope: !1144, file: !1145, line: 157, type: !1151)
!1157 = !DILocation(line: 0, scope: !1144)
!1158 = !{!1159, !1159, i64 0}
!1159 = !{!"_ZTSSt12_Ios_Iostate", !1013, i64 0}
!1160 = !DILocation(line: 157, column: 24, scope: !1144)
!1161 = !DILocation(line: 158, column: 27, scope: !1144)
!1162 = !DILocation(line: 158, column: 39, scope: !1144)
!1163 = !DILocation(line: 158, column: 37, scope: !1144)
!1164 = !DILocation(line: 158, column: 15, scope: !1144)
!1165 = !DILocation(line: 158, column: 49, scope: !1144)
!1166 = distinct !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !1046, file: !1047, line: 351, type: !1066, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1065, retainedNodes: !1167)
!1167 = !{!1168}
!1168 = !DILocalVariable(name: "__s", arg: 1, scope: !1166, file: !1047, line: 351, type: !1063)
!1169 = !DILocation(line: 351, column: 31, scope: !1166)
!1170 = !DILocation(line: 357, column: 26, scope: !1166)
!1171 = !DILocation(line: 357, column: 9, scope: !1166)
!1172 = !DILocation(line: 357, column: 2, scope: !1166)
!1173 = distinct !DISubprogram(name: "operator|", linkageName: "_ZStorSt12_Ios_IostateS_", scope: !7, file: !6, line: 169, type: !1174, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1176)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!5, !5, !5}
!1176 = !{!1177, !1178}
!1177 = !DILocalVariable(name: "__a", arg: 1, scope: !1173, file: !6, line: 169, type: !5)
!1178 = !DILocalVariable(name: "__b", arg: 2, scope: !1173, file: !6, line: 169, type: !5)
!1179 = !DILocation(line: 169, column: 26, scope: !1173)
!1180 = !DILocation(line: 169, column: 44, scope: !1173)
!1181 = !DILocation(line: 170, column: 42, scope: !1173)
!1182 = !DILocation(line: 170, column: 66, scope: !1173)
!1183 = !DILocation(line: 170, column: 47, scope: !1173)
!1184 = !DILocation(line: 170, column: 5, scope: !1173)
!1185 = distinct !DISubprogram(name: "rdstate", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv", scope: !1146, file: !1145, line: 137, type: !1186, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1190, retainedNodes: !1191)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!1151, !1188}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1146)
!1190 = !DISubprogram(name: "rdstate", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv", scope: !1146, file: !1145, line: 137, type: !1186, scopeLine: 137, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1191 = !{!1192}
!1192 = !DILocalVariable(name: "this", arg: 1, scope: !1185, type: !1193, flags: DIFlagArtificial | DIFlagObjectPointer)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1194 = !DILocation(line: 0, scope: !1185)
!1195 = !DILocation(line: 138, column: 16, scope: !1185)
!1196 = !{!1197, !1159, i64 32}
!1197 = !{!"_ZTSSt8ios_base", !1127, i64 8, !1127, i64 16, !1198, i64 24, !1159, i64 28, !1159, i64 32, !1012, i64 40, !1199, i64 48, !1013, i64 64, !1030, i64 192, !1012, i64 200, !1200, i64 208}
!1198 = !{!"_ZTSSt13_Ios_Fmtflags", !1013, i64 0}
!1199 = !{!"_ZTSNSt8ios_base6_WordsE", !1012, i64 0, !1127, i64 8}
!1200 = !{!"_ZTSSt6locale", !1012, i64 0}
!1201 = !DILocation(line: 138, column: 9, scope: !1185)
!1202 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_pthread_once_no.cpp", scope: !3, file: !3, type: !1203, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !26)
!1203 = !DISubroutineType(types: !26)
!1204 = !DILocation(line: 0, scope: !1202)
