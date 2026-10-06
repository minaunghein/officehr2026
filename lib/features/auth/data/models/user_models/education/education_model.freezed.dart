// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EducationModel {

 String get school; String get degree; String get field;@JsonKey(name: 'start_date') String? get startDate;@JsonKey(name: 'end_date') String? get endDate; String get description;
/// Create a copy of EducationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EducationModelCopyWith<EducationModel> get copyWith => _$EducationModelCopyWithImpl<EducationModel>(this as EducationModel, _$identity);

  /// Serializes this EducationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EducationModel&&(identical(other.school, school) || other.school == school)&&(identical(other.degree, degree) || other.degree == degree)&&(identical(other.field, field) || other.field == field)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,school,degree,field,startDate,endDate,description);

@override
String toString() {
  return 'EducationModel(school: $school, degree: $degree, field: $field, startDate: $startDate, endDate: $endDate, description: $description)';
}


}

/// @nodoc
abstract mixin class $EducationModelCopyWith<$Res>  {
  factory $EducationModelCopyWith(EducationModel value, $Res Function(EducationModel) _then) = _$EducationModelCopyWithImpl;
@useResult
$Res call({
 String school, String degree, String field,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'end_date') String? endDate, String description
});




}
/// @nodoc
class _$EducationModelCopyWithImpl<$Res>
    implements $EducationModelCopyWith<$Res> {
  _$EducationModelCopyWithImpl(this._self, this._then);

  final EducationModel _self;
  final $Res Function(EducationModel) _then;

/// Create a copy of EducationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? school = null,Object? degree = null,Object? field = null,Object? startDate = freezed,Object? endDate = freezed,Object? description = null,}) {
  return _then(_self.copyWith(
school: null == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as String,degree: null == degree ? _self.degree : degree // ignore: cast_nullable_to_non_nullable
as String,field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EducationModel].
extension EducationModelPatterns on EducationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EducationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EducationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EducationModel value)  $default,){
final _that = this;
switch (_that) {
case _EducationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EducationModel value)?  $default,){
final _that = this;
switch (_that) {
case _EducationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String school,  String degree,  String field, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'end_date')  String? endDate,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EducationModel() when $default != null:
return $default(_that.school,_that.degree,_that.field,_that.startDate,_that.endDate,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String school,  String degree,  String field, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'end_date')  String? endDate,  String description)  $default,) {final _that = this;
switch (_that) {
case _EducationModel():
return $default(_that.school,_that.degree,_that.field,_that.startDate,_that.endDate,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String school,  String degree,  String field, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'end_date')  String? endDate,  String description)?  $default,) {final _that = this;
switch (_that) {
case _EducationModel() when $default != null:
return $default(_that.school,_that.degree,_that.field,_that.startDate,_that.endDate,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EducationModel extends EducationModel {
  const _EducationModel({this.school = '', this.degree = '', this.field = '', @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'end_date') this.endDate, this.description = ''}): super._();
  factory _EducationModel.fromJson(Map<String, dynamic> json) => _$EducationModelFromJson(json);

@override@JsonKey() final  String school;
@override@JsonKey() final  String degree;
@override@JsonKey() final  String field;
@override@JsonKey(name: 'start_date') final  String? startDate;
@override@JsonKey(name: 'end_date') final  String? endDate;
@override@JsonKey() final  String description;

/// Create a copy of EducationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EducationModelCopyWith<_EducationModel> get copyWith => __$EducationModelCopyWithImpl<_EducationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EducationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EducationModel&&(identical(other.school, school) || other.school == school)&&(identical(other.degree, degree) || other.degree == degree)&&(identical(other.field, field) || other.field == field)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,school,degree,field,startDate,endDate,description);

@override
String toString() {
  return 'EducationModel(school: $school, degree: $degree, field: $field, startDate: $startDate, endDate: $endDate, description: $description)';
}


}

/// @nodoc
abstract mixin class _$EducationModelCopyWith<$Res> implements $EducationModelCopyWith<$Res> {
  factory _$EducationModelCopyWith(_EducationModel value, $Res Function(_EducationModel) _then) = __$EducationModelCopyWithImpl;
@override @useResult
$Res call({
 String school, String degree, String field,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'end_date') String? endDate, String description
});




}
/// @nodoc
class __$EducationModelCopyWithImpl<$Res>
    implements _$EducationModelCopyWith<$Res> {
  __$EducationModelCopyWithImpl(this._self, this._then);

  final _EducationModel _self;
  final $Res Function(_EducationModel) _then;

/// Create a copy of EducationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? school = null,Object? degree = null,Object? field = null,Object? startDate = freezed,Object? endDate = freezed,Object? description = null,}) {
  return _then(_EducationModel(
school: null == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as String,degree: null == degree ? _self.degree : degree // ignore: cast_nullable_to_non_nullable
as String,field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
