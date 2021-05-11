; ModuleID = 'integration/dataracebench/DRB086-static-data-member-orig-yes.cpp'
source_filename = "integration/dataracebench/DRB086-static-data-member-orig-yes.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.A = type { i8 }
%struct.ident_t = type { i32, i32, i32, i32, i8* }
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

$__clang_call_terminate = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

$_ZTWN1A8pcounterE = comdat any

@a = dso_local global %class.A zeroinitializer, align 1, !dbg !0
@_ZN1A7counterE = dso_local global i32 0, align 4, !dbg !50
@_ZN1A8pcounterE = dso_local thread_local global i32 0, align 4, !dbg !56
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [78 x i8] c";integration/dataracebench/DRB086-static-data-member-orig-yes.cpp;main;78;3;;\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"A::pcounter == 1\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"integration/dataracebench/DRB086-static-data-member-orig-yes.cpp\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !27
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DRB086_static_data_member_orig_yes.cpp, i8* null }]

; Function Attrs: nounwind uwtable
define dso_local void @_Z3foov() #0 !dbg !999 {
entry:
  %0 = load i32, i32* @_ZN1A7counterE, align 4, !dbg !1001, !tbaa !1002
  %inc = add nsw i32 %0, 1, !dbg !1001
  store i32 %inc, i32* @_ZN1A7counterE, align 4, !dbg !1001, !tbaa !1002
  %1 = load i32, i32* @_ZN1A8pcounterE, align 4, !dbg !1006, !tbaa !1002
  %inc1 = add nsw i32 %1, 1, !dbg !1006
  store i32 %inc1, i32* @_ZN1A8pcounterE, align 4, !dbg !1006, !tbaa !1002
  ret void, !dbg !1007
}

; Function Attrs: norecurse uwtable
define dso_local i32 @main() #1 !dbg !1008 {
entry:
  %retval = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !1009
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !1009, !tbaa !1010
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !1009
  %3 = load i32, i32* @_ZN1A8pcounterE, align 4, !dbg !1013, !tbaa !1002
  %cmp = icmp eq i32 %3, 1, !dbg !1013
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1013

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1013

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15, !dbg !1013
  unreachable, !dbg !1013

4:                                                ; No predecessors!
  br label %cond.end, !dbg !1013

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i32, i32* @_ZN1A7counterE, align 4, !dbg !1014, !tbaa !1002
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %5), !dbg !1015
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !1016
  %6 = load i32, i32* @_ZN1A8pcounterE, align 4, !dbg !1017, !tbaa !1002
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call1, i32 %6), !dbg !1018
  %call3 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call2, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1019
  ret i32 0, !dbg !1020
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1021 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !1031
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !1029, metadata !DIExpression()), !dbg !1032
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !1031
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !1030, metadata !DIExpression()), !dbg !1032
  invoke void @_Z3foov()
          to label %invoke.cont unwind label %terminate.lpad, !dbg !1033

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !1035

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { i8*, i32 }
          catch i8* null, !dbg !1033
  %1 = extractvalue { i8*, i32 } %0, 0, !dbg !1033
  call void @__clang_call_terminate(i8* %1) #15, !dbg !1033
  unreachable, !dbg !1033
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #4 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #11
  call void @_ZSt9terminatev() #15
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 !dbg !1036 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !1031
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !1038, metadata !DIExpression()), !dbg !1040
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !1031
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !1039, metadata !DIExpression()), !dbg !1040
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !1041, !tbaa !1031
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !1041, !tbaa !1031
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #11, !dbg !1041
  ret void, !dbg !1041
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare !callback !1042 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #6

; Function Attrs: inlinehint uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %__out, i8* %__s) #7 !dbg !1044 {
entry:
  %__out.addr = alloca %"class.std::basic_ostream"*, align 8
  %__s.addr = alloca i8*, align 8
  store %"class.std::basic_ostream"* %__out, %"class.std::basic_ostream"** %__out.addr, align 8, !tbaa !1031
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %__out.addr, metadata !1052, metadata !DIExpression()), !dbg !1109
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1031
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !1053, metadata !DIExpression()), !dbg !1110
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !1111, !tbaa !1031
  %tobool = icmp ne i8* %0, null, !dbg !1111
  br i1 %tobool, label %if.else, label %if.then, !dbg !1113

if.then:                                          ; preds = %entry
  %1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__out.addr, align 8, !dbg !1114, !tbaa !1031
  %2 = bitcast %"class.std::basic_ostream"* %1 to i8**, !dbg !1114
  %vtable = load i8*, i8** %2, align 8, !dbg !1114, !tbaa !1115
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24, !dbg !1114
  %3 = bitcast i8* %vbase.offset.ptr to i64*, !dbg !1114
  %vbase.offset = load i64, i64* %3, align 8, !dbg !1114
  %4 = bitcast %"class.std::basic_ostream"* %1 to i8*, !dbg !1114
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %vbase.offset, !dbg !1114
  %5 = bitcast i8* %add.ptr to %"class.std::basic_ios"*, !dbg !1114
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* %5, i32 1), !dbg !1117
  br label %if.end, !dbg !1114

if.else:                                          ; preds = %entry
  %6 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__out.addr, align 8, !dbg !1118, !tbaa !1031
  %7 = load i8*, i8** %__s.addr, align 8, !dbg !1119, !tbaa !1031
  %8 = load i8*, i8** %__s.addr, align 8, !dbg !1120, !tbaa !1031
  %call = call i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %8), !dbg !1121
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272) %6, i8* %7, i64 %call), !dbg !1122
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__out.addr, align 8, !dbg !1123, !tbaa !1031
  ret %"class.std::basic_ostream"* %9, !dbg !1124
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #8

; Function Attrs: uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %this, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* %__pf) #9 align 2 !dbg !1125 {
entry:
  %this.addr = alloca %"class.std::basic_ostream"*, align 8
  %__pf.addr = alloca %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*, align 8
  store %"class.std::basic_ostream"* %this, %"class.std::basic_ostream"** %this.addr, align 8, !tbaa !1031
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %this.addr, metadata !1136, metadata !DIExpression()), !dbg !1139
  store %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* %__pf, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)** %__pf.addr, align 8, !tbaa !1031
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)** %__pf.addr, metadata !1138, metadata !DIExpression()), !dbg !1140
  %this1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %this.addr, align 8
  %0 = load %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)** %__pf.addr, align 8, !dbg !1141, !tbaa !1031
  %call = call dereferenceable(272) %"class.std::basic_ostream"* %0(%"class.std::basic_ostream"* dereferenceable(272) %this1), !dbg !1141
  ret %"class.std::basic_ostream"* %call, !dbg !1142
}

; Function Attrs: inlinehint uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272) %__os) #7 !dbg !1143 {
entry:
  %__os.addr = alloca %"class.std::basic_ostream"*, align 8
  store %"class.std::basic_ostream"* %__os, %"class.std::basic_ostream"** %__os.addr, align 8, !tbaa !1031
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %__os.addr, metadata !1147, metadata !DIExpression()), !dbg !1149
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__os.addr, align 8, !dbg !1150, !tbaa !1031
  %1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__os.addr, align 8, !dbg !1151, !tbaa !1031
  %2 = bitcast %"class.std::basic_ostream"* %1 to i8**, !dbg !1151
  %vtable = load i8*, i8** %2, align 8, !dbg !1151, !tbaa !1115
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24, !dbg !1151
  %3 = bitcast i8* %vbase.offset.ptr to i64*, !dbg !1151
  %vbase.offset = load i64, i64* %3, align 8, !dbg !1151
  %4 = bitcast %"class.std::basic_ostream"* %1 to i8*, !dbg !1151
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %vbase.offset, !dbg !1151
  %5 = bitcast i8* %add.ptr to %"class.std::basic_ios"*, !dbg !1151
  %call = call signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* %5, i8 signext 10), !dbg !1152
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* %0, i8 signext %call), !dbg !1153
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272) %call1), !dbg !1154
  ret %"class.std::basic_ostream"* %call2, !dbg !1155
}

; Function Attrs: uwtable
define internal void @__cxx_global_var_init() #9 section ".text.startup" !dbg !1156 {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !dbg !1157
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #11, !dbg !1157
  ret void, !dbg !1157
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #8

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #10

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #11

; Function Attrs: uwtable
define available_externally dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* %this, i32 %__state) #9 align 2 !dbg !1158 {
entry:
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  %__state.addr = alloca i32, align 4
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8, !tbaa !1031
  call void @llvm.dbg.declare(metadata %"class.std::basic_ios"** %this.addr, metadata !1168, metadata !DIExpression()), !dbg !1171
  store i32 %__state, i32* %__state.addr, align 4, !tbaa !1172
  call void @llvm.dbg.declare(metadata i32* %__state.addr, metadata !1170, metadata !DIExpression()), !dbg !1174
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %call = call i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(%"class.std::basic_ios"* %this1), !dbg !1175
  %0 = load i32, i32* %__state.addr, align 4, !dbg !1176, !tbaa !1172
  %call2 = call i32 @_ZStorSt12_Ios_IostateS_(i32 %call, i32 %0), !dbg !1177
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* %this1, i32 %call2), !dbg !1178
  ret void, !dbg !1179
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272), i8*, i64) #8

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %__s) #0 comdat align 2 !dbg !1180 {
entry:
  %__s.addr = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1031
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !1182, metadata !DIExpression()), !dbg !1183
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !1184, !tbaa !1031
  %call = call i64 @strlen(i8* %0) #11, !dbg !1185
  ret i64 %call, !dbg !1186
}

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"*, i32) #8

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @_ZStorSt12_Ios_IostateS_(i32 %__a, i32 %__b) #12 comdat !dbg !1187 {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, i32* %__a.addr, align 4, !tbaa !1172
  call void @llvm.dbg.declare(metadata i32* %__a.addr, metadata !1191, metadata !DIExpression()), !dbg !1193
  store i32 %__b, i32* %__b.addr, align 4, !tbaa !1172
  call void @llvm.dbg.declare(metadata i32* %__b.addr, metadata !1192, metadata !DIExpression()), !dbg !1194
  %0 = load i32, i32* %__a.addr, align 4, !dbg !1195, !tbaa !1172
  %1 = load i32, i32* %__b.addr, align 4, !dbg !1196, !tbaa !1172
  %or = or i32 %0, %1, !dbg !1197
  ret i32 %or, !dbg !1198
}

; Function Attrs: nounwind uwtable
define available_externally dso_local i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(%"class.std::basic_ios"* %this) #0 align 2 !dbg !1199 {
entry:
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8, !tbaa !1031
  call void @llvm.dbg.declare(metadata %"class.std::basic_ios"** %this.addr, metadata !1206, metadata !DIExpression()), !dbg !1208
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::basic_ios"* %this1 to %"class.std::ios_base"*, !dbg !1209
  %_M_streambuf_state = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %0, i32 0, i32 5, !dbg !1209
  %1 = load i32, i32* %_M_streambuf_state, align 8, !dbg !1209, !tbaa !1210
  ret i32 %1, !dbg !1216
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8*) #10

