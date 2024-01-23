import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mr_ambarisha_frontend_new/model/create_user_model.dart';
import 'package:mr_ambarisha_frontend_new/model/login_otp_model.dart';
import 'package:mr_ambarisha_frontend_new/model/login_user_model.dart';
import 'package:mr_ambarisha_frontend_new/model/register_otp_model.dart';
import 'package:mr_ambarisha_frontend_new/repository/api_service.dart';
import 'package:mr_ambarisha_frontend_new/utils/constants.dart';
import 'package:mr_ambarisha_frontend_new/views/Auth/login_otp_verfication.dart';
import 'package:mr_ambarisha_frontend_new/views/Auth/register_otp_verification.dart';
import 'package:mr_ambarisha_frontend_new/views/Auth/auth_view.dart';
import 'package:mr_ambarisha_frontend_new/views/choose_city.dart';

class BasketController extends GetxController {
  TextEditingController signupTextController = TextEditingController();
  TextEditingController loginTextController = TextEditingController();
  TextEditingController pinController = TextEditingController();
  TextEditingController loginPinController = TextEditingController();
  final GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final box = GetStorage();

  bool loading = false;

  CreateUserModel? createUserModel;
  RegisterOtpModel? registerOtpModel;
  LoginUserModel? loginUserModel;
  LoginOtpModel? loginOtpModel;

  // Register user
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
        Get.to(() => const RegisterOtpVerifiation());
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

  // Register user otp
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
        box.write('register_token', registerOtpModel?.token);
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

  // Login user
  fetchLoginUser({required String mobile}) async {
    try {
      LoginUserModel? result = await ApiService.loginUser(mobile: mobile);
      if (result != null) {
        loginUserModel = result;
        update();
      }
    } catch (e) {
      print("Error fetching users: $e");
    }
  }

  loginButton() async {
    loading = true;
    update();
    if (loginFormKey.currentState?.validate() ?? false) {
      await fetchLoginUser(mobile: loginTextController.text.trim());
      if (loginUserModel?.message == "OTP generated and sent to the user") {
        Get.to(() => const LoginOtpVerification());
      } else {
        Constants.showCustomSnackbar("Alert", "User not found", Colors.red);
      }
    } else {
      print('Form is invalid');
    }
    loading = false;
    update();
  }

  fetchLoginOtp({required String mobile, required String otp}) async {
    try {
      LoginOtpModel? result =
          await ApiService.loginOtp(mobile: mobile, otp: otp);
      if (result != null) {
        loginOtpModel = result;
        update();
      }
    } catch (e) {
      print("Error fetching users: $e");
    }
  }

  loginOtpButton() async {
    loading = true;
    update();
    if (loginFormKey.currentState?.validate() ?? false) {
      await fetchLoginOtp(
          mobile: loginTextController.text.trim(),
          otp: loginPinController.text.trim());
      if (loginOtpModel?.message == "OTP verification successful.") {
        box.write('login_token', loginOtpModel?.token);
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

  // Logout user
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
              await box.remove('register_token');
              await box.remove('login_token');
              Get.offAll(const AuthView());
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
