import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

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
            title: Text('Session expired'.tr()),
            content: Text('Please sign in again to continue.'.tr()),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('OK'.tr()),
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
