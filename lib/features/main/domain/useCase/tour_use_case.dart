import 'package:neo_tour/core/use_case/use_case.dart';
import 'package:neo_tour/features/main/domain/entity/tour_entity.dart';
import 'package:neo_tour/features/main/domain/repository/repository.dart';

class TourUseCase extends UseCase<List<TourEntity>, void> {
  final TourRepo repo;

  TourUseCase({required this.repo});
  @override
  Future<List<TourEntity>> call([int? index]) async {
    var entity = await repo.getTours(index);
    // print(entity);
    return entity;
  }
}
