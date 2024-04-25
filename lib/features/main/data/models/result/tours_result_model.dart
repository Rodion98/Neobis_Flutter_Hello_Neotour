import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neo_tour/features/main/data/models/info/info_model.dart';
import 'package:neo_tour/features/main/data/models/tour/tour.dart';

part 'tours_result_model.freezed.dart';
part 'tours_result_model.g.dart';

@freezed
class ToursResultModel with _$ToursResultModel {
  const factory ToursResultModel({
    required InfoModel info,
    required List<TourModel> tours,
  }) = _ToursResultModel;

  factory ToursResultModel.fromJson(Map<String, dynamic> json) => _$ToursResultModelFromJson(json);
}
