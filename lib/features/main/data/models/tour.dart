import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour.freezed.dart';
part 'tour.g.dart';

@freezed
class TourModel with _$TourModel {
  const factory TourModel({
    required String image_url,
    required String name,
    required int id,
    required String city,
    required String country,
    required String continent,
    required String description,
  }) = _TourModel;

  factory TourModel.fromJson(Map<String, dynamic> json) => _$TourModelFromJson(json);
}
