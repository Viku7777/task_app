import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class MainBanner extends StatelessWidget {
  const MainBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorRadius: 5,

      /// Width of the [ImageSlideshow].
      width: double.infinity,

      /// Height of the [ImageSlideshow].
      height: 150,

      /// The page to show when first creating the [ImageSlideshow].
      initialPage: 0,

      /// The color to paint the indicator.
      indicatorColor: Colors.blue,

      /// The color to paint behind th indicator.
      indicatorBackgroundColor: Colors.grey,

      /// Called whenever the page in the center of the viewport changes.
      onPageChanged: (value) {
        print('Page changed: $value');
      },

      /// Auto scroll interval.
      /// Do not auto scroll with null or 0.
      autoPlayInterval: 3000,

      /// Loops back to first slide.
      isLoop: true,

      /// The widgets to display in the [ImageSlideshow].
      /// Add the sample image file into the images folder
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/banner.png',
            fit: BoxFit.cover,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/banner.png',
            fit: BoxFit.cover,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/banner.png',
            fit: BoxFit.cover,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/banner.png',
            fit: BoxFit.cover,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/banner.png',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
