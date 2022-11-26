import 'package:flutter/material.dart';

import 'custom_dialog_route.dart';

extension DialogExtension on BuildContext {
  Future<T?> showCustomDialog<T extends Object?>(
    Widget child, {
    RouteSettings? settings,
  }) {
    return Navigator.of(this).push<T>(
      CustomDialogRoute<T>(
        builder: (_) => child,
        settings: settings,
      ),
    );
  }
}
