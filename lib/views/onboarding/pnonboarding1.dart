import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_ambarisha_frontend_new/utils/constant_box.dart';
import 'package:mr_ambarisha_frontend_new/views/onboarding/pnonboarding2.dart';

class PnOnboarding1View extends StatelessWidget {
  const PnOnboarding1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: 100, height: 100, child: Image.asset("assets/mobi.png")),
          InkWell(onTap: () {
            Get.to(Pnonboarding2View());
          },
            child: const Text(
              "shop now ->",
              style: TextStyle(
                  color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
              height: 100, width: 100, child: Image.asset("assets/lemon1.png")),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset("assets/pnima1.png"),
          kbox10(),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Welcome to farmers Family",
                  style: TextStyle(fontSize: 20, color: Color(0xff12823C)),
                ),
                kbox20(),
                const Text(
                  "organic fresh /Grocery/Daily Essential",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
                const Text(
                  " vegetables/ Milk /every Morning  before 7 AM ",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                kbox10(),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [Image.asset("assets/ccc.png")],
                // ),
                kbox40(),
                Image.asset("assets/emb.png"),
                kbox10(),
                const Text(
                  "Remember eMB for grab your daily needs",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                kbox5(),
                const Text(
                  "needs",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
