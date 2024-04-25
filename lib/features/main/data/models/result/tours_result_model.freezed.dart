// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tours_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ToursResultModel _$ToursResultModelFromJson(Map<String, dynamic> json) {
  return _ToursResultModel.fromJson(json);
}

/// @nodoc
mixin _$ToursResultModel {
  InfoModel get info => throw _privateConstructorUsedError;
  List<TourModel> get tours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToursResultModelCopyWith<ToursResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToursResultModelCopyWith<$Res> {
  factory $ToursResultModelCopyWith(
          ToursResultModel value, $Res Function(ToursResultModel) then) =
      _$ToursResultModelCopyWithImpl<$Res, ToursResultModel>;
  @useResult
  $Res call({InfoModel info, List<TourModel> tours});

  $InfoModelCopyWith<$Res> get info;
}

/// @nodoc
class _$ToursResultModelCopyWithImpl<$Res, $Val extends ToursResultModel>
    implements $ToursResultModelCopyWith<$Res> {
  _$ToursResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? tours = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoModel,
      tours: null == tours
          ? _value.tours
          : tours // ignore: cast_nullable_to_non_nullable
              as List<TourModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InfoModelCopyWith<$Res> get info {
    return $InfoModelCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ToursResultModelImplCopyWith<$Res>
    implements $ToursResultModelCopyWith<$Res> {
  factory _$$ToursResultModelImplCopyWith(_$ToursResultModelImpl value,
          $Res Function(_$ToursResultModelImpl) then) =
      __$$ToursResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InfoModel info, List<TourModel> tours});

  @override
  $InfoModelCopyWith<$Res> get info;
}

/// @nodoc
class __$$ToursResultModelImplCopyWithImpl<$Res>
    extends _$ToursResultModelCopyWithImpl<$Res, _$ToursResultModelImpl>
    implements _$$ToursResultModelImplCopyWith<$Res> {
  __$$ToursResultModelImplCopyWithImpl(_$ToursResultModelImpl _value,
      $Res Function(_$ToursResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? tours = null,
  }) {
    return _then(_$ToursResultModelImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoModel,
      tours: null == tours
          ? _value._tours
          : tours // ignore: cast_nullable_to_non_nullable
              as List<TourModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToursResultModelImpl
    with DiagnosticableTreeMixin
    implements _ToursResultModel {
  const _$ToursResultModelImpl(
      {required this.info, required final List<TourModel> tours})
      : _tours = tours;

  factory _$ToursResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToursResultModelImplFromJson(json);

  @override
  final InfoModel info;
  final List<TourModel> _tours;
  @override
  List<TourModel> get tours {
    if (_tours is EqualUnmodifiableListView) return _tours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tours);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ToursResultModel(info: $info, tours: $tours)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ToursResultModel'))
      ..add(DiagnosticsProperty('info', info))
      ..add(DiagnosticsProperty('tours', tours));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToursResultModelImpl &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._tours, _tours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(_tours));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToursResultModelImplCopyWith<_$ToursResultModelImpl> get copyWith =>
      __$$ToursResultModelImplCopyWithImpl<_$ToursResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToursResultModelImplToJson(
      this,
    );
  }
}

abstract class _ToursResultModel implements ToursResultModel {
  const factory _ToursResultModel(
      {required final InfoModel info,
      required final List<TourModel> tours}) = _$ToursResultModelImpl;

  factory _ToursResultModel.fromJson(Map<String, dynamic> json) =
      _$ToursResultModelImpl.fromJson;

  @override
  InfoModel get info;
  @override
  List<TourModel> get tours;
  @override
  @JsonKey(ignore: true)
  _$$ToursResultModelImplCopyWith<_$ToursResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
