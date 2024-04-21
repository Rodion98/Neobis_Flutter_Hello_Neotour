// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingScreen(),
      );
    },
    PlaceRoute.name: (routeData) {
      final args = routeData.argsAs<PlaceRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PlaceScreen(
          tourEntity: args.tourEntity,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingScreen]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PlaceScreen]
class PlaceRoute extends PageRouteInfo<PlaceRouteArgs> {
  PlaceRoute({
    required TourEntity tourEntity,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          PlaceRoute.name,
          args: PlaceRouteArgs(
            tourEntity: tourEntity,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PlaceRoute';

  static const PageInfo<PlaceRouteArgs> page = PageInfo<PlaceRouteArgs>(name);
}

class PlaceRouteArgs {
  const PlaceRouteArgs({
    required this.tourEntity,
    this.key,
  });

  final TourEntity tourEntity;

  final Key? key;

  @override
  String toString() {
    return 'PlaceRouteArgs{tourEntity: $tourEntity, key: $key}';
  }
}
