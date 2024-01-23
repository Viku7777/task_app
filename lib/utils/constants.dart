import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Constants {
  // api
  static const String baseUrl = "https://ambarisha-vercel.vercel.app";

  // sized box
  static const height5 = SizedBox(height: 5);
  static const height10 = SizedBox(height: 10);
  static const height15 = SizedBox(height: 15);
  static const height20 = SizedBox(height: 20);
  static const width5 = SizedBox(width: 5);
  static const width10 = SizedBox(width: 10);
  static const width15 = SizedBox(width: 15);
  static const width20 = SizedBox(width: 20);

  // colors
  static const whiteColor = Colors.white;
  static const blackColor = Colors.black;
  static const tileColor = Color.fromARGB(255, 166, 212, 250);
  static const greyColor = Colors.grey;
  static const redColor = Colors.red;

  // divider
  static const divider = Divider(thickness: 2);

  // Screen Navigation
  static nextScreen(context, page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  static screenReplacement(context, page) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => page));
  }

  // snackbar
  static void showCustomSnackbar(
      String title, String message, Color backgroundColor) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: backgroundColor,
      colorText: Colors.white,
      duration: const Duration(seconds: 3),
      borderRadius: 10.0,
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      borderWidth: 2.0,
      borderColor: Colors.white,
      boxShadows: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ],
      titleText: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      messageText: Text(
        message,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  static showCircularProgress() {
    return const Center(
      child: CircularProgressIndicator(
        strokeWidth: 4,
        backgroundColor: Colors.orange,
      ),
    );
  }
}
