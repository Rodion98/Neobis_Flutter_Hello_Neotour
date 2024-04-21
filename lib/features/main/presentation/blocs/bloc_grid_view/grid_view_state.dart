part of 'grid_view_bloc.dart';

@freezed
class GridViewState with _$GridViewState {
  const factory GridViewState.loading() = _GridViewStateLoading;
  const factory GridViewState.success({required List<TourEntity> recommendedTours}) = _GridViewStateSuccess;
  const factory GridViewState.failure() = _GridViewStateFailure;
}
