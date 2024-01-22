import 'package:flutter/material.dart';
import 'package:mr_ambarisha_frontend_new/views/Basket/Basket.dart';

import '../Categories.dart';

class ExploreCategoryView extends StatelessWidget {
  ExploreCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisExtent: 100,
        childAspectRatio: 2 / 3.7,
      ),
      itemCount: shopbycategory.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Categories()));
          },
          child: Column(
            children: [
              Image.asset(shopbycategory[index]),
              const SizedBox(height: 10),
              Text(
                shopbycategorytext[index],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  List shopbycategory = [
    "assets/gerocery1.png",
    "assets/gerocery2.png",
    "assets/milk.png",
    "assets/personlcare.png",
    "assets/milk.png",
    "assets/gerocery1.png",
    "assets/gerocery2.png",
    "assets/milk.png",
    "assets/personlcare.png",
    "assets/milk.png",
    "assets/gerocery1.png",
    "assets/gerocery2.png",
    "assets/milk.png",
    "assets/personlcare.png",
    "assets/milk.png",
  ];
  List shopbycategorytext = [
    "Grocery",
    "Frozen\nFood",
    "Vegetables",
    "Personal\nCare",
    "Milk",
    "Grocery",
    "Frozen\nFood",
    "Vegetables",
    "Personal\nCare",
    "Milk",
    "Grocery",
    "Frozen\nFood",
    "Vegetables",
    "Personal\nCare",
    "Milk",
  ];
}
