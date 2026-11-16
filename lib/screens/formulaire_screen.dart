import 'package:flutter/material.dart';
import '../models/lieu.dart';

class FormulaireScreen extends StatelessWidget {
  final Lieu lieu;
  const FormulaireScreen({super.key, required this.lieu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ajouter une visite')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              initialValue: lieu.nom,
              decoration: const InputDecoration(
                labelText: 'Lieu visité',
                prefixIcon: Icon(Icons.place_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Date de visite (jj/mm/aaaa)',
                prefixIcon: Icon(Icons.calendar_month_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Note personnelle',
                prefixIcon: Icon(Icons.star_outline),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              maxLines: 4,
              decoration: InputDecoration(
                labelText: 'Souvenir ou commentaire',
                prefixIcon: Icon(Icons.notes),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {},
                child: const Text('Enregistrer'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}