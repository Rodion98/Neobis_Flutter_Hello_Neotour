// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlaceEvent {
  int? get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadReviews value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadReviews value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadReviews value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceEventCopyWith<PlaceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceEventCopyWith<$Res> {
  factory $PlaceEventCopyWith(
          PlaceEvent value, $Res Function(PlaceEvent) then) =
      _$PlaceEventCopyWithImpl<$Res, PlaceEvent>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$PlaceEventCopyWithImpl<$Res, $Val extends PlaceEvent>
    implements $PlaceEventCopyWith<$Res> {
  _$PlaceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadReviewsImplCopyWith<$Res>
    implements $PlaceEventCopyWith<$Res> {
  factory _$$LoadReviewsImplCopyWith(
          _$LoadReviewsImpl value, $Res Function(_$LoadReviewsImpl) then) =
      __$$LoadReviewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$LoadReviewsImplCopyWithImpl<$Res>
    extends _$PlaceEventCopyWithImpl<$Res, _$LoadReviewsImpl>
    implements _$$LoadReviewsImplCopyWith<$Res> {
  __$$LoadReviewsImplCopyWithImpl(
      _$LoadReviewsImpl _value, $Res Function(_$LoadReviewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$LoadReviewsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LoadReviewsImpl implements _LoadReviews {
  const _$LoadReviewsImpl({this.id});

  @override
  final int? id;

  @override
  String toString() {
    return 'PlaceEvent.loading(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadReviewsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadReviewsImplCopyWith<_$LoadReviewsImpl> get copyWith =>
      __$$LoadReviewsImplCopyWithImpl<_$LoadReviewsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) loading,
  }) {
    return loading(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? id)? loading,
  }) {
    return loading?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadReviews value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadReviews value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadReviews value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadReviews implements PlaceEvent {
  const factory _LoadReviews({final int? id}) = _$LoadReviewsImpl;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$LoadReviewsImplCopyWith<_$LoadReviewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ReviewEntity> reviews) success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ReviewEntity> reviews)? success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ReviewEntity> reviews)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceStateLoading value) loading,
    required TResult Function(_PlaceStateSuccess value) success,
    required TResult Function(_PlaceStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceStateLoading value)? loading,
    TResult? Function(_PlaceStateSuccess value)? success,
    TResult? Function(_PlaceStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceStateLoading value)? loading,
    TResult Function(_PlaceStateSuccess value)? success,
    TResult Function(_PlaceStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceStateCopyWith<$Res> {
  factory $PlaceStateCopyWith(
          PlaceState value, $Res Function(PlaceState) then) =
      _$PlaceStateCopyWithImpl<$Res, PlaceState>;
}

/// @nodoc
class _$PlaceStateCopyWithImpl<$Res, $Val extends PlaceState>
    implements $PlaceStateCopyWith<$Res> {
  _$PlaceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PlaceStateLoadingImplCopyWith<$Res> {
  factory _$$PlaceStateLoadingImplCopyWith(_$PlaceStateLoadingImpl value,
          $Res Function(_$PlaceStateLoadingImpl) then) =
      __$$PlaceStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlaceStateLoadingImplCopyWithImpl<$Res>
    extends _$PlaceStateCopyWithImpl<$Res, _$PlaceStateLoadingImpl>
    implements _$$PlaceStateLoadingImplCopyWith<$Res> {
  __$$PlaceStateLoadingImplCopyWithImpl(_$PlaceStateLoadingImpl _value,
      $Res Function(_$PlaceStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlaceStateLoadingImpl implements _PlaceStateLoading {
  const _$PlaceStateLoadingImpl();

  @override
  String toString() {
    return 'PlaceState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlaceStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ReviewEntity> reviews) success,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ReviewEntity> reviews)? success,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ReviewEntity> reviews)? success,
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
    required TResult Function(_PlaceStateLoading value) loading,
    required TResult Function(_PlaceStateSuccess value) success,
    required TResult Function(_PlaceStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceStateLoading value)? loading,
    TResult? Function(_PlaceStateSuccess value)? success,
    TResult? Function(_PlaceStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceStateLoading value)? loading,
    TResult Function(_PlaceStateSuccess value)? success,
    TResult Function(_PlaceStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PlaceStateLoading implements PlaceState {
  const factory _PlaceStateLoading() = _$PlaceStateLoadingImpl;
}

/// @nodoc
abstract class _$$PlaceStateSuccessImplCopyWith<$Res> {
  factory _$$PlaceStateSuccessImplCopyWith(_$PlaceStateSuccessImpl value,
          $Res Function(_$PlaceStateSuccessImpl) then) =
      __$$PlaceStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ReviewEntity> reviews});
}

/// @nodoc
class __$$PlaceStateSuccessImplCopyWithImpl<$Res>
    extends _$PlaceStateCopyWithImpl<$Res, _$PlaceStateSuccessImpl>
    implements _$$PlaceStateSuccessImplCopyWith<$Res> {
  __$$PlaceStateSuccessImplCopyWithImpl(_$PlaceStateSuccessImpl _value,
      $Res Function(_$PlaceStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviews = null,
  }) {
    return _then(_$PlaceStateSuccessImpl(
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewEntity>,
    ));
  }
}

/// @nodoc

class _$PlaceStateSuccessImpl implements _PlaceStateSuccess {
  const _$PlaceStateSuccessImpl({required final List<ReviewEntity> reviews})
      : _reviews = reviews;

  final List<ReviewEntity> _reviews;
  @override
  List<ReviewEntity> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'PlaceState.success(reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceStateSuccessImpl &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceStateSuccessImplCopyWith<_$PlaceStateSuccessImpl> get copyWith =>
      __$$PlaceStateSuccessImplCopyWithImpl<_$PlaceStateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ReviewEntity> reviews) success,
    required TResult Function() failure,
  }) {
    return success(reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ReviewEntity> reviews)? success,
    TResult? Function()? failure,
  }) {
    return success?.call(reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ReviewEntity> reviews)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceStateLoading value) loading,
    required TResult Function(_PlaceStateSuccess value) success,
    required TResult Function(_PlaceStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceStateLoading value)? loading,
    TResult? Function(_PlaceStateSuccess value)? success,
    TResult? Function(_PlaceStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceStateLoading value)? loading,
    TResult Function(_PlaceStateSuccess value)? success,
    TResult Function(_PlaceStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _PlaceStateSuccess implements PlaceState {
  const factory _PlaceStateSuccess(
      {required final List<ReviewEntity> reviews}) = _$PlaceStateSuccessImpl;

  List<ReviewEntity> get reviews;
  @JsonKey(ignore: true)
  _$$PlaceStateSuccessImplCopyWith<_$PlaceStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaceStateFailureImplCopyWith<$Res> {
  factory _$$PlaceStateFailureImplCopyWith(_$PlaceStateFailureImpl value,
          $Res Function(_$PlaceStateFailureImpl) then) =
      __$$PlaceStateFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlaceStateFailureImplCopyWithImpl<$Res>
    extends _$PlaceStateCopyWithImpl<$Res, _$PlaceStateFailureImpl>
    implements _$$PlaceStateFailureImplCopyWith<$Res> {
  __$$PlaceStateFailureImplCopyWithImpl(_$PlaceStateFailureImpl _value,
      $Res Function(_$PlaceStateFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlaceStateFailureImpl implements _PlaceStateFailure {
  const _$PlaceStateFailureImpl();

  @override
  String toString() {
    return 'PlaceState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlaceStateFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ReviewEntity> reviews) success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ReviewEntity> reviews)? success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ReviewEntity> reviews)? success,
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
    required TResult Function(_PlaceStateLoading value) loading,
    required TResult Function(_PlaceStateSuccess value) success,
    required TResult Function(_PlaceStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceStateLoading value)? loading,
    TResult? Function(_PlaceStateSuccess value)? success,
    TResult? Function(_PlaceStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceStateLoading value)? loading,
    TResult Function(_PlaceStateSuccess value)? success,
    TResult Function(_PlaceStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _PlaceStateFailure implements PlaceState {
  const factory _PlaceStateFailure() = _$PlaceStateFailureImpl;
}
