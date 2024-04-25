import 'package:neo_tour/features/main/data/data_source/api.dart';
import 'package:neo_tour/features/place/data/models/booking/booking_model.dart';
import 'package:neo_tour/features/place/data/models/review/review_model.dart';
import 'package:neo_tour/features/place/domain/entity/review_entity.dart';
import 'package:neo_tour/features/place/data/mapper/review_mapper.dart';

import 'package:neo_tour/features/place/domain/repository/repository.dart';

class PlaceRepoImpl implements PlaceRepo {
  final Api api;
  final ReviewMapper reviewMapper;

  PlaceRepoImpl({required this.reviewMapper, required this.api});

  @override
  Future<List<ReviewEntity>> getReviews(int? id) async {
    final httpResponse = await api.fetchReview(id);
    final List<ReviewModel> tourModel = httpResponse;
    final List<ReviewEntity> tourEntity = reviewMapper.toEntity(tourModel);
    return tourEntity;
  }

  @override
  Future<int> postBooking(BookingModel? bookingModel) async {
    final httpResponse = await api.postBooking(bookingModel);
    return httpResponse;
  }
}
