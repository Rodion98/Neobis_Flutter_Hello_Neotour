import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:neo_tour/core/app/shared/app_constants.dart';
import 'package:neo_tour/features/main/data/models/tour.dart';

class MockItercepter {
  static const _jsonDir = 'assets/json/main/';

  Future<List<TourModel>> onGetTours(int? index) async {
    String category = Constnats.titles.elementAt(index ?? 0).toLowerCase().replaceAll(" ", "");
    String resourcePath = "$_jsonDir$category.json";
    final data = await rootBundle.loadString(resourcePath);
    final List<dynamic> map = jsonDecode(data);
    final List<TourModel> modelList = map.map((i) => TourModel.fromJson(i)).toList();
    print(modelList);
    return modelList;
  }

  Future<List<TourModel>> onGetRecommended() async {
    String resourcePath = "${_jsonDir}recommended.json";
    final data = await rootBundle.loadString(resourcePath);
    final List<dynamic> map = jsonDecode(data);
    final List<TourModel> modelList = map.map((i) => TourModel.fromJson(i)).toList();
    print(modelList);
    return modelList;
  }
}
