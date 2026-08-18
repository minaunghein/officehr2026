import 'package:flutter/material.dart';

class DialogService {
  DialogService._();

  static final navigatorKey = GlobalKey<NavigatorState>();

  static bool _isUnauthenticatedDialogShowing = false;

  static Future<void> showUnauthenticatedDialog() async {
    if (_isUnauthenticatedDialogShowing) return;

    final context = navigatorKey.currentContext;
    if (context == null) return;

    _isUnauthenticatedDialogShowing = true;
    try {
      await showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: const Text('Session expired'),
            content: const Text('Please sign in again to continue.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    } finally {
      _isUnauthenticatedDialogShowing = false;
    }
  }
}
