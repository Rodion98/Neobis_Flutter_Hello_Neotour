import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:neo_tour/features/main/data/data_source/api.dart';
import 'package:neo_tour/features/main/data/mapper/tour_mapper.dart';
import 'package:neo_tour/features/main/data/repository/tour_repo.dart';
import 'package:neo_tour/features/main/domain/useCase/recommended_use_case.dart';
import 'package:neo_tour/features/main/domain/useCase/tour_use_case.dart';

import 'package:neo_tour/features/main/presentation/blocs/bloc_carousel/main_bloc.dart';
import 'package:neo_tour/features/main/presentation/blocs/bloc_grid_view/grid_view_bloc.dart';
import 'package:neo_tour/features/place/data/data_source/api.dart';
import 'package:neo_tour/features/place/data/mapper/review_mapper.dart';
import 'package:neo_tour/features/place/data/repository/repository.dart';
import 'package:neo_tour/features/place/domain/useCase/review_use_case.dart';
import 'package:neo_tour/features/place/presentation/bloc/place_bloc.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerSingleton<MockItercepter>(
    MockItercepter(),
  );
  getIt.registerSingleton<MockItercepterForPlace>(
    MockItercepterForPlace(),
  );
  getIt.registerSingleton<TourMapper>(
    TourMapper(),
  );
  getIt.registerSingleton<ReviewMapper>(
    ReviewMapper(),
  );
  getIt.registerSingleton<TourRepoImpl>(
    TourRepoImpl(
      api: getIt<MockItercepter>(),
      mapper: getIt<TourMapper>(),
    ),
  );
  getIt.registerSingleton<ReviewRepoImpl>(
    ReviewRepoImpl(
      api: getIt<MockItercepterForPlace>(),
      mapper: getIt<ReviewMapper>(),
    ),
  );
  getIt.registerSingleton<TourUseCase>(
    TourUseCase(
      repo: getIt<TourRepoImpl>(),
    ),
  );

  getIt.registerSingleton<RecommendedUseCase>(
    RecommendedUseCase(
      repo: getIt<TourRepoImpl>(),
    ),
  );

  getIt.registerSingleton<ReviewUseCase>(
    ReviewUseCase(
      repo: getIt<ReviewRepoImpl>(),
    ),
  );

  getIt.registerSingleton<MainBloc>(
    MainBloc(
      tourUseCase: getIt<TourUseCase>(),
    ),
  );
  getIt.registerSingleton<GridViewBloc>(
    GridViewBloc(recommendedUseCase: getIt<RecommendedUseCase>()),
  );

  getIt.registerSingleton<PlaceBloc>(
    PlaceBloc(
      reviewUseCase: getIt<ReviewUseCase>(),
    ),
  );
}
