import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';




class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(onTap: () {
          Get.back();
        },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Transaction History",
          style: TextStyle(color: AppColors.black),
        ),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
           Container(height: Get.height-200,
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
                          style: const TextStyle(color: AppColors.black),
                        ),
                        subtitle: const Text(
                          "6 Days ago",
                          style: TextStyle(color: Colors.black45),
                        ),
                        trailing: Text(
                          index % 2 == 0 ? "+₹500" : "-₹150",
                          style: const TextStyle(
                              color: AppColors.ktextColor,
                              fontWeight: FontWeight.w600),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(
                          color: AppColors.ktextColor,
                        ),
                    itemCount: 10),
              )
        ]),
      ),
    );
  }
}