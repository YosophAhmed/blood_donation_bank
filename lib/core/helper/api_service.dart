import 'package:dio/dio.dart';
import 'package:donation/core/constants/app_strings.dart';

class ApiService {
  final Dio _dio;
  final baseUrl = AppStrings.baseUrl;

  ApiService(this._dio);

  Future<Map<String, dynamic>> getData({
    required String endPoint,
  }) async {
    var response = await _dio.get(
      '$baseUrl$endPoint',
    );
    return response.data;
  }
}