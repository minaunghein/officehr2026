// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'salary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OtRateModel {

@JsonKey(name: '_id') String? get id; num get ot1rate; num get ot2rate; num get ot3rate;
/// Create a copy of OtRateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtRateModelCopyWith<OtRateModel> get copyWith => _$OtRateModelCopyWithImpl<OtRateModel>(this as OtRateModel, _$identity);

  /// Serializes this OtRateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtRateModel&&(identical(other.id, id) || other.id == id)&&(identical(other.ot1rate, ot1rate) || other.ot1rate == ot1rate)&&(identical(other.ot2rate, ot2rate) || other.ot2rate == ot2rate)&&(identical(other.ot3rate, ot3rate) || other.ot3rate == ot3rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ot1rate,ot2rate,ot3rate);

@override
String toString() {
  return 'OtRateModel(id: $id, ot1rate: $ot1rate, ot2rate: $ot2rate, ot3rate: $ot3rate)';
}


}

/// @nodoc
abstract mixin class $OtRateModelCopyWith<$Res>  {
  factory $OtRateModelCopyWith(OtRateModel value, $Res Function(OtRateModel) _then) = _$OtRateModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String? id, num ot1rate, num ot2rate, num ot3rate
});




}
/// @nodoc
class _$OtRateModelCopyWithImpl<$Res>
    implements $OtRateModelCopyWith<$Res> {
  _$OtRateModelCopyWithImpl(this._self, this._then);

  final OtRateModel _self;
  final $Res Function(OtRateModel) _then;

/// Create a copy of OtRateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? ot1rate = null,Object? ot2rate = null,Object? ot3rate = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,ot1rate: null == ot1rate ? _self.ot1rate : ot1rate // ignore: cast_nullable_to_non_nullable
as num,ot2rate: null == ot2rate ? _self.ot2rate : ot2rate // ignore: cast_nullable_to_non_nullable
as num,ot3rate: null == ot3rate ? _self.ot3rate : ot3rate // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

}


