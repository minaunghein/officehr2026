import 'package:office_hr/features/announcement/domain/entities/announcement.dart';

abstract class AnnouncementRepository {
  Future<List<Announcement>> getAnnouncements({
    int page = 1,
    int limit = 25,
    String status = 'ALL',
  });

  Future<int> getAnnouncementsTotal({String status = 'ALL'});
}
