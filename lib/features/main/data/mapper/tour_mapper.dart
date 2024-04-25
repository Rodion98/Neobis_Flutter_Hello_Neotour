import 'package:neo_tour/core/app/mapper/mapper.dart';
import 'package:neo_tour/features/main/data/models/result/tours_result_model.dart';

import 'package:neo_tour/features/main/data/models/tour/tour.dart';
import 'package:neo_tour/features/main/domain/entity/tour_entity.dart';

class TourMapper extends Mapper<List<TourEntity>, List<TourModel>> {
  @override
  List<TourEntity> toEntity(model) {
    List<TourEntity> list = model
        .map((model) => TourEntity(
            id: model.id,
            createdAt: model.createdAt,
            updatedAt: model.updatedAt,
            name: model.name,
            description: model.description,
            image_url: model.image_url,
            city: model.city,
            country: model.country,
            continent: model.continent,
            season: model.season,
            views: model.views))
        .toList();
    return list;
  }
}
