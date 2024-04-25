class TourEntity {
  final int? id;
  final String? createdAt;
  final String? updatedAt;
  final String? name;
  final String? description;
  final String? image_url;
  final String? city;
  final String? country;
  final String? continent;
  final String? season;
  final int? views;

  TourEntity({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.name,
    required this.description,
    required this.image_url,
    required this.city,
    required this.country,
    required this.continent,
    required this.season,
    required this.views,
  });
}
