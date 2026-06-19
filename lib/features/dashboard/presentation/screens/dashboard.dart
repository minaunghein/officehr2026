import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/theme/app_theme.dart';
import 'package:office_hr/core/theme/theme_notifier.dart';

class Dashboard extends ConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeStyle = ref.watch(themeProvider);
    // final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Office HR'),
        actions: [
          IconButton(
            icon: Icon(
              themeStyle == OfficeHrTheme.dark
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
            onPressed: () {
              final currentTheme = ref.read(themeProvider);
              ref
                  .read(themeProvider.notifier)
                  .setTheme(
                    currentTheme == OfficeHrTheme.dark
                        ? OfficeHrTheme.light
                        : OfficeHrTheme.dark,
                  );
            },
          ),
        ],
      ),
      body: Center(child: Text('Dashboard')),
    );
  }
}
