import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neo_tour/features/place/data/models/booking/booking_model.dart';
import 'package:neo_tour/features/place/domain/entity/review_entity.dart';
import 'package:neo_tour/features/place/domain/useCase/review_use_case.dart';

part 'place_event.dart';
part 'place_state.dart';
part 'place_bloc.freezed.dart';

class PlaceBloc extends Bloc<PlaceEvent, PlaceState> {
  final ReviewUseCase reviewUseCase;

  PlaceBloc({required this.reviewUseCase}) : super(const PlaceState.loading()) {
    on<_LoadReviews>(_onLoad);
  }

  Future<void> _onLoad(_LoadReviews event, Emitter<PlaceState> emit) async {
    emit(const PlaceState.loading());
    try {
      List<ReviewEntity> reviews = await reviewUseCase.call(event.id);

      emit(
        PlaceState.success(reviews: reviews),
      );
    } catch (_) {
      emit(
        const PlaceState.failure(),
      );
    }
  }
}
