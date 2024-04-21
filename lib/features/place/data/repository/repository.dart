import 'package:neo_tour/features/place/data/data_source/api.dart';
import 'package:neo_tour/features/place/data/mapper/review_mapper.dart';
import 'package:neo_tour/features/place/domain/entity/review_entity.dart';
import 'package:neo_tour/features/place/domain/repository/repository.dart';

class ReviewRepoImpl implements ReviewRepo {
  final MockItercepterForPlace api;
  final ReviewMapper mapper;

  ReviewRepoImpl({required this.api, required this.mapper});

  @override
  Future<List<ReviewEntity>> getReview() async {
    final httpResponse = await api.onGetReview();
    final tourEntity = mapper.mapper(httpResponse);
    print(tourEntity);
    return tourEntity;
  }
}
