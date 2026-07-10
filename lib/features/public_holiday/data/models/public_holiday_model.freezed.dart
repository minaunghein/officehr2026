// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_holiday_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PublicHolidayModel {

@JsonKey(name: '_id') String get id; String get company; String? get holidaydate; List<String> get holidayname; String? get remarks; List<dynamic> get tags;@JsonKey(name: '__v') int? get version;
/// Create a copy of PublicHolidayModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublicHolidayModelCopyWith<PublicHolidayModel> get copyWith => _$PublicHolidayModelCopyWithImpl<PublicHolidayModel>(this as PublicHolidayModel, _$identity);

  /// Serializes this PublicHolidayModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublicHolidayModel&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.holidaydate, holidaydate) || other.holidaydate == holidaydate)&&const DeepCollectionEquality().equals(other.holidayname, holidayname)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,company,holidaydate,const DeepCollectionEquality().hash(holidayname),remarks,const DeepCollectionEquality().hash(tags),version);

@override
String toString() {
  return 'PublicHolidayModel(id: $id, company: $company, holidaydate: $holidaydate, holidayname: $holidayname, remarks: $remarks, tags: $tags, version: $version)';
}


}

/// @nodoc
abstract mixin class $PublicHolidayModelCopyWith<$Res>  {
  factory $PublicHolidayModelCopyWith(PublicHolidayModel value, $Res Function(PublicHolidayModel) _then) = _$PublicHolidayModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String company, String? holidaydate, List<String> holidayname, String? remarks, List<dynamic> tags,@JsonKey(name: '__v') int? version
});




}
/// @nodoc
class _$PublicHolidayModelCopyWithImpl<$Res>
    implements $PublicHolidayModelCopyWith<$Res> {
  _$PublicHolidayModelCopyWithImpl(this._self, this._then);

  final PublicHolidayModel _self;
  final $Res Function(PublicHolidayModel) _then;

/// Create a copy of PublicHolidayModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? company = null,Object? holidaydate = freezed,Object? holidayname = null,Object? remarks = freezed,Object? tags = null,Object? version = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,holidaydate: freezed == holidaydate ? _self.holidaydate : holidaydate // ignore: cast_nullable_to_non_nullable
as String?,holidayname: null == holidayname ? _self.holidayname : holidayname // ignore: cast_nullable_to_non_nullable
as List<String>,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<dynamic>,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PublicHolidayModel].
extension PublicHolidayModelPatterns on PublicHolidayModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PublicHolidayModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PublicHolidayModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PublicHolidayModel value)  $default,){
final _that = this;
switch (_that) {
case _PublicHolidayModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PublicHolidayModel value)?  $default,){
final _that = this;
switch (_that) {
case _PublicHolidayModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String company,  String? holidaydate,  List<String> holidayname,  String? remarks,  List<dynamic> tags, @JsonKey(name: '__v')  int? version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PublicHolidayModel() when $default != null:
return $default(_that.id,_that.company,_that.holidaydate,_that.holidayname,_that.remarks,_that.tags,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String company,  String? holidaydate,  List<String> holidayname,  String? remarks,  List<dynamic> tags, @JsonKey(name: '__v')  int? version)  $default,) {final _that = this;
switch (_that) {
case _PublicHolidayModel():
return $default(_that.id,_that.company,_that.holidaydate,_that.holidayname,_that.remarks,_that.tags,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String company,  String? holidaydate,  List<String> holidayname,  String? remarks,  List<dynamic> tags, @JsonKey(name: '__v')  int? version)?  $default,) {final _that = this;
switch (_that) {
case _PublicHolidayModel() when $default != null:
return $default(_that.id,_that.company,_that.holidaydate,_that.holidayname,_that.remarks,_that.tags,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PublicHolidayModel implements PublicHolidayModel {
  const _PublicHolidayModel({@JsonKey(name: '_id') required this.id, required this.company, this.holidaydate, final  List<String> holidayname = const [], this.remarks, final  List<dynamic> tags = const [], @JsonKey(name: '__v') this.version}): _holidayname = holidayname,_tags = tags;
  factory _PublicHolidayModel.fromJson(Map<String, dynamic> json) => _$PublicHolidayModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String company;
@override final  String? holidaydate;
 final  List<String> _holidayname;
@override@JsonKey() List<String> get holidayname {
  if (_holidayname is EqualUnmodifiableListView) return _holidayname;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_holidayname);
}

@override final  String? remarks;
 final  List<dynamic> _tags;
@override@JsonKey() List<dynamic> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override@JsonKey(name: '__v') final  int? version;

/// Create a copy of PublicHolidayModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublicHolidayModelCopyWith<_PublicHolidayModel> get copyWith => __$PublicHolidayModelCopyWithImpl<_PublicHolidayModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PublicHolidayModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublicHolidayModel&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.holidaydate, holidaydate) || other.holidaydate == holidaydate)&&const DeepCollectionEquality().equals(other._holidayname, _holidayname)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,company,holidaydate,const DeepCollectionEquality().hash(_holidayname),remarks,const DeepCollectionEquality().hash(_tags),version);

@override
String toString() {
  return 'PublicHolidayModel(id: $id, company: $company, holidaydate: $holidaydate, holidayname: $holidayname, remarks: $remarks, tags: $tags, version: $version)';
}


}

/// @nodoc
abstract mixin class _$PublicHolidayModelCopyWith<$Res> implements $PublicHolidayModelCopyWith<$Res> {
  factory _$PublicHolidayModelCopyWith(_PublicHolidayModel value, $Res Function(_PublicHolidayModel) _then) = __$PublicHolidayModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String company, String? holidaydate, List<String> holidayname, String? remarks, List<dynamic> tags,@JsonKey(name: '__v') int? version
});




}
/// @nodoc
class __$PublicHolidayModelCopyWithImpl<$Res>
    implements _$PublicHolidayModelCopyWith<$Res> {
  __$PublicHolidayModelCopyWithImpl(this._self, this._then);

  final _PublicHolidayModel _self;
  final $Res Function(_PublicHolidayModel) _then;

/// Create a copy of PublicHolidayModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? company = null,Object? holidaydate = freezed,Object? holidayname = null,Object? remarks = freezed,Object? tags = null,Object? version = freezed,}) {
  return _then(_PublicHolidayModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,holidaydate: freezed == holidaydate ? _self.holidaydate : holidaydate // ignore: cast_nullable_to_non_nullable
as String?,holidayname: null == holidayname ? _self._holidayname : holidayname // ignore: cast_nullable_to_non_nullable
as List<String>,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<dynamic>,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
