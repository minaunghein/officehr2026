import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/features/overtime/presentation/widgets/overtime_requests_tab.dart';

/// The user's overtime requests with a shortcut to submit a new one.
class OvertimeScreen extends ConsumerWidget {
  const OvertimeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Overtime')),
      body: const OvertimeRequestsTab(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.push(AppRoutes.createOvertime),
        icon: const Icon(Icons.add_rounded),
        label: const Text('Request'),
      ),
    );
  }
}
