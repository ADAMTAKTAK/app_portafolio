import 'package:flutter/material.dart';
import 'package:app_portafolio/routes/app_routes.dart';
import 'package:app_portafolio/themes/app_theme.dart'; // 1. Importar el tema

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portafolio Personal',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      theme: AppTheme.darkTheme, // 2. Aplicar el tema TRON
    );
  }
}