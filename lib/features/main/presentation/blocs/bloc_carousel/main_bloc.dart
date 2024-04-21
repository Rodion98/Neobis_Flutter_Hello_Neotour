import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neo_tour/core/use_case/use_case.dart';
import 'package:neo_tour/features/main/domain/entity/tour_entity.dart';

part 'main_event.dart';
part 'main_state.dart';

part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final UseCase tourUseCase;

  MainBloc({required this.tourUseCase}) : super(const MainState.loading()) {
    on<_LoadTours>(_onLoad);
  }

  Future<void> _onLoad(_LoadTours event, Emitter<MainState> emit) async {
    emit(const MainState.loading());
    try {
      List<TourEntity> carouselTours = await tourUseCase.call(event.index);

      emit(
        MainState.success(carouselTours: carouselTours),
      );
    } catch (_) {
      emit(
        const MainState.failure(),
      );
    }
  }
}
