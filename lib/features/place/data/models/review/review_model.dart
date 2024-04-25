import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neo_tour/features/main/data/models/tour/tour.dart';
import 'package:neo_tour/features/place/data/models/user/user_model.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
class ReviewModel with _$ReviewModel {
  const factory ReviewModel({
    required int? id,
    required String? createdAt,
    required String? updatedAt,
    required TourModel? tour,
    required UserModel? user,
    required int? rating,
    required String? comment,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) => _$ReviewModelFromJson(json);
}
