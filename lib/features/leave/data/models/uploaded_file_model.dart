import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/leave/data/models/leave_json.dart';
import 'package:office_hr/features/leave/domain/entities/uploaded_file.dart';

part 'uploaded_file_model.freezed.dart';
part 'uploaded_file_model.g.dart';

@freezed
abstract class UploadedFileModel with _$UploadedFileModel {
  const UploadedFileModel._();

  const factory UploadedFileModel({
    @JsonKey(readValue: readMongoId) @Default('') String id,
    @JsonKey(name: 'file_name') @Default('') String fileName,
    @JsonKey(name: 'file_size') @Default(0) int fileSize,
    @JsonKey(name: 'file_type') @Default('') String fileType,
    @JsonKey(name: 'mime_type') @Default('') String mimeType,
    @JsonKey(name: 'original_name') @Default('') String originalName,
  }) = _UploadedFileModel;

  factory UploadedFileModel.fromJson(Map<String, dynamic> json) =>
      _$UploadedFileModelFromJson(json);

  UploadedFile toEntity(String fileUrl) => UploadedFile(
    id: id,
    fileName: fileName,
    fileSize: fileSize,
    fileType: fileType,
    mimeType: mimeType,
    originalName: originalName,
    url: fileUrl,
  );
}
