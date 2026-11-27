import 'package:office_hr/features/announcement/domain/entities/announcement.dart';
import 'package:office_hr/features/announcement/domain/repositories/announcement_repository.dart';

class GetAnnouncementsUsecase {
  GetAnnouncementsUsecase({required this.repository});

  final AnnouncementRepository repository;

  Future<List<Announcement>> call({
    int page = 1,
    int limit = 25,
    String status = 'ALL',
  }) {
    return repository.getAnnouncements(
      page: page,
      limit: limit,
      status: status,
    );
  }
}
