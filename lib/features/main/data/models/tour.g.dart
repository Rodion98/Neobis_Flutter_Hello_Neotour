// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourModelImpl _$$TourModelImplFromJson(Map<String, dynamic> json) =>
    _$TourModelImpl(
      image_url: json['image_url'] as String,
      name: json['name'] as String,
      id: json['id'] as int,
      city: json['city'] as String,
      country: json['country'] as String,
      continent: json['continent'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$TourModelImplToJson(_$TourModelImpl instance) =>
    <String, dynamic>{
      'image_url': instance.image_url,
      'name': instance.name,
      'id': instance.id,
      'city': instance.city,
      'country': instance.country,
      'continent': instance.continent,
      'description': instance.description,
    };
