import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dashboard_provider.g.dart';

@riverpod
class DashboardIndex extends _$DashboardIndex {
  @override
  int build() => 0;

  void select(int index) => state = index;
}
