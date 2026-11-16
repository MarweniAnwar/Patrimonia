import 'package:flutter/material.dart';
import 'liste_screen.dart';

class AccueilScreen extends StatelessWidget {
  const AccueilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Patrimonia')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: cs.primaryContainer,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.account_balance,
                      size: 48, color: cs.onPrimaryContainer),
                  const SizedBox(height: 12),
                  Text(
                    'À la découverte du patrimoine tunisien',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: cs.onPrimaryContainer,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Explorez les sites, musées et monuments de Tunisie '
                    'et gardez le souvenir de vos visites.',
                    style: TextStyle(color: cs.onPrimaryContainer),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ListeScreen()),
                ),
                icon: const Icon(Icons.list),
                label: const Text('Découvrir les lieux'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}