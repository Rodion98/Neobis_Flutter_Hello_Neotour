part of 'booking_bloc_bloc.dart';

@freezed
class BookingBlocState with _$BookingBlocState {
  const factory BookingBlocState.loading() = _PlaceStateLoading;
  const factory BookingBlocState.success({required int status}) = _PlaceStateSuccess;
  const factory BookingBlocState.failure() = _PlaceStateFailure;
}
