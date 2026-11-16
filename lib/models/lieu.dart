class Lieu {
  final int id;
  final String nom;
  final String region;
  final String categorie;
  final String description;
  final String image;
  final double latitude;
  final double longitude;

  const Lieu({
    required this.id,
    required this.nom,
    required this.region,
    required this.categorie,
    required this.description,
    required this.image,
    required this.latitude,
    required this.longitude,
  });
}