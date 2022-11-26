import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      navigatorObservers: [Ehe()],
    );
  }
}

class Ehe extends NavigatorObserver {
  List<Route<dynamic>> routeStack = [];

  @override
  void didPop(Route route, Route? previousRoute) {
    routeStack.removeLast();
    print(routeStack);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    routeStack.add(route);
    print(routeStack);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    routeStack.removeLast();
    print(routeStack);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    routeStack.removeLast();
    routeStack.add(newRoute!);
    print(routeStack);
  }
}
