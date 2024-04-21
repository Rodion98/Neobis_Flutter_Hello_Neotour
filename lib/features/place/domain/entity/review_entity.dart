import 'package:neo_tour/features/place/domain/entity/user_entity.dart';

class ReviewEntity {
  final int id;
  final UserEntity userEntity;
  final String comment;

  ReviewEntity({
    required this.id,
    required this.userEntity,
    required this.comment,
  });
}
