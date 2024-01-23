import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:mr_ambarisha_frontend_new/model/cart_model.dart';
import 'package:mr_ambarisha_frontend_new/model/category_model.dart';
import 'package:mr_ambarisha_frontend_new/model/create_user_model.dart';
import 'package:mr_ambarisha_frontend_new/model/login_otp_model.dart';
import 'package:mr_ambarisha_frontend_new/model/login_user_model.dart';
import 'package:mr_ambarisha_frontend_new/model/product_model.dart';
import 'package:mr_ambarisha_frontend_new/model/register_otp_model.dart';
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

  static Future<RegisterOtpModel?> registerOtp(
      {required String mobile, required String otp}) async {
    try {
      final url = Uri.parse("${Constants.baseUrl}/api/v1/verify/otp");
      var response =
          await http.post(url, body: {"mobileNumber": mobile, "otp": otp});
      if (response.statusCode == 200) {
        print(response.body);
        var result = jsonDecode(response.body);
        return RegisterOtpModel.fromJson(result);
      }
    } catch (e) {
      print("Error getting user: $e");
    }
    return null;
  }

  static Future<LoginUserModel?> loginUser({required String mobile}) async {
    try {
      final url = Uri.parse("${Constants.baseUrl}/api/v1/login");
      var response = await http.post(url, body: {"mobileNumber": mobile});
      if (response.statusCode == 200) {
        print(response.body);
        var result = jsonDecode(response.body);
        return LoginUserModel.fromJson(result);
      }
    } catch (e) {
      print("Error getting user: $e");
    }
    return null;
  }

  static Future<LoginOtpModel?> loginOtp(
      {required String mobile, required String otp}) async {
    try {
      final url = Uri.parse("${Constants.baseUrl}/api/v1/verify/login");
      var response =
          await http.post(url, body: {"mobileNumber": mobile, "otp": otp});
      if (response.statusCode == 200) {
        print(response.body);
        var result = jsonDecode(response.body);
        return LoginOtpModel.fromJson(result);
      }
    } catch (e) {
      print("Error getting user: $e");
    }
    return null;
  }

  static Future<CategoryModel?> getCategory() async {
    try {
      final url = Uri.parse("${Constants.baseUrl}/api/v1/category/all");
      var response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.body);
        var result = jsonDecode(response.body);
        return CategoryModel.fromJson(result);
      }
    } catch (e) {
      print("Error getting user: $e");
    }
    return null;
  }

  static Future<ProductModel?> getProducts() async {
    try {
      final url = Uri.parse("${Constants.baseUrl}/api/v1/product/all");
      var response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.body);
        var result = jsonDecode(response.body);
        return ProductModel.fromJson(result);
      }
    } catch (e) {
      print("Error getting user: $e");
    }
    return null;
  }

  static Future<CartModel?> getCart() async {
    try {
      final box = GetStorage();
      var token = await box.read('token');
      final url = Uri.parse("${Constants.baseUrl}/api/v1/cart");
      var response = await http.get(
        url,
        headers: {
          'Authorization': 'Bearer $token',
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.body);
        var result = jsonDecode(response.body);
        return CartModel.fromJson(result);
      }
    } catch (e) {
      print("Error getting user: $e");
    }
    return null;
  }
}
