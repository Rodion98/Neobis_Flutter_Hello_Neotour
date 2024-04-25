part of 'booking_bloc_bloc.dart';

@freezed
class BookingBlocEvent with _$BookingBlocEvent {
  const factory BookingBlocEvent.post({required BookingModel bookingModel}) = _Post;
}
