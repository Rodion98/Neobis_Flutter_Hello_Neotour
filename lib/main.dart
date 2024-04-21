import 'package:flutter/material.dart';
import 'package:neo_tour/core/app/app.dart';
import 'package:neo_tour/core/app/dependencies/di.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependencies();
  runApp(MyApp());
}
