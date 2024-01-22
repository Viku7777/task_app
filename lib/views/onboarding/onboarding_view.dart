import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_ambarisha_frontend_new/utils/constant_box.dart';
import 'package:mr_ambarisha_frontend_new/views/onboarding/pnonboarding1.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  int count = 0;

  final List<Widget> _pages = [
    const IntroPage(
      imageUrl: 'assets/on1.png',
      title: 'Buy Groceries Easily ',
      title2: 'with Us',
      description: 'organic fresh /Grocery/Daily Essential   ',
      description1: 'vegetables/ Milk /every Morning',
    ),
    const IntroPage(
      imageUrl: 'assets/onb2.png',
      title: 'We Deliver Grocery',
      title2: 'at Your Doorstep',
      description: 'Shop our selection of organic fresh',
      description1: 'vegetables in a discounted price.',
    ),
    const IntroPage(
      imageUrl: 'assets/onb3.png',
      title: 'All Your Kitchen Needs',
      title2: 'are Here',
      description: 'Tap the "Get Started" button to begin.',
      description1: 'vegetables in a discounted price.',
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  void _onGetStartedButtonPressed() {
    // Implement your action here, e.g., navigation to the home screen.
    print('Get Started button pressed.');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              kbox10(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  count == 2
                      ? const Text("")
                      : InkWell(
                          onTap: () {
                            Get.to(const PnOnboarding1View());
                          },
                          child: const Text(
                            "Skip",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                  kboxw20()
                ],
              ),
              Container(
                height: Get.height - 200,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _pages.length,
                  onPageChanged: _onPageChanged,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        kbox40(),
                        _pages[index],
                      ],
                    );
                  },
                ),
              ),

              InkWell(
                onTap: () {
                  setState(() {
                    count++;
                  });
                  if (count == 3) {
                    Get.to(const PnOnboarding1View());
                  }
                  _pageController.nextPage(
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeIn);
                },
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xff2ED297), shape: BoxShape.circle),
                  child: const Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
              // Positioned(
              //   bottom: 20.0,
              //   left: 20.0,
              //   right: 20.0,
              //   child: ElevatedButton(
              //     onPressed: _onGetStartedButtonPressed,
              //     child: const Text('Get Started'),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < _pages.length; i++) {
      indicators.add(
        Container(
          width: 10.0,
          height: 10.0,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == i ? Colors.blue : Colors.grey,
          ),
        ),
      );
    }
    return indicators;
  }
}

class IntroPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String title2;
  final String description;
  final String description1;

  const IntroPage({
    required this.imageUrl,
    required this.title,
    required this.title2,
    required this.description,
    required this.description1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            height: 300,
          ),
          const SizedBox(height: 20.0),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            title2,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
          Text(
            description1,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
