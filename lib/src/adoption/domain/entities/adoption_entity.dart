class AdoptionEntity {
  final String id;
  final String categoryId;
  final String title;
  final String subtitle;
  final String description;
  final String distance;
  final bool isFavorite;
  final List<String> urlImages;
  final String about;

  const AdoptionEntity({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.distance,
    required this.isFavorite,
    required this.urlImages,
    required this.about,
  });
}
