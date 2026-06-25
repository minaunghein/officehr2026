// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_attendance_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(departmentAttendances)
final departmentAttendancesProvider = DepartmentAttendancesProvider._();

final class DepartmentAttendancesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<DepartmentAttendances>>,
          List<DepartmentAttendances>,
          FutureOr<List<DepartmentAttendances>>
        >
    with
        $FutureModifier<List<DepartmentAttendances>>,
        $FutureProvider<List<DepartmentAttendances>> {
  DepartmentAttendancesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'departmentAttendancesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$departmentAttendancesHash();

  @$internal
  @override
  $FutureProviderElement<List<DepartmentAttendances>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<DepartmentAttendances>> create(Ref ref) {
    return departmentAttendances(ref);
  }
}

String _$departmentAttendancesHash() =>
    r'4e1f7ea074359a635e5a77894bcb69572a571ae2';
