import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mr_ambarisha_frontend_new/utils/app_colors.dart';

import '../../utils/constant_box.dart';
import 'history_view.dart';

class TransactionView extends StatelessWidget {
  const TransactionView({super.key});

  @override
  Widget build(BuildContext context) {
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
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            Text(
              "Total Balance ",
              style: TextStyle(color: AppColors.darkblue, fontSize: 20),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: AppColors.ktextColor,
              size: 30,
            )
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "₹ 9,890",
              style: TextStyle(color: Color(0xff00829E), fontSize: 16),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      // Get.to(const AddMoneyView());
                    },
                    child: Container(
                      height: 40.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          color: const Color(0xff86C649),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: const Color(0xff86C649),
                          )),
                      child: const Center(
                          child: Text(
                        "Add Money",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(const HistoryView());
                    },
                    child: Container(
                      height: 40.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          color: const Color(0xff86C649),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: const Color(0xff86C649),
                          )),
                      child: const Center(
                          child: Text(
                        "History",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ],
              ),
              kbox10(),
              const Divider(
                color: AppColors.ktextColor,
              ),
              kbox10(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Transaction History",
                  style: TextStyle(color: AppColors.darkblue, fontSize: 20),
                ),
              ),
              kbox10(),
              SizedBox(
                height: Get.height - 200,
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    physics: const AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                          title: Text(
                            index % 2 == 0
                                ? "Added From Bank Account"
                                : "Transfer to Micheal",
                            style: const TextStyle(color: AppColors.darkblue),
                          ),
                          subtitle: Row(
                            children: [
                              const Text(
                                "DD/MM\n/YYYY",
                                style: TextStyle(color: Colors.black45),
                              ),
                              kboxw20(),
                              const Text(
                                "10:3\n0AM",
                                style: TextStyle(color: Colors.black45),
                              ),
                            ],
                          ),
                          trailing: index % 2 == 0
                              ? const Text(
                                  "+₹500",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w600),
                                )
                              : const Text(
                                  "-₹150",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w600),
                                ));
                    },
                    separatorBuilder: (context, index) => const Divider(
                          color: AppColors.ktextColor,
                        ),
                    itemCount: 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}
