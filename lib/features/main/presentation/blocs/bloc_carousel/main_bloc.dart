import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neo_tour/core/app/shared/app_constants.dart';
import 'package:neo_tour/features/main/domain/entity/tour_entity.dart';
import 'package:neo_tour/features/main/domain/useCase/tour_use_case.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final TourUseCase tourUseCase;

  MainBloc({required this.tourUseCase}) : super(const MainState.loading()) {
    on<_LoadTours>(_onLoad);
  }

  Future<void> _onLoad(_LoadTours event, Emitter<MainState> emit) async {
    emit(const MainState.loading());
    try {
      final List<Tab> tabs = Constants.titles.map((title) => Tab(text: title)).toList();
      String category = Constants.titles[event.index!].toLowerCase().replaceAll(' ', '-');
      if (category == "asia" || category == "europe") {
        category = category.substring(0, 1).toUpperCase() + category.substring(1);
        category = "continent/$category";
      }
      List<TourEntity> carouselTours = await tourUseCase.call(category);

      emit(
        MainState.success(carouselTours: carouselTours, tabs: tabs, index: event.index!),
      );
    } catch (_) {
      emit(
        const MainState.failure(),
      );
    }
  }
}
