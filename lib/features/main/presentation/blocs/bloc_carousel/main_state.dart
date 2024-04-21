part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.loading() = _MainStateLoading;
  const factory MainState.success({required List<TourEntity> carouselTours}) = _MainStateSuccess;
  const factory MainState.failure() = _MainStateFailure;
}
