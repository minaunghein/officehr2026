// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shift_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShiftModel {

@JsonKey(name: '_id') String get id; String get company; String get shiftid; String get late1symbol; String get late2symbol; String get late3symbol; String get abssymbol; String get hdsymbol; String? get desc; String get unpaidsymbol; int get intervalmin; bool get nightshift; bool get isdefault; bool get otstartbase; List<WorkingDayModel> get workingdays; List<String> get tags; DateTime? get createdAt; DateTime? get updatedAt;@JsonKey(name: '__v') int? get version;
/// Create a copy of ShiftModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShiftModelCopyWith<ShiftModel> get copyWith => _$ShiftModelCopyWithImpl<ShiftModel>(this as ShiftModel, _$identity);

  /// Serializes this ShiftModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShiftModel&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.shiftid, shiftid) || other.shiftid == shiftid)&&(identical(other.late1symbol, late1symbol) || other.late1symbol == late1symbol)&&(identical(other.late2symbol, late2symbol) || other.late2symbol == late2symbol)&&(identical(other.late3symbol, late3symbol) || other.late3symbol == late3symbol)&&(identical(other.abssymbol, abssymbol) || other.abssymbol == abssymbol)&&(identical(other.hdsymbol, hdsymbol) || other.hdsymbol == hdsymbol)&&(identical(other.desc, desc) || other.desc == desc)&&(identical(other.unpaidsymbol, unpaidsymbol) || other.unpaidsymbol == unpaidsymbol)&&(identical(other.intervalmin, intervalmin) || other.intervalmin == intervalmin)&&(identical(other.nightshift, nightshift) || other.nightshift == nightshift)&&(identical(other.isdefault, isdefault) || other.isdefault == isdefault)&&(identical(other.otstartbase, otstartbase) || other.otstartbase == otstartbase)&&const DeepCollectionEquality().equals(other.workingdays, workingdays)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,company,shiftid,late1symbol,late2symbol,late3symbol,abssymbol,hdsymbol,desc,unpaidsymbol,intervalmin,nightshift,isdefault,otstartbase,const DeepCollectionEquality().hash(workingdays),const DeepCollectionEquality().hash(tags),createdAt,updatedAt,version]);

