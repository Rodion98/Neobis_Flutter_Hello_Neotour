class TourEntity {
  final String image_url;
  final String name;
  final int id;
  final String city;
  final String country;
  final String continent;
  final String description;

  TourEntity({
    required this.id,
    required this.image_url,
    required this.name,
    required this.city,
    required this.country,
    required this.continent,
    required this.description,
  });
}
