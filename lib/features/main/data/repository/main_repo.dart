import 'package:neo_tour/features/main/data/data_source/api.dart';
import 'package:neo_tour/features/place/data/mapper/review_mapper.dart';
import 'package:neo_tour/features/main/data/mapper/tour_mapper.dart';
import 'package:neo_tour/features/main/data/models/tour/tour.dart';
import 'package:neo_tour/features/main/domain/entity/tour_entity.dart';
import 'package:neo_tour/features/main/domain/repository/repository.dart';

class MainRepoImpl implements MainRepo {
  final Api api;
  final TourMapper tourMapper;
  final ReviewMapper reviewMapper;

  MainRepoImpl({
    required this.api,
    required this.tourMapper,
    required this.reviewMapper,
  });

  @override
  Future<List<TourEntity>> getTours(String? category) async {
    final httpResponse = await api.fetchTours(category);
    final List<TourModel> tourModel = httpResponse;
    final List<TourEntity> tourEntity = tourMapper.toEntity(tourModel);
    return tourEntity;
  }
}
