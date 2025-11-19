import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:app_portafolio/models/app_models.dart';
import 'package:app_portafolio/themes/app_theme.dart';
import 'package:app_portafolio/widgets/widgets.dart';

class SignatureScreen extends StatelessWidget {
  const SignatureScreen({super.key});

  Future<void> _launchUrl() async {
    final Uri url = Uri.parse(AppModels.githubUrl);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    const Color neonColor = AppTheme.tronRed;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppModels.signatureTitle,
          style: TextStyle(
            color: neonColor,
            fontFamily: 'monospace',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Center(
              child: _AresImage(
                neonColor: neonColor,
                imagePath: 'assets/images/ares.png',
              ),
            ),
            const SizedBox(height: 35),
            Text(
              AppModels.signatureName,
              style: textTheme.headlineMedium?.copyWith(
                fontSize: 32,
                color: neonColor,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              AppModels.signatureRole,
              style: textTheme.bodyLarge?.copyWith(
                fontSize: 18,
                color: AppTheme.textBase.withAlpha(204),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              height: 2,
              color: neonColor.withAlpha(179),
            ),
            const SizedBox(height: 40),
            _ContactInfoRow(
              icon: Icons.alternate_email,
              text: AppModels.contactEmail,
              iconColor: neonColor,
            ),
            const SizedBox(height: 20),
            _ContactInfoRow(
              icon: Icons.phone_android,
              text: AppModels.contactPhone,
              iconColor: neonColor,
            ),
            const SizedBox(height: 40),
            Center(
              child: OutlinedButton.icon(
                onPressed: _launchUrl,
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: neonColor, width: 2),
                  foregroundColor: neonColor,
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                icon: const Icon(Icons.code),
                label: const Text(
                  'GITHUB PROFILE',
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const Spacer(),
            const AppFooter(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class _AresImage extends StatelessWidget {
  final Color neonColor;
  final String imagePath;

  const _AresImage({
    required this.neonColor,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 160,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: neonColor, width: 3),
        color: Colors.black,
      ),
      child: ClipOval(
        child: Image.asset(
          imagePath,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class _ContactInfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;

  const _ContactInfoRow({
    required this.icon,
    required this.text,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: 28),
        const SizedBox(width: 15),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 16,
              ),
        ),
      ],
    );
  }
}