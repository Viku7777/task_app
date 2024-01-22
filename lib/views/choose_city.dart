import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mr_ambarisha_frontend_new/views/bottomNavigation/bottom_navigation_view.dart';
import 'package:mr_ambarisha_frontend_new/utils/app_colors.dart';
import 'package:mr_ambarisha_frontend_new/utils/constant_box.dart';
import 'package:pinput/pinput.dart';

class ChooseCityView extends StatefulWidget {
  const ChooseCityView({super.key});

  @override
  State<ChooseCityView> createState() => _ChooseCityViewState();
}

class _ChooseCityViewState extends State<ChooseCityView> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = Color(0xff665AF0);
    const fillColor = Colors.white;
    const borderColor = Color(0xff665AF0);

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: borderColor),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.themeColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.themeColor,
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                " Choose City",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              kbox20(),
              Center(
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: citys.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, childAspectRatio: 2 / 2.3),
                    itemBuilder: (context, index) {
                      return Container(
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("assets/${citys[index]}.png"),
                              kbox5(),
                              Text(citys[index])
                            ],
                          ));
                    }),
              ),
              kbox20(),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  width: Get.width - 100,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Enter Area PIN Code",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              kbox20(),
              Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Directionality(
                        // Specify direction if desired
                        textDirection: TextDirection.ltr,
                        child: Pinput(
                          length: 6,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
                          controller: pinController,
                          focusNode: focusNode,
                          androidSmsAutofillMethod:
                              AndroidSmsAutofillMethod.smsUserConsentApi,
                          listenForMultipleSmsOnAndroid: true,
                          defaultPinTheme: defaultPinTheme,
                          // validator: (value) {
                          //   return value == '2222' ? null : 'Pin is incorrect';
                          // },
                          // onClipboardFound: (value) {
                          //   debugPrint('onClipboardFound: $value');
                          //   pinController.setText(value);
                          // },
                          hapticFeedbackType: HapticFeedbackType.lightImpact,
                          onCompleted: (pin) {
                            debugPrint('onCompleted: $pin');
                          },
                          onChanged: (value) {
                            debugPrint('onChanged: $value');
                          },
                          cursor: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 9),
                                width: 22,
                                height: 1,
                                color: focusedBorderColor,
                              ),
                            ],
                          ),
                          focusedPinTheme: defaultPinTheme.copyWith(
                            decoration: defaultPinTheme.decoration!.copyWith(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: focusedBorderColor),
                            ),
                          ),
                          submittedPinTheme: defaultPinTheme.copyWith(
                            decoration: defaultPinTheme.decoration!.copyWith(
                              color: fillColor,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: focusedBorderColor),
                            ),
                          ),
                          errorPinTheme: defaultPinTheme.copyBorderWith(
                            border: Border.all(color: Colors.redAccent),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              kbox40(),
              Center(
                child: InkWell(
                  onTap: () {
                    Get.to(const BottomNavigationView());
                  },
                  child: Container(
                    width: 270.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xff2ED297)),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Choose City",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // const Padding(
              //   padding: EdgeInsets.all(25.0),
              //   child: Text(
              //     "By clicking on “Continue” you are agreeing to our terms of use ",
              //     style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 17,
              //       fontWeight: FontWeight.w500,
              //     ),
              //   ),
              // ),
            ])),
      ),
    );
  }

  List citys = ["banglore", "Hyderabad", "Pune", "Mumbai", "Noida", "delhi"];
}
