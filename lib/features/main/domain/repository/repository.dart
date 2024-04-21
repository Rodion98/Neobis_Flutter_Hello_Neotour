import 'package:neo_tour/features/main/domain/entity/tour_entity.dart';

abstract class TourRepo {
  Future<List<TourEntity>> getTours(int? index);
  Future<List<TourEntity>> getRecommended();
}
