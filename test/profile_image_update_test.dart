import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:office_hr/core/network/api_service.dart';
import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/features/auth/data/models/auth_session_model.dart';
import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/leave/domain/entities/uploaded_file.dart';
import 'package:office_hr/features/leave/domain/repositories/leave_repository.dart';
import 'package:office_hr/features/leave/presentation/providers/leave_providers.dart';
import 'package:office_hr/features/user_profile/presentation/providers/user_providers.dart';

void main() {
  late _UploadRepository upload;
  late _ProfileApi api;
  late ProviderContainer container;

  setUp(() async {
    upload = _UploadRepository();
    api = _ProfileApi();
    container = ProviderContainer(
      overrides: [
        apiServiceProvider.overrideWithValue(api),
        leaveRepositoryProvider.overrideWithValue(upload),
      ],
    );
    await container.read(currentUserProvider.future);
    await container.read(currentUserProvider.notifier).setSession(_session());
    await container.read(updateProfileImageProvider.future);
  });

  tearDown(() => container.dispose());

  Future<void> submit() => container
      .read(updateProfileImageProvider.notifier)
      .submit(filePath: '/cropped/profile.png', fileName: 'profile.png');

  test(
    'uploads first, PATCHes only email and file id, and updates session',
    () async {
      final pending = submit();
      expect(container.read(updateProfileImageProvider).isLoading, isTrue);
      expect(upload.filePath, '/cropped/profile.png');
      expect(upload.fileName, 'profile.png');
      expect(api.path, isNull);

      upload.result.complete(const UploadedFile(id: 'new-image-id'));
      await pending;

      expect(api.path, '/api/v1/users/current-user');
      expect(api.payload, {
        'email': 'employee@example.com',
        'profile_img_id': 'new-image-id',
      });
      final session = container.read(currentUserProvider).value!;
      expect(session.user.profileImgId, 'new-image-id');
      expect(session.profileUrl, endsWith('/api/v1/files/new-image-id'));
      expect(session.activeCompany, _session().activeCompany);
      expect(
        container.read(userDetailsProvider).value?.user.profileImgId,
        'new-image-id',
      );
      expect(container.read(updateProfileImageProvider).hasError, isFalse);
    },
  );

  test('upload failure does not PATCH or replace the current image', () async {
    final pending = submit();
    final expectation = expectLater(pending, throwsStateError);
    upload.result.completeError(StateError('Upload failed'));
    await expectation;

    expect(api.path, isNull);
    expect(
      container.read(currentUserProvider).value?.user.profileImgId,
      'old-image-id',
    );
    expect(container.read(updateProfileImageProvider).hasError, isTrue);
  });

  test('PATCH failure preserves the current image', () async {
    api.failure = StateError('Update failed');
    final pending = submit();
    final expectation = expectLater(pending, throwsStateError);
    upload.result.complete(const UploadedFile(id: 'new-image-id'));
    await expectation;

    expect(api.path, '/api/v1/users/current-user');
    expect(
      container.read(currentUserProvider).value?.user.profileImgId,
      'old-image-id',
    );
    expect(container.read(updateProfileImageProvider).hasError, isTrue);
  });

  test('finishing an upload does not restore a logged-out session', () async {
    final pending = submit();
    await container.read(currentUserProvider.notifier).clear();
    upload.result.complete(const UploadedFile(id: 'new-image-id'));
    await pending;

    expect(container.read(currentUserProvider).value, isNull);
  });
}

AuthSession _session() => AuthSessionModel.fromJson({
  'user': {
    'id': 'current-user',
    'username': 'employee',
    'email': 'employee@example.com',
    'profile_img_id': 'old-image-id',
  },
  'active_company': {'id': 'company-1', 'name': 'Example company'},
  'role': {'name': 'Employee'},
}).toEntity();

class _UploadRepository implements LeaveRepository {
  final result = Completer<UploadedFile>();
  String? filePath;
  String? fileName;

  @override
  Future<UploadedFile> uploadFile({
    required String filePath,
    required String fileName,
  }) {
    this.filePath = filePath;
    this.fileName = fileName;
    return result.future;
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _ProfileApi implements ApiService {
  String? path;
  Object? payload;
  Object? failure;

  @override
  Future<T> patch<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    JsonParser<T>? parser,
  }) async {
    this.path = path;
    payload = data;
    if (failure != null) throw failure!;
    return null as T;
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
