import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/leave/presentation/providers/leave_providers.dart';

/// Uploads the captured punch photo via `/api/v1/files/upload` and returns
/// the file id to send as `img_id` with the clock in/out request.
Future<String> uploadClockPhoto(WidgetRef ref, String filePath) async {
  final fileName = filePath.split('/').last;
  final uploaded = await ref.read(uploadFileUsecaseProvider)(
    filePath: filePath,
    fileName: fileName,
  );
  return uploaded.id;
}
