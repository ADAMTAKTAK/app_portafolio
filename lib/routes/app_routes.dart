import 'package:flutter/material.dart';
import 'package:app_portafolio/screens/screens.dart';

class AppRoutes {
  static const String initialRoute = 'home';

  static Map<String, WidgetBuilder> get routes {
    return {
      'home': (context) => const HomeScreen(),
      'signature': (context) => const SignatureScreen(),
    };
  }
}