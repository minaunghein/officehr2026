// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_holiday.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PublicHoliday {

 String get id; String get companyId; String? get holidayDate; List<String> get holidayName; String? get remarks; List<dynamic> get tags;
/// Create a copy of PublicHoliday
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublicHolidayCopyWith<PublicHoliday> get copyWith => _$PublicHolidayCopyWithImpl<PublicHoliday>(this as PublicHoliday, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublicHoliday&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.holidayDate, holidayDate) || other.holidayDate == holidayDate)&&const DeepCollectionEquality().equals(other.holidayName, holidayName)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other.tags, tags));
}


@override
int get hashCode => Object.hash(runtimeType,id,companyId,holidayDate,const DeepCollectionEquality().hash(holidayName),remarks,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'PublicHoliday(id: $id, companyId: $companyId, holidayDate: $holidayDate, holidayName: $holidayName, remarks: $remarks, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $PublicHolidayCopyWith<$Res>  {
  factory $PublicHolidayCopyWith(PublicHoliday value, $Res Function(PublicHoliday) _then) = _$PublicHolidayCopyWithImpl;
@useResult
$Res call({
 String id, String companyId, String? holidayDate, List<String> holidayName, String? remarks, List<dynamic> tags
});




}
/// @nodoc
class _$PublicHolidayCopyWithImpl<$Res>
    implements $PublicHolidayCopyWith<$Res> {
  _$PublicHolidayCopyWithImpl(this._self, this._then);

  final PublicHoliday _self;
  final $Res Function(PublicHoliday) _then;

/// Create a copy of PublicHoliday
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? companyId = null,Object? holidayDate = freezed,Object? holidayName = null,Object? remarks = freezed,Object? tags = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,holidayDate: freezed == holidayDate ? _self.holidayDate : holidayDate // ignore: cast_nullable_to_non_nullable
as String?,holidayName: null == holidayName ? _self.holidayName : holidayName // ignore: cast_nullable_to_non_nullable
as List<String>,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [PublicHoliday].
extension PublicHolidayPatterns on PublicHoliday {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PublicHoliday value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PublicHoliday() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PublicHoliday value)  $default,){
final _that = this;
switch (_that) {
case _PublicHoliday():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PublicHoliday value)?  $default,){
final _that = this;
switch (_that) {
case _PublicHoliday() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String companyId,  String? holidayDate,  List<String> holidayName,  String? remarks,  List<dynamic> tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PublicHoliday() when $default != null:
return $default(_that.id,_that.companyId,_that.holidayDate,_that.holidayName,_that.remarks,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String companyId,  String? holidayDate,  List<String> holidayName,  String? remarks,  List<dynamic> tags)  $default,) {final _that = this;
switch (_that) {
case _PublicHoliday():
return $default(_that.id,_that.companyId,_that.holidayDate,_that.holidayName,_that.remarks,_that.tags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String companyId,  String? holidayDate,  List<String> holidayName,  String? remarks,  List<dynamic> tags)?  $default,) {final _that = this;
switch (_that) {
case _PublicHoliday() when $default != null:
return $default(_that.id,_that.companyId,_that.holidayDate,_that.holidayName,_that.remarks,_that.tags);case _:
  return null;

}
}

}

/// @nodoc


class _PublicHoliday implements PublicHoliday {
  const _PublicHoliday({required this.id, required this.companyId, this.holidayDate, final  List<String> holidayName = const [], this.remarks, final  List<dynamic> tags = const []}): _holidayName = holidayName,_tags = tags;
  

@override final  String id;
@override final  String companyId;
@override final  String? holidayDate;
 final  List<String> _holidayName;
@override@JsonKey() List<String> get holidayName {
  if (_holidayName is EqualUnmodifiableListView) return _holidayName;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_holidayName);
}

@override final  String? remarks;
 final  List<dynamic> _tags;
@override@JsonKey() List<dynamic> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


/// Create a copy of PublicHoliday
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublicHolidayCopyWith<_PublicHoliday> get copyWith => __$PublicHolidayCopyWithImpl<_PublicHoliday>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublicHoliday&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.holidayDate, holidayDate) || other.holidayDate == holidayDate)&&const DeepCollectionEquality().equals(other._holidayName, _holidayName)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other._tags, _tags));
}


@override
int get hashCode => Object.hash(runtimeType,id,companyId,holidayDate,const DeepCollectionEquality().hash(_holidayName),remarks,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'PublicHoliday(id: $id, companyId: $companyId, holidayDate: $holidayDate, holidayName: $holidayName, remarks: $remarks, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$PublicHolidayCopyWith<$Res> implements $PublicHolidayCopyWith<$Res> {
  factory _$PublicHolidayCopyWith(_PublicHoliday value, $Res Function(_PublicHoliday) _then) = __$PublicHolidayCopyWithImpl;
@override @useResult
$Res call({
 String id, String companyId, String? holidayDate, List<String> holidayName, String? remarks, List<dynamic> tags
});




}
/// @nodoc
class __$PublicHolidayCopyWithImpl<$Res>
    implements _$PublicHolidayCopyWith<$Res> {
  __$PublicHolidayCopyWithImpl(this._self, this._then);

  final _PublicHoliday _self;
  final $Res Function(_PublicHoliday) _then;

/// Create a copy of PublicHoliday
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? companyId = null,Object? holidayDate = freezed,Object? holidayName = null,Object? remarks = freezed,Object? tags = null,}) {
  return _then(_PublicHoliday(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,holidayDate: freezed == holidayDate ? _self.holidayDate : holidayDate // ignore: cast_nullable_to_non_nullable
as String?,holidayName: null == holidayName ? _self._holidayName : holidayName // ignore: cast_nullable_to_non_nullable
as List<String>,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}


}

// dart format on
