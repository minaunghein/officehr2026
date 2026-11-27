import 'package:office_hr/features/announcement/data/datasources/announcement_remote_datasource.dart';
import 'package:office_hr/features/announcement/domain/entities/announcement.dart';
import 'package:office_hr/features/announcement/domain/repositories/announcement_repository.dart';

class AnnouncementRepositoryImpl implements AnnouncementRepository {
  AnnouncementRepositoryImpl({required this.datasource, required this.baseUrl});

  final AnnouncementRemoteDatasource datasource;
  final String baseUrl;

  @override
  Future<List<Announcement>> getAnnouncements({
    int page = 1,
    int limit = 25,
    String status = 'ALL',
  }) async {
    final models = await datasource.getAnnouncements(
      page: page,
      limit: limit,
      status: status,
    );
    return models.map((model) => model.toEntity(baseUrl)).toList();
  }

  @override
  Future<int> getAnnouncementsTotal({String status = 'ALL'}) {
    return datasource.getAnnouncementsTotal(status: status);
  }
}
