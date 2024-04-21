import 'package:neo_tour/features/place/domain/entity/review_entity.dart';

abstract class ReviewRepo {
  Future<List<ReviewEntity>> getReview();
}
