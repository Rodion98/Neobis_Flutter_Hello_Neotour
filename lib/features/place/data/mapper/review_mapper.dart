import 'package:neo_tour/features/place/data/models/review/review.dart';
import 'package:neo_tour/features/place/domain/entity/review_entity.dart';
import 'package:neo_tour/features/place/domain/entity/user_entity.dart';

class ReviewMapper {
  List<ReviewEntity> mapper(List<ReviewModel> models) {
    return models.map((model) {
      return ReviewEntity(
        id: model.id,
        comment: model.comment,
        userEntity: UserEntity(
          id: model.user.id,
          username: model.user.username,
          image_url: model.user.image_url,
        ),
      );
    }).toList();
  }
}
