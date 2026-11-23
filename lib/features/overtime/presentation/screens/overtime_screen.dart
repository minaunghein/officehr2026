import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/features/auth/presentation/providers/session_access_provider.dart';
import 'package:office_hr/features/overtime/presentation/widgets/overtime_requests_tab.dart';

import 'package:easy_localization/easy_localization.dart';

/// The user's overtime requests with a shortcut to submit a new one.
class OvertimeScreen extends ConsumerWidget {
  const OvertimeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final access = ref.watch(sessionAccessProvider);
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Overtime'.tr())),
      body: access.viewOvertime ? const OvertimeRequestsTab() : null,
      floatingActionButton: !access.createOvertime
          ? null
          : FloatingActionButton.extended(
              onPressed: () => context.push(AppRoutes.createOvertime),
              icon: const Icon(Icons.add_rounded),
              label: Text('Request'.tr()),
            ),
    );
  }
}
