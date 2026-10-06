import 'package:office_hr/features/leave/domain/entities/uploaded_file.dart';
import 'package:office_hr/features/leave/domain/repositories/leave_repository.dart';

class UploadFileUsecase {
  final LeaveRepository _repository;

  UploadFileUsecase(this._repository);

  Future<UploadedFile> call({
    required String filePath,
    required String fileName,
  }) {
    return _repository.uploadFile(filePath: filePath, fileName: fileName);
  }
}
