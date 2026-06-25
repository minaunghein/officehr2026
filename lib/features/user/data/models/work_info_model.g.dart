// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkInfoModel _$WorkInfoModelFromJson(Map<String, dynamic> json) =>
    _WorkInfoModel(
      id: json['_id'] as String?,
      empcodeprefix: json['empcodeprefix'] as String?,
      empcode: (json['empcode'] as num?)?.toInt(),
      cardid: (json['cardid'] as num?)?.toInt(),
      grade: (json['grade'] as num?)?.toInt(),
      employmentdate: json['employmentdate'] as String?,
      probationenddate: json['probationenddate'] as String?,
      empstatus: (json['empstatus'] as num?)?.toInt(),
      resigned: json['resigned'] as bool?,
      resigneddate: json['resigneddate'] as String?,
      position: json['position'] == null
          ? null
          : PositionModel.fromJson(json['position'] as Map<String, dynamic>),
      department: json['department'] == null
          ? null
          : DepartmentModel.fromJson(
              json['department'] as Map<String, dynamic>,
            ),
      status: json['status'] as bool?,
      supervisorid: const SupervisorConverter().fromJson(json['supervisorid']),
      shift: const ShiftConverter().fromJson(json['shift']),
      branch: json['branch'] == null
          ? null
          : BranchModel.fromJson(json['branch'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WorkInfoModelToJson(_WorkInfoModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'empcodeprefix': instance.empcodeprefix,
      'empcode': instance.empcode,
      'cardid': instance.cardid,
      'grade': instance.grade,
      'employmentdate': instance.employmentdate,
      'probationenddate': instance.probationenddate,
      'empstatus': instance.empstatus,
      'resigned': instance.resigned,
      'resigneddate': instance.resigneddate,
      'position': instance.position,
      'department': instance.department,
      'status': instance.status,
      'supervisorid': const SupervisorConverter().toJson(instance.supervisorid),
      'shift': const ShiftConverter().toJson(instance.shift),
      'branch': instance.branch,
    };
