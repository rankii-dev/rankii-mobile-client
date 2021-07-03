import 'package:flutter/material.dart';
import 'package:rankii/ui/auth/page/auth_main_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case 'auth':
        return MaterialPageRoute(
          builder: (context) => AuthMainPage(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: Text('Error'),
          centerTitle: true,
        ),
        body: Center(
          child: const Text('Something Bad Happened'),
        ),
      ),
    );
  }
}
