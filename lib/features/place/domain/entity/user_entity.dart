class UserEntity {
  final int? id;
  final String? createdAt;
  final String? updatedAt;
  final String? username;
  final String? image_url;

  UserEntity({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.username,
    required this.image_url,
  });
}
