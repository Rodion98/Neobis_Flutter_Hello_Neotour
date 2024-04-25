// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookingBlocEvent {
  BookingModel get bookingModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BookingModel bookingModel) post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BookingModel bookingModel)? post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BookingModel bookingModel)? post,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Post value) post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Post value)? post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Post value)? post,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingBlocEventCopyWith<BookingBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingBlocEventCopyWith<$Res> {
  factory $BookingBlocEventCopyWith(
          BookingBlocEvent value, $Res Function(BookingBlocEvent) then) =
      _$BookingBlocEventCopyWithImpl<$Res, BookingBlocEvent>;
  @useResult
  $Res call({BookingModel bookingModel});

  $BookingModelCopyWith<$Res> get bookingModel;
}

/// @nodoc
class _$BookingBlocEventCopyWithImpl<$Res, $Val extends BookingBlocEvent>
    implements $BookingBlocEventCopyWith<$Res> {
  _$BookingBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingModel = null,
  }) {
    return _then(_value.copyWith(
      bookingModel: null == bookingModel
          ? _value.bookingModel
          : bookingModel // ignore: cast_nullable_to_non_nullable
              as BookingModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingModelCopyWith<$Res> get bookingModel {
    return $BookingModelCopyWith<$Res>(_value.bookingModel, (value) {
      return _then(_value.copyWith(bookingModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res>
    implements $BookingBlocEventCopyWith<$Res> {
  factory _$$PostImplCopyWith(
          _$PostImpl value, $Res Function(_$PostImpl) then) =
      __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BookingModel bookingModel});

  @override
  $BookingModelCopyWith<$Res> get bookingModel;
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$BookingBlocEventCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingModel = null,
  }) {
    return _then(_$PostImpl(
      bookingModel: null == bookingModel
          ? _value.bookingModel
          : bookingModel // ignore: cast_nullable_to_non_nullable
              as BookingModel,
    ));
  }
}

/// @nodoc

class _$PostImpl implements _Post {
  const _$PostImpl({required this.bookingModel});

  @override
  final BookingModel bookingModel;

  @override
  String toString() {
    return 'BookingBlocEvent.post(bookingModel: $bookingModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.bookingModel, bookingModel) ||
                other.bookingModel == bookingModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BookingModel bookingModel) post,
  }) {
    return post(bookingModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BookingModel bookingModel)? post,
  }) {
    return post?.call(bookingModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BookingModel bookingModel)? post,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(bookingModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Post value) post,
  }) {
    return post(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Post value)? post,
  }) {
    return post?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Post value)? post,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(this);
    }
    return orElse();
  }
}

abstract class _Post implements BookingBlocEvent {
  const factory _Post({required final BookingModel bookingModel}) = _$PostImpl;

  @override
  BookingModel get bookingModel;
  @override
  @JsonKey(ignore: true)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookingBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int status) success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int status)? success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int status)? success,
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
abstract class $BookingBlocStateCopyWith<$Res> {
  factory $BookingBlocStateCopyWith(
          BookingBlocState value, $Res Function(BookingBlocState) then) =
      _$BookingBlocStateCopyWithImpl<$Res, BookingBlocState>;
}

/// @nodoc
class _$BookingBlocStateCopyWithImpl<$Res, $Val extends BookingBlocState>
    implements $BookingBlocStateCopyWith<$Res> {
  _$BookingBlocStateCopyWithImpl(this._value, this._then);

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
    extends _$BookingBlocStateCopyWithImpl<$Res, _$PlaceStateLoadingImpl>
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
    return 'BookingBlocState.loading()';
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
    required TResult Function(int status) success,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int status)? success,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int status)? success,
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

abstract class _PlaceStateLoading implements BookingBlocState {
  const factory _PlaceStateLoading() = _$PlaceStateLoadingImpl;
}

/// @nodoc
abstract class _$$PlaceStateSuccessImplCopyWith<$Res> {
  factory _$$PlaceStateSuccessImplCopyWith(_$PlaceStateSuccessImpl value,
          $Res Function(_$PlaceStateSuccessImpl) then) =
      __$$PlaceStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int status});
}

/// @nodoc
class __$$PlaceStateSuccessImplCopyWithImpl<$Res>
    extends _$BookingBlocStateCopyWithImpl<$Res, _$PlaceStateSuccessImpl>
    implements _$$PlaceStateSuccessImplCopyWith<$Res> {
  __$$PlaceStateSuccessImplCopyWithImpl(_$PlaceStateSuccessImpl _value,
      $Res Function(_$PlaceStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$PlaceStateSuccessImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PlaceStateSuccessImpl implements _PlaceStateSuccess {
  const _$PlaceStateSuccessImpl({required this.status});

  @override
  final int status;

  @override
  String toString() {
    return 'BookingBlocState.success(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceStateSuccessImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

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
    required TResult Function(int status) success,
    required TResult Function() failure,
  }) {
    return success(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int status)? success,
    TResult? Function()? failure,
  }) {
    return success?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int status)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(status);
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

abstract class _PlaceStateSuccess implements BookingBlocState {
  const factory _PlaceStateSuccess({required final int status}) =
      _$PlaceStateSuccessImpl;

  int get status;
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
    extends _$BookingBlocStateCopyWithImpl<$Res, _$PlaceStateFailureImpl>
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
    return 'BookingBlocState.failure()';
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
    required TResult Function(int status) success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int status)? success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int status)? success,
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

abstract class _PlaceStateFailure implements BookingBlocState {
  const factory _PlaceStateFailure() = _$PlaceStateFailureImpl;
}
