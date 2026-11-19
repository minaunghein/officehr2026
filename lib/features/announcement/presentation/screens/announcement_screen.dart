import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/announcement/presentation/widgets/announcements_tab.dart';

/// Company announcement feed. Clock request reviews now live in their own
/// standalone screen.
class AnnouncementScreen extends ConsumerWidget {
  const AnnouncementScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Announcements'), centerTitle: true),
      body: const AnnouncementsTab(),
    );
  }
}
