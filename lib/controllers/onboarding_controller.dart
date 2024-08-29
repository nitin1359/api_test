import 'package:api_test/models/onboarding_page_model.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class OnboardingController extends GetxController {
  var currentPage = 0.obs;

  final List<OnboardingPageModel> pages = [
    OnboardingPageModel(
      title: 'Quality',
      description:
          'Sell your farm fresh products directly to consumers, cutting out the middleman and reducing emissions of the global supply chain.',
      imageAsset: 'assets/images/onboarding1.png',
      bgColor: Colors.green,
      buttonColor: Colors.green.shade700,
    ),
    OnboardingPageModel(
      title: 'Convenient',
      description:
          'Our team of delivery drivers will make sure your orders are picked up on time and promptly delivered to your customers.',
      imageAsset: 'assets/images/onboarding2.png',
      bgColor: Colors.orange,
      buttonColor: Colors.orange.shade700,
    ),
    OnboardingPageModel(
      title: 'Local',
      description:
          'We love the earth and know you do too! Join us in reducing our local carbon footprint one order at a time.',
      imageAsset: 'assets/images/onboarding3.png',
      bgColor: Colors.yellow,
      buttonColor: Colors.yellow.shade700,
    ),
  ];

  void nextPage() {
    if (currentPage.value < pages.length - 1) {
      currentPage.value++;
    }
  }
}
