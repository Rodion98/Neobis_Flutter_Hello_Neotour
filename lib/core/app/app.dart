import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neo_tour/features/main/presentation/main_screen.dart';
import 'package:neo_tour/features/onboarding/presentation/onboarding_screen.dart';
import 'package:neo_tour/features/place/presentation/place_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainScreen(),

      title: 'Flutter Demo',
      theme: ThemeData(
        // scaffoldBackgroundColor: AppColors.backgroundColor,
        // appBarTheme: AppBarTheme(backgroundColor: AppColors.backgroundColor),
        useMaterial3: true,
      ),
      // routerConfig: _router.config(),
    );
  }
}
