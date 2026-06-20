// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_leave_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserLeaveModel {

@JsonKey(name: '_id') String get id; String get company; String get userid; String get settingleaveid; List<String> get tags; bool get ispaid; bool get addtoall; String get leavetitle; int get contday; int get allowdaysyr; int get allowdayssixmonth; int get reqservicedays; int get reqworkingdays; int get leavetaken; int get validdaynextyear; int get yearid; bool get carrynextyear; bool get defaultfornoclockinout; bool get deleted; DateTime? get deletedAt; DateTime? get createdAt; DateTime? get updatedAt;@JsonKey(name: '__v') int? get version;
/// Create a copy of UserLeaveModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserLeaveModelCopyWith<UserLeaveModel> get copyWith => _$UserLeaveModelCopyWithImpl<UserLeaveModel>(this as UserLeaveModel, _$identity);

  /// Serializes this UserLeaveModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserLeaveModel&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.userid, userid) || other.userid == userid)&&(identical(other.settingleaveid, settingleaveid) || other.settingleaveid == settingleaveid)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.ispaid, ispaid) || other.ispaid == ispaid)&&(identical(other.addtoall, addtoall) || other.addtoall == addtoall)&&(identical(other.leavetitle, leavetitle) || other.leavetitle == leavetitle)&&(identical(other.contday, contday) || other.contday == contday)&&(identical(other.allowdaysyr, allowdaysyr) || other.allowdaysyr == allowdaysyr)&&(identical(other.allowdayssixmonth, allowdayssixmonth) || other.allowdayssixmonth == allowdayssixmonth)&&(identical(other.reqservicedays, reqservicedays) || other.reqservicedays == reqservicedays)&&(identical(other.reqworkingdays, reqworkingdays) || other.reqworkingdays == reqworkingdays)&&(identical(other.leavetaken, leavetaken) || other.leavetaken == leavetaken)&&(identical(other.validdaynextyear, validdaynextyear) || other.validdaynextyear == validdaynextyear)&&(identical(other.yearid, yearid) || other.yearid == yearid)&&(identical(other.carrynextyear, carrynextyear) || other.carrynextyear == carrynextyear)&&(identical(other.defaultfornoclockinout, defaultfornoclockinout) || other.defaultfornoclockinout == defaultfornoclockinout)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,company,userid,settingleaveid,const DeepCollectionEquality().hash(tags),ispaid,addtoall,leavetitle,contday,allowdaysyr,allowdayssixmonth,reqservicedays,reqworkingdays,leavetaken,validdaynextyear,yearid,carrynextyear,defaultfornoclockinout,deleted,deletedAt,createdAt,updatedAt,version]);

