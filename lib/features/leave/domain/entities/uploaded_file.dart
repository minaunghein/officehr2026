import 'package:freezed_annotation/freezed_annotation.dart';

part 'uploaded_file.freezed.dart';

@freezed
abstract class UploadedFile with _$UploadedFile {
  const UploadedFile._();

  const factory UploadedFile({
    required String id,
    @Default('') String fileName,
    @Default(0) int fileSize,
    @Default('') String fileType,
    @Default('') String mimeType,
    @Default('') String originalName,
    @Default('') String url,
  }) = _UploadedFile;

  String get readableSize {
    if (fileSize <= 0) return '0 KB';
    if (fileSize < 1024) return '$fileSize B';
    if (fileSize < 1024 * 1024) {
      return '${(fileSize / 1024).toStringAsFixed(1)} KB';
    }
    return '${(fileSize / (1024 * 1024)).toStringAsFixed(1)} MB';
  }
}
