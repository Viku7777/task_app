import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mr_ambarisha_frontend_new/utils/constant_box.dart';
import 'package:mr_ambarisha_frontend_new/views/address/add_address.dart';
import 'package:mr_ambarisha_frontend_new/views/menu/menu_screen.dart';

class EditProfileView extends StatelessWidget {
  EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.02,
              ),
              Image.asset("assets/home_pro_icon.png"),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 0.15,
                  ),
                  Image.asset("assets/edit_pro.png"),
                  Column(
                    children: [
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                          kboxw10(),
                          const Text(
                            "Edit",
                            style: TextStyle(
                                color: Color(0xff0D8DF6),
                                fontSize: 18,
                                decoration: TextDecoration.underline),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Ambarisha M",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          ktextf("phone no.", () {}),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          ktextf("Address", () {
                            Get.to(AddAddressView());
                          }),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          ktextf("gmail id", () {}),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          ktextf("year", () {}),
                          SizedBox(
                            height: height * 0.1,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(MenuScreenView());
                            },
                            child: Container(
                              height: height * 0.05,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: const Color(0xff0D8DF6),
                                  borderRadius: BorderRadius.circular(12)),
                              child: const Center(
                                child: Text(
                                  "Submit",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }

  ktextf(hint, ontap) {
    return InkWell(
      onTap: ontap,
      child: Container(
        // height: height * 0.1,
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff0091BE)),
            color: const Color(0xffF8F3F3),
            borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
            onTap: ontap,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                hintText: hint,
                border: InputBorder.none,
                suffixIcon: const Icon(Icons.edit))),
      ),
    );
  }
}
