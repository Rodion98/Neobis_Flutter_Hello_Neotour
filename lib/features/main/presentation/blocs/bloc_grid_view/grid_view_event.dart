part of 'grid_view_bloc.dart';

@freezed
class GridViewEvent with _$GridViewEvent {
  const factory GridViewEvent.loading({int? index}) = _LoadRecommendedTours;
}
