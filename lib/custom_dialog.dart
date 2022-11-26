import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Just a simple custom dialog, nothing special
class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
    required this.title,
    required this.description,
    required this.confirmText,
    this.onTap,
  });

  final String title;
  final String description;
  final String confirmText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Material(
          elevation: 4,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  description,
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  child: CupertinoButton.filled(
                    onPressed: onTap,
                    child: Text(confirmText),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
