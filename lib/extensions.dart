import 'package:flutter/material.dart';

import 'custom_dialog_route.dart';

extension DialogExtension on BuildContext {
  Future<T?> showCustomDialog<T>(Widget child) async {
    return await Navigator.of(this).push(
      CustomDialogRoute<T>(builder: (_) => child),
    );
  }
}
