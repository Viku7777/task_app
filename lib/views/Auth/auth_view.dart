import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mr_ambarisha_frontend_new/utils/app_colors.dart';
import 'package:mr_ambarisha_frontend_new/views/Auth/widgets/login_form.dart';
import 'package:mr_ambarisha_frontend_new/views/Auth/widgets/signup_form.dart';

import '../../utils/constant_box.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<AuthView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themeColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
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
                        SizedBox(
                            height: 80, child: Image.asset("assets/logo.png")),
                        kboxw30(),
                      ],
                    ),
                    SizedBox(
                        height: 230.h,
                        child: Image.asset("assets/signup_image.png")),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      height: 220.h,
                      // width: 270.w,
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          TabBar(
                            indicatorWeight: 3,
                            indicatorColor: const Color(0xff2ED297),
                            unselectedLabelColor: Colors.grey,
                            labelColor: Colors.black,
                            labelStyle: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                            controller: _tabController,
                            tabs: const [
                              Tab(text: 'Sign Up'),
                              Tab(text: 'Sign In'),
                            ],
                          ),
                          Container(
                            child: Expanded(
                              child: TabBarView(
                                controller: _tabController,
                                children: const [
                                  SignupForm(),
                                  LoginForm(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    kbox20(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          // Wrap the Text widget in Flexible
                          child: Container(
                            width: 100,
                            height: 1,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          " Or sign up with ",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                        Flexible(
                          // Wrap the Text widget in Flexible
                          child: Container(
                            width: 100,
                            height: 1,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    kbox10(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Center(
                                child: Image.asset("assets/googlelogo.png")),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Center(
                                child: Image.asset("assets/apple_logo.png")),
                          ),
                        )
                      ],
                    ),
                    kbox10(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          " Not register yet ?",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          " Create Account ",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
