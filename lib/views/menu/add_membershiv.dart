import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mr_ambarisha_frontend_new/utils/constant_box.dart';

import '../../utils/app_colors.dart';

class AddMembershipView extends StatelessWidget {
  const AddMembershipView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    kboxw10(),
                    Container(
                      width: width * 0.67,
                      decoration: BoxDecoration(
                          color: const Color(0xff89F4B4),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            "Your wallet balance is ₹2.00",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.black, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    kcard("1 Month Membership"),
                    kbox10(),
                    kcard("2  Month MemberShipp"),
                    kbox10(),
                    kcard("3 Month Membership"),
                    kbox10(),
                    kcard("6 Month Membership"),
                    kbox10(),
                    kcard("1 Year  Membership"),
                    kbox20(),
                    const Text(
                      "Enter Promo Code",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 17),
                    ),
                    kbox10(),
                    Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12)),
                      child: TextFormField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    kbox30(),
                     Center(
                            child: InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                height: 50.h,
                                width: Get.width - 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: AppColors.buttoncolor),
                                child: const Center(
                                    child: Text(
                                  "Apply",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                )),
                              ),
                            ),
                          ),
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }

  kcard(text) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            text,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400),
          ),
          const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.black,
            size: 15,
          )
        ]),
      ),
    );
  }
}
