// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactInfoModel {

@JsonKey(name: '_id') String get id; String get phone; String get officephone; String get perstate; String get pertownship; String get percity; List<String> get perstreetaddrs; String get currstate; String get currtownship; String get currcity; List<String> get currstreetaddrs;
/// Create a copy of ContactInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactInfoModelCopyWith<ContactInfoModel> get copyWith => _$ContactInfoModelCopyWithImpl<ContactInfoModel>(this as ContactInfoModel, _$identity);

  /// Serializes this ContactInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactInfoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.officephone, officephone) || other.officephone == officephone)&&(identical(other.perstate, perstate) || other.perstate == perstate)&&(identical(other.pertownship, pertownship) || other.pertownship == pertownship)&&(identical(other.percity, percity) || other.percity == percity)&&const DeepCollectionEquality().equals(other.perstreetaddrs, perstreetaddrs)&&(identical(other.currstate, currstate) || other.currstate == currstate)&&(identical(other.currtownship, currtownship) || other.currtownship == currtownship)&&(identical(other.currcity, currcity) || other.currcity == currcity)&&const DeepCollectionEquality().equals(other.currstreetaddrs, currstreetaddrs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,phone,officephone,perstate,pertownship,percity,const DeepCollectionEquality().hash(perstreetaddrs),currstate,currtownship,currcity,const DeepCollectionEquality().hash(currstreetaddrs));

@override
String toString() {
  return 'ContactInfoModel(id: $id, phone: $phone, officephone: $officephone, perstate: $perstate, pertownship: $pertownship, percity: $percity, perstreetaddrs: $perstreetaddrs, currstate: $currstate, currtownship: $currtownship, currcity: $currcity, currstreetaddrs: $currstreetaddrs)';
}


}

