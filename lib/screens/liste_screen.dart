import 'package:flutter/material.dart';
import '../data/donnees_fictives.dart';
import 'detail_screen.dart';

class ListeScreen extends StatelessWidget {
  const ListeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lieux patrimoniaux')),
      body: ListView.builder(
        itemCount: lieux.length,
        itemBuilder: (context, index) {
          final lieu = lieux[index];
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                lieu.image,
                width: 56,
                height: 56,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.account_balance),
              ),
            ),
            title: Text(lieu.nom),
            subtitle: Text('${lieu.region} · ${lieu.categorie}'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DetailScreen(lieu: lieu)),
            ),
          );
        },
      ),
    );
  }
}