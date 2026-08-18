// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shift.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Shift {

 String get id; String get title; String get code; String get type; String? get description; String get defaultStart; String get defaultEnd; List<ShiftDay> get days; String? get coreHoursStart; String? get coreHoursEnd; bool get isDefault; String get companyId; bool get isActive; bool get deleted; String? get deletedAt;
/// Create a copy of Shift
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShiftCopyWith<Shift> get copyWith => _$ShiftCopyWithImpl<Shift>(this as Shift, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Shift&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.code, code) || other.code == code)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.defaultStart, defaultStart) || other.defaultStart == defaultStart)&&(identical(other.defaultEnd, defaultEnd) || other.defaultEnd == defaultEnd)&&const DeepCollectionEquality().equals(other.days, days)&&(identical(other.coreHoursStart, coreHoursStart) || other.coreHoursStart == coreHoursStart)&&(identical(other.coreHoursEnd, coreHoursEnd) || other.coreHoursEnd == coreHoursEnd)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,code,type,description,defaultStart,defaultEnd,const DeepCollectionEquality().hash(days),coreHoursStart,coreHoursEnd,isDefault,companyId,isActive,deleted,deletedAt);

@override
String toString() {
  return 'Shift(id: $id, title: $title, code: $code, type: $type, description: $description, defaultStart: $defaultStart, defaultEnd: $defaultEnd, days: $days, coreHoursStart: $coreHoursStart, coreHoursEnd: $coreHoursEnd, isDefault: $isDefault, companyId: $companyId, isActive: $isActive, deleted: $deleted, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class $ShiftCopyWith<$Res>  {
  factory $ShiftCopyWith(Shift value, $Res Function(Shift) _then) = _$ShiftCopyWithImpl;
@useResult
$Res call({
 String id, String title, String code, String type, String? description, String defaultStart, String defaultEnd, List<ShiftDay> days, String? coreHoursStart, String? coreHoursEnd, bool isDefault, String companyId, bool isActive, bool deleted, String? deletedAt
});




}
/// @nodoc
class _$ShiftCopyWithImpl<$Res>
    implements $ShiftCopyWith<$Res> {
  _$ShiftCopyWithImpl(this._self, this._then);

  final Shift _self;
  final $Res Function(Shift) _then;

/// Create a copy of Shift
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? code = null,Object? type = null,Object? description = freezed,Object? defaultStart = null,Object? defaultEnd = null,Object? days = null,Object? coreHoursStart = freezed,Object? coreHoursEnd = freezed,Object? isDefault = null,Object? companyId = null,Object? isActive = null,Object? deleted = null,Object? deletedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,defaultStart: null == defaultStart ? _self.defaultStart : defaultStart // ignore: cast_nullable_to_non_nullable
as String,defaultEnd: null == defaultEnd ? _self.defaultEnd : defaultEnd // ignore: cast_nullable_to_non_nullable
as String,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as List<ShiftDay>,coreHoursStart: freezed == coreHoursStart ? _self.coreHoursStart : coreHoursStart // ignore: cast_nullable_to_non_nullable
as String?,coreHoursEnd: freezed == coreHoursEnd ? _self.coreHoursEnd : coreHoursEnd // ignore: cast_nullable_to_non_nullable
as String?,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Shift].
extension ShiftPatterns on Shift {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Shift value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Shift() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Shift value)  $default,){
final _that = this;
switch (_that) {
case _Shift():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Shift value)?  $default,){
final _that = this;
switch (_that) {
case _Shift() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String code,  String type,  String? description,  String defaultStart,  String defaultEnd,  List<ShiftDay> days,  String? coreHoursStart,  String? coreHoursEnd,  bool isDefault,  String companyId,  bool isActive,  bool deleted,  String? deletedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Shift() when $default != null:
return $default(_that.id,_that.title,_that.code,_that.type,_that.description,_that.defaultStart,_that.defaultEnd,_that.days,_that.coreHoursStart,_that.coreHoursEnd,_that.isDefault,_that.companyId,_that.isActive,_that.deleted,_that.deletedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String code,  String type,  String? description,  String defaultStart,  String defaultEnd,  List<ShiftDay> days,  String? coreHoursStart,  String? coreHoursEnd,  bool isDefault,  String companyId,  bool isActive,  bool deleted,  String? deletedAt)  $default,) {final _that = this;
switch (_that) {
case _Shift():
return $default(_that.id,_that.title,_that.code,_that.type,_that.description,_that.defaultStart,_that.defaultEnd,_that.days,_that.coreHoursStart,_that.coreHoursEnd,_that.isDefault,_that.companyId,_that.isActive,_that.deleted,_that.deletedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String code,  String type,  String? description,  String defaultStart,  String defaultEnd,  List<ShiftDay> days,  String? coreHoursStart,  String? coreHoursEnd,  bool isDefault,  String companyId,  bool isActive,  bool deleted,  String? deletedAt)?  $default,) {final _that = this;
switch (_that) {
case _Shift() when $default != null:
return $default(_that.id,_that.title,_that.code,_that.type,_that.description,_that.defaultStart,_that.defaultEnd,_that.days,_that.coreHoursStart,_that.coreHoursEnd,_that.isDefault,_that.companyId,_that.isActive,_that.deleted,_that.deletedAt);case _:
  return null;

}
}

}

/// @nodoc


class _Shift implements Shift {
  const _Shift({required this.id, required this.title, required this.code, required this.type, this.description, required this.defaultStart, required this.defaultEnd, required final  List<ShiftDay> days, this.coreHoursStart, this.coreHoursEnd, required this.isDefault, required this.companyId, required this.isActive, required this.deleted, this.deletedAt}): _days = days;
  

@override final  String id;
@override final  String title;
@override final  String code;
@override final  String type;
@override final  String? description;
@override final  String defaultStart;
@override final  String defaultEnd;
 final  List<ShiftDay> _days;
@override List<ShiftDay> get days {
  if (_days is EqualUnmodifiableListView) return _days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_days);
}

@override final  String? coreHoursStart;
@override final  String? coreHoursEnd;
@override final  bool isDefault;
@override final  String companyId;
@override final  bool isActive;
@override final  bool deleted;
@override final  String? deletedAt;

/// Create a copy of Shift
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShiftCopyWith<_Shift> get copyWith => __$ShiftCopyWithImpl<_Shift>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Shift&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.code, code) || other.code == code)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.defaultStart, defaultStart) || other.defaultStart == defaultStart)&&(identical(other.defaultEnd, defaultEnd) || other.defaultEnd == defaultEnd)&&const DeepCollectionEquality().equals(other._days, _days)&&(identical(other.coreHoursStart, coreHoursStart) || other.coreHoursStart == coreHoursStart)&&(identical(other.coreHoursEnd, coreHoursEnd) || other.coreHoursEnd == coreHoursEnd)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,code,type,description,defaultStart,defaultEnd,const DeepCollectionEquality().hash(_days),coreHoursStart,coreHoursEnd,isDefault,companyId,isActive,deleted,deletedAt);

