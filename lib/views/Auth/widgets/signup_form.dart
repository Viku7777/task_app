import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mr_ambarisha_frontend_new/utils/constant_box.dart';
import 'package:mr_ambarisha_frontend_new/utils/constants.dart';
import 'package:mr_ambarisha_frontend_new/view_model/basket_controller.dart';

class SignupForm extends GetView<BasketController> {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BasketController());

    return SingleChildScrollView(
      child: Column(
        children: [
          const Divider(
            color: Colors.grey,
            thickness: 0.2,
          ),
          kbox5(),
          const Text(
            "Signup with your phone number",
            style: TextStyle(color: Colors.black),
          ),
          kbox10(),
          Form(
            key: controller.signupFormKey,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey)),
              child: TextFormField(
                  controller: controller.signupTextController,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: Colors.black),
                  textAlign: TextAlign.center,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value?.isEmpty ?? false) {
                      return 'This field cannot be empty';
                    } else if (value?.length != 10) {
                      return 'Enter valid number';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: "Enter Mobile Number",
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorStyle: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                      suffixIcon: const Icon(Icons.close),
                      prefixIcon: Container(
                        width: 55.w,
                        decoration: const BoxDecoration(),
                        child: Row(
                          children: [
                            const Text(
                              " +91",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: Colors.black,
                            ),
                            Container(
                              width: 1,
                              color: Colors.grey,
                              height: 40,
                            )
                          ],
                        ),
                      ),
                      border: InputBorder.none)),
            ),
          ),
          kbox10(),
          GetBuilder<BasketController>(
            builder: (controller) => controller.loading
                ? Constants.showCircularProgress()
                : InkWell(
                    onTap: () {
                      controller.signUpButton();
                    },
                    child: Container(
                      width: 200.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xff2ED297)),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "Next",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
