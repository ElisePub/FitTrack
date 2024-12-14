import 'package:flutter/material.dart';

class ChronometrePage extends StatelessWidget {
  const ChronometrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Chronomètre',
              style: TextStyle(fontSize: 24),
            ),
            // Ajoutez ici les widgets pour votre chronomètre
          ],
        ),
      ),
    );
  }
}