/// Adds pattern-matching-related methods to [OtRateModel].
extension OtRateModelPatterns on OtRateModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtRateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtRateModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtRateModel value)  $default,){
final _that = this;
switch (_that) {
case _OtRateModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtRateModel value)?  $default,){
final _that = this;
switch (_that) {
case _OtRateModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String? id,  num ot1rate,  num ot2rate,  num ot3rate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtRateModel() when $default != null:
return $default(_that.id,_that.ot1rate,_that.ot2rate,_that.ot3rate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String? id,  num ot1rate,  num ot2rate,  num ot3rate)  $default,) {final _that = this;
switch (_that) {
case _OtRateModel():
return $default(_that.id,_that.ot1rate,_that.ot2rate,_that.ot3rate);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String? id,  num ot1rate,  num ot2rate,  num ot3rate)?  $default,) {final _that = this;
switch (_that) {
case _OtRateModel() when $default != null:
return $default(_that.id,_that.ot1rate,_that.ot2rate,_that.ot3rate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OtRateModel implements OtRateModel {
  const _OtRateModel({@JsonKey(name: '_id') this.id, this.ot1rate = 0, this.ot2rate = 0, this.ot3rate = 0});
  factory _OtRateModel.fromJson(Map<String, dynamic> json) => _$OtRateModelFromJson(json);

@override@JsonKey(name: '_id') final  String? id;
@override@JsonKey() final  num ot1rate;
@override@JsonKey() final  num ot2rate;
@override@JsonKey() final  num ot3rate;

/// Create a copy of OtRateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtRateModelCopyWith<_OtRateModel> get copyWith => __$OtRateModelCopyWithImpl<_OtRateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OtRateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtRateModel&&(identical(other.id, id) || other.id == id)&&(identical(other.ot1rate, ot1rate) || other.ot1rate == ot1rate)&&(identical(other.ot2rate, ot2rate) || other.ot2rate == ot2rate)&&(identical(other.ot3rate, ot3rate) || other.ot3rate == ot3rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ot1rate,ot2rate,ot3rate);

@override
String toString() {
  return 'OtRateModel(id: $id, ot1rate: $ot1rate, ot2rate: $ot2rate, ot3rate: $ot3rate)';
}


}

/// @nodoc
abstract mixin class _$OtRateModelCopyWith<$Res> implements $OtRateModelCopyWith<$Res> {
  factory _$OtRateModelCopyWith(_OtRateModel value, $Res Function(_OtRateModel) _then) = __$OtRateModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String? id, num ot1rate, num ot2rate, num ot3rate
});




}
/// @nodoc
class __$OtRateModelCopyWithImpl<$Res>
    implements _$OtRateModelCopyWith<$Res> {
  __$OtRateModelCopyWithImpl(this._self, this._then);

  final _OtRateModel _self;
  final $Res Function(_OtRateModel) _then;

/// Create a copy of OtRateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? ot1rate = null,Object? ot2rate = null,Object? ot3rate = null,}) {
  return _then(_OtRateModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,ot1rate: null == ot1rate ? _self.ot1rate : ot1rate // ignore: cast_nullable_to_non_nullable
as num,ot2rate: null == ot2rate ? _self.ot2rate : ot2rate // ignore: cast_nullable_to_non_nullable
as num,ot3rate: null == ot3rate ? _self.ot3rate : ot3rate // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}


/// @nodoc
mixin _$SalaryModel {

@JsonKey(name: '_id') String get id; String get userid; String get company; num get salary; bool get ssb; OtRateModel? get otrate; num get otamount; bool get isotflat; List<dynamic> get tags; bool get deleted; dynamic get deletedAt; String? get createdAt; String? get updatedAt;@JsonKey(name: '__v') int? get version; int? get paymentcode; int? get paymentnum;
/// Create a copy of SalaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalaryModelCopyWith<SalaryModel> get copyWith => _$SalaryModelCopyWithImpl<SalaryModel>(this as SalaryModel, _$identity);

  /// Serializes this SalaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalaryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userid, userid) || other.userid == userid)&&(identical(other.company, company) || other.company == company)&&(identical(other.salary, salary) || other.salary == salary)&&(identical(other.ssb, ssb) || other.ssb == ssb)&&(identical(other.otrate, otrate) || other.otrate == otrate)&&(identical(other.otamount, otamount) || other.otamount == otamount)&&(identical(other.isotflat, isotflat) || other.isotflat == isotflat)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version)&&(identical(other.paymentcode, paymentcode) || other.paymentcode == paymentcode)&&(identical(other.paymentnum, paymentnum) || other.paymentnum == paymentnum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userid,company,salary,ssb,otrate,otamount,isotflat,const DeepCollectionEquality().hash(tags),deleted,const DeepCollectionEquality().hash(deletedAt),createdAt,updatedAt,version,paymentcode,paymentnum);

@override
String toString() {
  return 'SalaryModel(id: $id, userid: $userid, company: $company, salary: $salary, ssb: $ssb, otrate: $otrate, otamount: $otamount, isotflat: $isotflat, tags: $tags, deleted: $deleted, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, version: $version, paymentcode: $paymentcode, paymentnum: $paymentnum)';
}


}

/// @nodoc
abstract mixin class $SalaryModelCopyWith<$Res>  {
  factory $SalaryModelCopyWith(SalaryModel value, $Res Function(SalaryModel) _then) = _$SalaryModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String userid, String company, num salary, bool ssb, OtRateModel? otrate, num otamount, bool isotflat, List<dynamic> tags, bool deleted, dynamic deletedAt, String? createdAt, String? updatedAt,@JsonKey(name: '__v') int? version, int? paymentcode, int? paymentnum
});


$OtRateModelCopyWith<$Res>? get otrate;

}
/// @nodoc
class _$SalaryModelCopyWithImpl<$Res>
    implements $SalaryModelCopyWith<$Res> {
  _$SalaryModelCopyWithImpl(this._self, this._then);

  final SalaryModel _self;
  final $Res Function(SalaryModel) _then;

/// Create a copy of SalaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userid = null,Object? company = null,Object? salary = null,Object? ssb = null,Object? otrate = freezed,Object? otamount = null,Object? isotflat = null,Object? tags = null,Object? deleted = null,Object? deletedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,Object? paymentcode = freezed,Object? paymentnum = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userid: null == userid ? _self.userid : userid // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,salary: null == salary ? _self.salary : salary // ignore: cast_nullable_to_non_nullable
as num,ssb: null == ssb ? _self.ssb : ssb // ignore: cast_nullable_to_non_nullable
as bool,otrate: freezed == otrate ? _self.otrate : otrate // ignore: cast_nullable_to_non_nullable
as OtRateModel?,otamount: null == otamount ? _self.otamount : otamount // ignore: cast_nullable_to_non_nullable
as num,isotflat: null == isotflat ? _self.isotflat : isotflat // ignore: cast_nullable_to_non_nullable
as bool,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<dynamic>,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,paymentcode: freezed == paymentcode ? _self.paymentcode : paymentcode // ignore: cast_nullable_to_non_nullable
as int?,paymentnum: freezed == paymentnum ? _self.paymentnum : paymentnum // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of SalaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OtRateModelCopyWith<$Res>? get otrate {
    if (_self.otrate == null) {
    return null;
  }

  return $OtRateModelCopyWith<$Res>(_self.otrate!, (value) {
    return _then(_self.copyWith(otrate: value));
  });
}
}


/// Adds pattern-matching-related methods to [SalaryModel].
extension SalaryModelPatterns on SalaryModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalaryModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalaryModel value)  $default,){
final _that = this;
switch (_that) {
case _SalaryModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _SalaryModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String userid,  String company,  num salary,  bool ssb,  OtRateModel? otrate,  num otamount,  bool isotflat,  List<dynamic> tags,  bool deleted,  dynamic deletedAt,  String? createdAt,  String? updatedAt, @JsonKey(name: '__v')  int? version,  int? paymentcode,  int? paymentnum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalaryModel() when $default != null:
return $default(_that.id,_that.userid,_that.company,_that.salary,_that.ssb,_that.otrate,_that.otamount,_that.isotflat,_that.tags,_that.deleted,_that.deletedAt,_that.createdAt,_that.updatedAt,_that.version,_that.paymentcode,_that.paymentnum);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String userid,  String company,  num salary,  bool ssb,  OtRateModel? otrate,  num otamount,  bool isotflat,  List<dynamic> tags,  bool deleted,  dynamic deletedAt,  String? createdAt,  String? updatedAt, @JsonKey(name: '__v')  int? version,  int? paymentcode,  int? paymentnum)  $default,) {final _that = this;
switch (_that) {
case _SalaryModel():
return $default(_that.id,_that.userid,_that.company,_that.salary,_that.ssb,_that.otrate,_that.otamount,_that.isotflat,_that.tags,_that.deleted,_that.deletedAt,_that.createdAt,_that.updatedAt,_that.version,_that.paymentcode,_that.paymentnum);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String userid,  String company,  num salary,  bool ssb,  OtRateModel? otrate,  num otamount,  bool isotflat,  List<dynamic> tags,  bool deleted,  dynamic deletedAt,  String? createdAt,  String? updatedAt, @JsonKey(name: '__v')  int? version,  int? paymentcode,  int? paymentnum)?  $default,) {final _that = this;
switch (_that) {
case _SalaryModel() when $default != null:
return $default(_that.id,_that.userid,_that.company,_that.salary,_that.ssb,_that.otrate,_that.otamount,_that.isotflat,_that.tags,_that.deleted,_that.deletedAt,_that.createdAt,_that.updatedAt,_that.version,_that.paymentcode,_that.paymentnum);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SalaryModel implements SalaryModel {
  const _SalaryModel({@JsonKey(name: '_id') required this.id, required this.userid, required this.company, this.salary = 0, this.ssb = false, this.otrate, this.otamount = 0, this.isotflat = false, final  List<dynamic> tags = const [], this.deleted = false, this.deletedAt, this.createdAt, this.updatedAt, @JsonKey(name: '__v') this.version, this.paymentcode, this.paymentnum}): _tags = tags;
  factory _SalaryModel.fromJson(Map<String, dynamic> json) => _$SalaryModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String userid;
@override final  String company;
@override@JsonKey() final  num salary;
@override@JsonKey() final  bool ssb;
@override final  OtRateModel? otrate;
@override@JsonKey() final  num otamount;
@override@JsonKey() final  bool isotflat;
 final  List<dynamic> _tags;
@override@JsonKey() List<dynamic> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override@JsonKey() final  bool deleted;
@override final  dynamic deletedAt;
@override final  String? createdAt;
@override final  String? updatedAt;
@override@JsonKey(name: '__v') final  int? version;
@override final  int? paymentcode;
@override final  int? paymentnum;

/// Create a copy of SalaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalaryModelCopyWith<_SalaryModel> get copyWith => __$SalaryModelCopyWithImpl<_SalaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalaryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userid, userid) || other.userid == userid)&&(identical(other.company, company) || other.company == company)&&(identical(other.salary, salary) || other.salary == salary)&&(identical(other.ssb, ssb) || other.ssb == ssb)&&(identical(other.otrate, otrate) || other.otrate == otrate)&&(identical(other.otamount, otamount) || other.otamount == otamount)&&(identical(other.isotflat, isotflat) || other.isotflat == isotflat)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version)&&(identical(other.paymentcode, paymentcode) || other.paymentcode == paymentcode)&&(identical(other.paymentnum, paymentnum) || other.paymentnum == paymentnum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userid,company,salary,ssb,otrate,otamount,isotflat,const DeepCollectionEquality().hash(_tags),deleted,const DeepCollectionEquality().hash(deletedAt),createdAt,updatedAt,version,paymentcode,paymentnum);

@override
String toString() {
  return 'SalaryModel(id: $id, userid: $userid, company: $company, salary: $salary, ssb: $ssb, otrate: $otrate, otamount: $otamount, isotflat: $isotflat, tags: $tags, deleted: $deleted, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, version: $version, paymentcode: $paymentcode, paymentnum: $paymentnum)';
}


}

/// @nodoc
abstract mixin class _$SalaryModelCopyWith<$Res> implements $SalaryModelCopyWith<$Res> {
  factory _$SalaryModelCopyWith(_SalaryModel value, $Res Function(_SalaryModel) _then) = __$SalaryModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String userid, String company, num salary, bool ssb, OtRateModel? otrate, num otamount, bool isotflat, List<dynamic> tags, bool deleted, dynamic deletedAt, String? createdAt, String? updatedAt,@JsonKey(name: '__v') int? version, int? paymentcode, int? paymentnum
});


@override $OtRateModelCopyWith<$Res>? get otrate;

}
/// @nodoc
class __$SalaryModelCopyWithImpl<$Res>
    implements _$SalaryModelCopyWith<$Res> {
  __$SalaryModelCopyWithImpl(this._self, this._then);

  final _SalaryModel _self;
  final $Res Function(_SalaryModel) _then;

/// Create a copy of SalaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userid = null,Object? company = null,Object? salary = null,Object? ssb = null,Object? otrate = freezed,Object? otamount = null,Object? isotflat = null,Object? tags = null,Object? deleted = null,Object? deletedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,Object? paymentcode = freezed,Object? paymentnum = freezed,}) {
  return _then(_SalaryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userid: null == userid ? _self.userid : userid // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,salary: null == salary ? _self.salary : salary // ignore: cast_nullable_to_non_nullable
as num,ssb: null == ssb ? _self.ssb : ssb // ignore: cast_nullable_to_non_nullable
as bool,otrate: freezed == otrate ? _self.otrate : otrate // ignore: cast_nullable_to_non_nullable
as OtRateModel?,otamount: null == otamount ? _self.otamount : otamount // ignore: cast_nullable_to_non_nullable
as num,isotflat: null == isotflat ? _self.isotflat : isotflat // ignore: cast_nullable_to_non_nullable
as bool,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<dynamic>,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,paymentcode: freezed == paymentcode ? _self.paymentcode : paymentcode // ignore: cast_nullable_to_non_nullable
as int?,paymentnum: freezed == paymentnum ? _self.paymentnum : paymentnum // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of SalaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OtRateModelCopyWith<$Res>? get otrate {
    if (_self.otrate == null) {
    return null;
  }

  return $OtRateModelCopyWith<$Res>(_self.otrate!, (value) {
    return _then(_self.copyWith(otrate: value));
  });
}
}

// dart format on
