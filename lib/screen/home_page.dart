import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // On n'a pas besoin d'un autre AppBar ici car il est déjà dans le widget parent
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Page d\'accueil',
              style: TextStyle(fontSize: 24),
            ),
            // Ajoutez ici d'autres widgets pour votre page d'accueil
          ],
        ),
      ),
    );
  }
}