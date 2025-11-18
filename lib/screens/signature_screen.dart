import 'package:flutter/material.dart';
import 'package:app_portafolio/themes/app_theme.dart';
class SignatureScreen extends StatelessWidget {
  const SignatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SIGNATURE:// ARES',
          style: TextStyle(
              color: AppTheme.tronRed,
              fontFamily: 'monospace',
              fontWeight: FontWeight.bold,
              fontSize: 22),
        ),
      ),
      body: Center(
        child: Text(
          'Pantalla de Firma',
          style: textTheme.bodyLarge, 
        ),
      ),
    );
  }
}