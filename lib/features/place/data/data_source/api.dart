import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:neo_tour/core/app/shared/app_constants.dart';
import 'package:neo_tour/features/main/data/models/tour.dart';
import 'package:neo_tour/features/place/data/models/review/review.dart';

class MockItercepterForPlace {
  static const _jsonDir = 'assets/json/place/';

  Future<List<ReviewModel>> onGetReview() async {
    String resourcePath = "review.json";
    final data = await rootBundle.loadString(resourcePath);
    final List<dynamic> map = jsonDecode(data);
    final List<ReviewModel> modelList = map.map((i) => ReviewModel.fromJson(i)).toList();
    print(modelList);
    return modelList;
  }
}
