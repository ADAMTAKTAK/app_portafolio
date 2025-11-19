import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  final String title;
  final String content;
  final Color neonColor;

  const InfoSection({
    super.key,
    required this.title,
    required this.content,
    required this.neonColor,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: textTheme.headlineMedium?.copyWith(color: neonColor),
        ),
        const SizedBox(height: 15),
        Text(
          content,
          style: textTheme.bodyLarge,
        ),
      ],
    );
  }
}