import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';
import '../../utils/constant_box.dart';

class AddAddressView extends StatelessWidget {
  const AddAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.black,
            )),
        backgroundColor: Colors.white,
        title: const Text(
          "Add Address",
          style: TextStyle(color: AppColors.black),
        ),
        actions: [Image.asset("assets/location.png")],
      ),
      body: Container(
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("assets/map.png"))),
          child: Stack(alignment: Alignment.center, children: [
            Positioned(
              bottom: height * 0.3,
              child: Container(
                height: height * 0.07,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.buttoncolor),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("assets/loca2.png"),
                    const Text(
                      "Use Current Location",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                )),
              ),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  height: height * 0.22,
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/send.png"),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Aprtament Name(list)",
                                  style: TextStyle(
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                                Text(
                                  "Required Scrolling with",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                )
                              ],
                            ),
                            kboxw50(),
                            const Text(
                              "Change",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17),
                            ),
                          ],
                        ),
                        kbox30(),
                        InkWell(
                          onTap: () {
                            addAddress(context);
                          },
                          child: Container(
                            // height: 50.h,
                            width: 350,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: AppColors.buttoncolor),
                            child: const Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Center(
                                  child: Text(
                                "Enter Complete Address",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
          ])),
    );
  }

  addAddress(context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.9,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Enter Complete Address",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: AppColors.black),
                        ),
                        InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: const Icon(
                              Icons.close,
                              color: AppColors.black,
                            ))
                      ],
                    ),
                    const Divider(
                      color: AppColors.ktextColor,
                    ),
                    kbox10(),
                    const Text(
                      "Save address as *",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueAccent),
                    ),
                    kbox10(),
                    const Text(
                      "Location",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    kbox10(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        kboxxx("Delhi"),
                        kboxxx("Mumbai"),
                        kboxxx("Noida")
                      ],
                    ),
                    kbox20(),
                    ktextField("choose Apratment"),
                    kbox10(),
                    ktextField("Block / Towerr"),
                    kbox10(),
                    ktextField("FLoor"),
                    kbox10(),
                    ktextField("Flat Number"),
                    kbox20(),
                    const Text(
                      "Delivery Instructions",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              kbox60(),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff2ED297),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12))),
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          kbox40(),
                          const Text(
                            "Tip Delivery Partners",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          kbox20(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              emoji("☺️", "₹ 10"),
                              emoji("☺️", "₹ 20"),
                              emoji("🤩", "₹ 30"),
                              emoji("", "Other")
                            ],
                          ),
                          kbox20(),
                          Row(
                            children: [
                              const Icon(
                                Icons.check_box_rounded,
                                color: Colors.white,
                              ),
                              kboxw10(),
                              const Text(
                                "Save for all the orders in this address",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          kbox20(),
                          const Center(
                            child: Text(
                              "Your kindness means a lot! 100% of your tip go\ndirectly to your delivery partner",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                          kbox20(),
                          Center(
                            child: InkWell(
                              onTap: () {
                                // Get.to(const CheckOutMainView());
                                // mainpayment = true;
                              },
                              child: Container(
                                height: 50.h,
                                width: Get.width - 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: AppColors.buttoncolor),
                                child: const Center(
                                    child: Text(
                                  "Save & Proceed",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -80,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 3,
                            height: MediaQuery.of(context).size.height * 0.14,
                            decoration: BoxDecoration(
                                color: const Color(0xffF1F1F1),
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Delivery Instructions",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff12823C)),
                                  ),
                                  kbox20(),
                                  const Text(
                                    "Drop @\nSecurity",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 3,
                            height: MediaQuery.of(context).size.height * 0.14,
                            decoration: BoxDecoration(
                                color: const Color(0xffF1F1F1),
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.call,
                                        color: Colors.black,
                                      ),
                                      kboxw20(),
                                      const Icon(
                                        Icons.check_box_outline_blank_outlined,
                                        color: Colors.black,
                                      )
                                    ],
                                  ),
                                  kbox20(),
                                  const Text(
                                    "Avoid calling",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height * 0.14,
                            decoration: BoxDecoration(
                                color: const Color(0xffF1F1F1),
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.notifications_off_rounded,
                                        color: Colors.black,
                                      ),
                                      kboxw30(),
                                      const Icon(
                                        Icons.check_box,
                                        color: Colors.green,
                                      )
                                    ],
                                  ),
                                  kbox20(),
                                  const Text(
                                    "Don’t ring the\nbell",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  // ktextField(text) {
  //   return Container(
  //    // height: 40.h,
  //     width: Get.width,
  //     decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(8),
  //         border: Border.all(color: AppColors.kboadercolor)),
  //     child: TextFormField(
  //         style: const TextStyle(color: AppColors.ktextColor),
  //         decoration: InputDecoration(label: Text(text),
  //           enabledBorder: OutlineInputBorder(),
  //             contentPadding: const EdgeInsets.all(10),
  //          //   hintText: text,
  //             hintStyle: const TextStyle(fontSize: 15),
  //            )),
  //   );
  // }
  ktextField(level) {
    return InkWell(
      onTap: () {},
      child: TextFormField(
        style: const TextStyle(fontSize: 16, color: Colors.grey),
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 5.0, 15.0, 15.0),
            fillColor: Colors.white,
            suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined),
            filled: true,
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xffA7DDEE),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xffA7DDEE),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 47, 45, 45),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            labelStyle: const TextStyle(
                color: AppColors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400),
            labelText: level),
      ),
    );
  }

  kboxxx(text) {
    return Container(
      height: 30.h,
      width: 100.w,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff93E1B1)),
          borderRadius: BorderRadius.circular(8)),
      child: Center(
          child: Text(
        text,
        style: const TextStyle(color: AppColors.ktextColor),
      )),
    );
  }

  emoji(emo, text) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(emo),
            Text(
              text,
              style: const TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
