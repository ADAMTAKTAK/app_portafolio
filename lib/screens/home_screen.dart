import 'package:flutter/material.dart';
import 'package:app_portafolio/themes/app_theme.dart'; 

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.code), 
            onPressed: () {
              Navigator.pushNamed(context, 'signature');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                '¡Hola! Mi nombre es',
                style: TextStyle(
                    fontSize: 20,
                    color: AppTheme.textSecondary, 
                    fontFamily: 'monospace'),
              ),
              SizedBox(height: 5),
              Text(
                'Adam Taktak',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.tronBlue, 
                  fontFamily: 'monospace',
                ),
              ),
              SizedBox(height: 35),

              _AboutMeSection(
                title: '¿QUIÉN SOY?',
                content:
                    'aqui va una ligera descripccion, ya cuando termine todas las funcionalidades importantes la agregare',
                neonColor: AppTheme.tronBlue, 
              ),
              SizedBox(height: 30),

              _InfoSection(
                title: 'HOBBIES',
                content:
                    'Jugar mcuho con la Playstation o la PC, escuchar musica, jugar deportes, entrenar, y sobretodo procrastinar jajajajajaja', 
                neonColor: AppTheme.tronBlue,
              ),
              SizedBox(height: 30),

              _CommentSection(
                neonColor: AppTheme.tronOrange,
              ),
              SizedBox(height: 50),

              _Footer(
                footerText:
                    'por ahora pondre esto jejeje, lñuego lo cambio',
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class _AboutMeSection extends StatelessWidget {
  final String title;
  final String content;
  final Color neonColor;

  const _AboutMeSection({
    required this.title,
    required this.content,
    required this.neonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: _InfoSection(title: title, content: content, neonColor: neonColor),
        ),
        const SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: Container(
            height: 140,
            decoration: BoxDecoration(
              border: Border.all(color: neonColor, width: 2), 
              borderRadius: BorderRadius.circular(4),
              color: Colors.black.withAlpha(77),
            ),
            child: Center(
              child: Icon(
                Icons.camera_alt_outlined,
                color: neonColor.withAlpha(128),
                size: 40,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _InfoSection extends StatelessWidget {
  final String title;
  final String content;
  final Color neonColor;

  const _InfoSection({
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

class _CommentSection extends StatelessWidget {
  final Color neonColor;
  const _CommentSection({required this.neonColor});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'COMENTARIOS',
          style: textTheme.headlineMedium?.copyWith(color: neonColor),
        ),
        const SizedBox(height: 20),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.black.withAlpha(51), 
            border: Border.all(color: neonColor.withAlpha(128)), 
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            'Inicia sesión para dejar un comentario...',
            style: textTheme.bodyLarge?.copyWith(
              color: AppTheme.textSecondary,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ],
    );
  }
}

class _Footer extends StatelessWidget {
  final String footerText;
  const _Footer({required this.footerText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'lo dejare asi por ahora jejeje',
        style: const TextStyle(
          color: AppTheme.textSecondary,
          fontSize: 12,
          fontFamily: 'monospace',
        ),
      ),
    );
  }
}