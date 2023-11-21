import 'package:flutter/material.dart';
import 'package:flutterways/main.dart';
import 'package:flutterways/login/register.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MyHomePage());

      case '/register':
        return MaterialPageRoute(builder: (_) => const register());

      default:
        return _errorRoute();
    }
  }

static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
        ),
        body: const Center(
          child: Text("Error"),
        ),
      );
    });
}


}
