// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingModelImpl _$$BookingModelImplFromJson(Map<String, dynamic> json) =>
    _$BookingModelImpl(
      number_of_tourists: json['number_of_tourists'] as int?,
      phone_number: json['phone_number'] as String?,
      comment: json['comment'] as String?,
      tourModel: json['tourModel'] == null
          ? null
          : TourModel.fromJson(json['tourModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookingModelImplToJson(_$BookingModelImpl instance) =>
    <String, dynamic>{
      'number_of_tourists': instance.number_of_tourists,
      'phone_number': instance.phone_number,
      'comment': instance.comment,
      'tourModel': instance.tourModel?.toJson(),
    };
