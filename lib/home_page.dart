import 'package:flutter/material.dart';
import 'package:routemodal_example/extensions.dart';

import 'custom_dialog.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.showCustomDialog(
              CustomDialog(
                title: 'Hello Fellow!',
                description: "Don't you think Flutter is awesome?",
                confirmText: 'Absolutely!',
                onTap: () {
                  debugPrint('agreed');
                  Navigator.pop(context);
                },
              ),
            );
          },
          child: const Text('Show Dialog'),
        ),
      ),
    );
  }
}
