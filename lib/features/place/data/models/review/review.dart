import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neo_tour/features/place/data/models/user/user.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class ReviewModel with _$ReviewModel {
  const factory ReviewModel({
    required int id,
    required UserModel user,
    required String comment,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) => _$ReviewModelFromJson(json);
}
