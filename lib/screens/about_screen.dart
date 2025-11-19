import 'package:flutter/material.dart';
import 'package:app_portafolio/models/app_models.dart';
import 'package:app_portafolio/themes/app_theme.dart';
import 'package:app_portafolio/widgets/widgets.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    const Color neonColor = AppTheme.tronBlue; 

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppModels.greeting,
              style: textTheme.bodyLarge?.copyWith(
                fontSize: 20,
                color: AppTheme.textSecondary,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              AppModels.myName,
              style: textTheme.headlineMedium?.copyWith(
                fontSize: 36,
                color: neonColor, 
              ),
            ),
            const SizedBox(height: 35),

            const Center(
              child: CircleAvatar(
                radius: 80,
                backgroundColor: neonColor,
                child: CircleAvatar(
                  radius: 77,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person, size: 60, color: neonColor),
                ),
              ),
            ),
            const SizedBox(height: 35),

            InfoSection(
              title: AppModels.aboutTitle,
              content: AppModels.aboutContent,
              neonColor: neonColor,
            ),
            const SizedBox(height: 30),

            InfoSection(
              title: AppModels.hobbiesTitle,
              content: AppModels.hobbiesContent,
              neonColor: neonColor,
            ),
            
            const SizedBox(height: 50),
            const AppFooter(),
          ],
        ),
      ),
    );
  }
}