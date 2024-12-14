import 'package:flutter/material.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Timer',
              style: TextStyle(fontSize: 24),
            ),
            // Ajoutez ici les widgets pour votre chronomètre
          ],
        ),
      ),
    );
  }
}