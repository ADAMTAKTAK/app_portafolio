import 'package:flutter/material.dart';
import 'package:app_portafolio/models/app_models.dart';
import 'package:app_portafolio/themes/app_theme.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppModels.footer,
        style: const TextStyle(
          color: AppTheme.textSecondary,
          fontSize: 12,
          fontFamily: 'monospace',
        ),
      ),
    );
  }
}