@override
String toString() {
  return 'ShiftModel(id: $id, company: $company, shiftid: $shiftid, late1symbol: $late1symbol, late2symbol: $late2symbol, late3symbol: $late3symbol, abssymbol: $abssymbol, hdsymbol: $hdsymbol, desc: $desc, unpaidsymbol: $unpaidsymbol, intervalmin: $intervalmin, nightshift: $nightshift, isdefault: $isdefault, otstartbase: $otstartbase, workingdays: $workingdays, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class $ShiftModelCopyWith<$Res>  {
  factory $ShiftModelCopyWith(ShiftModel value, $Res Function(ShiftModel) _then) = _$ShiftModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String company, String shiftid, String late1symbol, String late2symbol, String late3symbol, String abssymbol, String hdsymbol, String? desc, String unpaidsymbol, int intervalmin, bool nightshift, bool isdefault, bool otstartbase, List<WorkingDayModel> workingdays, List<String> tags, DateTime? createdAt, DateTime? updatedAt,@JsonKey(name: '__v') int? version
});




}
/// @nodoc
class _$ShiftModelCopyWithImpl<$Res>
    implements $ShiftModelCopyWith<$Res> {
  _$ShiftModelCopyWithImpl(this._self, this._then);

  final ShiftModel _self;
  final $Res Function(ShiftModel) _then;

/// Create a copy of ShiftModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? company = null,Object? shiftid = null,Object? late1symbol = null,Object? late2symbol = null,Object? late3symbol = null,Object? abssymbol = null,Object? hdsymbol = null,Object? desc = freezed,Object? unpaidsymbol = null,Object? intervalmin = null,Object? nightshift = null,Object? isdefault = null,Object? otstartbase = null,Object? workingdays = null,Object? tags = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,shiftid: null == shiftid ? _self.shiftid : shiftid // ignore: cast_nullable_to_non_nullable
as String,late1symbol: null == late1symbol ? _self.late1symbol : late1symbol // ignore: cast_nullable_to_non_nullable
as String,late2symbol: null == late2symbol ? _self.late2symbol : late2symbol // ignore: cast_nullable_to_non_nullable
as String,late3symbol: null == late3symbol ? _self.late3symbol : late3symbol // ignore: cast_nullable_to_non_nullable
as String,abssymbol: null == abssymbol ? _self.abssymbol : abssymbol // ignore: cast_nullable_to_non_nullable
as String,hdsymbol: null == hdsymbol ? _self.hdsymbol : hdsymbol // ignore: cast_nullable_to_non_nullable
as String,desc: freezed == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as String?,unpaidsymbol: null == unpaidsymbol ? _self.unpaidsymbol : unpaidsymbol // ignore: cast_nullable_to_non_nullable
as String,intervalmin: null == intervalmin ? _self.intervalmin : intervalmin // ignore: cast_nullable_to_non_nullable
as int,nightshift: null == nightshift ? _self.nightshift : nightshift // ignore: cast_nullable_to_non_nullable
as bool,isdefault: null == isdefault ? _self.isdefault : isdefault // ignore: cast_nullable_to_non_nullable
as bool,otstartbase: null == otstartbase ? _self.otstartbase : otstartbase // ignore: cast_nullable_to_non_nullable
as bool,workingdays: null == workingdays ? _self.workingdays : workingdays // ignore: cast_nullable_to_non_nullable
as List<WorkingDayModel>,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ShiftModel].
extension ShiftModelPatterns on ShiftModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShiftModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShiftModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShiftModel value)  $default,){
final _that = this;
switch (_that) {
case _ShiftModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShiftModel value)?  $default,){
final _that = this;
switch (_that) {
case _ShiftModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String company,  String shiftid,  String late1symbol,  String late2symbol,  String late3symbol,  String abssymbol,  String hdsymbol,  String? desc,  String unpaidsymbol,  int intervalmin,  bool nightshift,  bool isdefault,  bool otstartbase,  List<WorkingDayModel> workingdays,  List<String> tags,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShiftModel() when $default != null:
return $default(_that.id,_that.company,_that.shiftid,_that.late1symbol,_that.late2symbol,_that.late3symbol,_that.abssymbol,_that.hdsymbol,_that.desc,_that.unpaidsymbol,_that.intervalmin,_that.nightshift,_that.isdefault,_that.otstartbase,_that.workingdays,_that.tags,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String company,  String shiftid,  String late1symbol,  String late2symbol,  String late3symbol,  String abssymbol,  String hdsymbol,  String? desc,  String unpaidsymbol,  int intervalmin,  bool nightshift,  bool isdefault,  bool otstartbase,  List<WorkingDayModel> workingdays,  List<String> tags,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version)  $default,) {final _that = this;
switch (_that) {
case _ShiftModel():
return $default(_that.id,_that.company,_that.shiftid,_that.late1symbol,_that.late2symbol,_that.late3symbol,_that.abssymbol,_that.hdsymbol,_that.desc,_that.unpaidsymbol,_that.intervalmin,_that.nightshift,_that.isdefault,_that.otstartbase,_that.workingdays,_that.tags,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String company,  String shiftid,  String late1symbol,  String late2symbol,  String late3symbol,  String abssymbol,  String hdsymbol,  String? desc,  String unpaidsymbol,  int intervalmin,  bool nightshift,  bool isdefault,  bool otstartbase,  List<WorkingDayModel> workingdays,  List<String> tags,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version)?  $default,) {final _that = this;
switch (_that) {
case _ShiftModel() when $default != null:
return $default(_that.id,_that.company,_that.shiftid,_that.late1symbol,_that.late2symbol,_that.late3symbol,_that.abssymbol,_that.hdsymbol,_that.desc,_that.unpaidsymbol,_that.intervalmin,_that.nightshift,_that.isdefault,_that.otstartbase,_that.workingdays,_that.tags,_that.createdAt,_that.updatedAt,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShiftModel implements ShiftModel {
  const _ShiftModel({@JsonKey(name: '_id') required this.id, required this.company, required this.shiftid, required this.late1symbol, required this.late2symbol, required this.late3symbol, required this.abssymbol, required this.hdsymbol, this.desc, required this.unpaidsymbol, this.intervalmin = 15, this.nightshift = false, this.isdefault = false, this.otstartbase = false, final  List<WorkingDayModel> workingdays = const [], final  List<String> tags = const [], this.createdAt, this.updatedAt, @JsonKey(name: '__v') this.version}): _workingdays = workingdays,_tags = tags;
  factory _ShiftModel.fromJson(Map<String, dynamic> json) => _$ShiftModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String company;
@override final  String shiftid;
@override final  String late1symbol;
@override final  String late2symbol;
@override final  String late3symbol;
@override final  String abssymbol;
@override final  String hdsymbol;
@override final  String? desc;
@override final  String unpaidsymbol;
@override@JsonKey() final  int intervalmin;
@override@JsonKey() final  bool nightshift;
@override@JsonKey() final  bool isdefault;
@override@JsonKey() final  bool otstartbase;
 final  List<WorkingDayModel> _workingdays;
@override@JsonKey() List<WorkingDayModel> get workingdays {
  if (_workingdays is EqualUnmodifiableListView) return _workingdays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_workingdays);
}

 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override@JsonKey(name: '__v') final  int? version;

/// Create a copy of ShiftModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShiftModelCopyWith<_ShiftModel> get copyWith => __$ShiftModelCopyWithImpl<_ShiftModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShiftModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShiftModel&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.shiftid, shiftid) || other.shiftid == shiftid)&&(identical(other.late1symbol, late1symbol) || other.late1symbol == late1symbol)&&(identical(other.late2symbol, late2symbol) || other.late2symbol == late2symbol)&&(identical(other.late3symbol, late3symbol) || other.late3symbol == late3symbol)&&(identical(other.abssymbol, abssymbol) || other.abssymbol == abssymbol)&&(identical(other.hdsymbol, hdsymbol) || other.hdsymbol == hdsymbol)&&(identical(other.desc, desc) || other.desc == desc)&&(identical(other.unpaidsymbol, unpaidsymbol) || other.unpaidsymbol == unpaidsymbol)&&(identical(other.intervalmin, intervalmin) || other.intervalmin == intervalmin)&&(identical(other.nightshift, nightshift) || other.nightshift == nightshift)&&(identical(other.isdefault, isdefault) || other.isdefault == isdefault)&&(identical(other.otstartbase, otstartbase) || other.otstartbase == otstartbase)&&const DeepCollectionEquality().equals(other._workingdays, _workingdays)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,company,shiftid,late1symbol,late2symbol,late3symbol,abssymbol,hdsymbol,desc,unpaidsymbol,intervalmin,nightshift,isdefault,otstartbase,const DeepCollectionEquality().hash(_workingdays),const DeepCollectionEquality().hash(_tags),createdAt,updatedAt,version]);

@override
String toString() {
  return 'ShiftModel(id: $id, company: $company, shiftid: $shiftid, late1symbol: $late1symbol, late2symbol: $late2symbol, late3symbol: $late3symbol, abssymbol: $abssymbol, hdsymbol: $hdsymbol, desc: $desc, unpaidsymbol: $unpaidsymbol, intervalmin: $intervalmin, nightshift: $nightshift, isdefault: $isdefault, otstartbase: $otstartbase, workingdays: $workingdays, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class _$ShiftModelCopyWith<$Res> implements $ShiftModelCopyWith<$Res> {
  factory _$ShiftModelCopyWith(_ShiftModel value, $Res Function(_ShiftModel) _then) = __$ShiftModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String company, String shiftid, String late1symbol, String late2symbol, String late3symbol, String abssymbol, String hdsymbol, String? desc, String unpaidsymbol, int intervalmin, bool nightshift, bool isdefault, bool otstartbase, List<WorkingDayModel> workingdays, List<String> tags, DateTime? createdAt, DateTime? updatedAt,@JsonKey(name: '__v') int? version
});




}
/// @nodoc
class __$ShiftModelCopyWithImpl<$Res>
    implements _$ShiftModelCopyWith<$Res> {
  __$ShiftModelCopyWithImpl(this._self, this._then);

  final _ShiftModel _self;
  final $Res Function(_ShiftModel) _then;

/// Create a copy of ShiftModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? company = null,Object? shiftid = null,Object? late1symbol = null,Object? late2symbol = null,Object? late3symbol = null,Object? abssymbol = null,Object? hdsymbol = null,Object? desc = freezed,Object? unpaidsymbol = null,Object? intervalmin = null,Object? nightshift = null,Object? isdefault = null,Object? otstartbase = null,Object? workingdays = null,Object? tags = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,}) {
  return _then(_ShiftModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,shiftid: null == shiftid ? _self.shiftid : shiftid // ignore: cast_nullable_to_non_nullable
as String,late1symbol: null == late1symbol ? _self.late1symbol : late1symbol // ignore: cast_nullable_to_non_nullable
as String,late2symbol: null == late2symbol ? _self.late2symbol : late2symbol // ignore: cast_nullable_to_non_nullable
as String,late3symbol: null == late3symbol ? _self.late3symbol : late3symbol // ignore: cast_nullable_to_non_nullable
as String,abssymbol: null == abssymbol ? _self.abssymbol : abssymbol // ignore: cast_nullable_to_non_nullable
as String,hdsymbol: null == hdsymbol ? _self.hdsymbol : hdsymbol // ignore: cast_nullable_to_non_nullable
as String,desc: freezed == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as String?,unpaidsymbol: null == unpaidsymbol ? _self.unpaidsymbol : unpaidsymbol // ignore: cast_nullable_to_non_nullable
as String,intervalmin: null == intervalmin ? _self.intervalmin : intervalmin // ignore: cast_nullable_to_non_nullable
as int,nightshift: null == nightshift ? _self.nightshift : nightshift // ignore: cast_nullable_to_non_nullable
as bool,isdefault: null == isdefault ? _self.isdefault : isdefault // ignore: cast_nullable_to_non_nullable
as bool,otstartbase: null == otstartbase ? _self.otstartbase : otstartbase // ignore: cast_nullable_to_non_nullable
as bool,workingdays: null == workingdays ? _self._workingdays : workingdays // ignore: cast_nullable_to_non_nullable
as List<WorkingDayModel>,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
