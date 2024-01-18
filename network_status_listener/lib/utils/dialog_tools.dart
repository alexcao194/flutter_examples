import 'package:flutter/material.dart';

class DialogTools {
  const DialogTools._();

  static Future<void> showRetryableErrorDialog({
    required BuildContext context,
    required String message,
    required VoidCallback onRetry,
  }) async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                onRetry();
              },
              child: const Text('Retry'),
            ),
          ],
        );
      },
    );
  }
}