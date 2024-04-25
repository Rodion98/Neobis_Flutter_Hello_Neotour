// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tours_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToursResultModelImpl _$$ToursResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ToursResultModelImpl(
      info: InfoModel.fromJson(json['info'] as Map<String, dynamic>),
      tours: (json['tours'] as List<dynamic>)
          .map((e) => TourModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ToursResultModelImplToJson(
        _$ToursResultModelImpl instance) =>
    <String, dynamic>{
      'info': instance.info,
      'tours': instance.tours,
    };
