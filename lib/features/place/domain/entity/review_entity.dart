import 'package:neo_tour/features/main/domain/entity/tour_entity.dart';
import 'package:neo_tour/features/place/domain/entity/user_entity.dart';

class ReviewEntity {
  final int? id;
  final String? createdAt;
  final String? updatedAt;
  final TourEntity? tourEntity;
  final UserEntity? userEntity;
  final int? rating;
  final String? comment;

  ReviewEntity({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.tourEntity,
    required this.userEntity,
    required this.rating,
    required this.comment,
  });
}
