import 'package:neo_tour/core/use_case/use_case.dart';
import 'package:neo_tour/features/place/domain/entity/review_entity.dart';
import 'package:neo_tour/features/place/domain/repository/repository.dart';

class ReviewUseCase extends UseCase<List<ReviewEntity>, int> {
  final PlaceRepo repo;

  ReviewUseCase({required this.repo});

  @override
  Future<List<ReviewEntity>> call(int? params) async {
    final entity = await repo.getReviews(params);
    return entity;
  }
}
