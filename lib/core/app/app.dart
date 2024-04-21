import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neo_tour/core/app/dependencies/di.dart';
import 'package:neo_tour/core/app/router/router.dart';
import 'package:neo_tour/features/main/presentation/blocs/bloc_carousel/main_bloc.dart';
import 'package:neo_tour/features/main/presentation/blocs/bloc_grid_view/grid_view_bloc.dart';
import 'package:neo_tour/features/place/presentation/bloc/place_bloc.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<MainBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<GridViewBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<PlaceBloc>(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: _router.config(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
