import 'package:flutter/material.dart';
import 'package:app_portafolio/models/app_models.dart';
import 'package:app_portafolio/themes/app_theme.dart';
import 'package:app_portafolio/widgets/widgets.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color neonColor = AppTheme.tronOrange; 

    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor: neonColor,
                        child: CircleAvatar(
                          radius: 77,
                          backgroundColor: Colors.black,
                          child: Icon(Icons.terminal, size: 60, color: neonColor),
                        ),
                      ),
                    ),
                    const SizedBox(height: 35),

                    Text(
                      AppModels.commentsTitle,
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: neonColor),
                    ),
                    const SizedBox(height: 20),

                    ...AppModels.commentsList.map((comment) => _CommentItem(
                          name: comment['name']!,
                          message: comment['message']!,
                          initial: comment['initial']!,
                          neonColor: neonColor,
                        )),

                    const SizedBox(height: 30),

                    _CommentInput(neonColor: neonColor),

                    const Spacer(),
                    const SizedBox(height: 30),
                    const AppFooter(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _CommentItem extends StatelessWidget {
  final String name;
  final String message;
  final String initial;
  final Color neonColor;

  const _CommentItem({
    required this.name,
    required this.message,
    required this.initial,
    required this.neonColor,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: neonColor.withAlpha(51),
            child: Text(
              initial,
              style: TextStyle(
                color: neonColor,
                fontWeight: FontWeight.bold,
                fontFamily: 'monospace',
              ),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: textTheme.bodyLarge?.copyWith(
                    color: neonColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  message,
                  style: textTheme.bodyLarge?.copyWith(
                    color: AppTheme.textBase.withAlpha(200),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CommentInput extends StatelessWidget {
  final Color neonColor;
  const _CommentInput({required this.neonColor});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black.withAlpha(51),
        border: Border.all(color: neonColor.withAlpha(128)),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        AppModels.commentsHint,
        style: textTheme.bodyLarge?.copyWith(
          color: AppTheme.textSecondary,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}