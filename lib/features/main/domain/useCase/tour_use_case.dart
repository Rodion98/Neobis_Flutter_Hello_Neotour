import 'package:neo_tour/core/use_case/use_case.dart';
import 'package:neo_tour/features/main/domain/entity/tour_entity.dart';
import 'package:neo_tour/features/main/domain/repository/repository.dart';

class TourUseCase extends UseCase<List<TourEntity>, String> {
  final MainRepo repo;

  TourUseCase({required this.repo});

  @override
  Future<List<TourEntity>> call(String? params) async {
    var entity = await repo.getTours(params);
    return entity;
  }
}
