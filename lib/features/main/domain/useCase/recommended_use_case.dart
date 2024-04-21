import 'package:neo_tour/core/use_case/use_case.dart';
import 'package:neo_tour/features/main/domain/entity/tour_entity.dart';
import 'package:neo_tour/features/main/domain/repository/repository.dart';

class RecommendedUseCase extends UseCase<List<TourEntity>, void> {
  final TourRepo repo;

  RecommendedUseCase({required this.repo});
  @override
  Future<List<TourEntity>> call([int? index = 0]) async {
    var entity = await repo.getRecommended();
    // print(entity);
    return entity;
  }
}
