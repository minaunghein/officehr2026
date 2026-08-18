// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Employee {

 String get id; String get companyId; String get userId; BasicInfo get basicInfo; ContactInfo get contactInfo; FamilyInfo get familyInfo; WorkInfo get workInfo; bool get deleted; String? get deletedAt; List<dynamic> get education; List<dynamic> get workExperience; String? get createdAt; String? get updatedAt;
/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeCopyWith<Employee> get copyWith => _$EmployeeCopyWithImpl<Employee>(this as Employee, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Employee&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.basicInfo, basicInfo) || other.basicInfo == basicInfo)&&(identical(other.contactInfo, contactInfo) || other.contactInfo == contactInfo)&&(identical(other.familyInfo, familyInfo) || other.familyInfo == familyInfo)&&(identical(other.workInfo, workInfo) || other.workInfo == workInfo)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&const DeepCollectionEquality().equals(other.education, education)&&const DeepCollectionEquality().equals(other.workExperience, workExperience)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,companyId,userId,basicInfo,contactInfo,familyInfo,workInfo,deleted,deletedAt,const DeepCollectionEquality().hash(education),const DeepCollectionEquality().hash(workExperience),createdAt,updatedAt);

@override
String toString() {
  return 'Employee(id: $id, companyId: $companyId, userId: $userId, basicInfo: $basicInfo, contactInfo: $contactInfo, familyInfo: $familyInfo, workInfo: $workInfo, deleted: $deleted, deletedAt: $deletedAt, education: $education, workExperience: $workExperience, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $EmployeeCopyWith<$Res>  {
  factory $EmployeeCopyWith(Employee value, $Res Function(Employee) _then) = _$EmployeeCopyWithImpl;
@useResult
$Res call({
 String id, String companyId, String userId, BasicInfo basicInfo, ContactInfo contactInfo, FamilyInfo familyInfo, WorkInfo workInfo, bool deleted, String? deletedAt, List<dynamic> education, List<dynamic> workExperience, String? createdAt, String? updatedAt
});


$BasicInfoCopyWith<$Res> get basicInfo;$ContactInfoCopyWith<$Res> get contactInfo;$FamilyInfoCopyWith<$Res> get familyInfo;$WorkInfoCopyWith<$Res> get workInfo;

}
/// @nodoc
class _$EmployeeCopyWithImpl<$Res>
    implements $EmployeeCopyWith<$Res> {
  _$EmployeeCopyWithImpl(this._self, this._then);

  final Employee _self;
  final $Res Function(Employee) _then;

/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? companyId = null,Object? userId = null,Object? basicInfo = null,Object? contactInfo = null,Object? familyInfo = null,Object? workInfo = null,Object? deleted = null,Object? deletedAt = freezed,Object? education = null,Object? workExperience = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,basicInfo: null == basicInfo ? _self.basicInfo : basicInfo // ignore: cast_nullable_to_non_nullable
as BasicInfo,contactInfo: null == contactInfo ? _self.contactInfo : contactInfo // ignore: cast_nullable_to_non_nullable
as ContactInfo,familyInfo: null == familyInfo ? _self.familyInfo : familyInfo // ignore: cast_nullable_to_non_nullable
as FamilyInfo,workInfo: null == workInfo ? _self.workInfo : workInfo // ignore: cast_nullable_to_non_nullable
as WorkInfo,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,education: null == education ? _self.education : education // ignore: cast_nullable_to_non_nullable
as List<dynamic>,workExperience: null == workExperience ? _self.workExperience : workExperience // ignore: cast_nullable_to_non_nullable
as List<dynamic>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BasicInfoCopyWith<$Res> get basicInfo {
  
  return $BasicInfoCopyWith<$Res>(_self.basicInfo, (value) {
    return _then(_self.copyWith(basicInfo: value));
  });
}/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactInfoCopyWith<$Res> get contactInfo {
  
  return $ContactInfoCopyWith<$Res>(_self.contactInfo, (value) {
    return _then(_self.copyWith(contactInfo: value));
  });
}/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FamilyInfoCopyWith<$Res> get familyInfo {
  
  return $FamilyInfoCopyWith<$Res>(_self.familyInfo, (value) {
    return _then(_self.copyWith(familyInfo: value));
  });
}/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkInfoCopyWith<$Res> get workInfo {
  
  return $WorkInfoCopyWith<$Res>(_self.workInfo, (value) {
    return _then(_self.copyWith(workInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [Employee].
extension EmployeePatterns on Employee {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Employee value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Employee() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Employee value)  $default,){
final _that = this;
switch (_that) {
case _Employee():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Employee value)?  $default,){
final _that = this;
switch (_that) {
case _Employee() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String companyId,  String userId,  BasicInfo basicInfo,  ContactInfo contactInfo,  FamilyInfo familyInfo,  WorkInfo workInfo,  bool deleted,  String? deletedAt,  List<dynamic> education,  List<dynamic> workExperience,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Employee() when $default != null:
return $default(_that.id,_that.companyId,_that.userId,_that.basicInfo,_that.contactInfo,_that.familyInfo,_that.workInfo,_that.deleted,_that.deletedAt,_that.education,_that.workExperience,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String companyId,  String userId,  BasicInfo basicInfo,  ContactInfo contactInfo,  FamilyInfo familyInfo,  WorkInfo workInfo,  bool deleted,  String? deletedAt,  List<dynamic> education,  List<dynamic> workExperience,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Employee():
return $default(_that.id,_that.companyId,_that.userId,_that.basicInfo,_that.contactInfo,_that.familyInfo,_that.workInfo,_that.deleted,_that.deletedAt,_that.education,_that.workExperience,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String companyId,  String userId,  BasicInfo basicInfo,  ContactInfo contactInfo,  FamilyInfo familyInfo,  WorkInfo workInfo,  bool deleted,  String? deletedAt,  List<dynamic> education,  List<dynamic> workExperience,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Employee() when $default != null:
return $default(_that.id,_that.companyId,_that.userId,_that.basicInfo,_that.contactInfo,_that.familyInfo,_that.workInfo,_that.deleted,_that.deletedAt,_that.education,_that.workExperience,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _Employee implements Employee {
  const _Employee({required this.id, required this.companyId, required this.userId, required this.basicInfo, required this.contactInfo, required this.familyInfo, required this.workInfo, required this.deleted, this.deletedAt, required final  List<dynamic> education, required final  List<dynamic> workExperience, this.createdAt, this.updatedAt}): _education = education,_workExperience = workExperience;
  

@override final  String id;
@override final  String companyId;
@override final  String userId;
@override final  BasicInfo basicInfo;
@override final  ContactInfo contactInfo;
@override final  FamilyInfo familyInfo;
@override final  WorkInfo workInfo;
@override final  bool deleted;
@override final  String? deletedAt;
 final  List<dynamic> _education;
@override List<dynamic> get education {
  if (_education is EqualUnmodifiableListView) return _education;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_education);
}

 final  List<dynamic> _workExperience;
@override List<dynamic> get workExperience {
  if (_workExperience is EqualUnmodifiableListView) return _workExperience;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_workExperience);
}

@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeCopyWith<_Employee> get copyWith => __$EmployeeCopyWithImpl<_Employee>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Employee&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.basicInfo, basicInfo) || other.basicInfo == basicInfo)&&(identical(other.contactInfo, contactInfo) || other.contactInfo == contactInfo)&&(identical(other.familyInfo, familyInfo) || other.familyInfo == familyInfo)&&(identical(other.workInfo, workInfo) || other.workInfo == workInfo)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&const DeepCollectionEquality().equals(other._education, _education)&&const DeepCollectionEquality().equals(other._workExperience, _workExperience)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,companyId,userId,basicInfo,contactInfo,familyInfo,workInfo,deleted,deletedAt,const DeepCollectionEquality().hash(_education),const DeepCollectionEquality().hash(_workExperience),createdAt,updatedAt);

@override
String toString() {
  return 'Employee(id: $id, companyId: $companyId, userId: $userId, basicInfo: $basicInfo, contactInfo: $contactInfo, familyInfo: $familyInfo, workInfo: $workInfo, deleted: $deleted, deletedAt: $deletedAt, education: $education, workExperience: $workExperience, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$EmployeeCopyWith<$Res> implements $EmployeeCopyWith<$Res> {
  factory _$EmployeeCopyWith(_Employee value, $Res Function(_Employee) _then) = __$EmployeeCopyWithImpl;
@override @useResult
$Res call({
 String id, String companyId, String userId, BasicInfo basicInfo, ContactInfo contactInfo, FamilyInfo familyInfo, WorkInfo workInfo, bool deleted, String? deletedAt, List<dynamic> education, List<dynamic> workExperience, String? createdAt, String? updatedAt
});


@override $BasicInfoCopyWith<$Res> get basicInfo;@override $ContactInfoCopyWith<$Res> get contactInfo;@override $FamilyInfoCopyWith<$Res> get familyInfo;@override $WorkInfoCopyWith<$Res> get workInfo;

}
/// @nodoc
class __$EmployeeCopyWithImpl<$Res>
    implements _$EmployeeCopyWith<$Res> {
  __$EmployeeCopyWithImpl(this._self, this._then);

  final _Employee _self;
  final $Res Function(_Employee) _then;

/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? companyId = null,Object? userId = null,Object? basicInfo = null,Object? contactInfo = null,Object? familyInfo = null,Object? workInfo = null,Object? deleted = null,Object? deletedAt = freezed,Object? education = null,Object? workExperience = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Employee(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,basicInfo: null == basicInfo ? _self.basicInfo : basicInfo // ignore: cast_nullable_to_non_nullable
as BasicInfo,contactInfo: null == contactInfo ? _self.contactInfo : contactInfo // ignore: cast_nullable_to_non_nullable
as ContactInfo,familyInfo: null == familyInfo ? _self.familyInfo : familyInfo // ignore: cast_nullable_to_non_nullable
as FamilyInfo,workInfo: null == workInfo ? _self.workInfo : workInfo // ignore: cast_nullable_to_non_nullable
as WorkInfo,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,education: null == education ? _self._education : education // ignore: cast_nullable_to_non_nullable
as List<dynamic>,workExperience: null == workExperience ? _self._workExperience : workExperience // ignore: cast_nullable_to_non_nullable
as List<dynamic>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BasicInfoCopyWith<$Res> get basicInfo {
  
  return $BasicInfoCopyWith<$Res>(_self.basicInfo, (value) {
    return _then(_self.copyWith(basicInfo: value));
  });
}/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactInfoCopyWith<$Res> get contactInfo {
  
  return $ContactInfoCopyWith<$Res>(_self.contactInfo, (value) {
    return _then(_self.copyWith(contactInfo: value));
  });
}/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FamilyInfoCopyWith<$Res> get familyInfo {
  
  return $FamilyInfoCopyWith<$Res>(_self.familyInfo, (value) {
    return _then(_self.copyWith(familyInfo: value));
  });
}/// Create a copy of Employee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkInfoCopyWith<$Res> get workInfo {
  
  return $WorkInfoCopyWith<$Res>(_self.workInfo, (value) {
    return _then(_self.copyWith(workInfo: value));
  });
}
}

// dart format on
