import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_ambarisha_frontend_new/utils/constant_box.dart';
import 'package:mr_ambarisha_frontend_new/views/Auth/signUp_view.dart';

class Pnonboarding2View extends StatelessWidget {
  const Pnonboarding2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              width: 100, height: 100, child: Image.asset("assets/mobi.png")),
          InkWell(onTap: () {
            Get.to(SignUpView());
          },
            child: const Text(
              "shop now ->",
              style: TextStyle(
                  color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
              height: 100, width: 100, child: Image.asset("assets/lemon1.png")),
        ],
      ),
      body: Stack(children: [
        SizedBox(
          height: Get.height,
          width: Get.width,
        ),
        Positioned(
            top: 5,
            left: 0,
            child:
                SizedBox(height: 160, child: Image.asset("assets/img1.png"))),
        Positioned(
            top: 5,
            left: 60,
            child:
                SizedBox(height: 240, child: Image.asset("assets/img2.png"))),
        Positioned(
            top: 30,
            right: 20,
            child:
                SizedBox(height: 200, child: Image.asset("assets/img3.png"))),
        Positioned(
            top: 130,
            right: 0,
            child:
                SizedBox(height: 120, child: Image.asset("assets/img4.png"))),
        Positioned(
            top: 170,
            right: 40,
            child:
                SizedBox(height: 150, child: Image.asset("assets/img5.png"))),
        Positioned(
            top: 210,
            left: 20,
            child:
                SizedBox(height: 130, child: Image.asset("assets/img6.png"))),
        Positioned(
            top: 280,
            left: 0,
            child:
                SizedBox(height: 100, child: Image.asset("assets/img7.png"))),
        Positioned(
            top: 350,
            right: -20,
            child:
                SizedBox(width: 200,
                  height: 150, child: Image.asset("assets/img8.png",fit: BoxFit.cover,))),
        Positioned(
            top: 380,
            left: 0,
            child:
                SizedBox(width: 140,
                  height: 150, child: Image.asset("assets/img9.png",fit: BoxFit.cover,))),
        Positioned(
            bottom: 150,
            right: 100,
            child:
                SizedBox(height: 130, child: Image.asset("assets/img10.png"))),
         Positioned(
          bottom: 80,
          left: 40,
          child: Column(
            children: [
              const Text(
                "vegetables,Milk & More",
                style: TextStyle(fontWeight: FontWeight.w800,
                  fontSize: 25, color: Colors.black),
              ),
              kbox20(),
              const Text(
                "Shop our selection of organic fresh ",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              const Text(
                " vegetables in a discounted price.",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
