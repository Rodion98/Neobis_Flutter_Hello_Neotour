import 'package:neo_tour/core/app/mapper/mapper.dart';
import 'package:neo_tour/features/main/data/models/tour.dart';
import 'package:neo_tour/features/main/domain/entity/tour_entity.dart';

class TourMapper extends Mapper<List<TourEntity>, List<TourModel>> {
  @override
  List<TourEntity> mapper(List<TourModel> model) {
    List<TourEntity> list = model
        .map((model) => TourEntity(
            id: model.id,
            image_url: model.image_url,
            name: model.name,
            city: model.city,
            continent: model.continent,
            country: model.country,
            description: model.description))
        .toList();
    return list;
  }
}
