import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neo_tour/features/main/domain/entity/tour_entity.dart';
import 'package:neo_tour/features/main/presentation/main_screen.dart';
import 'package:neo_tour/features/onboarding/presentation/onboarding_screen.dart';
import 'package:neo_tour/features/place/presentation/place_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: OnboardingRoute.page,
          path: '/',
          initial: true,
        ),
        AutoRoute(
          page: MainRoute.page,
          path: '/main',
        ),
        AutoRoute(
          page: PlaceRoute.page,
          path: '/place',
        )
      ];
}
