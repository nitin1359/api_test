import 'package:api_test/models/onboarding_page_model.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class OnboardingController extends GetxController {
  var currentPage = 0.obs;
  late Timer _timer;

  final List<OnboardingPageModel> pages = [
    OnboardingPageModel(
      title: 'Quality',
      description:
          'Sell your farm fresh products directly to consumers, cutting out the middleman and reducing emissions of the global supply chain.',
      imageAsset: 'assets/images/onboarding1.png',
      bgColor: const Color(0xff5EA25F),
      buttonColor: const Color(0xff5EA25F),
    ),
    OnboardingPageModel(
      title: 'Convenient',
      description:
          'Our team of delivery drivers will make sure your orders are picked up on time and promptly delivered to your customers.',
      imageAsset: 'assets/images/onboarding2.png',
      bgColor: const Color(0xffD5715B),
      buttonColor: const Color(0xffD5715B),
    ),
    OnboardingPageModel(
      title: 'Local',
      description:
          'We love the earth and know you do too! Join us in reducing our local carbon footprint one order at a time.',
      imageAsset: 'assets/images/onboarding3.png',
      bgColor: const Color(0xffF8C569),
      buttonColor: const Color(0xffF8C569),
    ),
  ];

  @override
  void onInit() {
    super.onInit();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      nextPage();
    });
  }

  void nextPage() {
    if (currentPage.value < pages.length - 1) {
      currentPage.value++;
    } else {
      currentPage.value = 0; // Reset to the first page
    }
  }

  @override
  void onClose() {
    _timer.cancel();
    super.onClose();
  }
}
