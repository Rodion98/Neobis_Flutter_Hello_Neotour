import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neo_tour/features/place/data/models/booking/booking_model.dart';
import 'package:neo_tour/features/place/domain/useCase/booking_use_case.dart';

part 'booking_bloc_event.dart';
part 'booking_bloc_state.dart';
part 'booking_bloc_bloc.freezed.dart';

class BookingBlocBloc extends Bloc<BookingBlocEvent, BookingBlocState> {
  final BookingUseCase bookingUseCase;

  BookingBlocBloc({required this.bookingUseCase}) : super(const BookingBlocState.loading()) {
    on<_Post>(_onPost);
  }

  Future<void> _onPost(_Post event, Emitter<BookingBlocState> emit) async {
    emit(const BookingBlocState.loading());
    try {
      int status = await bookingUseCase.call(event.bookingModel);

      emit(
        BookingBlocState.success(status: status),
      );
    } catch (_) {
      emit(
        const BookingBlocState.failure(),
      );
    }
  }
}
