import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_ambarisha_frontend_new/model/create_user_model.dart';
import 'package:mr_ambarisha_frontend_new/repository/api_service.dart';
import 'package:mr_ambarisha_frontend_new/utils/constants.dart';
import 'package:mr_ambarisha_frontend_new/views/Auth/otp_verification.dart';

class BasketController extends GetxController {
  TextEditingController signupTextController = TextEditingController();
  TextEditingController loginTextController = TextEditingController();
  final GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  CreateUserModel? createUserModel;

  fetchCreateUser({required String mobile}) async {
    try {
      CreateUserModel? result = await ApiService.createUser(mobile: mobile);
      if (result != null) {
        createUserModel = result;
        update();
      }
    } catch (e) {
      print("Error fetching users: $e");
    }
  }

  signUpButton() async {
    if (signupFormKey.currentState?.validate() ?? false) {
      await fetchCreateUser(mobile: signupTextController.text.trim());
      if (createUserModel?.message == "OTP sent successfully") {
        Get.to(() => const OtpVerifictionView());
      } else {
        Constants.showCustomSnackbar(
            "Alert", "User with this mobile number already exists", Colors.red);
      }
    } else {
      print('Form is invalid');
    }
  }
}