; Function Attrs: inlinehint uwtable
define available_externally dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272) %__os) #7 !dbg !1217 {
entry:
  %__os.addr = alloca %"class.std::basic_ostream"*, align 8
  store %"class.std::basic_ostream"* %__os, %"class.std::basic_ostream"** %__os.addr, align 8, !tbaa !1031
  call void @llvm.dbg.declare(metadata %"class.std::basic_ostream"** %__os.addr, metadata !1219, metadata !DIExpression()), !dbg !1220
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %__os.addr, align 8, !dbg !1221, !tbaa !1031
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* %0), !dbg !1222
  ret %"class.std::basic_ostream"* %call, !dbg !1223
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"*, i8 signext) #8

; Function Attrs: uwtable
define available_externally dso_local signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* %this, i8 signext %__c) #9 align 2 !dbg !1224 {
entry:
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  %__c.addr = alloca i8, align 1
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8, !tbaa !1031
  call void @llvm.dbg.declare(metadata %"class.std::basic_ios"** %this.addr, metadata !1230, metadata !DIExpression()), !dbg !1232
  store i8 %__c, i8* %__c.addr, align 1, !tbaa !1233
  call void @llvm.dbg.declare(metadata i8* %__c.addr, metadata !1231, metadata !DIExpression()), !dbg !1234
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %_M_ctype = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %this1, i32 0, i32 5, !dbg !1235
  %0 = load %"class.std::ctype"*, %"class.std::ctype"** %_M_ctype, align 8, !dbg !1235, !tbaa !1236
  %call = call dereferenceable(576) %"class.std::ctype"* @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(%"class.std::ctype"* %0), !dbg !1239
  %1 = load i8, i8* %__c.addr, align 1, !dbg !1240, !tbaa !1233
  %call2 = call signext i8 @_ZNKSt5ctypeIcE5widenEc(%"class.std::ctype"* %call, i8 signext %1), !dbg !1241
  ret i8 %call2, !dbg !1242
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"*) #8

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local dereferenceable(576) %"class.std::ctype"* @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(%"class.std::ctype"* %__f) #7 comdat !dbg !1243 {
entry:
  %__f.addr = alloca %"class.std::ctype"*, align 8
  store %"class.std::ctype"* %__f, %"class.std::ctype"** %__f.addr, align 8, !tbaa !1031
  call void @llvm.dbg.declare(metadata %"class.std::ctype"** %__f.addr, metadata !1252, metadata !DIExpression()), !dbg !1255
  %0 = load %"class.std::ctype"*, %"class.std::ctype"** %__f.addr, align 8, !dbg !1256, !tbaa !1031
  %tobool = icmp ne %"class.std::ctype"* %0, null, !dbg !1256
  br i1 %tobool, label %if.end, label %if.then, !dbg !1258

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #16, !dbg !1259
  unreachable, !dbg !1259

if.end:                                           ; preds = %entry
  %1 = load %"class.std::ctype"*, %"class.std::ctype"** %__f.addr, align 8, !dbg !1260, !tbaa !1031
  ret %"class.std::ctype"* %1, !dbg !1261
}

; Function Attrs: uwtable
define linkonce_odr dso_local signext i8 @_ZNKSt5ctypeIcE5widenEc(%"class.std::ctype"* %this, i8 signext %__c) #9 comdat align 2 !dbg !1262 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca %"class.std::ctype"*, align 8
  %__c.addr = alloca i8, align 1
  store %"class.std::ctype"* %this, %"class.std::ctype"** %this.addr, align 8, !tbaa !1031
  call void @llvm.dbg.declare(metadata %"class.std::ctype"** %this.addr, metadata !1269, metadata !DIExpression()), !dbg !1271
  store i8 %__c, i8* %__c.addr, align 1, !tbaa !1233
  call void @llvm.dbg.declare(metadata i8* %__c.addr, metadata !1270, metadata !DIExpression()), !dbg !1272
  %this1 = load %"class.std::ctype"*, %"class.std::ctype"** %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this1, i32 0, i32 8, !dbg !1273
  %0 = load i8, i8* %_M_widen_ok, align 8, !dbg !1273, !tbaa !1275
  %tobool = icmp ne i8 %0, 0, !dbg !1273
  br i1 %tobool, label %if.then, label %if.end, !dbg !1277

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this1, i32 0, i32 9, !dbg !1278
  %1 = load i8, i8* %__c.addr, align 1, !dbg !1279, !tbaa !1233
  %idxprom = zext i8 %1 to i64, !dbg !1278
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %_M_widen, i64 0, i64 %idxprom, !dbg !1278
  %2 = load i8, i8* %arrayidx, align 1, !dbg !1278, !tbaa !1233
  store i8 %2, i8* %retval, align 1, !dbg !1280
  br label %return, !dbg !1280

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* %this1), !dbg !1281
  %3 = load i8, i8* %__c.addr, align 1, !dbg !1282, !tbaa !1233
  %4 = bitcast %"class.std::ctype"* %this1 to i8 (%"class.std::ctype"*, i8)***, !dbg !1283
  %vtable = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %4, align 8, !dbg !1283, !tbaa !1115
  %vfn = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable, i64 6, !dbg !1283
  %5 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn, align 8, !dbg !1283
  %call = call signext i8 %5(%"class.std::ctype"* %this1, i8 signext %3), !dbg !1283
  store i8 %call, i8* %retval, align 1, !dbg !1284
  br label %return, !dbg !1284

return:                                           ; preds = %if.end, %if.then
  %6 = load i8, i8* %retval, align 1, !dbg !1285
  ret i8 %6, !dbg !1285
}

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() #13

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"*) #8

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DRB086_static_data_member_orig_yes.cpp() #9 section ".text.startup" !dbg !1286 {
entry:
  call void @__cxx_global_var_init(), !dbg !1288
  ret void
}

