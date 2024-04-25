import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour.freezed.dart';
part 'tour.g.dart';

@freezed
class TourModel with _$TourModel {
  const factory TourModel({
    required int? id,
    final String? createdAt,
    final String? updatedAt,
    final String? name,
    final String? description,
    final String? image_url,
    final String? city,
    final String? country,
    final String? continent,
    final String? season,
    final int? views,
  }) = _TourModel;

  factory TourModel.fromJson(Map<String, dynamic> json) => _$TourModelFromJson(json);
}
