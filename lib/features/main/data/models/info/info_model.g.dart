// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InfoModelImpl _$$InfoModelImplFromJson(Map<String, dynamic> json) =>
    _$InfoModelImpl(
      page: json['page'] as String,
      count: json['count'] as int,
      next: json['next'] as String,
      previous: json['previous'] as String,
    );

Map<String, dynamic> _$$InfoModelImplToJson(_$InfoModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
    };
