import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neo_tour/features/main/domain/entity/tour_entity.dart';
import 'package:neo_tour/features/main/domain/useCase/tour_use_case.dart';

part 'grid_view_event.dart';
part 'grid_view_state.dart';
part 'grid_view_bloc.freezed.dart';

class GridViewBloc extends Bloc<GridViewEvent, GridViewState> {
  final TourUseCase tourUseCase;

  GridViewBloc({required this.tourUseCase}) : super(const GridViewState.loading()) {
    on<_LoadRecommendedTours>(_onLoad);
  }

  Future<void> _onLoad(_LoadRecommendedTours event, Emitter<GridViewState> emit) async {
    emit(const GridViewState.loading());
    try {
      List<TourEntity> recommendedTours = await tourUseCase.call("recommended");

      emit(
        GridViewState.success(
          recommendedTours: recommendedTours,
        ),
      );
    } catch (_) {
      emit(const GridViewState.failure());
    }
  }
}
