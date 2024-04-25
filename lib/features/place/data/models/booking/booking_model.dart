import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neo_tour/features/main/data/models/tour/tour.dart';

part 'booking_model.freezed.dart';
part 'booking_model.g.dart';

@freezed
class BookingModel with _$BookingModel {
  @JsonSerializable(explicitToJson: true)
  const factory BookingModel({
    required int? number_of_tourists,
    required String? phone_number,
    required String? comment,
    required TourModel? tourModel,
  }) = _BookingModel;

  factory BookingModel.fromJson(Map<String, dynamic> json) => _$BookingModelFromJson(json);
}
