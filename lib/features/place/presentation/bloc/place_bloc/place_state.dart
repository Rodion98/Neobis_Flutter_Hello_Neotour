part of 'place_bloc.dart';

@freezed
class PlaceState with _$PlaceState {
  const factory PlaceState.loading() = _PlaceStateLoading;
  const factory PlaceState.success({required List<ReviewEntity> reviews}) = _PlaceStateSuccess;
  const factory PlaceState.failure() = _PlaceStateFailure;
}
