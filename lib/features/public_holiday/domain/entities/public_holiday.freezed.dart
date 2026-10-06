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

 String get id; String get companyId; String get title; String get titleMm; String? get date; String get type; bool get isActive; bool get deleted;
/// Create a copy of PublicHoliday
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublicHolidayCopyWith<PublicHoliday> get copyWith => _$PublicHolidayCopyWithImpl<PublicHoliday>(this as PublicHoliday, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublicHoliday&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleMm, titleMm) || other.titleMm == titleMm)&&(identical(other.date, date) || other.date == date)&&(identical(other.type, type) || other.type == type)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,id,companyId,title,titleMm,date,type,isActive,deleted);

@override
String toString() {
  return 'PublicHoliday(id: $id, companyId: $companyId, title: $title, titleMm: $titleMm, date: $date, type: $type, isActive: $isActive, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $PublicHolidayCopyWith<$Res>  {
  factory $PublicHolidayCopyWith(PublicHoliday value, $Res Function(PublicHoliday) _then) = _$PublicHolidayCopyWithImpl;
@useResult
$Res call({
 String id, String companyId, String title, String titleMm, String? date, String type, bool isActive, bool deleted
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? companyId = null,Object? title = null,Object? titleMm = null,Object? date = freezed,Object? type = null,Object? isActive = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleMm: null == titleMm ? _self.titleMm : titleMm // ignore: cast_nullable_to_non_nullable
as String,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String companyId,  String title,  String titleMm,  String? date,  String type,  bool isActive,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PublicHoliday() when $default != null:
return $default(_that.id,_that.companyId,_that.title,_that.titleMm,_that.date,_that.type,_that.isActive,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String companyId,  String title,  String titleMm,  String? date,  String type,  bool isActive,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _PublicHoliday():
return $default(_that.id,_that.companyId,_that.title,_that.titleMm,_that.date,_that.type,_that.isActive,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String companyId,  String title,  String titleMm,  String? date,  String type,  bool isActive,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _PublicHoliday() when $default != null:
return $default(_that.id,_that.companyId,_that.title,_that.titleMm,_that.date,_that.type,_that.isActive,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _PublicHoliday extends PublicHoliday {
  const _PublicHoliday({required this.id, this.companyId = '', this.title = '', this.titleMm = '', this.date, this.type = '', this.isActive = true, this.deleted = false}): super._();
  

@override final  String id;
@override@JsonKey() final  String companyId;
@override@JsonKey() final  String title;
@override@JsonKey() final  String titleMm;
@override final  String? date;
@override@JsonKey() final  String type;
@override@JsonKey() final  bool isActive;
@override@JsonKey() final  bool deleted;

/// Create a copy of PublicHoliday
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublicHolidayCopyWith<_PublicHoliday> get copyWith => __$PublicHolidayCopyWithImpl<_PublicHoliday>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublicHoliday&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleMm, titleMm) || other.titleMm == titleMm)&&(identical(other.date, date) || other.date == date)&&(identical(other.type, type) || other.type == type)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,id,companyId,title,titleMm,date,type,isActive,deleted);

@override
String toString() {
  return 'PublicHoliday(id: $id, companyId: $companyId, title: $title, titleMm: $titleMm, date: $date, type: $type, isActive: $isActive, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$PublicHolidayCopyWith<$Res> implements $PublicHolidayCopyWith<$Res> {
  factory _$PublicHolidayCopyWith(_PublicHoliday value, $Res Function(_PublicHoliday) _then) = __$PublicHolidayCopyWithImpl;
@override @useResult
$Res call({
 String id, String companyId, String title, String titleMm, String? date, String type, bool isActive, bool deleted
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? companyId = null,Object? title = null,Object? titleMm = null,Object? date = freezed,Object? type = null,Object? isActive = null,Object? deleted = null,}) {
  return _then(_PublicHoliday(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleMm: null == titleMm ? _self.titleMm : titleMm // ignore: cast_nullable_to_non_nullable
as String,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
