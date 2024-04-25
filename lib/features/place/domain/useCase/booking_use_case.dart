import 'package:neo_tour/core/use_case/use_case.dart';
import 'package:neo_tour/features/place/data/models/booking/booking_model.dart';
import 'package:neo_tour/features/place/domain/entity/review_entity.dart';
import 'package:neo_tour/features/place/domain/repository/repository.dart';

class BookingUseCase extends UseCase<int, BookingModel> {
  final PlaceRepo repo;

  BookingUseCase({required this.repo});

  @override
  Future<int> call(BookingModel? params) async {
    final postStatus = await repo.postBooking(params);
    return postStatus;
  }
}