@override
String toString() {
  return 'Shift(id: $id, title: $title, code: $code, type: $type, description: $description, defaultStart: $defaultStart, defaultEnd: $defaultEnd, days: $days, coreHoursStart: $coreHoursStart, coreHoursEnd: $coreHoursEnd, isDefault: $isDefault, companyId: $companyId, isActive: $isActive, deleted: $deleted, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class _$ShiftCopyWith<$Res> implements $ShiftCopyWith<$Res> {
  factory _$ShiftCopyWith(_Shift value, $Res Function(_Shift) _then) = __$ShiftCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String code, String type, String? description, String defaultStart, String defaultEnd, List<ShiftDay> days, String? coreHoursStart, String? coreHoursEnd, bool isDefault, String companyId, bool isActive, bool deleted, String? deletedAt
});




}
/// @nodoc
class __$ShiftCopyWithImpl<$Res>
    implements _$ShiftCopyWith<$Res> {
  __$ShiftCopyWithImpl(this._self, this._then);

  final _Shift _self;
  final $Res Function(_Shift) _then;

/// Create a copy of Shift
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? code = null,Object? type = null,Object? description = freezed,Object? defaultStart = null,Object? defaultEnd = null,Object? days = null,Object? coreHoursStart = freezed,Object? coreHoursEnd = freezed,Object? isDefault = null,Object? companyId = null,Object? isActive = null,Object? deleted = null,Object? deletedAt = freezed,}) {
  return _then(_Shift(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,defaultStart: null == defaultStart ? _self.defaultStart : defaultStart // ignore: cast_nullable_to_non_nullable
as String,defaultEnd: null == defaultEnd ? _self.defaultEnd : defaultEnd // ignore: cast_nullable_to_non_nullable
as String,days: null == days ? _self._days : days // ignore: cast_nullable_to_non_nullable
as List<ShiftDay>,coreHoursStart: freezed == coreHoursStart ? _self.coreHoursStart : coreHoursStart // ignore: cast_nullable_to_non_nullable
as String?,coreHoursEnd: freezed == coreHoursEnd ? _self.coreHoursEnd : coreHoursEnd // ignore: cast_nullable_to_non_nullable
as String?,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
