// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainEvent {
  int? get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? index) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? index)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? index)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTours value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTours value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTours value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainEventCopyWith<MainEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
  @useResult
  $Res call({int? index});
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadToursImplCopyWith<$Res>
    implements $MainEventCopyWith<$Res> {
  factory _$$LoadToursImplCopyWith(
          _$LoadToursImpl value, $Res Function(_$LoadToursImpl) then) =
      __$$LoadToursImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? index});
}

/// @nodoc
class __$$LoadToursImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$LoadToursImpl>
    implements _$$LoadToursImplCopyWith<$Res> {
  __$$LoadToursImplCopyWithImpl(
      _$LoadToursImpl _value, $Res Function(_$LoadToursImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$LoadToursImpl(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LoadToursImpl implements _LoadTours {
  const _$LoadToursImpl({this.index});

  @override
  final int? index;

  @override
  String toString() {
    return 'MainEvent.loading(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadToursImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadToursImplCopyWith<_$LoadToursImpl> get copyWith =>
      __$$LoadToursImplCopyWithImpl<_$LoadToursImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? index) loading,
  }) {
    return loading(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? index)? loading,
  }) {
    return loading?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? index)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTours value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTours value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTours value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadTours implements MainEvent {
  const factory _LoadTours({final int? index}) = _$LoadToursImpl;

  @override
  int? get index;
  @override
  @JsonKey(ignore: true)
  _$$LoadToursImplCopyWith<_$LoadToursImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TourEntity> carouselTours) success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TourEntity> carouselTours)? success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TourEntity> carouselTours)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainStateLoading value) loading,
    required TResult Function(_MainStateSuccess value) success,
    required TResult Function(_MainStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainStateLoading value)? loading,
    TResult? Function(_MainStateSuccess value)? success,
    TResult? Function(_MainStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainStateLoading value)? loading,
    TResult Function(_MainStateSuccess value)? success,
    TResult Function(_MainStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MainStateLoadingImplCopyWith<$Res> {
  factory _$$MainStateLoadingImplCopyWith(_$MainStateLoadingImpl value,
          $Res Function(_$MainStateLoadingImpl) then) =
      __$$MainStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainStateLoadingImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateLoadingImpl>
    implements _$$MainStateLoadingImplCopyWith<$Res> {
  __$$MainStateLoadingImplCopyWithImpl(_$MainStateLoadingImpl _value,
      $Res Function(_$MainStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainStateLoadingImpl implements _MainStateLoading {
  const _$MainStateLoadingImpl();

  @override
  String toString() {
    return 'MainState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TourEntity> carouselTours) success,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TourEntity> carouselTours)? success,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TourEntity> carouselTours)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainStateLoading value) loading,
    required TResult Function(_MainStateSuccess value) success,
    required TResult Function(_MainStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainStateLoading value)? loading,
    TResult? Function(_MainStateSuccess value)? success,
    TResult? Function(_MainStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainStateLoading value)? loading,
    TResult Function(_MainStateSuccess value)? success,
    TResult Function(_MainStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _MainStateLoading implements MainState {
  const factory _MainStateLoading() = _$MainStateLoadingImpl;
}

/// @nodoc
abstract class _$$MainStateSuccessImplCopyWith<$Res> {
  factory _$$MainStateSuccessImplCopyWith(_$MainStateSuccessImpl value,
          $Res Function(_$MainStateSuccessImpl) then) =
      __$$MainStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TourEntity> carouselTours});
}

/// @nodoc
class __$$MainStateSuccessImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateSuccessImpl>
    implements _$$MainStateSuccessImplCopyWith<$Res> {
  __$$MainStateSuccessImplCopyWithImpl(_$MainStateSuccessImpl _value,
      $Res Function(_$MainStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carouselTours = null,
  }) {
    return _then(_$MainStateSuccessImpl(
      carouselTours: null == carouselTours
          ? _value._carouselTours
          : carouselTours // ignore: cast_nullable_to_non_nullable
              as List<TourEntity>,
    ));
  }
}

/// @nodoc

class _$MainStateSuccessImpl implements _MainStateSuccess {
  const _$MainStateSuccessImpl({required final List<TourEntity> carouselTours})
      : _carouselTours = carouselTours;

  final List<TourEntity> _carouselTours;
  @override
  List<TourEntity> get carouselTours {
    if (_carouselTours is EqualUnmodifiableListView) return _carouselTours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carouselTours);
  }

  @override
  String toString() {
    return 'MainState.success(carouselTours: $carouselTours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._carouselTours, _carouselTours));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_carouselTours));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateSuccessImplCopyWith<_$MainStateSuccessImpl> get copyWith =>
      __$$MainStateSuccessImplCopyWithImpl<_$MainStateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TourEntity> carouselTours) success,
    required TResult Function() failure,
  }) {
    return success(carouselTours);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TourEntity> carouselTours)? success,
    TResult? Function()? failure,
  }) {
    return success?.call(carouselTours);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TourEntity> carouselTours)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(carouselTours);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainStateLoading value) loading,
    required TResult Function(_MainStateSuccess value) success,
    required TResult Function(_MainStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainStateLoading value)? loading,
    TResult? Function(_MainStateSuccess value)? success,
    TResult? Function(_MainStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainStateLoading value)? loading,
    TResult Function(_MainStateSuccess value)? success,
    TResult Function(_MainStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _MainStateSuccess implements MainState {
  const factory _MainStateSuccess(
      {required final List<TourEntity> carouselTours}) = _$MainStateSuccessImpl;

  List<TourEntity> get carouselTours;
  @JsonKey(ignore: true)
  _$$MainStateSuccessImplCopyWith<_$MainStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainStateFailureImplCopyWith<$Res> {
  factory _$$MainStateFailureImplCopyWith(_$MainStateFailureImpl value,
          $Res Function(_$MainStateFailureImpl) then) =
      __$$MainStateFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainStateFailureImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateFailureImpl>
    implements _$$MainStateFailureImplCopyWith<$Res> {
  __$$MainStateFailureImplCopyWithImpl(_$MainStateFailureImpl _value,
      $Res Function(_$MainStateFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainStateFailureImpl implements _MainStateFailure {
  const _$MainStateFailureImpl();

  @override
  String toString() {
    return 'MainState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainStateFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TourEntity> carouselTours) success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TourEntity> carouselTours)? success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TourEntity> carouselTours)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainStateLoading value) loading,
    required TResult Function(_MainStateSuccess value) success,
    required TResult Function(_MainStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainStateLoading value)? loading,
    TResult? Function(_MainStateSuccess value)? success,
    TResult? Function(_MainStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainStateLoading value)? loading,
    TResult Function(_MainStateSuccess value)? success,
    TResult Function(_MainStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _MainStateFailure implements MainState {
  const factory _MainStateFailure() = _$MainStateFailureImpl;
}
