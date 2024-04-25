import 'package:neo_tour/features/place/data/models/booking/booking_model.dart';
import 'package:neo_tour/features/place/domain/entity/review_entity.dart';

abstract class PlaceRepo {
  Future<List<ReviewEntity>> getReviews(int? id);
  Future<int> postBooking(BookingModel? bookingModel);
}
