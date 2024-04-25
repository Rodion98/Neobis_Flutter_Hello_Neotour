// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourModelImpl _$$TourModelImplFromJson(Map<String, dynamic> json) =>
    _$TourModelImpl(
      id: json['id'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      image_url: json['image_url'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      continent: json['continent'] as String?,
      season: json['season'] as String?,
      views: json['views'] as int?,
    );

Map<String, dynamic> _$$TourModelImplToJson(_$TourModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'name': instance.name,
      'description': instance.description,
      'image_url': instance.image_url,
      'city': instance.city,
      'country': instance.country,
      'continent': instance.continent,
      'season': instance.season,
      'views': instance.views,
    };
