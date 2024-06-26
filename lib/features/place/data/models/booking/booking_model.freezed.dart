// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookingModel _$BookingModelFromJson(Map<String, dynamic> json) {
  return _BookingModel.fromJson(json);
}

/// @nodoc
mixin _$BookingModel {
  int? get number_of_tourists => throw _privateConstructorUsedError;
  String? get phone_number => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  TourModel? get tourModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingModelCopyWith<BookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingModelCopyWith<$Res> {
  factory $BookingModelCopyWith(
          BookingModel value, $Res Function(BookingModel) then) =
      _$BookingModelCopyWithImpl<$Res, BookingModel>;
  @useResult
  $Res call(
      {int? number_of_tourists,
      String? phone_number,
      String? comment,
      TourModel? tourModel});

  $TourModelCopyWith<$Res>? get tourModel;
}

/// @nodoc
class _$BookingModelCopyWithImpl<$Res, $Val extends BookingModel>
    implements $BookingModelCopyWith<$Res> {
  _$BookingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number_of_tourists = freezed,
    Object? phone_number = freezed,
    Object? comment = freezed,
    Object? tourModel = freezed,
  }) {
    return _then(_value.copyWith(
      number_of_tourists: freezed == number_of_tourists
          ? _value.number_of_tourists
          : number_of_tourists // ignore: cast_nullable_to_non_nullable
              as int?,
      phone_number: freezed == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      tourModel: freezed == tourModel
          ? _value.tourModel
          : tourModel // ignore: cast_nullable_to_non_nullable
              as TourModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TourModelCopyWith<$Res>? get tourModel {
    if (_value.tourModel == null) {
      return null;
    }

    return $TourModelCopyWith<$Res>(_value.tourModel!, (value) {
      return _then(_value.copyWith(tourModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingModelImplCopyWith<$Res>
    implements $BookingModelCopyWith<$Res> {
  factory _$$BookingModelImplCopyWith(
          _$BookingModelImpl value, $Res Function(_$BookingModelImpl) then) =
      __$$BookingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? number_of_tourists,
      String? phone_number,
      String? comment,
      TourModel? tourModel});

  @override
  $TourModelCopyWith<$Res>? get tourModel;
}

/// @nodoc
class __$$BookingModelImplCopyWithImpl<$Res>
    extends _$BookingModelCopyWithImpl<$Res, _$BookingModelImpl>
    implements _$$BookingModelImplCopyWith<$Res> {
  __$$BookingModelImplCopyWithImpl(
      _$BookingModelImpl _value, $Res Function(_$BookingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number_of_tourists = freezed,
    Object? phone_number = freezed,
    Object? comment = freezed,
    Object? tourModel = freezed,
  }) {
    return _then(_$BookingModelImpl(
      number_of_tourists: freezed == number_of_tourists
          ? _value.number_of_tourists
          : number_of_tourists // ignore: cast_nullable_to_non_nullable
              as int?,
      phone_number: freezed == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      tourModel: freezed == tourModel
          ? _value.tourModel
          : tourModel // ignore: cast_nullable_to_non_nullable
              as TourModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BookingModelImpl implements _BookingModel {
  const _$BookingModelImpl(
      {required this.number_of_tourists,
      required this.phone_number,
      required this.comment,
      required this.tourModel});

  factory _$BookingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingModelImplFromJson(json);

  @override
  final int? number_of_tourists;
  @override
  final String? phone_number;
  @override
  final String? comment;
  @override
  final TourModel? tourModel;

  @override
  String toString() {
    return 'BookingModel(number_of_tourists: $number_of_tourists, phone_number: $phone_number, comment: $comment, tourModel: $tourModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingModelImpl &&
            (identical(other.number_of_tourists, number_of_tourists) ||
                other.number_of_tourists == number_of_tourists) &&
            (identical(other.phone_number, phone_number) ||
                other.phone_number == phone_number) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.tourModel, tourModel) ||
                other.tourModel == tourModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, number_of_tourists, phone_number, comment, tourModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingModelImplCopyWith<_$BookingModelImpl> get copyWith =>
      __$$BookingModelImplCopyWithImpl<_$BookingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingModelImplToJson(
      this,
    );
  }
}

abstract class _BookingModel implements BookingModel {
  const factory _BookingModel(
      {required final int? number_of_tourists,
      required final String? phone_number,
      required final String? comment,
      required final TourModel? tourModel}) = _$BookingModelImpl;

  factory _BookingModel.fromJson(Map<String, dynamic> json) =
      _$BookingModelImpl.fromJson;

  @override
  int? get number_of_tourists;
  @override
  String? get phone_number;
  @override
  String? get comment;
  @override
  TourModel? get tourModel;
  @override
  @JsonKey(ignore: true)
  _$$BookingModelImplCopyWith<_$BookingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
