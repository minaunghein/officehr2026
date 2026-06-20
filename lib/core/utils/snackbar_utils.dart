import 'package:flutter/material.dart';

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

class SnackbarUtils {
  static void showSuccess(String message, {bool isTop = false}) {
    _showSnackbar(message, isError: false, isTop: isTop);
  }

  static void showError(String message, {bool isTop = false}) {
    _showSnackbar(message, isError: true, isTop: isTop);
  }

  static void _showSnackbar(
    String message, {
    required bool isError,
    bool isTop = false,
  }) {
    final messenger = rootScaffoldMessengerKey.currentState;
    final context = rootScaffoldMessengerKey.currentContext;
    if (messenger == null) return;

    EdgeInsetsGeometry? margin;
    DismissDirection dismissDirection = DismissDirection.down;

    if (isTop && context != null) {
      final mediaQuery = MediaQuery.of(context);
      // Calculate bottom margin to push the snackbar to the top
      // Subtracting ~100 to leave space for status bar / safe area.
      double bottomMargin = mediaQuery.size.height - 100;
      margin = EdgeInsets.only(bottom: bottomMargin, left: 16, right: 16);
      dismissDirection = DismissDirection.up;
    }

    messenger.showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: isError ? Colors.red.shade700 : Colors.green.shade700,
        behavior: SnackBarBehavior.floating,
        margin: margin,
        dismissDirection: dismissDirection,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        duration: const Duration(seconds: 3),
      ),
    );
  }
}

extension ContextSnackbar on BuildContext {
  void showSuccessSnackBar(String message, {bool isTop = false}) {
    EdgeInsetsGeometry? margin;
    DismissDirection dismissDirection = DismissDirection.down;

    if (isTop) {
      final mediaQuery = MediaQuery.of(this);
      margin = EdgeInsets.only(
        bottom: mediaQuery.size.height - 100,
        left: 16,
        right: 16,
      );
      dismissDirection = DismissDirection.up;
    }

    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        behavior: SnackBarBehavior.floating,
        margin: margin,
        dismissDirection: dismissDirection,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  void showErrorSnackBar(String message, {bool isTop = false}) {
    final colorScheme = Theme.of(this).colorScheme;
    EdgeInsetsGeometry? margin;
    DismissDirection dismissDirection = DismissDirection.down;

    if (isTop) {
      final mediaQuery = MediaQuery.of(this);
      margin = EdgeInsets.only(
        bottom: mediaQuery.size.height - 100,
        left: 16,
        right: 16,
      );
      dismissDirection = DismissDirection.up;
    }

    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(
            color: colorScheme.onError,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: colorScheme.error,
        behavior: SnackBarBehavior.floating,
        margin: margin,
        dismissDirection: dismissDirection,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
