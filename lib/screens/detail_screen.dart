import 'package:flutter/material.dart';
import '../models/lieu.dart';
import 'formulaire_screen.dart';

class DetailScreen extends StatelessWidget {
  final Lieu lieu;
  const DetailScreen({super.key, required this.lieu});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(lieu.nom)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                lieu.image,
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const SizedBox(
                  height: 220,
                  child: Center(child: Icon(Icons.broken_image, size: 64)),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              lieu.nom,
              style: theme.textTheme.headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Icon(Icons.place_outlined),
                const SizedBox(width: 8),
                Text('Région : ${lieu.region}'),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.category_outlined),
                const SizedBox(width: 8),
                Expanded(child: Text('Catégorie : ${lieu.categorie}')),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.my_location),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Coordonnées : ${lieu.latitude}, ${lieu.longitude}',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              'Description',
              style: theme.textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(lieu.description, style: const TextStyle(height: 1.5)),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => FormulaireScreen(lieu: lieu),
                  ),
                ),
                icon: const Icon(Icons.edit_calendar_outlined),
                label: const Text('Ajouter une visite'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}