/// @nodoc
abstract mixin class $ContactInfoModelCopyWith<$Res>  {
  factory $ContactInfoModelCopyWith(ContactInfoModel value, $Res Function(ContactInfoModel) _then) = _$ContactInfoModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String phone, String officephone, String perstate, String pertownship, String percity, List<String> perstreetaddrs, String currstate, String currtownship, String currcity, List<String> currstreetaddrs
});




}
/// @nodoc
class _$ContactInfoModelCopyWithImpl<$Res>
    implements $ContactInfoModelCopyWith<$Res> {
  _$ContactInfoModelCopyWithImpl(this._self, this._then);

  final ContactInfoModel _self;
  final $Res Function(ContactInfoModel) _then;

/// Create a copy of ContactInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? phone = null,Object? officephone = null,Object? perstate = null,Object? pertownship = null,Object? percity = null,Object? perstreetaddrs = null,Object? currstate = null,Object? currtownship = null,Object? currcity = null,Object? currstreetaddrs = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,officephone: null == officephone ? _self.officephone : officephone // ignore: cast_nullable_to_non_nullable
as String,perstate: null == perstate ? _self.perstate : perstate // ignore: cast_nullable_to_non_nullable
as String,pertownship: null == pertownship ? _self.pertownship : pertownship // ignore: cast_nullable_to_non_nullable
as String,percity: null == percity ? _self.percity : percity // ignore: cast_nullable_to_non_nullable
as String,perstreetaddrs: null == perstreetaddrs ? _self.perstreetaddrs : perstreetaddrs // ignore: cast_nullable_to_non_nullable
as List<String>,currstate: null == currstate ? _self.currstate : currstate // ignore: cast_nullable_to_non_nullable
as String,currtownship: null == currtownship ? _self.currtownship : currtownship // ignore: cast_nullable_to_non_nullable
as String,currcity: null == currcity ? _self.currcity : currcity // ignore: cast_nullable_to_non_nullable
as String,currstreetaddrs: null == currstreetaddrs ? _self.currstreetaddrs : currstreetaddrs // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ContactInfoModel].
extension ContactInfoModelPatterns on ContactInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContactInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContactInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContactInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _ContactInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContactInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _ContactInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String phone,  String officephone,  String perstate,  String pertownship,  String percity,  List<String> perstreetaddrs,  String currstate,  String currtownship,  String currcity,  List<String> currstreetaddrs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContactInfoModel() when $default != null:
return $default(_that.id,_that.phone,_that.officephone,_that.perstate,_that.pertownship,_that.percity,_that.perstreetaddrs,_that.currstate,_that.currtownship,_that.currcity,_that.currstreetaddrs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String phone,  String officephone,  String perstate,  String pertownship,  String percity,  List<String> perstreetaddrs,  String currstate,  String currtownship,  String currcity,  List<String> currstreetaddrs)  $default,) {final _that = this;
switch (_that) {
case _ContactInfoModel():
return $default(_that.id,_that.phone,_that.officephone,_that.perstate,_that.pertownship,_that.percity,_that.perstreetaddrs,_that.currstate,_that.currtownship,_that.currcity,_that.currstreetaddrs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String phone,  String officephone,  String perstate,  String pertownship,  String percity,  List<String> perstreetaddrs,  String currstate,  String currtownship,  String currcity,  List<String> currstreetaddrs)?  $default,) {final _that = this;
switch (_that) {
case _ContactInfoModel() when $default != null:
return $default(_that.id,_that.phone,_that.officephone,_that.perstate,_that.pertownship,_that.percity,_that.perstreetaddrs,_that.currstate,_that.currtownship,_that.currcity,_that.currstreetaddrs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContactInfoModel implements ContactInfoModel {
  const _ContactInfoModel({@JsonKey(name: '_id') required this.id, required this.phone, required this.officephone, required this.perstate, required this.pertownship, required this.percity, required final  List<String> perstreetaddrs, required this.currstate, required this.currtownship, required this.currcity, required final  List<String> currstreetaddrs}): _perstreetaddrs = perstreetaddrs,_currstreetaddrs = currstreetaddrs;
  factory _ContactInfoModel.fromJson(Map<String, dynamic> json) => _$ContactInfoModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String phone;
@override final  String officephone;
@override final  String perstate;
@override final  String pertownship;
@override final  String percity;
 final  List<String> _perstreetaddrs;
@override List<String> get perstreetaddrs {
  if (_perstreetaddrs is EqualUnmodifiableListView) return _perstreetaddrs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_perstreetaddrs);
}

@override final  String currstate;
@override final  String currtownship;
@override final  String currcity;
 final  List<String> _currstreetaddrs;
@override List<String> get currstreetaddrs {
  if (_currstreetaddrs is EqualUnmodifiableListView) return _currstreetaddrs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currstreetaddrs);
}


/// Create a copy of ContactInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactInfoModelCopyWith<_ContactInfoModel> get copyWith => __$ContactInfoModelCopyWithImpl<_ContactInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContactInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContactInfoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.officephone, officephone) || other.officephone == officephone)&&(identical(other.perstate, perstate) || other.perstate == perstate)&&(identical(other.pertownship, pertownship) || other.pertownship == pertownship)&&(identical(other.percity, percity) || other.percity == percity)&&const DeepCollectionEquality().equals(other._perstreetaddrs, _perstreetaddrs)&&(identical(other.currstate, currstate) || other.currstate == currstate)&&(identical(other.currtownship, currtownship) || other.currtownship == currtownship)&&(identical(other.currcity, currcity) || other.currcity == currcity)&&const DeepCollectionEquality().equals(other._currstreetaddrs, _currstreetaddrs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,phone,officephone,perstate,pertownship,percity,const DeepCollectionEquality().hash(_perstreetaddrs),currstate,currtownship,currcity,const DeepCollectionEquality().hash(_currstreetaddrs));

@override
String toString() {
  return 'ContactInfoModel(id: $id, phone: $phone, officephone: $officephone, perstate: $perstate, pertownship: $pertownship, percity: $percity, perstreetaddrs: $perstreetaddrs, currstate: $currstate, currtownship: $currtownship, currcity: $currcity, currstreetaddrs: $currstreetaddrs)';
}


}

/// @nodoc
abstract mixin class _$ContactInfoModelCopyWith<$Res> implements $ContactInfoModelCopyWith<$Res> {
  factory _$ContactInfoModelCopyWith(_ContactInfoModel value, $Res Function(_ContactInfoModel) _then) = __$ContactInfoModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String phone, String officephone, String perstate, String pertownship, String percity, List<String> perstreetaddrs, String currstate, String currtownship, String currcity, List<String> currstreetaddrs
});




}
/// @nodoc
class __$ContactInfoModelCopyWithImpl<$Res>
    implements _$ContactInfoModelCopyWith<$Res> {
  __$ContactInfoModelCopyWithImpl(this._self, this._then);

  final _ContactInfoModel _self;
  final $Res Function(_ContactInfoModel) _then;

/// Create a copy of ContactInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? phone = null,Object? officephone = null,Object? perstate = null,Object? pertownship = null,Object? percity = null,Object? perstreetaddrs = null,Object? currstate = null,Object? currtownship = null,Object? currcity = null,Object? currstreetaddrs = null,}) {
  return _then(_ContactInfoModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,officephone: null == officephone ? _self.officephone : officephone // ignore: cast_nullable_to_non_nullable
as String,perstate: null == perstate ? _self.perstate : perstate // ignore: cast_nullable_to_non_nullable
as String,pertownship: null == pertownship ? _self.pertownship : pertownship // ignore: cast_nullable_to_non_nullable
as String,percity: null == percity ? _self.percity : percity // ignore: cast_nullable_to_non_nullable
as String,perstreetaddrs: null == perstreetaddrs ? _self._perstreetaddrs : perstreetaddrs // ignore: cast_nullable_to_non_nullable
as List<String>,currstate: null == currstate ? _self.currstate : currstate // ignore: cast_nullable_to_non_nullable
as String,currtownship: null == currtownship ? _self.currtownship : currtownship // ignore: cast_nullable_to_non_nullable
as String,currcity: null == currcity ? _self.currcity : currcity // ignore: cast_nullable_to_non_nullable
as String,currstreetaddrs: null == currstreetaddrs ? _self._currstreetaddrs : currstreetaddrs // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
