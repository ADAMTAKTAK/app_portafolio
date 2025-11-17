import 'package:flutter/material.dart';

class SignatureScreen extends StatelessWidget {
  const SignatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DEVS signature'),
      ),
      body: const Center(
        child: Text('Pantalla de Firma'),
      ),
    );
  }
}