import 'package:flutter/material.dart';
import 'screens/accueil_screen.dart';

void main() {
  runApp(const PatrimoniaApp());
}

class PatrimoniaApp extends StatelessWidget {
  const PatrimoniaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Patrimonia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFB5651D)),
      ),
      home: const AccueilScreen(),
    );
  }
}