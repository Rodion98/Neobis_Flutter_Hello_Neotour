import 'package:neo_tour/features/main/domain/entity/tour_entity.dart';

abstract class MainRepo {
  Future<List<TourEntity>> getTours(String? category);
}
