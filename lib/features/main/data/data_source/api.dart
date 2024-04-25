import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:neo_tour/core/app/shared/app_constants.dart';
import 'package:neo_tour/features/main/data/models/tour/tour.dart';
import 'package:neo_tour/features/place/data/models/booking/booking_model.dart';
import 'package:neo_tour/features/place/data/models/review/review_model.dart';

class Api {
  final Dio dio;
  Api({required this.dio});

  Future<List<TourModel>> fetchTours(String? category) async {
    try {
      final response = await Dio().get('${Constants.baseUrl}${Constants.tours}$category');
      if (response.statusCode == 200) {
        if (response.data != null) {
          List<dynamic> responseData = response.data;
          List<TourModel> models = responseData
              .map(
                (data) => TourModel.fromJson(data),
              )
              .toList();

          return models;
        } else {
          throw Exception('Response data is null');
        }
      } else {
        throw Exception('Failed to load tours');
      }
    } catch (e) {
      throw Exception('Failed to load tours: $e');
    }
  }

  Future<List<ReviewModel>> fetchReview(int? id) async {
    try {
      final response = await Dio().get('${Constants.baseUrl}${Constants.reviews}$id');
      if (response.statusCode == 200) {
        if (response.data != null) {
          List<dynamic> responseData = response.data;
          List<ReviewModel> models = responseData
              .map(
                (data) => ReviewModel.fromJson(data),
              )
              .toList();

          return models;
        } else {
          throw Exception('Response data is null');
        }
      } else {
        throw Exception('Failed to load tours');
      }
    } catch (e) {
      throw Exception('Failed to load tours: $e');
    }
  }

  Future<int> postBooking(BookingModel? bookingModel) async {
    try {
      final json = bookingModel!.toJson();
      print(json);
      final response = await Dio().post('${Constants.baseUrl}${Constants.booking}', data: json);
      print(response.statusCode);
      return 1;
    } catch (e) {
      throw Exception('Failed to load tours: $e');
    }
  }
}
