import 'package:neo_tour/core/app/mapper/mapper.dart';
import 'package:neo_tour/features/place/data/models/review/review_model.dart';
import 'package:neo_tour/features/place/domain/entity/review_entity.dart';
import 'package:neo_tour/features/main/domain/entity/tour_entity.dart';
import 'package:neo_tour/features/place/domain/entity/user_entity.dart';

class ReviewMapper extends Mapper<List<ReviewEntity>, List<ReviewModel>> {
  @override
  List<ReviewEntity> toEntity(model) {
    List<ReviewEntity> list = model
        .map((model) => ReviewEntity(
            id: model.id,
            createdAt: model.createdAt,
            updatedAt: model.updatedAt,
            tourEntity: TourEntity(
                id: model.tour!.id,
                createdAt: model.tour!.createdAt,
                updatedAt: model.tour!.updatedAt,
                name: model.tour!.name,
                description: model.tour!.description,
                image_url: model.tour!.image_url,
                city: model.tour!.city,
                country: model.tour!.country,
                continent: model.tour!.continent,
                season: model.tour!.season,
                views: model.tour!.views),
            userEntity: UserEntity(
                id: model.user!.id,
                createdAt: model.user!.createdAt,
                updatedAt: model.user!.updatedAt,
                username: model.user!.username,
                image_url: model.user!.image_url),
            rating: model.rating,
            comment: model.comment))
        .toList();
    return list;
  }
}
