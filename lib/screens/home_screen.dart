import 'package:flutter/material.dart';

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
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 5),
              Text(
                'Adam Taktak', 
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 35),

              _AboutMeSection(
                title: '¿QUIÉN SOY?',
                content:
                    'aqui va una ligera descripccion, ya cuando termine todas las funcionalidades importantes la agregare', // <-- TU TEXTO
              ),
              SizedBox(height: 30),

              _InfoSection(
                title: 'HOBBIES',
                content:
                    'Jugar mcuho con la Playstation o la PC, escuchar musica, jugar deportes, entrenar, y sobretodo procrastinar jajajajajaja', // <-- TU TEXTO
              ),
              SizedBox(height: 30),

              _CommentSection(),
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

  const _AboutMeSection({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: _InfoSection(title: title, content: content),
        ),
        const SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: Container(
            height: 140, // Altura de la imagen
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2),
              borderRadius: BorderRadius.circular(4),
              color: Colors.grey[200],
            ),
            child: Center(
              child: Icon(
                Icons.camera_alt_outlined,
                color: Colors.grey[600],
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

  const _InfoSection({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        Text(
          content,
          style: const TextStyle(fontSize: 16, height: 1.5),
        ),
      ],
    );
  }
}

class _CommentSection extends StatelessWidget {
  const _CommentSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          ':: COMENTARIOS ::',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            border: Border.all(color: Colors.grey[300]!),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            'Inicia sesión para dejar un comentario...',
            style: TextStyle(
              color: Colors.grey[600],
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
        style: TextStyle(
          color: Colors.grey[500],
          fontSize: 12,
        ),
      ),
    );
  }
}