@override
String toString() {
  return 'UserLeaveModel(id: $id, company: $company, userid: $userid, settingleaveid: $settingleaveid, tags: $tags, ispaid: $ispaid, addtoall: $addtoall, leavetitle: $leavetitle, contday: $contday, allowdaysyr: $allowdaysyr, allowdayssixmonth: $allowdayssixmonth, reqservicedays: $reqservicedays, reqworkingdays: $reqworkingdays, leavetaken: $leavetaken, validdaynextyear: $validdaynextyear, yearid: $yearid, carrynextyear: $carrynextyear, defaultfornoclockinout: $defaultfornoclockinout, deleted: $deleted, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class $UserLeaveModelCopyWith<$Res>  {
  factory $UserLeaveModelCopyWith(UserLeaveModel value, $Res Function(UserLeaveModel) _then) = _$UserLeaveModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String company, String userid, String settingleaveid, List<String> tags, bool ispaid, bool addtoall, String leavetitle, int contday, int allowdaysyr, int allowdayssixmonth, int reqservicedays, int reqworkingdays, int leavetaken, int validdaynextyear, int yearid, bool carrynextyear, bool defaultfornoclockinout, bool deleted, DateTime? deletedAt, DateTime? createdAt, DateTime? updatedAt,@JsonKey(name: '__v') int? version
});




}
/// @nodoc
class _$UserLeaveModelCopyWithImpl<$Res>
    implements $UserLeaveModelCopyWith<$Res> {
  _$UserLeaveModelCopyWithImpl(this._self, this._then);

  final UserLeaveModel _self;
  final $Res Function(UserLeaveModel) _then;

/// Create a copy of UserLeaveModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? company = null,Object? userid = null,Object? settingleaveid = null,Object? tags = null,Object? ispaid = null,Object? addtoall = null,Object? leavetitle = null,Object? contday = null,Object? allowdaysyr = null,Object? allowdayssixmonth = null,Object? reqservicedays = null,Object? reqworkingdays = null,Object? leavetaken = null,Object? validdaynextyear = null,Object? yearid = null,Object? carrynextyear = null,Object? defaultfornoclockinout = null,Object? deleted = null,Object? deletedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,userid: null == userid ? _self.userid : userid // ignore: cast_nullable_to_non_nullable
as String,settingleaveid: null == settingleaveid ? _self.settingleaveid : settingleaveid // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,ispaid: null == ispaid ? _self.ispaid : ispaid // ignore: cast_nullable_to_non_nullable
as bool,addtoall: null == addtoall ? _self.addtoall : addtoall // ignore: cast_nullable_to_non_nullable
as bool,leavetitle: null == leavetitle ? _self.leavetitle : leavetitle // ignore: cast_nullable_to_non_nullable
as String,contday: null == contday ? _self.contday : contday // ignore: cast_nullable_to_non_nullable
as int,allowdaysyr: null == allowdaysyr ? _self.allowdaysyr : allowdaysyr // ignore: cast_nullable_to_non_nullable
as int,allowdayssixmonth: null == allowdayssixmonth ? _self.allowdayssixmonth : allowdayssixmonth // ignore: cast_nullable_to_non_nullable
as int,reqservicedays: null == reqservicedays ? _self.reqservicedays : reqservicedays // ignore: cast_nullable_to_non_nullable
as int,reqworkingdays: null == reqworkingdays ? _self.reqworkingdays : reqworkingdays // ignore: cast_nullable_to_non_nullable
as int,leavetaken: null == leavetaken ? _self.leavetaken : leavetaken // ignore: cast_nullable_to_non_nullable
as int,validdaynextyear: null == validdaynextyear ? _self.validdaynextyear : validdaynextyear // ignore: cast_nullable_to_non_nullable
as int,yearid: null == yearid ? _self.yearid : yearid // ignore: cast_nullable_to_non_nullable
as int,carrynextyear: null == carrynextyear ? _self.carrynextyear : carrynextyear // ignore: cast_nullable_to_non_nullable
as bool,defaultfornoclockinout: null == defaultfornoclockinout ? _self.defaultfornoclockinout : defaultfornoclockinout // ignore: cast_nullable_to_non_nullable
as bool,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserLeaveModel].
extension UserLeaveModelPatterns on UserLeaveModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserLeaveModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserLeaveModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserLeaveModel value)  $default,){
final _that = this;
switch (_that) {
case _UserLeaveModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserLeaveModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserLeaveModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String company,  String userid,  String settingleaveid,  List<String> tags,  bool ispaid,  bool addtoall,  String leavetitle,  int contday,  int allowdaysyr,  int allowdayssixmonth,  int reqservicedays,  int reqworkingdays,  int leavetaken,  int validdaynextyear,  int yearid,  bool carrynextyear,  bool defaultfornoclockinout,  bool deleted,  DateTime? deletedAt,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserLeaveModel() when $default != null:
return $default(_that.id,_that.company,_that.userid,_that.settingleaveid,_that.tags,_that.ispaid,_that.addtoall,_that.leavetitle,_that.contday,_that.allowdaysyr,_that.allowdayssixmonth,_that.reqservicedays,_that.reqworkingdays,_that.leavetaken,_that.validdaynextyear,_that.yearid,_that.carrynextyear,_that.defaultfornoclockinout,_that.deleted,_that.deletedAt,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String company,  String userid,  String settingleaveid,  List<String> tags,  bool ispaid,  bool addtoall,  String leavetitle,  int contday,  int allowdaysyr,  int allowdayssixmonth,  int reqservicedays,  int reqworkingdays,  int leavetaken,  int validdaynextyear,  int yearid,  bool carrynextyear,  bool defaultfornoclockinout,  bool deleted,  DateTime? deletedAt,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version)  $default,) {final _that = this;
switch (_that) {
case _UserLeaveModel():
return $default(_that.id,_that.company,_that.userid,_that.settingleaveid,_that.tags,_that.ispaid,_that.addtoall,_that.leavetitle,_that.contday,_that.allowdaysyr,_that.allowdayssixmonth,_that.reqservicedays,_that.reqworkingdays,_that.leavetaken,_that.validdaynextyear,_that.yearid,_that.carrynextyear,_that.defaultfornoclockinout,_that.deleted,_that.deletedAt,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String company,  String userid,  String settingleaveid,  List<String> tags,  bool ispaid,  bool addtoall,  String leavetitle,  int contday,  int allowdaysyr,  int allowdayssixmonth,  int reqservicedays,  int reqworkingdays,  int leavetaken,  int validdaynextyear,  int yearid,  bool carrynextyear,  bool defaultfornoclockinout,  bool deleted,  DateTime? deletedAt,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version)?  $default,) {final _that = this;
switch (_that) {
case _UserLeaveModel() when $default != null:
return $default(_that.id,_that.company,_that.userid,_that.settingleaveid,_that.tags,_that.ispaid,_that.addtoall,_that.leavetitle,_that.contday,_that.allowdaysyr,_that.allowdayssixmonth,_that.reqservicedays,_that.reqworkingdays,_that.leavetaken,_that.validdaynextyear,_that.yearid,_that.carrynextyear,_that.defaultfornoclockinout,_that.deleted,_that.deletedAt,_that.createdAt,_that.updatedAt,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserLeaveModel implements UserLeaveModel {
  const _UserLeaveModel({@JsonKey(name: '_id') required this.id, required this.company, required this.userid, required this.settingleaveid, final  List<String> tags = const [], this.ispaid = false, this.addtoall = false, required this.leavetitle, this.contday = 0, this.allowdaysyr = 0, this.allowdayssixmonth = 0, this.reqservicedays = 0, this.reqworkingdays = 0, this.leavetaken = 0, this.validdaynextyear = 0, required this.yearid, this.carrynextyear = false, this.defaultfornoclockinout = false, this.deleted = false, this.deletedAt, this.createdAt, this.updatedAt, @JsonKey(name: '__v') this.version}): _tags = tags;
  factory _UserLeaveModel.fromJson(Map<String, dynamic> json) => _$UserLeaveModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String company;
@override final  String userid;
@override final  String settingleaveid;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override@JsonKey() final  bool ispaid;
@override@JsonKey() final  bool addtoall;
@override final  String leavetitle;
@override@JsonKey() final  int contday;
@override@JsonKey() final  int allowdaysyr;
@override@JsonKey() final  int allowdayssixmonth;
@override@JsonKey() final  int reqservicedays;
@override@JsonKey() final  int reqworkingdays;
@override@JsonKey() final  int leavetaken;
@override@JsonKey() final  int validdaynextyear;
@override final  int yearid;
@override@JsonKey() final  bool carrynextyear;
@override@JsonKey() final  bool defaultfornoclockinout;
@override@JsonKey() final  bool deleted;
@override final  DateTime? deletedAt;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override@JsonKey(name: '__v') final  int? version;

/// Create a copy of UserLeaveModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserLeaveModelCopyWith<_UserLeaveModel> get copyWith => __$UserLeaveModelCopyWithImpl<_UserLeaveModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserLeaveModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserLeaveModel&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.userid, userid) || other.userid == userid)&&(identical(other.settingleaveid, settingleaveid) || other.settingleaveid == settingleaveid)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.ispaid, ispaid) || other.ispaid == ispaid)&&(identical(other.addtoall, addtoall) || other.addtoall == addtoall)&&(identical(other.leavetitle, leavetitle) || other.leavetitle == leavetitle)&&(identical(other.contday, contday) || other.contday == contday)&&(identical(other.allowdaysyr, allowdaysyr) || other.allowdaysyr == allowdaysyr)&&(identical(other.allowdayssixmonth, allowdayssixmonth) || other.allowdayssixmonth == allowdayssixmonth)&&(identical(other.reqservicedays, reqservicedays) || other.reqservicedays == reqservicedays)&&(identical(other.reqworkingdays, reqworkingdays) || other.reqworkingdays == reqworkingdays)&&(identical(other.leavetaken, leavetaken) || other.leavetaken == leavetaken)&&(identical(other.validdaynextyear, validdaynextyear) || other.validdaynextyear == validdaynextyear)&&(identical(other.yearid, yearid) || other.yearid == yearid)&&(identical(other.carrynextyear, carrynextyear) || other.carrynextyear == carrynextyear)&&(identical(other.defaultfornoclockinout, defaultfornoclockinout) || other.defaultfornoclockinout == defaultfornoclockinout)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,company,userid,settingleaveid,const DeepCollectionEquality().hash(_tags),ispaid,addtoall,leavetitle,contday,allowdaysyr,allowdayssixmonth,reqservicedays,reqworkingdays,leavetaken,validdaynextyear,yearid,carrynextyear,defaultfornoclockinout,deleted,deletedAt,createdAt,updatedAt,version]);

@override
String toString() {
  return 'UserLeaveModel(id: $id, company: $company, userid: $userid, settingleaveid: $settingleaveid, tags: $tags, ispaid: $ispaid, addtoall: $addtoall, leavetitle: $leavetitle, contday: $contday, allowdaysyr: $allowdaysyr, allowdayssixmonth: $allowdayssixmonth, reqservicedays: $reqservicedays, reqworkingdays: $reqworkingdays, leavetaken: $leavetaken, validdaynextyear: $validdaynextyear, yearid: $yearid, carrynextyear: $carrynextyear, defaultfornoclockinout: $defaultfornoclockinout, deleted: $deleted, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class _$UserLeaveModelCopyWith<$Res> implements $UserLeaveModelCopyWith<$Res> {
  factory _$UserLeaveModelCopyWith(_UserLeaveModel value, $Res Function(_UserLeaveModel) _then) = __$UserLeaveModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String company, String userid, String settingleaveid, List<String> tags, bool ispaid, bool addtoall, String leavetitle, int contday, int allowdaysyr, int allowdayssixmonth, int reqservicedays, int reqworkingdays, int leavetaken, int validdaynextyear, int yearid, bool carrynextyear, bool defaultfornoclockinout, bool deleted, DateTime? deletedAt, DateTime? createdAt, DateTime? updatedAt,@JsonKey(name: '__v') int? version
});




}
/// @nodoc
class __$UserLeaveModelCopyWithImpl<$Res>
    implements _$UserLeaveModelCopyWith<$Res> {
  __$UserLeaveModelCopyWithImpl(this._self, this._then);

  final _UserLeaveModel _self;
  final $Res Function(_UserLeaveModel) _then;

/// Create a copy of UserLeaveModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? company = null,Object? userid = null,Object? settingleaveid = null,Object? tags = null,Object? ispaid = null,Object? addtoall = null,Object? leavetitle = null,Object? contday = null,Object? allowdaysyr = null,Object? allowdayssixmonth = null,Object? reqservicedays = null,Object? reqworkingdays = null,Object? leavetaken = null,Object? validdaynextyear = null,Object? yearid = null,Object? carrynextyear = null,Object? defaultfornoclockinout = null,Object? deleted = null,Object? deletedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,}) {
  return _then(_UserLeaveModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,userid: null == userid ? _self.userid : userid // ignore: cast_nullable_to_non_nullable
as String,settingleaveid: null == settingleaveid ? _self.settingleaveid : settingleaveid // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,ispaid: null == ispaid ? _self.ispaid : ispaid // ignore: cast_nullable_to_non_nullable
as bool,addtoall: null == addtoall ? _self.addtoall : addtoall // ignore: cast_nullable_to_non_nullable
as bool,leavetitle: null == leavetitle ? _self.leavetitle : leavetitle // ignore: cast_nullable_to_non_nullable
as String,contday: null == contday ? _self.contday : contday // ignore: cast_nullable_to_non_nullable
as int,allowdaysyr: null == allowdaysyr ? _self.allowdaysyr : allowdaysyr // ignore: cast_nullable_to_non_nullable
as int,allowdayssixmonth: null == allowdayssixmonth ? _self.allowdayssixmonth : allowdayssixmonth // ignore: cast_nullable_to_non_nullable
as int,reqservicedays: null == reqservicedays ? _self.reqservicedays : reqservicedays // ignore: cast_nullable_to_non_nullable
as int,reqworkingdays: null == reqworkingdays ? _self.reqworkingdays : reqworkingdays // ignore: cast_nullable_to_non_nullable
as int,leavetaken: null == leavetaken ? _self.leavetaken : leavetaken // ignore: cast_nullable_to_non_nullable
as int,validdaynextyear: null == validdaynextyear ? _self.validdaynextyear : validdaynextyear // ignore: cast_nullable_to_non_nullable
as int,yearid: null == yearid ? _self.yearid : yearid // ignore: cast_nullable_to_non_nullable
as int,carrynextyear: null == carrynextyear ? _self.carrynextyear : carrynextyear // ignore: cast_nullable_to_non_nullable
as bool,defaultfornoclockinout: null == defaultfornoclockinout ? _self.defaultfornoclockinout : defaultfornoclockinout // ignore: cast_nullable_to_non_nullable
as bool,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
