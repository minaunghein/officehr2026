import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/core/utils/async_reload.dart';
import 'package:office_hr/features/announcement/data/datasources/announcement_remote_datasource.dart';
import 'package:office_hr/features/announcement/data/repositories/announcement_repository_impl.dart';
import 'package:office_hr/features/announcement/domain/entities/announcement.dart';
import 'package:office_hr/features/announcement/domain/repositories/announcement_repository.dart';
import 'package:office_hr/features/announcement/domain/usecases/get_announcements_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'announcement_providers.g.dart';

// ==================== Datasource ====================
@riverpod
AnnouncementRemoteDatasource announcementRemoteDatasource(Ref ref) {
  final apiService = ref.watch(apiServiceProvider);
  return AnnouncementRemoteDatasourceImpl(apiService);
}

// ==================== Repository ====================
@riverpod
AnnouncementRepository announcementRepository(Ref ref) {
  final datasource = ref.watch(announcementRemoteDatasourceProvider);
  final config = ref.watch(apiConfigProvider);
  return AnnouncementRepositoryImpl(
    datasource: datasource,
    baseUrl: config.baseUrl,
  );
}

// ==================== Use Cases ====================
@riverpod
GetAnnouncementsUsecase getAnnouncementsUsecase(Ref ref) {
  final repository = ref.watch(announcementRepositoryProvider);
  return GetAnnouncementsUsecase(repository: repository);
}

// ==================== State Management ====================

/// Total announcements count, used for the bell and tab badges. Lightweight
/// `limit=1` fetch reading the pagination `total` meta with the same default
/// status (`ALL`) as the feed.
@riverpod
Future<int> announcementsBadgeCount(Ref ref) {
  return ref.watch(announcementRepositoryProvider).getAnnouncementsTotal();
}

@riverpod
class Announcements extends _$Announcements {
  String _status = 'ALL';

  @override
  Future<List<Announcement>> build() => _fetch();

  Future<List<Announcement>> _fetch() {
    return ref.read(getAnnouncementsUsecaseProvider)(status: _status);
  }

  String get statusFilter => _status;

  Future<void> setStatusFilter(String status) async {
    if (_status == status) return;
    _status = status;
    await _reload(filterChanged: true);
  }

  Future<void> refresh() => _reload();

  Future<void> _reload({bool filterChanged = false}) async {
    // Filter changes show loading; ordinary refreshes retain the visible list.
    ref.invalidateSelf(asReload: filterChanged);
    await settleReload(future);
    if (ref.mounted) ref.invalidate(announcementsBadgeCountProvider);
  }
}
