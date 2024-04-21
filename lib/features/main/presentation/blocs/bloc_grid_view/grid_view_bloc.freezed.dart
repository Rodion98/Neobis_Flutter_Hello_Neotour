// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grid_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GridViewEvent {
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
    required TResult Function(_LoadRecommendedTours value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRecommendedTours value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRecommendedTours value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GridViewEventCopyWith<GridViewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GridViewEventCopyWith<$Res> {
  factory $GridViewEventCopyWith(
          GridViewEvent value, $Res Function(GridViewEvent) then) =
      _$GridViewEventCopyWithImpl<$Res, GridViewEvent>;
  @useResult
  $Res call({int? index});
}

/// @nodoc
class _$GridViewEventCopyWithImpl<$Res, $Val extends GridViewEvent>
    implements $GridViewEventCopyWith<$Res> {
  _$GridViewEventCopyWithImpl(this._value, this._then);

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
abstract class _$$LoadRecommendedToursImplCopyWith<$Res>
    implements $GridViewEventCopyWith<$Res> {
  factory _$$LoadRecommendedToursImplCopyWith(_$LoadRecommendedToursImpl value,
          $Res Function(_$LoadRecommendedToursImpl) then) =
      __$$LoadRecommendedToursImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? index});
}

/// @nodoc
class __$$LoadRecommendedToursImplCopyWithImpl<$Res>
    extends _$GridViewEventCopyWithImpl<$Res, _$LoadRecommendedToursImpl>
    implements _$$LoadRecommendedToursImplCopyWith<$Res> {
  __$$LoadRecommendedToursImplCopyWithImpl(_$LoadRecommendedToursImpl _value,
      $Res Function(_$LoadRecommendedToursImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$LoadRecommendedToursImpl(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LoadRecommendedToursImpl implements _LoadRecommendedTours {
  const _$LoadRecommendedToursImpl({this.index});

  @override
  final int? index;

  @override
  String toString() {
    return 'GridViewEvent.loading(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadRecommendedToursImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadRecommendedToursImplCopyWith<_$LoadRecommendedToursImpl>
      get copyWith =>
          __$$LoadRecommendedToursImplCopyWithImpl<_$LoadRecommendedToursImpl>(
              this, _$identity);

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
    required TResult Function(_LoadRecommendedTours value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRecommendedTours value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRecommendedTours value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadRecommendedTours implements GridViewEvent {
  const factory _LoadRecommendedTours({final int? index}) =
      _$LoadRecommendedToursImpl;

  @override
  int? get index;
  @override
  @JsonKey(ignore: true)
  _$$LoadRecommendedToursImplCopyWith<_$LoadRecommendedToursImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GridViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TourEntity> recommendedTours) success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TourEntity> recommendedTours)? success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TourEntity> recommendedTours)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GridViewStateLoading value) loading,
    required TResult Function(_GridViewStateSuccess value) success,
    required TResult Function(_GridViewStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GridViewStateLoading value)? loading,
    TResult? Function(_GridViewStateSuccess value)? success,
    TResult? Function(_GridViewStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GridViewStateLoading value)? loading,
    TResult Function(_GridViewStateSuccess value)? success,
    TResult Function(_GridViewStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GridViewStateCopyWith<$Res> {
  factory $GridViewStateCopyWith(
          GridViewState value, $Res Function(GridViewState) then) =
      _$GridViewStateCopyWithImpl<$Res, GridViewState>;
}

/// @nodoc
class _$GridViewStateCopyWithImpl<$Res, $Val extends GridViewState>
    implements $GridViewStateCopyWith<$Res> {
  _$GridViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GridViewStateLoadingImplCopyWith<$Res> {
  factory _$$GridViewStateLoadingImplCopyWith(_$GridViewStateLoadingImpl value,
          $Res Function(_$GridViewStateLoadingImpl) then) =
      __$$GridViewStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GridViewStateLoadingImplCopyWithImpl<$Res>
    extends _$GridViewStateCopyWithImpl<$Res, _$GridViewStateLoadingImpl>
    implements _$$GridViewStateLoadingImplCopyWith<$Res> {
  __$$GridViewStateLoadingImplCopyWithImpl(_$GridViewStateLoadingImpl _value,
      $Res Function(_$GridViewStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GridViewStateLoadingImpl implements _GridViewStateLoading {
  const _$GridViewStateLoadingImpl();

  @override
  String toString() {
    return 'GridViewState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GridViewStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TourEntity> recommendedTours) success,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TourEntity> recommendedTours)? success,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TourEntity> recommendedTours)? success,
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
    required TResult Function(_GridViewStateLoading value) loading,
    required TResult Function(_GridViewStateSuccess value) success,
    required TResult Function(_GridViewStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GridViewStateLoading value)? loading,
    TResult? Function(_GridViewStateSuccess value)? success,
    TResult? Function(_GridViewStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GridViewStateLoading value)? loading,
    TResult Function(_GridViewStateSuccess value)? success,
    TResult Function(_GridViewStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _GridViewStateLoading implements GridViewState {
  const factory _GridViewStateLoading() = _$GridViewStateLoadingImpl;
}

/// @nodoc
abstract class _$$GridViewStateSuccessImplCopyWith<$Res> {
  factory _$$GridViewStateSuccessImplCopyWith(_$GridViewStateSuccessImpl value,
          $Res Function(_$GridViewStateSuccessImpl) then) =
      __$$GridViewStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TourEntity> recommendedTours});
}

/// @nodoc
class __$$GridViewStateSuccessImplCopyWithImpl<$Res>
    extends _$GridViewStateCopyWithImpl<$Res, _$GridViewStateSuccessImpl>
    implements _$$GridViewStateSuccessImplCopyWith<$Res> {
  __$$GridViewStateSuccessImplCopyWithImpl(_$GridViewStateSuccessImpl _value,
      $Res Function(_$GridViewStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendedTours = null,
  }) {
    return _then(_$GridViewStateSuccessImpl(
      recommendedTours: null == recommendedTours
          ? _value._recommendedTours
          : recommendedTours // ignore: cast_nullable_to_non_nullable
              as List<TourEntity>,
    ));
  }
}

/// @nodoc

class _$GridViewStateSuccessImpl implements _GridViewStateSuccess {
  const _$GridViewStateSuccessImpl(
      {required final List<TourEntity> recommendedTours})
      : _recommendedTours = recommendedTours;

  final List<TourEntity> _recommendedTours;
  @override
  List<TourEntity> get recommendedTours {
    if (_recommendedTours is EqualUnmodifiableListView)
      return _recommendedTours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendedTours);
  }

  @override
  String toString() {
    return 'GridViewState.success(recommendedTours: $recommendedTours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GridViewStateSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._recommendedTours, _recommendedTours));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_recommendedTours));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GridViewStateSuccessImplCopyWith<_$GridViewStateSuccessImpl>
      get copyWith =>
          __$$GridViewStateSuccessImplCopyWithImpl<_$GridViewStateSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TourEntity> recommendedTours) success,
    required TResult Function() failure,
  }) {
    return success(recommendedTours);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TourEntity> recommendedTours)? success,
    TResult? Function()? failure,
  }) {
    return success?.call(recommendedTours);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TourEntity> recommendedTours)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(recommendedTours);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GridViewStateLoading value) loading,
    required TResult Function(_GridViewStateSuccess value) success,
    required TResult Function(_GridViewStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GridViewStateLoading value)? loading,
    TResult? Function(_GridViewStateSuccess value)? success,
    TResult? Function(_GridViewStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GridViewStateLoading value)? loading,
    TResult Function(_GridViewStateSuccess value)? success,
    TResult Function(_GridViewStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _GridViewStateSuccess implements GridViewState {
  const factory _GridViewStateSuccess(
          {required final List<TourEntity> recommendedTours}) =
      _$GridViewStateSuccessImpl;

  List<TourEntity> get recommendedTours;
  @JsonKey(ignore: true)
  _$$GridViewStateSuccessImplCopyWith<_$GridViewStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GridViewStateFailureImplCopyWith<$Res> {
  factory _$$GridViewStateFailureImplCopyWith(_$GridViewStateFailureImpl value,
          $Res Function(_$GridViewStateFailureImpl) then) =
      __$$GridViewStateFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GridViewStateFailureImplCopyWithImpl<$Res>
    extends _$GridViewStateCopyWithImpl<$Res, _$GridViewStateFailureImpl>
    implements _$$GridViewStateFailureImplCopyWith<$Res> {
  __$$GridViewStateFailureImplCopyWithImpl(_$GridViewStateFailureImpl _value,
      $Res Function(_$GridViewStateFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GridViewStateFailureImpl implements _GridViewStateFailure {
  const _$GridViewStateFailureImpl();

  @override
  String toString() {
    return 'GridViewState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GridViewStateFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TourEntity> recommendedTours) success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TourEntity> recommendedTours)? success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TourEntity> recommendedTours)? success,
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
    required TResult Function(_GridViewStateLoading value) loading,
    required TResult Function(_GridViewStateSuccess value) success,
    required TResult Function(_GridViewStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GridViewStateLoading value)? loading,
    TResult? Function(_GridViewStateSuccess value)? success,
    TResult? Function(_GridViewStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GridViewStateLoading value)? loading,
    TResult Function(_GridViewStateSuccess value)? success,
    TResult Function(_GridViewStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _GridViewStateFailure implements GridViewState {
  const factory _GridViewStateFailure() = _$GridViewStateFailureImpl;
}
