import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:neo_tour/features/main/data/data_source/api.dart';
import 'package:neo_tour/features/place/data/mapper/review_mapper.dart';
import 'package:neo_tour/features/main/data/mapper/tour_mapper.dart';
import 'package:neo_tour/features/main/data/repository/main_repo.dart';
import 'package:neo_tour/features/place/domain/useCase/booking_use_case.dart';
import 'package:neo_tour/features/place/domain/useCase/review_use_case.dart';
import 'package:neo_tour/features/main/domain/useCase/tour_use_case.dart';
import 'package:neo_tour/features/main/presentation/blocs/bloc_carousel/main_bloc.dart';
import 'package:neo_tour/features/main/presentation/blocs/bloc_grid_view/grid_view_bloc.dart';
import 'package:neo_tour/features/place/data/repository/place_repo.dart';
import 'package:neo_tour/features/place/presentation/bloc/booking_bloc/booking_bloc_bloc.dart';
import 'package:neo_tour/features/place/presentation/bloc/place_bloc/place_bloc.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final getIt = GetIt.instance;

Dio buildDioClient() {
  final dio = Dio();
  dio.interceptors.add(
    PrettyDioLogger(),
  );
  return dio;
}

void setupDependencies() {
  final dio = buildDioClient();
  getIt.registerSingleton<Dio>(
    Dio(),
  );

  getIt.registerSingleton<Api>(
    Api(dio: dio),
  );

  getIt.registerSingleton<TourMapper>(
    TourMapper(),
  );

  getIt.registerSingleton<ReviewMapper>(
    ReviewMapper(),
  );
  getIt.registerSingleton<MainRepoImpl>(
    MainRepoImpl(api: getIt<Api>(), tourMapper: getIt<TourMapper>(), reviewMapper: getIt<ReviewMapper>()),
  );

  getIt.registerSingleton<PlaceRepoImpl>(
    PlaceRepoImpl(api: getIt<Api>(), reviewMapper: getIt<ReviewMapper>()),
  );
  getIt.registerSingleton<TourUseCase>(
    TourUseCase(
      repo: getIt<MainRepoImpl>(),
    ),
  );

  getIt.registerSingleton<ReviewUseCase>(
    ReviewUseCase(
      repo: getIt<PlaceRepoImpl>(),
    ),
  );
  getIt.registerSingleton<BookingUseCase>(
    BookingUseCase(
      repo: getIt<PlaceRepoImpl>(),
    ),
  );

  getIt.registerSingleton<MainBloc>(
    MainBloc(
      tourUseCase: getIt<TourUseCase>(),
    ),
  );
  getIt.registerSingleton<GridViewBloc>(
    GridViewBloc(tourUseCase: getIt<TourUseCase>()),
  );

  getIt.registerSingleton<PlaceBloc>(
    PlaceBloc(
      reviewUseCase: getIt<ReviewUseCase>(),
    ),
  );
  getIt.registerSingleton<BookingBlocBloc>(
    BookingBlocBloc(
      bookingUseCase: getIt<BookingUseCase>(),
    ),
  );
}
