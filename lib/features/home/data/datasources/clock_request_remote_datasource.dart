import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/core/services/app_logger.dart';
import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/features/home/data/models/clock_request_model.dart';
import 'package:office_hr/features/home/domain/entities/clock_request.dart';
import 'package:office_hr/features/home/domain/params/create_clock_request_params.dart';

abstract class ClockRequestRemoteDatasource {
  Future<ClockRequestModel> createClockRequest(CreateClockRequestParams params);

  Future<List<ClockRequestModel>> getMyRequests({
    DateTime? start,
    DateTime? end,
    List<ClockRequestStatus> statuses = const [],
    int page = 1,
    int limit = 25,
  });

  Future<List<ClockRequestModel>> getReviewRequests({
    DateTime? start,
    DateTime? end,
    List<ClockRequestStatus> statuses = const [],
    int page = 1,
    int limit = 25,
  });

  Future<ClockRequestModel> decide(
    String id, {
    required ClockRequestDecision decision,
    String? note,
  });

  Future<ClockRequestModel> cancel(String id, {String? note});
}

class ClockRequestRemoteDatasourceImpl implements ClockRequestRemoteDatasource {
  ClockRequestRemoteDatasourceImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<ClockRequestModel> createClockRequest(
    CreateClockRequestParams params,
  ) async {
    final response = await _apiService.post<Map<String, dynamic>>(
      '/api/v1/clock-requests',
      data: params.toJson(),
      parser: (data) => data as Map<String, dynamic>,
    );

    return ClockRequestModel.fromJson(_unwrap(response));
  }

  @override
  Future<List<ClockRequestModel>> getMyRequests({
    DateTime? start,
    DateTime? end,
    List<ClockRequestStatus> statuses = const [],
    int page = 1,
    int limit = 25,
  }) async {
    final queryParameters = <String, dynamic>{
      if (start != null) 'start': _formatDateId(start),
      if (end != null) 'end': _formatDateId(end),
      if (statuses.isNotEmpty)
        'status': statuses.map((status) => status.value).join(','),
      'page': page,
      'limit': limit,
    };

    return _apiService.get<List<ClockRequestModel>>(
      '/api/v1/clock-requests',
      queryParameters: queryParameters,
      parser: _parseClockRequestList,
    );
  }

  @override
  Future<List<ClockRequestModel>> getReviewRequests({
    DateTime? start,
    DateTime? end,
    List<ClockRequestStatus> statuses = const [],
    int page = 1,
    int limit = 25,
  }) async {
    final queryParameters = <String, dynamic>{
      if (start != null) 'start': _formatDateId(start),
      if (end != null) 'end': _formatDateId(end),
      if (statuses.isNotEmpty)
        'status': statuses.map((status) => status.value).join(','),
      'page': page,
      'limit': limit,
    };

    return _apiService.get<List<ClockRequestModel>>(
      '/api/v1/clock-requests/review',
      queryParameters: queryParameters,
      parser: _parseClockRequestList,
    );
  }

  @override
  Future<ClockRequestModel> decide(
    String id, {
    required ClockRequestDecision decision,
    String? note,
  }) async {
    final trimmedNote = note?.trim();
    final response = await _apiService.post<Map<String, dynamic>>(
      '/api/v1/clock-requests/$id/decision',
      data: {
        'decision': decision.value,
        if (trimmedNote != null && trimmedNote.isNotEmpty) 'note': trimmedNote,
      },
      parser: (data) => data as Map<String, dynamic>,
    );

    return ClockRequestModel.fromJson(_unwrap(response));
  }

  @override
  Future<ClockRequestModel> cancel(String id, {String? note}) async {
    final trimmedNote = note?.trim();
    final response = await _apiService.post<Map<String, dynamic>>(
      '/api/v1/clock-requests/$id/cancel',
      data: {
        'decision': ClockRequestDecision.cancelled.value,
        if (trimmedNote != null && trimmedNote.isNotEmpty) 'note': trimmedNote,
      },
      parser: (data) => data as Map<String, dynamic>,
    );

    return ClockRequestModel.fromJson(_unwrap(response));
  }

  List<ClockRequestModel> _parseClockRequestList(dynamic data) {
    try {
      // The review endpoint nests the rows as `{ data: { data: [...] } }`,
      // so unwrap `data` envelopes until the list is reached.
      dynamic payload = data;
      while (payload is Map<String, dynamic> && payload['data'] != null) {
        payload = payload['data'];
      }
      if (payload is List) {
        return payload
            .whereType<Map<String, dynamic>>()
            .map(ClockRequestModel.fromJson)
            .toList();
      }
      if (payload is Map<String, dynamic>) {
        return [ClockRequestModel.fromJson(payload)];
      }
      return const [];
    } catch (e, stack) {
      AppLogger.e('Error parsing clock requests: $e', error: e, stack: stack);
      rethrow;
    }
  }

  Map<String, dynamic> _unwrap(Map<String, dynamic> json) {
    final data = json['data'];
    return data is Map<String, dynamic> ? data : json;
  }

  /// Clock-request endpoints address days as `YYYYMMDD` date ids.
  String _formatDateId(DateTime date) =>
      formatApiDate(date).replaceAll('-', '');
}
