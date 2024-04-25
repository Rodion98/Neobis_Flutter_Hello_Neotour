import 'package:neo_tour/features/main/domain/entity/info_entity.dart';
import 'package:neo_tour/features/main/domain/entity/tour_entity.dart';

class ToursResultEntity {
  final InfoEntity infoEntity;
  final List<TourEntity> results;

  ToursResultEntity({required this.infoEntity, required this.results});
}
