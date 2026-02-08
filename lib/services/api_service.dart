import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/yoga_response.dart';

class ApiService {
  static const String baseUrl = 'https://api.prosignings.online/api';

  Future<YogaResponse> fetchHomeData() async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/home'),

        body: {
          "userId":"randomstring"
        }

      );

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        return YogaResponse.fromJson(jsonData);
      } else {
        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching data: $e');
    }
  }
}