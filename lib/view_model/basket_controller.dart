import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mr_ambarisha_frontend_new/model/create_user_model.dart';
import 'package:mr_ambarisha_frontend_new/model/register_otp_model.dart';
import 'package:mr_ambarisha_frontend_new/repository/api_service.dart';
import 'package:mr_ambarisha_frontend_new/utils/constants.dart';
import 'package:mr_ambarisha_frontend_new/views/Auth/otp_verification.dart';
import 'package:mr_ambarisha_frontend_new/views/Auth/signUp_view.dart';
import 'package:mr_ambarisha_frontend_new/views/choose_city.dart';

class BasketController extends GetxController {
  TextEditingController signupTextController = TextEditingController();
  TextEditingController loginTextController = TextEditingController();
  TextEditingController pinController = TextEditingController();
  final GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  final box = GetStorage();

  bool loading = false;

  CreateUserModel? createUserModel;
  RegisterOtpModel? registerOtpModel;

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
    loading = true;
    update();
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
    loading = false;
    update();
  }

  fetchRegisterOtp({required String mobile, required String otp}) async {
    try {
      RegisterOtpModel? result =
          await ApiService.registerOtp(mobile: mobile, otp: otp);
      if (result != null) {
        registerOtpModel = result;
        update();
      }
    } catch (e) {
      print("Error fetching users: $e");
    }
  }

  registerOtpButton() async {
    loading = true;
    update();
    if (signupFormKey.currentState?.validate() ?? false) {
      await fetchRegisterOtp(
          mobile: signupTextController.text.trim(),
          otp: pinController.text.trim());
      if (registerOtpModel?.message == "OTP verification successful.") {
        box.write('token', registerOtpModel?.token);
        Get.offAll(() => const ChooseCityView());
      } else {
        Constants.showCustomSnackbar("Alert", "Invalid OTP", Colors.red);
      }
    } else {
      print('Form is invalid');
    }
    loading = false;
    update();
  }

  void logOut() async {
    await Get.dialog(
      AlertDialog(
        title: const Text(
          'Confirm',
          style: TextStyle(color: Colors.black),
        ),
        content: const Text(
          'Are you sure you want to log out?',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              loading = true;
              update();
              await box.remove('token');
              Get.offAll(const SignUpView());
              loading = false;
              update();
            },
            child: const Text('Log out'),
          ),
        ],
      ),
    );
  }
}
