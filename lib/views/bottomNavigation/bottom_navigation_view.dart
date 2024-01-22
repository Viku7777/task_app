import 'package:flutter/material.dart';
import 'package:mr_ambarisha_frontend_new/utils/app_colors.dart';
import 'package:mr_ambarisha_frontend_new/views/Basket/Basket.dart';
import 'package:mr_ambarisha_frontend_new/views/bottomNavigation/Categories.dart';
import 'package:mr_ambarisha_frontend_new/views/bottomNavigation/homePage.dart';

import '../menu/menu_screen.dart';
import '../wallet/wallet.dart';

class BottomNavigationView extends StatefulWidget {
  const BottomNavigationView({super.key});

  @override
  State<BottomNavigationView> createState() => _BottomNavigationViewState();
}

class _BottomNavigationViewState extends State<BottomNavigationView> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    HomePageview(),
    Categories(),
    Basket(),
    CustomBottomSheet(),
    Tab5(),
    MenuScreenView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: TextStyle(color: AppColors.ktextColor),
        elevation: 5,
        showUnselectedLabels: true,
        selectedFontSize: 14,
        iconSize: 30,
        unselectedItemColor: AppColors.ktextColor,
        selectedItemColor: AppColors.ktextColor,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/home.png"),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/category.png"),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/basket.png"),
            label: 'Basket',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/wallet.png"),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/offers.png"),
            label: 'offers',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/profile.png"),
            label: 'More',
          ),
        ],
      ),
    );
  }
}

class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Tab 1 Content'),
    );
  }
}

class Tab3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Tab 3 Content'),
    );
  }
}

class Tab4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Tab 4 Content'),
    );
  }
}

class Tab5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Tab 5 Content'),
    );
  }
}

class Tab6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Tab 5 Content'),
    );
  }
}
