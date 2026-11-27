import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/core/network/envelope_parsing.dart';
import 'package:office_hr/core/services/app_logger.dart';
import 'package:office_hr/features/announcement/data/models/announcement_model.dart';

abstract class AnnouncementRemoteDatasource {
  Future<List<AnnouncementModel>> getAnnouncements({
    int page = 1,
    int limit = 25,
    String status = 'ALL',
  });

  /// Lightweight total count (badge) without pulling the full list.
  Future<int> getAnnouncementsTotal({String status = 'ALL'});
}

class AnnouncementRemoteDatasourceImpl implements AnnouncementRemoteDatasource {
  AnnouncementRemoteDatasourceImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<List<AnnouncementModel>> getAnnouncements({
    int page = 1,
    int limit = 25,
    String status = 'ALL',
  }) async {
    return _apiService.get<List<AnnouncementModel>>(
      '/api/v1/announcements',
      queryParameters: {
        'page': page,
        'limit': limit,
        if (status.trim().isNotEmpty) 'status': status.trim(),
      },
      parser: _parseAnnouncementList,
    );
  }

  @override
  Future<int> getAnnouncementsTotal({String status = 'ALL'}) async {
    return _apiService.get<int>(
      '/api/v1/announcements',
      queryParameters: {
        'page': 1,
        'limit': 1,
        if (status.trim().isNotEmpty) 'status': status.trim(),
      },
      parser: parseEnvelopeTotal,
    );
  }

  List<AnnouncementModel> _parseAnnouncementList(dynamic data) {
    try {
      // The list endpoint nests the rows as `{ data: { data: [...] } }`,
      // so unwrap `data` envelopes until the list is reached.
      dynamic payload = data;
      while (payload is Map<String, dynamic> && payload['data'] != null) {
        payload = payload['data'];
      }
      if (payload is List) {
        return payload
            .whereType<Map<String, dynamic>>()
            .map(AnnouncementModel.fromJson)
            .toList();
      }
      if (payload is Map<String, dynamic>) {
        return [AnnouncementModel.fromJson(payload)];
      }
      return const [];
    } catch (e, stack) {
      AppLogger.e('Error parsing announcements: $e', error: e, stack: stack);
      rethrow;
    }
  }
}
