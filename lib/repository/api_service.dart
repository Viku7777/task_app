import 'dart:convert';

import 'package:mr_ambarisha_frontend_new/model/create_user_model.dart';
import 'package:mr_ambarisha_frontend_new/utils/constants.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<CreateUserModel?> createUser({required String mobile}) async {
    try {
      final url = Uri.parse("${Constants.baseUrl}/api/v1/register");
      var response = await http.post(url, body: {"mobileNumber": mobile});
      if (response.statusCode == 200) {
        print(response.body);
        var result = jsonDecode(response.body);
        return CreateUserModel.fromJson(result);
      }
    } catch (e) {
      print("Error getting user: $e");
    }
    return null;
  }
}