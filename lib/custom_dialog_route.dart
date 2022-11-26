import 'package:flutter/material.dart';

// Custom Dialog implementation
class CustomDialogRoute<T> extends PopupRoute<T> {
  CustomDialogRoute({
    required this.builder,
    super.settings,
  });
  // We're getting a widget with context
  final Widget Function(BuildContext context) builder;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    // return just a static widget
    return builder(context);
  }

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    // random animations go 🔪 🔪 🔪
    return RotationTransition(
      turns: Tween<double>(begin: 0.25, end: 0).animate(animation),
      child: ScaleTransition(
        scale: animation,
        child: child,
      ),
    );
  }

  @override
  Color? get barrierColor => Colors.black.withOpacity(.65);

  @override
  bool get barrierDismissible => true;

  @override
  String? get barrierLabel => 'CustomDialog';

  @override
  Duration get transitionDuration => const Duration(milliseconds: 250);
}
