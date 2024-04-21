import 'package:neo_tour/features/place/domain/entity/review_entity.dart';
import 'package:neo_tour/features/place/domain/repository/repository.dart';

class ReviewUseCase {
  final ReviewRepo repo;

  ReviewUseCase({required this.repo});

  Future<List<ReviewEntity>> call() async {
    var entity = await repo.getReview();
    return entity;
  }
}
