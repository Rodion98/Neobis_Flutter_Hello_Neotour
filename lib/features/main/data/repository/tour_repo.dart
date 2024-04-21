import 'package:neo_tour/features/main/data/data_source/api.dart';
import 'package:neo_tour/features/main/data/mapper/tour_mapper.dart';
import 'package:neo_tour/features/main/domain/entity/tour_entity.dart';
import 'package:neo_tour/features/main/domain/repository/repository.dart';

class TourRepoImpl implements TourRepo {
  final MockItercepter api;
  final TourMapper mapper;

  TourRepoImpl({required this.api, required this.mapper});

  @override
  Future<List<TourEntity>> getTours(int? index) async {
    final httpResponse = await api.onGetTours(index);
    final tourEntity = mapper.mapper(httpResponse);
    print(tourEntity);
    return tourEntity;
  }

  @override
  Future<List<TourEntity>> getRecommended() async {
    final httpResponse = await api.onGetRecommended();
    final tourEntity = mapper.mapper(httpResponse);
    print(tourEntity);
    return tourEntity;
  }
}