; Function Attrs: uwtable
define weak_odr hidden i32* @_ZTWN1A8pcounterE() #14 comdat {
  ret i32* @_ZN1A8pcounterE
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { noinline noreturn nounwind }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!995, !996, !997}
!llvm.ident = !{!998}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 68, type: !53, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !26, imports: !58, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB086-static-data-member-orig-yes.cpp", directory: "/home/brad/Code/OpenRace/tests/data")
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
!17 = !{!18, !19, !5, !8, !24, !25}
!18 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamsize", scope: !7, file: !20, line: 98, baseType: !21)
!20 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/postypes.h", directory: "")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !7, file: !22, line: 261, baseType: !23)
!22 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/x86_64-pc-linux-gnu/bits/c++config.h", directory: "")
!23 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !7, file: !6, line: 228, flags: DIFlagFwdDecl, identifier: "_ZTSSt8ios_base")
!26 = !{!27, !50, !56, !0}
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !7, file: !29, line: 74, type: !30, isLocal: true, isDefinition: true)
!29 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/iostream", directory: "")
!30 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !25, file: !6, line: 603, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !31, identifier: "_ZTSNSt8ios_base4InitE")
!31 = !{!32, !35, !36, !40, !41, !46}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_S_refcount", scope: !30, file: !6, line: 616, baseType: !33, flags: DIFlagStaticMember)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Atomic_word", file: !34, line: 32, baseType: !8)
!34 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/x86_64-pc-linux-gnu/bits/atomic_word.h", directory: "")
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_S_synced_with_stdio", scope: !30, file: !6, line: 617, baseType: !18, flags: DIFlagStaticMember)
!36 = !DISubprogram(name: "Init", scope: !30, file: !6, line: 607, type: !37, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !39}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!40 = !DISubprogram(name: "~Init", scope: !30, file: !6, line: 608, type: !37, scopeLine: 608, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!41 = !DISubprogram(name: "Init", scope: !30, file: !6, line: 611, type: !42, scopeLine: 611, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !39, !44}
!44 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!46 = !DISubprogram(name: "operator=", linkageName: "_ZNSt8ios_base4InitaSERKS0_", scope: !30, file: !6, line: 612, type: !47, scopeLine: 612, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !39, !44}
!49 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !30, size: 64)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "counter", linkageName: "_ZN1A7counterE", scope: !2, file: !3, line: 65, type: !8, isLocal: false, isDefinition: true, declaration: !52)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !53, file: !3, line: 60, baseType: !8, flags: DIFlagPublic | DIFlagStaticMember)
!53 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A", file: !3, line: 58, size: 8, flags: DIFlagTypePassByValue, elements: !54, identifier: "_ZTS1A")
!54 = !{!52, !55}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "pcounter", scope: !53, file: !3, line: 61, baseType: !8, flags: DIFlagPublic | DIFlagStaticMember)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "pcounter", linkageName: "_ZN1A8pcounterE", scope: !2, file: !3, line: 66, type: !8, isLocal: false, isDefinition: true, declaration: !55)
!58 = !{!59, !78, !81, !86, !150, !158, !162, !169, !173, !177, !179, !181, !185, !194, !198, !204, !210, !212, !216, !220, !224, !228, !239, !241, !245, !249, !253, !255, !260, !264, !268, !270, !272, !276, !284, !288, !292, !296, !298, !304, !306, !313, !318, !322, !326, !330, !334, !338, !340, !342, !346, !350, !354, !356, !360, !364, !366, !368, !372, !378, !383, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !452, !456, !460, !465, !469, !472, !475, !478, !480, !482, !484, !487, !490, !493, !496, !499, !501, !505, !508, !511, !514, !516, !518, !520, !522, !525, !528, !531, !534, !537, !539, !543, !547, !552, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !588, !592, !598, !602, !607, !609, !614, !618, !622, !633, !637, !641, !645, !649, !653, !657, !661, !665, !669, !673, !677, !681, !683, !687, !691, !695, !701, !705, !709, !711, !715, !719, !725, !727, !731, !735, !739, !743, !747, !751, !755, !756, !757, !758, !760, !761, !762, !763, !764, !765, !766, !770, !776, !781, !785, !787, !789, !791, !793, !800, !804, !808, !812, !816, !820, !825, !829, !831, !835, !841, !845, !850, !852, !855, !859, !863, !865, !867, !869, !871, !875, !877, !879, !883, !887, !891, !895, !899, !903, !905, !909, !913, !917, !921, !923, !925, !929, !933, !934, !935, !936, !937, !938, !944, !947, !948, !950, !952, !954, !956, !960, !962, !964, !966, !968, !970, !972, !974, !976, !980, !984, !986, !990, !994}
!59 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !60, file: !77, line: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !61, line: 6, baseType: !62)
!61 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !63, line: 21, baseType: !64)
!63 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !65, identifier: "_ZTS11__mbstate_t")
!65 = !{!66, !67}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !64, file: !63, line: 15, baseType: !8, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !64, file: !63, line: 20, baseType: !68, size: 32, offset: 32)
!68 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !64, file: !63, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !69, identifier: "_ZTSN11__mbstate_tUt_E")
!69 = !{!70, !72}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !68, file: !63, line: 18, baseType: !71, size: 32)
!71 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !68, file: !63, line: 19, baseType: !73, size: 32)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 32, elements: !75)
!74 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!75 = !{!76}
!76 = !DISubrange(count: 4)
!77 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cwchar", directory: "")
!78 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !79, file: !77, line: 141)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !80, line: 20, baseType: !71)
!80 = !DIFile(filename: "/usr/include/bits/types/wint_t.h", directory: "")
!81 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !82, file: !77, line: 143)
!82 = !DISubprogram(name: "btowc", scope: !83, file: !83, line: 318, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!83 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!84 = !DISubroutineType(types: !85)
!85 = !{!79, !8}
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !87, file: !77, line: 144)
!87 = !DISubprogram(name: "fgetwc", scope: !83, file: !83, line: 729, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!88 = !DISubroutineType(types: !89)
!89 = !{!79, !90}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !92, line: 5, baseType: !93)
!92 = !DIFile(filename: "/usr/include/bits/types/__FILE.h", directory: "")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !94, line: 49, size: 1728, flags: DIFlagTypePassByValue, elements: !95, identifier: "_ZTS8_IO_FILE")
!94 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!95 = !{!96, !97, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !112, !114, !115, !116, !119, !121, !123, !127, !130, !132, !135, !138, !139, !141, !145, !146}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !93, file: !94, line: 51, baseType: !8, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !93, file: !94, line: 54, baseType: !98, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !93, file: !94, line: 55, baseType: !98, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !93, file: !94, line: 56, baseType: !98, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !93, file: !94, line: 57, baseType: !98, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !93, file: !94, line: 58, baseType: !98, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !93, file: !94, line: 59, baseType: !98, size: 64, offset: 384)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !93, file: !94, line: 60, baseType: !98, size: 64, offset: 448)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !93, file: !94, line: 61, baseType: !98, size: 64, offset: 512)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !93, file: !94, line: 64, baseType: !98, size: 64, offset: 576)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !93, file: !94, line: 65, baseType: !98, size: 64, offset: 640)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !93, file: !94, line: 66, baseType: !98, size: 64, offset: 704)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !93, file: !94, line: 68, baseType: !110, size: 64, offset: 768)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !94, line: 36, flags: DIFlagFwdDecl, identifier: "_ZTS10_IO_marker")
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !93, file: !94, line: 70, baseType: !113, size: 64, offset: 832)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !93, file: !94, line: 72, baseType: !8, size: 32, offset: 896)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !93, file: !94, line: 73, baseType: !8, size: 32, offset: 928)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !93, file: !94, line: 74, baseType: !117, size: 64, offset: 960)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !118, line: 152, baseType: !23)
!118 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !93, file: !94, line: 77, baseType: !120, size: 16, offset: 1024)
!120 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !93, file: !94, line: 78, baseType: !122, size: 8, offset: 1040)
!122 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !93, file: !94, line: 79, baseType: !124, size: 8, offset: 1048)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 8, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 1)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !93, file: !94, line: 81, baseType: !128, size: 64, offset: 1088)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !94, line: 43, baseType: null)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !93, file: !94, line: 89, baseType: !131, size: 64, offset: 1152)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !118, line: 153, baseType: !23)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !93, file: !94, line: 91, baseType: !133, size: 64, offset: 1216)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !94, line: 37, flags: DIFlagFwdDecl, identifier: "_ZTS11_IO_codecvt")
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !93, file: !94, line: 92, baseType: !136, size: 64, offset: 1280)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !94, line: 38, flags: DIFlagFwdDecl, identifier: "_ZTS13_IO_wide_data")
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !93, file: !94, line: 93, baseType: !113, size: 64, offset: 1344)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !93, file: !94, line: 94, baseType: !140, size: 64, offset: 1408)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !93, file: !94, line: 95, baseType: !142, size: 64, offset: 1472)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !143, line: 46, baseType: !144)
!143 = !DIFile(filename: "OpenRace-env/install/lib/clang/10.0.1/include/stddef.h", directory: "/home/brad/Code")
!144 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !93, file: !94, line: 96, baseType: !8, size: 32, offset: 1536)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !93, file: !94, line: 98, baseType: !147, size: 160, offset: 1568)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 160, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 20)
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !151, file: !77, line: 145)
!151 = !DISubprogram(name: "fgetws", scope: !83, file: !83, line: 758, type: !152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!152 = !DISubroutineType(types: !153)
!153 = !{!154, !156, !8, !157}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!156 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !154)
!157 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !159, file: !77, line: 146)
!159 = !DISubprogram(name: "fputwc", scope: !83, file: !83, line: 743, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!160 = !DISubroutineType(types: !161)
!161 = !{!79, !155, !90}
!162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !163, file: !77, line: 147)
!163 = !DISubprogram(name: "fputws", scope: !83, file: !83, line: 765, type: !164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!164 = !DISubroutineType(types: !165)
!165 = !{!8, !166, !157}
!166 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !170, file: !77, line: 148)
!170 = !DISubprogram(name: "fwide", scope: !83, file: !83, line: 573, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!171 = !DISubroutineType(types: !172)
!172 = !{!8, !90, !8}
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !174, file: !77, line: 149)
!174 = !DISubprogram(name: "fwprintf", scope: !83, file: !83, line: 580, type: !175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!175 = !DISubroutineType(types: !176)
!176 = !{!8, !157, !166, null}
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !178, file: !77, line: 150)
!178 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !83, file: !83, line: 642, type: !175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !180, file: !77, line: 151)
!180 = !DISubprogram(name: "getwc", scope: !83, file: !83, line: 730, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !182, file: !77, line: 152)
!182 = !DISubprogram(name: "getwchar", scope: !83, file: !83, line: 736, type: !183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!183 = !DISubroutineType(types: !184)
!184 = !{!79}
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !186, file: !77, line: 153)
!186 = !DISubprogram(name: "mbrlen", scope: !83, file: !83, line: 329, type: !187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!187 = !DISubroutineType(types: !188)
!188 = !{!142, !189, !142, !192}
!189 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!192 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !195, file: !77, line: 154)
!195 = !DISubprogram(name: "mbrtowc", scope: !83, file: !83, line: 296, type: !196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!196 = !DISubroutineType(types: !197)
!197 = !{!142, !156, !189, !142, !192}
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !199, file: !77, line: 155)
!199 = !DISubprogram(name: "mbsinit", scope: !83, file: !83, line: 292, type: !200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DISubroutineType(types: !201)
!201 = !{!8, !202}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !205, file: !77, line: 156)
!205 = !DISubprogram(name: "mbsrtowcs", scope: !83, file: !83, line: 337, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!206 = !DISubroutineType(types: !207)
!207 = !{!142, !156, !208, !142, !192}
!208 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !211, file: !77, line: 157)
!211 = !DISubprogram(name: "putwc", scope: !83, file: !83, line: 744, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !213, file: !77, line: 158)
!213 = !DISubprogram(name: "putwchar", scope: !83, file: !83, line: 750, type: !214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!214 = !DISubroutineType(types: !215)
!215 = !{!79, !155}
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !217, file: !77, line: 160)
!217 = !DISubprogram(name: "swprintf", scope: !83, file: !83, line: 590, type: !218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DISubroutineType(types: !219)
!219 = !{!8, !156, !142, !166, null}
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !221, file: !77, line: 162)
!221 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !83, file: !83, line: 649, type: !222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!222 = !DISubroutineType(types: !223)
!223 = !{!8, !166, !166, null}
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !225, file: !77, line: 163)
!225 = !DISubprogram(name: "ungetwc", scope: !83, file: !83, line: 773, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!226 = !DISubroutineType(types: !227)
!227 = !{!79, !79, !90}
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !229, file: !77, line: 164)
!229 = !DISubprogram(name: "vfwprintf", scope: !83, file: !83, line: 598, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!230 = !DISubroutineType(types: !231)
!231 = !{!8, !157, !166, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, flags: DIFlagTypePassByValue, elements: !234, identifier: "_ZTS13__va_list_tag")
!234 = !{!235, !236, !237, !238}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !233, file: !3, baseType: !71, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !233, file: !3, baseType: !71, size: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !233, file: !3, baseType: !140, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !233, file: !3, baseType: !140, size: 64, offset: 128)
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !240, file: !77, line: 166)
!240 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !83, file: !83, line: 696, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !242, file: !77, line: 169)
!242 = !DISubprogram(name: "vswprintf", scope: !83, file: !83, line: 611, type: !243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!243 = !DISubroutineType(types: !244)
!244 = !{!8, !156, !142, !166, !232}
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !246, file: !77, line: 172)
!246 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !83, file: !83, line: 703, type: !247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!247 = !DISubroutineType(types: !248)
!248 = !{!8, !166, !166, !232}
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !250, file: !77, line: 174)
!250 = !DISubprogram(name: "vwprintf", scope: !83, file: !83, line: 606, type: !251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!251 = !DISubroutineType(types: !252)
!252 = !{!8, !166, !232}
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !254, file: !77, line: 176)
!254 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !83, file: !83, line: 700, type: !251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !256, file: !77, line: 178)
!256 = !DISubprogram(name: "wcrtomb", scope: !83, file: !83, line: 301, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DISubroutineType(types: !258)
!258 = !{!142, !259, !155, !192}
!259 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !98)
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !261, file: !77, line: 179)
!261 = !DISubprogram(name: "wcscat", scope: !83, file: !83, line: 97, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!262 = !DISubroutineType(types: !263)
!263 = !{!154, !156, !166}
!264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !265, file: !77, line: 180)
!265 = !DISubprogram(name: "wcscmp", scope: !83, file: !83, line: 106, type: !266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!266 = !DISubroutineType(types: !267)
!267 = !{!8, !167, !167}
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !269, file: !77, line: 181)
!269 = !DISubprogram(name: "wcscoll", scope: !83, file: !83, line: 131, type: !266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !271, file: !77, line: 182)
!271 = !DISubprogram(name: "wcscpy", scope: !83, file: !83, line: 87, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !273, file: !77, line: 183)
!273 = !DISubprogram(name: "wcscspn", scope: !83, file: !83, line: 187, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!274 = !DISubroutineType(types: !275)
!275 = !{!142, !167, !167}
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !277, file: !77, line: 184)
!277 = !DISubprogram(name: "wcsftime", scope: !83, file: !83, line: 837, type: !278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!278 = !DISubroutineType(types: !279)
!279 = !{!142, !156, !142, !166, !280}
!280 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !83, line: 83, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !285, file: !77, line: 185)
!285 = !DISubprogram(name: "wcslen", scope: !83, file: !83, line: 222, type: !286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!286 = !DISubroutineType(types: !287)
!287 = !{!142, !167}
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !289, file: !77, line: 186)
!289 = !DISubprogram(name: "wcsncat", scope: !83, file: !83, line: 101, type: !290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!290 = !DISubroutineType(types: !291)
!291 = !{!154, !156, !166, !142}
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !293, file: !77, line: 187)
!293 = !DISubprogram(name: "wcsncmp", scope: !83, file: !83, line: 109, type: !294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!294 = !DISubroutineType(types: !295)
!295 = !{!8, !167, !167, !142}
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !297, file: !77, line: 188)
!297 = !DISubprogram(name: "wcsncpy", scope: !83, file: !83, line: 92, type: !290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !299, file: !77, line: 189)
!299 = !DISubprogram(name: "wcsrtombs", scope: !83, file: !83, line: 343, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!300 = !DISubroutineType(types: !301)
!301 = !{!142, !259, !302, !142, !192}
!302 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !305, file: !77, line: 190)
!305 = !DISubprogram(name: "wcsspn", scope: !83, file: !83, line: 191, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !307, file: !77, line: 191)
!307 = !DISubprogram(name: "wcstod", scope: !83, file: !83, line: 377, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!308 = !DISubroutineType(types: !309)
!309 = !{!310, !166, !311}
!310 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!311 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !314, file: !77, line: 193)
!314 = !DISubprogram(name: "wcstof", scope: !83, file: !83, line: 382, type: !315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!315 = !DISubroutineType(types: !316)
!316 = !{!317, !166, !311}
!317 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !319, file: !77, line: 195)
!319 = !DISubprogram(name: "wcstok", scope: !83, file: !83, line: 217, type: !320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!320 = !DISubroutineType(types: !321)
!321 = !{!154, !156, !166, !311}
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !323, file: !77, line: 196)
!323 = !DISubprogram(name: "wcstol", scope: !83, file: !83, line: 428, type: !324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!324 = !DISubroutineType(types: !325)
!325 = !{!23, !166, !311, !8}
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !327, file: !77, line: 197)
!327 = !DISubprogram(name: "wcstoul", scope: !83, file: !83, line: 433, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!328 = !DISubroutineType(types: !329)
!329 = !{!144, !166, !311, !8}
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !331, file: !77, line: 198)
!331 = !DISubprogram(name: "wcsxfrm", scope: !83, file: !83, line: 135, type: !332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!332 = !DISubroutineType(types: !333)
!333 = !{!142, !156, !166, !142}
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !335, file: !77, line: 199)
!335 = !DISubprogram(name: "wctob", scope: !83, file: !83, line: 324, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!336 = !DISubroutineType(types: !337)
!337 = !{!8, !79}
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !339, file: !77, line: 200)
!339 = !DISubprogram(name: "wmemcmp", scope: !83, file: !83, line: 258, type: !294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !341, file: !77, line: 201)
!341 = !DISubprogram(name: "wmemcpy", scope: !83, file: !83, line: 262, type: !290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !343, file: !77, line: 202)
!343 = !DISubprogram(name: "wmemmove", scope: !83, file: !83, line: 267, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!344 = !DISubroutineType(types: !345)
!345 = !{!154, !154, !167, !142}
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !347, file: !77, line: 203)
!347 = !DISubprogram(name: "wmemset", scope: !83, file: !83, line: 271, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!348 = !DISubroutineType(types: !349)
!349 = !{!154, !154, !155, !142}
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !351, file: !77, line: 204)
!351 = !DISubprogram(name: "wprintf", scope: !83, file: !83, line: 587, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!352 = !DISubroutineType(types: !353)
!353 = !{!8, !166, null}
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !355, file: !77, line: 205)
!355 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !83, file: !83, line: 646, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !357, file: !77, line: 206)
!357 = !DISubprogram(name: "wcschr", scope: !83, file: !83, line: 164, type: !358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!358 = !DISubroutineType(types: !359)
!359 = !{!154, !167, !155}
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !361, file: !77, line: 207)
!361 = !DISubprogram(name: "wcspbrk", scope: !83, file: !83, line: 201, type: !362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!362 = !DISubroutineType(types: !363)
!363 = !{!154, !167, !167}
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !365, file: !77, line: 208)
!365 = !DISubprogram(name: "wcsrchr", scope: !83, file: !83, line: 174, type: !358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !367, file: !77, line: 209)
!367 = !DISubprogram(name: "wcsstr", scope: !83, file: !83, line: 212, type: !362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !369, file: !77, line: 210)
!369 = !DISubprogram(name: "wmemchr", scope: !83, file: !83, line: 253, type: !370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!370 = !DISubroutineType(types: !371)
!371 = !{!154, !167, !155, !142}
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !373, entity: !374, file: !77, line: 251)
!373 = !DINamespace(name: "__gnu_cxx", scope: null)
!374 = !DISubprogram(name: "wcstold", scope: !83, file: !83, line: 384, type: !375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!375 = !DISubroutineType(types: !376)
!376 = !{!377, !166, !311}
!377 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !373, entity: !379, file: !77, line: 260)
!379 = !DISubprogram(name: "wcstoll", scope: !83, file: !83, line: 441, type: !380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!380 = !DISubroutineType(types: !381)
!381 = !{!382, !166, !311, !8}
!382 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !373, entity: !384, file: !77, line: 261)
!384 = !DISubprogram(name: "wcstoull", scope: !83, file: !83, line: 448, type: !385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!385 = !DISubroutineType(types: !386)
!386 = !{!387, !166, !311, !8}
!387 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !374, file: !77, line: 267)
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !379, file: !77, line: 268)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !384, file: !77, line: 269)
!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !314, file: !77, line: 283)
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !240, file: !77, line: 286)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !246, file: !77, line: 289)
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !254, file: !77, line: 292)
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !374, file: !77, line: 296)
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !379, file: !77, line: 297)
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !384, file: !77, line: 298)
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !399, file: !400, line: 58)
!399 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !401, file: !400, line: 80, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !402, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!400 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/exception_ptr.h", directory: "")
!401 = !DINamespace(name: "__exception_ptr", scope: !7)
!402 = !{!403, !404, !408, !411, !412, !417, !418, !422, !427, !431, !435, !438, !439, !442, !445}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !399, file: !400, line: 82, baseType: !140, size: 64)
!404 = !DISubprogram(name: "exception_ptr", scope: !399, file: !400, line: 84, type: !405, scopeLine: 84, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !407, !140}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!408 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !399, file: !400, line: 86, type: !409, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !407}
!411 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !399, file: !400, line: 87, type: !409, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!412 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !399, file: !400, line: 89, type: !413, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!413 = !DISubroutineType(types: !414)
!414 = !{!140, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!417 = !DISubprogram(name: "exception_ptr", scope: !399, file: !400, line: 97, type: !409, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!418 = !DISubprogram(name: "exception_ptr", scope: !399, file: !400, line: 99, type: !419, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !407, !421}
!421 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !416, size: 64)
!422 = !DISubprogram(name: "exception_ptr", scope: !399, file: !400, line: 102, type: !423, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !407, !425}
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !7, file: !22, line: 264, baseType: !426)
!426 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!427 = !DISubprogram(name: "exception_ptr", scope: !399, file: !400, line: 106, type: !428, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !407, !430}
!430 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !399, size: 64)
!431 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !399, file: !400, line: 119, type: !432, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!432 = !DISubroutineType(types: !433)
!433 = !{!434, !407, !421}
!434 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !399, size: 64)
!435 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !399, file: !400, line: 123, type: !436, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!436 = !DISubroutineType(types: !437)
!437 = !{!434, !407, !430}
!438 = !DISubprogram(name: "~exception_ptr", scope: !399, file: !400, line: 130, type: !409, scopeLine: 130, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!439 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !399, file: !400, line: 133, type: !440, scopeLine: 133, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !407, !434}
!442 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !399, file: !400, line: 145, type: !443, scopeLine: 145, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!443 = !DISubroutineType(types: !444)
!444 = !{!18, !415}
!445 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !399, file: !400, line: 154, type: !446, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!446 = !DISubroutineType(types: !447)
!447 = !{!448, !415}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!450 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !7, file: !451, line: 88, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!451 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/typeinfo", directory: "")
!452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !401, entity: !453, file: !400, line: 74)
!453 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !7, file: !400, line: 70, type: !454, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !399}
!456 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !457, entity: !458, file: !459, line: 58)
!457 = !DINamespace(name: "__gnu_debug", scope: null)
!458 = !DINamespace(name: "__debug", scope: !7)
!459 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/debug/debug.h", directory: "")
!460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !461, file: !464, line: 47)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !462, line: 24, baseType: !463)
!462 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "")
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !118, line: 37, baseType: !122)
!464 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdint", directory: "")
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !466, file: !464, line: 48)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !462, line: 25, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !118, line: 39, baseType: !468)
!468 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !470, file: !464, line: 49)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !462, line: 26, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !118, line: 41, baseType: !8)
!472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !473, file: !464, line: 50)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !462, line: 27, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !118, line: 44, baseType: !23)
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !476, file: !464, line: 52)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !477, line: 58, baseType: !122)
!477 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !479, file: !464, line: 53)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !477, line: 60, baseType: !23)
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !481, file: !464, line: 54)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !477, line: 61, baseType: !23)
!482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !483, file: !464, line: 55)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !477, line: 62, baseType: !23)
!484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !485, file: !464, line: 57)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !477, line: 43, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !118, line: 52, baseType: !463)
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !488, file: !464, line: 58)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !477, line: 44, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !118, line: 54, baseType: !467)
!490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !491, file: !464, line: 59)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !477, line: 45, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !118, line: 56, baseType: !471)
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !494, file: !464, line: 60)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !477, line: 46, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !118, line: 58, baseType: !474)
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !497, file: !464, line: 62)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !477, line: 101, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !118, line: 72, baseType: !23)
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !500, file: !464, line: 63)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !477, line: 87, baseType: !23)
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !502, file: !464, line: 65)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !503, line: 24, baseType: !504)
!503 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "")
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !118, line: 38, baseType: !24)
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !506, file: !464, line: 66)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !503, line: 25, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !118, line: 40, baseType: !120)
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !509, file: !464, line: 67)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !503, line: 26, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !118, line: 42, baseType: !71)
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !512, file: !464, line: 68)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !503, line: 27, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !118, line: 45, baseType: !144)
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !515, file: !464, line: 70)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !477, line: 71, baseType: !24)
!516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !517, file: !464, line: 71)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !477, line: 73, baseType: !144)
!518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !519, file: !464, line: 72)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !477, line: 74, baseType: !144)
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !521, file: !464, line: 73)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !477, line: 75, baseType: !144)
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !523, file: !464, line: 75)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !477, line: 49, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !118, line: 53, baseType: !504)
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !526, file: !464, line: 76)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !477, line: 50, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !118, line: 55, baseType: !507)
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !529, file: !464, line: 77)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !477, line: 51, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !118, line: 57, baseType: !510)
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !532, file: !464, line: 78)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !477, line: 52, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !118, line: 59, baseType: !513)
!534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !535, file: !464, line: 80)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !477, line: 102, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !118, line: 73, baseType: !144)
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !538, file: !464, line: 81)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !477, line: 90, baseType: !144)
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !540, file: !542, line: 53)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !541, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!541 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!542 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/clocale", directory: "")
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !544, file: !542, line: 54)
!544 = !DISubprogram(name: "setlocale", scope: !541, file: !541, line: 122, type: !545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!545 = !DISubroutineType(types: !546)
!546 = !{!98, !8, !190}
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !548, file: !542, line: 55)
!548 = !DISubprogram(name: "localeconv", scope: !541, file: !541, line: 125, type: !549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!549 = !DISubroutineType(types: !550)
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !553, file: !557, line: 64)
!553 = !DISubprogram(name: "isalnum", scope: !554, file: !554, line: 108, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!554 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!555 = !DISubroutineType(types: !556)
!556 = !{!8, !8}
!557 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cctype", directory: "")
!558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !559, file: !557, line: 65)
!559 = !DISubprogram(name: "isalpha", scope: !554, file: !554, line: 109, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !561, file: !557, line: 66)
!561 = !DISubprogram(name: "iscntrl", scope: !554, file: !554, line: 110, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !563, file: !557, line: 67)
!563 = !DISubprogram(name: "isdigit", scope: !554, file: !554, line: 111, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !565, file: !557, line: 68)
!565 = !DISubprogram(name: "isgraph", scope: !554, file: !554, line: 113, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !567, file: !557, line: 69)
!567 = !DISubprogram(name: "islower", scope: !554, file: !554, line: 112, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !569, file: !557, line: 70)
!569 = !DISubprogram(name: "isprint", scope: !554, file: !554, line: 114, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !571, file: !557, line: 71)
!571 = !DISubprogram(name: "ispunct", scope: !554, file: !554, line: 115, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !573, file: !557, line: 72)
!573 = !DISubprogram(name: "isspace", scope: !554, file: !554, line: 116, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !575, file: !557, line: 73)
!575 = !DISubprogram(name: "isupper", scope: !554, file: !554, line: 117, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !577, file: !557, line: 74)
!577 = !DISubprogram(name: "isxdigit", scope: !554, file: !554, line: 118, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !579, file: !557, line: 75)
!579 = !DISubprogram(name: "tolower", scope: !554, file: !554, line: 122, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !581, file: !557, line: 76)
!581 = !DISubprogram(name: "toupper", scope: !554, file: !554, line: 125, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !583, file: !557, line: 87)
!583 = !DISubprogram(name: "isblank", scope: !554, file: !554, line: 130, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !585, file: !587, line: 52)
!585 = !DISubprogram(name: "abs", scope: !586, file: !586, line: 840, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!586 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!587 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/std_abs.h", directory: "")
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !589, file: !591, line: 127)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !586, line: 62, baseType: !590)
!590 = !DICompositeType(tag: DW_TAG_structure_type, file: !586, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!591 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdlib", directory: "")
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !593, file: !591, line: 128)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !586, line: 70, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !586, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !595, identifier: "_ZTS6ldiv_t")
!595 = !{!596, !597}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !594, file: !586, line: 68, baseType: !23, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !594, file: !586, line: 69, baseType: !23, size: 64, offset: 64)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !599, file: !591, line: 130)
!599 = !DISubprogram(name: "abort", scope: !586, file: !586, line: 591, type: !600, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!600 = !DISubroutineType(types: !601)
!601 = !{null}
!602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !603, file: !591, line: 134)
!603 = !DISubprogram(name: "atexit", scope: !586, file: !586, line: 595, type: !604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!604 = !DISubroutineType(types: !605)
!605 = !{!8, !606}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !608, file: !591, line: 137)
!608 = !DISubprogram(name: "at_quick_exit", scope: !586, file: !586, line: 600, type: !604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !610, file: !591, line: 140)
!610 = !DISubprogram(name: "atof", scope: !611, file: !611, line: 25, type: !612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!611 = !DIFile(filename: "/usr/include/bits/stdlib-float.h", directory: "")
!612 = !DISubroutineType(types: !613)
!613 = !{!310, !190}
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !615, file: !591, line: 141)
!615 = !DISubprogram(name: "atoi", scope: !586, file: !586, line: 361, type: !616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!616 = !DISubroutineType(types: !617)
!617 = !{!8, !190}
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !619, file: !591, line: 142)
!619 = !DISubprogram(name: "atol", scope: !586, file: !586, line: 366, type: !620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!620 = !DISubroutineType(types: !621)
!621 = !{!23, !190}
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !623, file: !591, line: 143)
!623 = !DISubprogram(name: "bsearch", scope: !624, file: !624, line: 20, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!624 = !DIFile(filename: "/usr/include/bits/stdlib-bsearch.h", directory: "")
!625 = !DISubroutineType(types: !626)
!626 = !{!140, !627, !627, !142, !142, !629}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !586, line: 808, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!8, !627, !627}
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !634, file: !591, line: 144)
!634 = !DISubprogram(name: "calloc", scope: !586, file: !586, line: 542, type: !635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!635 = !DISubroutineType(types: !636)
!636 = !{!140, !142, !142}
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !638, file: !591, line: 145)
!638 = !DISubprogram(name: "div", scope: !586, file: !586, line: 852, type: !639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!639 = !DISubroutineType(types: !640)
!640 = !{!589, !8, !8}
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !642, file: !591, line: 146)
!642 = !DISubprogram(name: "exit", scope: !586, file: !586, line: 617, type: !643, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !8}
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !646, file: !591, line: 147)
!646 = !DISubprogram(name: "free", scope: !586, file: !586, line: 565, type: !647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !140}
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !650, file: !591, line: 148)
!650 = !DISubprogram(name: "getenv", scope: !586, file: !586, line: 634, type: !651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!651 = !DISubroutineType(types: !652)
!652 = !{!98, !190}
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !654, file: !591, line: 149)
!654 = !DISubprogram(name: "labs", scope: !586, file: !586, line: 841, type: !655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!655 = !DISubroutineType(types: !656)
!656 = !{!23, !23}
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !658, file: !591, line: 150)
!658 = !DISubprogram(name: "ldiv", scope: !586, file: !586, line: 854, type: !659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!659 = !DISubroutineType(types: !660)
!660 = !{!593, !23, !23}
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !662, file: !591, line: 151)
!662 = !DISubprogram(name: "malloc", scope: !586, file: !586, line: 539, type: !663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!663 = !DISubroutineType(types: !664)
!664 = !{!140, !142}
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !666, file: !591, line: 153)
!666 = !DISubprogram(name: "mblen", scope: !586, file: !586, line: 922, type: !667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!667 = !DISubroutineType(types: !668)
!668 = !{!8, !190, !142}
!669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !670, file: !591, line: 154)
!670 = !DISubprogram(name: "mbstowcs", scope: !586, file: !586, line: 933, type: !671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!671 = !DISubroutineType(types: !672)
!672 = !{!142, !156, !189, !142}
!673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !674, file: !591, line: 155)
!674 = !DISubprogram(name: "mbtowc", scope: !586, file: !586, line: 925, type: !675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!675 = !DISubroutineType(types: !676)
!676 = !{!8, !156, !189, !142}
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !678, file: !591, line: 157)
!678 = !DISubprogram(name: "qsort", scope: !586, file: !586, line: 830, type: !679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !140, !142, !142, !629}
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !682, file: !591, line: 160)
!682 = !DISubprogram(name: "quick_exit", scope: !586, file: !586, line: 623, type: !643, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !684, file: !591, line: 163)
!684 = !DISubprogram(name: "rand", scope: !586, file: !586, line: 453, type: !685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!685 = !DISubroutineType(types: !686)
!686 = !{!8}
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !688, file: !591, line: 164)
!688 = !DISubprogram(name: "realloc", scope: !586, file: !586, line: 550, type: !689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!689 = !DISubroutineType(types: !690)
!690 = !{!140, !140, !142}
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !692, file: !591, line: 165)
!692 = !DISubprogram(name: "srand", scope: !586, file: !586, line: 455, type: !693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !71}
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !696, file: !591, line: 166)
!696 = !DISubprogram(name: "strtod", scope: !586, file: !586, line: 117, type: !697, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!697 = !DISubroutineType(types: !698)
!698 = !{!310, !189, !699}
!699 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !702, file: !591, line: 167)
!702 = !DISubprogram(name: "strtol", scope: !586, file: !586, line: 176, type: !703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!703 = !DISubroutineType(types: !704)
!704 = !{!23, !189, !699, !8}
!705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !706, file: !591, line: 168)
!706 = !DISubprogram(name: "strtoul", scope: !586, file: !586, line: 180, type: !707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!707 = !DISubroutineType(types: !708)
!708 = !{!144, !189, !699, !8}
!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !710, file: !591, line: 169)
!710 = !DISubprogram(name: "system", scope: !586, file: !586, line: 784, type: !616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !712, file: !591, line: 171)
!712 = !DISubprogram(name: "wcstombs", scope: !586, file: !586, line: 937, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!713 = !DISubroutineType(types: !714)
!714 = !{!142, !259, !166, !142}
!715 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !716, file: !591, line: 172)
!716 = !DISubprogram(name: "wctomb", scope: !586, file: !586, line: 929, type: !717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!717 = !DISubroutineType(types: !718)
!718 = !{!8, !98, !155}
!719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !373, entity: !720, file: !591, line: 200)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !586, line: 80, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !586, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !722, identifier: "_ZTS7lldiv_t")
!722 = !{!723, !724}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !721, file: !586, line: 78, baseType: !382, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !721, file: !586, line: 79, baseType: !382, size: 64, offset: 64)
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !373, entity: !726, file: !591, line: 206)
!726 = !DISubprogram(name: "_Exit", scope: !586, file: !586, line: 629, type: !643, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !373, entity: !728, file: !591, line: 210)
!728 = !DISubprogram(name: "llabs", scope: !586, file: !586, line: 844, type: !729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!729 = !DISubroutineType(types: !730)
!730 = !{!382, !382}
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !373, entity: !732, file: !591, line: 216)
!732 = !DISubprogram(name: "lldiv", scope: !586, file: !586, line: 858, type: !733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!733 = !DISubroutineType(types: !734)
!734 = !{!720, !382, !382}
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !373, entity: !736, file: !591, line: 227)
!736 = !DISubprogram(name: "atoll", scope: !586, file: !586, line: 373, type: !737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!737 = !DISubroutineType(types: !738)
!738 = !{!382, !190}
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !373, entity: !740, file: !591, line: 228)
!740 = !DISubprogram(name: "strtoll", scope: !586, file: !586, line: 200, type: !741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!741 = !DISubroutineType(types: !742)
!742 = !{!382, !189, !699, !8}
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !373, entity: !744, file: !591, line: 229)
!744 = !DISubprogram(name: "strtoull", scope: !586, file: !586, line: 205, type: !745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!745 = !DISubroutineType(types: !746)
!746 = !{!387, !189, !699, !8}
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !373, entity: !748, file: !591, line: 231)
!748 = !DISubprogram(name: "strtof", scope: !586, file: !586, line: 123, type: !749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!749 = !DISubroutineType(types: !750)
!750 = !{!317, !189, !699}
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !373, entity: !752, file: !591, line: 232)
!752 = !DISubprogram(name: "strtold", scope: !586, file: !586, line: 126, type: !753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!753 = !DISubroutineType(types: !754)
!754 = !{!377, !189, !699}
!755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !720, file: !591, line: 240)
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !726, file: !591, line: 242)
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !728, file: !591, line: 244)
!758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !759, file: !591, line: 245)
!759 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !373, file: !591, line: 213, type: !733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !732, file: !591, line: 246)
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !736, file: !591, line: 248)
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !748, file: !591, line: 249)
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !740, file: !591, line: 250)
!764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !744, file: !591, line: 251)
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !752, file: !591, line: 252)
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !767, file: !769, line: 98)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !768, line: 7, baseType: !93)
!768 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!769 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cstdio", directory: "")
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !771, file: !769, line: 99)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !772, line: 84, baseType: !773)
!772 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !774, line: 14, baseType: !775)
!774 = !DIFile(filename: "/usr/include/bits/types/__fpos_t.h", directory: "")
!775 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !774, line: 10, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !777, file: !769, line: 101)
!777 = !DISubprogram(name: "clearerr", scope: !772, file: !772, line: 762, type: !778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !780}
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !782, file: !769, line: 102)
!782 = !DISubprogram(name: "fclose", scope: !772, file: !772, line: 213, type: !783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!783 = !DISubroutineType(types: !784)
!784 = !{!8, !780}
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !786, file: !769, line: 103)
!786 = !DISubprogram(name: "feof", scope: !772, file: !772, line: 764, type: !783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !788, file: !769, line: 104)
!788 = !DISubprogram(name: "ferror", scope: !772, file: !772, line: 766, type: !783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !790, file: !769, line: 105)
!790 = !DISubprogram(name: "fflush", scope: !772, file: !772, line: 218, type: !783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !792, file: !769, line: 106)
!792 = !DISubprogram(name: "fgetc", scope: !772, file: !772, line: 489, type: !783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !794, file: !769, line: 107)
!794 = !DISubprogram(name: "fgetpos", scope: !772, file: !772, line: 736, type: !795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!795 = !DISubroutineType(types: !796)
!796 = !{!8, !797, !798}
!797 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !780)
!798 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !799)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !801, file: !769, line: 108)
!801 = !DISubprogram(name: "fgets", scope: !772, file: !772, line: 568, type: !802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!802 = !DISubroutineType(types: !803)
!803 = !{!98, !259, !8, !797}
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !805, file: !769, line: 109)
!805 = !DISubprogram(name: "fopen", scope: !772, file: !772, line: 246, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!806 = !DISubroutineType(types: !807)
!807 = !{!780, !189, !189}
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !809, file: !769, line: 110)
!809 = !DISubprogram(name: "fprintf", scope: !772, file: !772, line: 326, type: !810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!810 = !DISubroutineType(types: !811)
!811 = !{!8, !797, !189, null}
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !813, file: !769, line: 111)
!813 = !DISubprogram(name: "fputc", scope: !772, file: !772, line: 525, type: !814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!814 = !DISubroutineType(types: !815)
!815 = !{!8, !8, !780}
!816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !817, file: !769, line: 112)
!817 = !DISubprogram(name: "fputs", scope: !772, file: !772, line: 631, type: !818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!818 = !DISubroutineType(types: !819)
!819 = !{!8, !189, !797}
!820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !821, file: !769, line: 113)
!821 = !DISubprogram(name: "fread", scope: !772, file: !772, line: 651, type: !822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!822 = !DISubroutineType(types: !823)
!823 = !{!142, !824, !142, !142, !797}
!824 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !140)
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !826, file: !769, line: 114)
!826 = !DISubprogram(name: "freopen", scope: !772, file: !772, line: 252, type: !827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!827 = !DISubroutineType(types: !828)
!828 = !{!780, !189, !189, !797}
!829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !830, file: !769, line: 115)
!830 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !772, file: !772, line: 410, type: !810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !832, file: !769, line: 116)
!832 = !DISubprogram(name: "fseek", scope: !772, file: !772, line: 689, type: !833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!833 = !DISubroutineType(types: !834)
!834 = !{!8, !780, !23, !8}
!835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !836, file: !769, line: 117)
!836 = !DISubprogram(name: "fsetpos", scope: !772, file: !772, line: 741, type: !837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!837 = !DISubroutineType(types: !838)
!838 = !{!8, !780, !839}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !842, file: !769, line: 118)
!842 = !DISubprogram(name: "ftell", scope: !772, file: !772, line: 694, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!843 = !DISubroutineType(types: !844)
!844 = !{!23, !780}
!845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !846, file: !769, line: 119)
!846 = !DISubprogram(name: "fwrite", scope: !772, file: !772, line: 657, type: !847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!847 = !DISubroutineType(types: !848)
!848 = !{!142, !849, !142, !142, !797}
!849 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !627)
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !851, file: !769, line: 120)
!851 = !DISubprogram(name: "getc", scope: !772, file: !772, line: 490, type: !783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !853, file: !769, line: 121)
!853 = !DISubprogram(name: "getchar", scope: !854, file: !854, line: 47, type: !685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!854 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!855 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !856, file: !769, line: 126)
!856 = !DISubprogram(name: "perror", scope: !772, file: !772, line: 780, type: !857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !190}
!859 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !860, file: !769, line: 127)
!860 = !DISubprogram(name: "printf", scope: !772, file: !772, line: 332, type: !861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!861 = !DISubroutineType(types: !862)
!862 = !{!8, !189, null}
!863 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !864, file: !769, line: 128)
!864 = !DISubprogram(name: "putc", scope: !772, file: !772, line: 526, type: !814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !866, file: !769, line: 129)
!866 = !DISubprogram(name: "putchar", scope: !854, file: !854, line: 82, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !868, file: !769, line: 130)
!868 = !DISubprogram(name: "puts", scope: !772, file: !772, line: 637, type: !616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !870, file: !769, line: 131)
!870 = !DISubprogram(name: "remove", scope: !772, file: !772, line: 146, type: !616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !872, file: !769, line: 132)
!872 = !DISubprogram(name: "rename", scope: !772, file: !772, line: 148, type: !873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!873 = !DISubroutineType(types: !874)
!874 = !{!8, !190, !190}
!875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !876, file: !769, line: 133)
!876 = !DISubprogram(name: "rewind", scope: !772, file: !772, line: 699, type: !778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!877 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !878, file: !769, line: 134)
!878 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !772, file: !772, line: 413, type: !861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !880, file: !769, line: 135)
!880 = !DISubprogram(name: "setbuf", scope: !772, file: !772, line: 304, type: !881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !797, !259}
!883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !884, file: !769, line: 136)
!884 = !DISubprogram(name: "setvbuf", scope: !772, file: !772, line: 308, type: !885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!885 = !DISubroutineType(types: !886)
!886 = !{!8, !797, !259, !8, !142}
!887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !888, file: !769, line: 137)
!888 = !DISubprogram(name: "sprintf", scope: !772, file: !772, line: 334, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!889 = !DISubroutineType(types: !890)
!890 = !{!8, !259, !189, null}
!891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !892, file: !769, line: 138)
!892 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !772, file: !772, line: 415, type: !893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!893 = !DISubroutineType(types: !894)
!894 = !{!8, !189, !189, null}
!895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !896, file: !769, line: 139)
!896 = !DISubprogram(name: "tmpfile", scope: !772, file: !772, line: 173, type: !897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!897 = !DISubroutineType(types: !898)
!898 = !{!780}
!899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !900, file: !769, line: 141)
!900 = !DISubprogram(name: "tmpnam", scope: !772, file: !772, line: 187, type: !901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!901 = !DISubroutineType(types: !902)
!902 = !{!98, !98}
!903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !904, file: !769, line: 143)
!904 = !DISubprogram(name: "ungetc", scope: !772, file: !772, line: 644, type: !814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !906, file: !769, line: 144)
!906 = !DISubprogram(name: "vfprintf", scope: !772, file: !772, line: 341, type: !907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!907 = !DISubroutineType(types: !908)
!908 = !{!8, !797, !189, !232}
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !910, file: !769, line: 145)
!910 = !DISubprogram(name: "vprintf", scope: !854, file: !854, line: 39, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!911 = !DISubroutineType(types: !912)
!912 = !{!8, !189, !232}
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !914, file: !769, line: 146)
!914 = !DISubprogram(name: "vsprintf", scope: !772, file: !772, line: 349, type: !915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!915 = !DISubroutineType(types: !916)
!916 = !{!8, !259, !189, !232}
!917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !373, entity: !918, file: !769, line: 175)
!918 = !DISubprogram(name: "snprintf", scope: !772, file: !772, line: 354, type: !919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!919 = !DISubroutineType(types: !920)
!920 = !{!8, !259, !142, !189, null}
!921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !373, entity: !922, file: !769, line: 176)
!922 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !772, file: !772, line: 455, type: !907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !373, entity: !924, file: !769, line: 177)
!924 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !772, file: !772, line: 460, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !373, entity: !926, file: !769, line: 178)
!926 = !DISubprogram(name: "vsnprintf", scope: !772, file: !772, line: 358, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!927 = !DISubroutineType(types: !928)
!928 = !{!8, !259, !142, !189, !232}
!929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !373, entity: !930, file: !769, line: 179)
!930 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !772, file: !772, line: 463, type: !931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!931 = !DISubroutineType(types: !932)
!932 = !{!8, !189, !189, !232}
!933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !918, file: !769, line: 185)
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !922, file: !769, line: 186)
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !924, file: !769, line: 187)
!936 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !926, file: !769, line: 188)
!937 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !930, file: !769, line: 189)
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !939, file: !943, line: 82)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !940, line: 48, baseType: !941)
!940 = !DIFile(filename: "/usr/include/wctype.h", directory: "")
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!943 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/cwctype", directory: "")
!944 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !945, file: !943, line: 83)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !946, line: 38, baseType: !144)
!946 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !79, file: !943, line: 84)
!948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !949, file: !943, line: 86)
!949 = !DISubprogram(name: "iswalnum", scope: !946, file: !946, line: 95, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!950 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !951, file: !943, line: 87)
!951 = !DISubprogram(name: "iswalpha", scope: !946, file: !946, line: 101, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !953, file: !943, line: 89)
!953 = !DISubprogram(name: "iswblank", scope: !946, file: !946, line: 146, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!954 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !955, file: !943, line: 91)
!955 = !DISubprogram(name: "iswcntrl", scope: !946, file: !946, line: 104, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!956 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !957, file: !943, line: 92)
!957 = !DISubprogram(name: "iswctype", scope: !946, file: !946, line: 159, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!958 = !DISubroutineType(types: !959)
!959 = !{!8, !79, !945}
!960 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !961, file: !943, line: 93)
!961 = !DISubprogram(name: "iswdigit", scope: !946, file: !946, line: 108, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!962 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !963, file: !943, line: 94)
!963 = !DISubprogram(name: "iswgraph", scope: !946, file: !946, line: 112, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!964 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !965, file: !943, line: 95)
!965 = !DISubprogram(name: "iswlower", scope: !946, file: !946, line: 117, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!966 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !967, file: !943, line: 96)
!967 = !DISubprogram(name: "iswprint", scope: !946, file: !946, line: 120, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!968 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !969, file: !943, line: 97)
!969 = !DISubprogram(name: "iswpunct", scope: !946, file: !946, line: 125, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!970 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !971, file: !943, line: 98)
!971 = !DISubprogram(name: "iswspace", scope: !946, file: !946, line: 130, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!972 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !973, file: !943, line: 99)
!973 = !DISubprogram(name: "iswupper", scope: !946, file: !946, line: 135, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!974 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !975, file: !943, line: 100)
!975 = !DISubprogram(name: "iswxdigit", scope: !946, file: !946, line: 140, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!976 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !977, file: !943, line: 101)
!977 = !DISubprogram(name: "towctrans", scope: !940, file: !940, line: 55, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!978 = !DISubroutineType(types: !979)
!979 = !{!79, !79, !939}
!980 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !981, file: !943, line: 102)
!981 = !DISubprogram(name: "towlower", scope: !946, file: !946, line: 166, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!982 = !DISubroutineType(types: !983)
!983 = !{!79, !79}
!984 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !985, file: !943, line: 103)
!985 = !DISubprogram(name: "towupper", scope: !946, file: !946, line: 169, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!986 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !987, file: !943, line: 104)
!987 = !DISubprogram(name: "wctrans", scope: !940, file: !940, line: 52, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!988 = !DISubroutineType(types: !989)
!989 = !{!939, !190}
!990 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !991, file: !943, line: 105)
!991 = !DISubprogram(name: "wctype", scope: !946, file: !946, line: 155, type: !992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!992 = !DISubroutineType(types: !993)
!993 = !{!945, !190}
!994 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !7, file: !3, line: 56)
!995 = !{i32 7, !"Dwarf Version", i32 4}
!996 = !{i32 2, !"Debug Info Version", i32 3}
!997 = !{i32 1, !"wchar_size", i32 4}
!998 = !{!"clang version 10.0.1 "}
!999 = distinct !DISubprogram(name: "foo", linkageName: "_Z3foov", scope: !3, file: !3, line: 70, type: !600, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1000)
!1000 = !{}
!1001 = !DILocation(line: 72, column: 13, scope: !999)
!1002 = !{!1003, !1003, i64 0}
!1003 = !{!"int", !1004, i64 0}
!1004 = !{!"omnipotent char", !1005, i64 0}
!1005 = !{!"Simple C++ TBAA"}
!1006 = !DILocation(line: 73, column: 14, scope: !999)
!1007 = !DILocation(line: 74, column: 1, scope: !999)
!1008 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 76, type: !685, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1000)
!1009 = !DILocation(line: 78, column: 3, scope: !1008)
!1010 = !{!1011, !1012, i64 16}
!1011 = !{!"_ZTS7ident_t", !1003, i64 0, !1003, i64 4, !1003, i64 8, !1003, i64 12, !1012, i64 16}
!1012 = !{!"any pointer", !1004, i64 0}
!1013 = !DILocation(line: 82, column: 3, scope: !1008)
!1014 = !DILocation(line: 83, column: 9, scope: !1008)
!1015 = !DILocation(line: 83, column: 7, scope: !1008)
!1016 = !DILocation(line: 83, column: 20, scope: !1008)
!1017 = !DILocation(line: 83, column: 28, scope: !1008)
!1018 = !DILocation(line: 83, column: 25, scope: !1008)
!1019 = !DILocation(line: 83, column: 39, scope: !1008)
!1020 = !DILocation(line: 84, column: 3, scope: !1008)
!1021 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 79, type: !1022, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1028)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{null, !1024, !1024}
!1024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1025)
!1025 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1026)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!1028 = !{!1029, !1030}
!1029 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !1021, type: !1024, flags: DIFlagArtificial)
!1030 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !1021, type: !1024, flags: DIFlagArtificial)
!1031 = !{!1012, !1012, i64 0}
!1032 = !DILocation(line: 0, scope: !1021)
!1033 = !DILocation(line: 80, column: 6, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 79, column: 3)
!1035 = !DILocation(line: 81, column: 3, scope: !1021)
!1036 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 79, type: !1022, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1037)
!1037 = !{!1038, !1039}
!1038 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !1036, type: !1024, flags: DIFlagArtificial)
!1039 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !1036, type: !1024, flags: DIFlagArtificial)
!1040 = !DILocation(line: 0, scope: !1036)
!1041 = !DILocation(line: 79, column: 3, scope: !1036)
!1042 = !{!1043}
!1043 = !{i64 2, i64 -1, i64 -1, i1 true}
!1044 = distinct !DISubprogram(name: "operator<<<std::char_traits<char> >", linkageName: "_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc", scope: !7, file: !1045, line: 606, type: !1046, scopeLine: 607, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1054, retainedNodes: !1051)
!1045 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/ostream", directory: "")
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!1048, !1048, !190}
!1048 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::char_traits<char> >", scope: !7, file: !1050, line: 359, flags: DIFlagFwdDecl)
!1050 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/ostream.tcc", directory: "")
!1051 = !{!1052, !1053}
!1052 = !DILocalVariable(name: "__out", arg: 1, scope: !1044, file: !1045, line: 606, type: !1048)
!1053 = !DILocalVariable(name: "__s", arg: 2, scope: !1044, file: !1045, line: 606, type: !190)
!1054 = !{!1055}
!1055 = !DITemplateTypeParameter(name: "_Traits", type: !1056)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !7, file: !1057, line: 309, size: 8, flags: DIFlagTypePassByValue, elements: !1058, templateParams: !1107, identifier: "_ZTSSt11char_traitsIcE")
!1057 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/char_traits.h", directory: "")
!1058 = !{!1059, !1066, !1069, !1070, !1075, !1078, !1081, !1085, !1086, !1089, !1095, !1098, !1101, !1104}
!1059 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignERcRKc", scope: !1056, file: !1057, line: 321, type: !1060, scopeLine: 321, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !1062, !1064}
!1062 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1056, file: !1057, line: 311, baseType: !74)
!1064 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1063)
!1066 = !DISubprogram(name: "eq", linkageName: "_ZNSt11char_traitsIcE2eqERKcS2_", scope: !1056, file: !1057, line: 325, type: !1067, scopeLine: 325, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!18, !1064, !1064}
!1069 = !DISubprogram(name: "lt", linkageName: "_ZNSt11char_traitsIcE2ltERKcS2_", scope: !1056, file: !1057, line: 329, type: !1067, scopeLine: 329, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1070 = !DISubprogram(name: "compare", linkageName: "_ZNSt11char_traitsIcE7compareEPKcS2_m", scope: !1056, file: !1057, line: 337, type: !1071, scopeLine: 337, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!8, !1073, !1073, !1074}
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !7, file: !22, line: 260, baseType: !144)
!1075 = !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !1056, file: !1057, line: 351, type: !1076, scopeLine: 351, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!1074, !1073}
!1078 = !DISubprogram(name: "find", linkageName: "_ZNSt11char_traitsIcE4findEPKcmRS1_", scope: !1056, file: !1057, line: 361, type: !1079, scopeLine: 361, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!1073, !1073, !1074, !1064}
!1081 = !DISubprogram(name: "move", linkageName: "_ZNSt11char_traitsIcE4moveEPcPKcm", scope: !1056, file: !1057, line: 375, type: !1082, scopeLine: 375, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!1084, !1084, !1073, !1074}
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1085 = !DISubprogram(name: "copy", linkageName: "_ZNSt11char_traitsIcE4copyEPcPKcm", scope: !1056, file: !1057, line: 387, type: !1082, scopeLine: 387, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1086 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignEPcmc", scope: !1056, file: !1057, line: 399, type: !1087, scopeLine: 399, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!1084, !1084, !1074, !1063}
!1089 = !DISubprogram(name: "to_char_type", linkageName: "_ZNSt11char_traitsIcE12to_char_typeERKi", scope: !1056, file: !1057, line: 411, type: !1090, scopeLine: 411, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!1063, !1092}
!1092 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1094)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !1056, file: !1057, line: 312, baseType: !8)
!1095 = !DISubprogram(name: "to_int_type", linkageName: "_ZNSt11char_traitsIcE11to_int_typeERKc", scope: !1056, file: !1057, line: 417, type: !1096, scopeLine: 417, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!1094, !1064}
!1098 = !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt11char_traitsIcE11eq_int_typeERKiS2_", scope: !1056, file: !1057, line: 421, type: !1099, scopeLine: 421, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!18, !1092, !1092}
!1101 = !DISubprogram(name: "eof", linkageName: "_ZNSt11char_traitsIcE3eofEv", scope: !1056, file: !1057, line: 425, type: !1102, scopeLine: 425, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!1094}
!1104 = !DISubprogram(name: "not_eof", linkageName: "_ZNSt11char_traitsIcE7not_eofERKi", scope: !1056, file: !1057, line: 429, type: !1105, scopeLine: 429, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!1094, !1092}
!1107 = !{!1108}
!1108 = !DITemplateTypeParameter(name: "_CharT", type: !74)
!1109 = !DILocation(line: 606, column: 46, scope: !1044)
!1110 = !DILocation(line: 606, column: 65, scope: !1044)
!1111 = !DILocation(line: 608, column: 12, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1044, file: !1045, line: 608, column: 11)
!1113 = !DILocation(line: 608, column: 11, scope: !1044)
!1114 = !DILocation(line: 609, column: 2, scope: !1112)
!1115 = !{!1116, !1116, i64 0}
!1116 = !{!"vtable pointer", !1005, i64 0}
!1117 = !DILocation(line: 609, column: 8, scope: !1112)
!1118 = !DILocation(line: 611, column: 19, scope: !1112)
!1119 = !DILocation(line: 611, column: 26, scope: !1112)
!1120 = !DILocation(line: 612, column: 45, scope: !1112)
!1121 = !DILocation(line: 612, column: 29, scope: !1112)
!1122 = !DILocation(line: 611, column: 2, scope: !1112)
!1123 = !DILocation(line: 613, column: 14, scope: !1044)
!1124 = !DILocation(line: 613, column: 7, scope: !1044)
!1125 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZNSolsEPFRSoS_E", scope: !1049, file: !1045, line: 108, type: !1126, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1134, retainedNodes: !1135)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!1128, !1130, !1131}
!1128 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ostream_type", scope: !1049, file: !1045, line: 71, baseType: !1049)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!1128, !1128}
!1134 = !DISubprogram(name: "operator<<", linkageName: "_ZNSolsEPFRSoS_E", scope: !1049, file: !1045, line: 108, type: !1126, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1135 = !{!1136, !1138}
!1136 = !DILocalVariable(name: "this", arg: 1, scope: !1125, type: !1137, flags: DIFlagArtificial | DIFlagObjectPointer)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1138 = !DILocalVariable(name: "__pf", arg: 2, scope: !1125, file: !1045, line: 108, type: !1131)
!1139 = !DILocation(line: 0, scope: !1125)
!1140 = !DILocation(line: 108, column: 36, scope: !1125)
!1141 = !DILocation(line: 113, column: 9, scope: !1125)
!1142 = !DILocation(line: 113, column: 2, scope: !1125)
!1143 = distinct !DISubprogram(name: "endl<char, std::char_traits<char> >", linkageName: "_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_", scope: !7, file: !1045, line: 681, type: !1144, scopeLine: 682, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1148, retainedNodes: !1146)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!1048, !1048}
!1146 = !{!1147}
!1147 = !DILocalVariable(name: "__os", arg: 1, scope: !1143, file: !1045, line: 681, type: !1048)
!1148 = !{!1108, !1055}
!1149 = !DILocation(line: 681, column: 42, scope: !1143)
!1150 = !DILocation(line: 682, column: 20, scope: !1143)
!1151 = !DILocation(line: 682, column: 29, scope: !1143)
!1152 = !DILocation(line: 682, column: 34, scope: !1143)
!1153 = !DILocation(line: 682, column: 25, scope: !1143)
!1154 = !DILocation(line: 682, column: 14, scope: !1143)
!1155 = !DILocation(line: 682, column: 7, scope: !1143)
!1156 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !29, file: !29, line: 74, type: !600, scopeLine: 74, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1000)
!1157 = !DILocation(line: 74, column: 25, scope: !1156)
!1158 = distinct !DISubprogram(name: "setstate", linkageName: "_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate", scope: !1160, file: !1159, line: 157, type: !1162, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1166, retainedNodes: !1167)
!1159 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/basic_ios.h", directory: "")
!1160 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ios<char, std::char_traits<char> >", scope: !7, file: !1161, line: 178, flags: DIFlagFwdDecl)
!1161 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/basic_ios.tcc", directory: "")
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !1164, !1165}
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "iostate", scope: !25, file: !6, line: 398, baseType: !5)
!1166 = !DISubprogram(name: "setstate", linkageName: "_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate", scope: !1160, file: !1159, line: 157, type: !1162, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1167 = !{!1168, !1170}
!1168 = !DILocalVariable(name: "this", arg: 1, scope: !1158, type: !1169, flags: DIFlagArtificial | DIFlagObjectPointer)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1170 = !DILocalVariable(name: "__state", arg: 2, scope: !1158, file: !1159, line: 157, type: !1165)
!1171 = !DILocation(line: 0, scope: !1158)
!1172 = !{!1173, !1173, i64 0}
!1173 = !{!"_ZTSSt12_Ios_Iostate", !1004, i64 0}
!1174 = !DILocation(line: 157, column: 24, scope: !1158)
!1175 = !DILocation(line: 158, column: 27, scope: !1158)
!1176 = !DILocation(line: 158, column: 39, scope: !1158)
!1177 = !DILocation(line: 158, column: 37, scope: !1158)
!1178 = !DILocation(line: 158, column: 15, scope: !1158)
!1179 = !DILocation(line: 158, column: 49, scope: !1158)
!1180 = distinct !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !1056, file: !1057, line: 351, type: !1076, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1075, retainedNodes: !1181)
!1181 = !{!1182}
!1182 = !DILocalVariable(name: "__s", arg: 1, scope: !1180, file: !1057, line: 351, type: !1073)
!1183 = !DILocation(line: 351, column: 31, scope: !1180)
!1184 = !DILocation(line: 357, column: 26, scope: !1180)
!1185 = !DILocation(line: 357, column: 9, scope: !1180)
!1186 = !DILocation(line: 357, column: 2, scope: !1180)
!1187 = distinct !DISubprogram(name: "operator|", linkageName: "_ZStorSt12_Ios_IostateS_", scope: !7, file: !6, line: 169, type: !1188, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1190)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!5, !5, !5}
!1190 = !{!1191, !1192}
!1191 = !DILocalVariable(name: "__a", arg: 1, scope: !1187, file: !6, line: 169, type: !5)
!1192 = !DILocalVariable(name: "__b", arg: 2, scope: !1187, file: !6, line: 169, type: !5)
!1193 = !DILocation(line: 169, column: 26, scope: !1187)
!1194 = !DILocation(line: 169, column: 44, scope: !1187)
!1195 = !DILocation(line: 170, column: 42, scope: !1187)
!1196 = !DILocation(line: 170, column: 66, scope: !1187)
!1197 = !DILocation(line: 170, column: 47, scope: !1187)
!1198 = !DILocation(line: 170, column: 5, scope: !1187)
!1199 = distinct !DISubprogram(name: "rdstate", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv", scope: !1160, file: !1159, line: 137, type: !1200, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1204, retainedNodes: !1205)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!1165, !1202}
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1160)
!1204 = !DISubprogram(name: "rdstate", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv", scope: !1160, file: !1159, line: 137, type: !1200, scopeLine: 137, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1205 = !{!1206}
!1206 = !DILocalVariable(name: "this", arg: 1, scope: !1199, type: !1207, flags: DIFlagArtificial | DIFlagObjectPointer)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1208 = !DILocation(line: 0, scope: !1199)
!1209 = !DILocation(line: 138, column: 16, scope: !1199)
!1210 = !{!1211, !1173, i64 32}
!1211 = !{!"_ZTSSt8ios_base", !1212, i64 8, !1212, i64 16, !1213, i64 24, !1173, i64 28, !1173, i64 32, !1012, i64 40, !1214, i64 48, !1004, i64 64, !1003, i64 192, !1012, i64 200, !1215, i64 208}
!1212 = !{!"long", !1004, i64 0}
!1213 = !{!"_ZTSSt13_Ios_Fmtflags", !1004, i64 0}
!1214 = !{!"_ZTSNSt8ios_base6_WordsE", !1012, i64 0, !1212, i64 8}
!1215 = !{!"_ZTSSt6locale", !1012, i64 0}
!1216 = !DILocation(line: 138, column: 9, scope: !1199)
!1217 = distinct !DISubprogram(name: "flush<char, std::char_traits<char> >", linkageName: "_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_", scope: !7, file: !1045, line: 703, type: !1144, scopeLine: 704, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1148, retainedNodes: !1218)
!1218 = !{!1219}
!1219 = !DILocalVariable(name: "__os", arg: 1, scope: !1217, file: !1045, line: 703, type: !1048)
!1220 = !DILocation(line: 703, column: 43, scope: !1217)
!1221 = !DILocation(line: 704, column: 14, scope: !1217)
!1222 = !DILocation(line: 704, column: 19, scope: !1217)
!1223 = !DILocation(line: 704, column: 7, scope: !1217)
!1224 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc", scope: !1160, file: !1159, line: 449, type: !1225, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1228, retainedNodes: !1229)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!1227, !1202, !74}
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1160, file: !1159, line: 76, baseType: !74)
!1228 = !DISubprogram(name: "widen", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc", scope: !1160, file: !1159, line: 449, type: !1225, scopeLine: 449, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1229 = !{!1230, !1231}
!1230 = !DILocalVariable(name: "this", arg: 1, scope: !1224, type: !1207, flags: DIFlagArtificial | DIFlagObjectPointer)
!1231 = !DILocalVariable(name: "__c", arg: 2, scope: !1224, file: !1159, line: 449, type: !74)
!1232 = !DILocation(line: 0, scope: !1224)
!1233 = !{!1004, !1004, i64 0}
!1234 = !DILocation(line: 449, column: 18, scope: !1224)
!1235 = !DILocation(line: 450, column: 30, scope: !1224)
!1236 = !{!1237, !1012, i64 240}
!1237 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !1012, i64 216, !1004, i64 224, !1238, i64 225, !1012, i64 232, !1012, i64 240, !1012, i64 248, !1012, i64 256}
!1238 = !{!"bool", !1004, i64 0}
!1239 = !DILocation(line: 450, column: 16, scope: !1224)
!1240 = !DILocation(line: 450, column: 46, scope: !1224)
!1241 = !DILocation(line: 450, column: 40, scope: !1224)
!1242 = !DILocation(line: 450, column: 9, scope: !1224)
!1243 = distinct !DISubprogram(name: "__check_facet<std::ctype<char> >", linkageName: "_ZSt13__check_facetISt5ctypeIcEERKT_PS3_", scope: !7, file: !1159, line: 47, type: !1244, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1253, retainedNodes: !1251)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!1246, !1250}
!1246 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1248)
!1248 = !DICompositeType(tag: DW_TAG_class_type, name: "ctype<char>", scope: !7, file: !1249, line: 681, flags: DIFlagFwdDecl, identifier: "_ZTSSt5ctypeIcE")
!1249 = !DIFile(filename: "/usr/lib64/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../include/c++/10.2.0/bits/locale_facets.h", directory: "")
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1251 = !{!1252}
!1252 = !DILocalVariable(name: "__f", arg: 1, scope: !1243, file: !1159, line: 47, type: !1250)
!1253 = !{!1254}
!1254 = !DITemplateTypeParameter(name: "_Facet", type: !1248)
!1255 = !DILocation(line: 47, column: 33, scope: !1243)
!1256 = !DILocation(line: 49, column: 12, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1243, file: !1159, line: 49, column: 11)
!1258 = !DILocation(line: 49, column: 11, scope: !1243)
!1259 = !DILocation(line: 50, column: 2, scope: !1257)
!1260 = !DILocation(line: 51, column: 15, scope: !1243)
!1261 = !DILocation(line: 51, column: 7, scope: !1243)
!1262 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt5ctypeIcE5widenEc", scope: !1248, file: !1249, line: 872, type: !1263, scopeLine: 873, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1267, retainedNodes: !1268)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!1265, !1266, !74}
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1248, file: !1249, line: 686, baseType: !74)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1267 = !DISubprogram(name: "widen", linkageName: "_ZNKSt5ctypeIcE5widenEc", scope: !1248, file: !1249, line: 872, type: !1263, scopeLine: 872, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1268 = !{!1269, !1270}
!1269 = !DILocalVariable(name: "this", arg: 1, scope: !1262, type: !1250, flags: DIFlagArtificial | DIFlagObjectPointer)
!1270 = !DILocalVariable(name: "__c", arg: 2, scope: !1262, file: !1249, line: 872, type: !74)
!1271 = !DILocation(line: 0, scope: !1262)
!1272 = !DILocation(line: 872, column: 18, scope: !1262)
!1273 = !DILocation(line: 874, column: 6, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1262, file: !1249, line: 874, column: 6)
!1275 = !{!1276, !1004, i64 56}
!1276 = !{!"_ZTSSt5ctypeIcE", !1012, i64 16, !1238, i64 24, !1012, i64 32, !1012, i64 40, !1012, i64 48, !1004, i64 56, !1004, i64 57, !1004, i64 313, !1004, i64 569}
!1277 = !DILocation(line: 874, column: 6, scope: !1262)
!1278 = !DILocation(line: 875, column: 11, scope: !1274)
!1279 = !DILocation(line: 875, column: 47, scope: !1274)
!1280 = !DILocation(line: 875, column: 4, scope: !1274)
!1281 = !DILocation(line: 876, column: 8, scope: !1262)
!1282 = !DILocation(line: 877, column: 24, scope: !1262)
!1283 = !DILocation(line: 877, column: 15, scope: !1262)
!1284 = !DILocation(line: 877, column: 2, scope: !1262)
!1285 = !DILocation(line: 878, column: 7, scope: !1262)
!1286 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_DRB086_static_data_member_orig_yes.cpp", scope: !3, file: !3, type: !1287, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1000)
!1287 = !DISubroutineType(types: !1000)
!1288 = !DILocation(line: 0, scope: !1286)
