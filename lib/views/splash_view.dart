import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_ambarisha_frontend_new/utils/app_colors.dart';
import 'package:mr_ambarisha_frontend_new/utils/constant_box.dart';
import 'package:mr_ambarisha_frontend_new/views/onboarding/onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Get.to(IntroScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themeColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.themeColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            kbox30(),
            Image.asset("assets/logo.png"),
            kbox50(),
            kbox50(),
            kbox50(),
            const Text(
              "Add to Basket till midnight and get deliver’s",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 15),
            ),
            const Text(
              "by Early Morning",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            kbox30(),
            Container(
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff2ED297)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Let’s Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    kboxw10(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: const Text(
                "By clicking on “Continue” you are agreeing to our terms of use ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
