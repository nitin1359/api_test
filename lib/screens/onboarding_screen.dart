import 'package:api_test/controllers/onboarding_controller.dart';
import 'package:api_test/screens/login_screen.dart';
import 'package:api_test/screens/signup_screen.dart';
import 'package:api_test/utils/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  final OnboardingController controller = Get.put(OnboardingController());

  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Obx(
              () {
                final page = controller.pages[controller.currentPage.value];
                return Container(
                  color: page.bgColor,
                  child: Column(
                    children: [
                      const SizedBox(height: 36),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.5 - 19,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Image.asset(
                            page.imageAsset,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.5,
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(52),
                  topRight: Radius.circular(52),
                ),
              ),
              child: Obx(
                () {
                  final page = controller.pages[controller.currentPage.value];

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 31),
                        customText(
                            text: page.title,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontColor: const Color(0xff000000)),
                        const SizedBox(height: 40),
                        SizedBox(
                          height: 108,
                          child: customText(
                            text: page.description,
                            fontSize: 14,
                            fontColor: const Color(0xff261C12),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Obx(
                          () => Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              controller.pages.length,
                              (index) => AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                width: controller.currentPage.value == index
                                    ? 16.33
                                    : 7,
                                height: 7,
                                decoration: BoxDecoration(
                                  color: const Color(0xff261C12),
                                  borderRadius: BorderRadius.circular(46),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: page.buttonColor,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32, vertical: 16),
                          ),
                          onPressed: () => Get.to(() => SignupScreen()),
                          child: customText(
                            text: 'Join the movement!',
                            fontSize: 18,
                            fontColor: const Color(0xffFFFFFF),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextButton(
                          child: Text(
                            'Login',
                            style: GoogleFonts.beVietnamPro(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff261C12),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          onPressed: () => Get.to(() => LoginScreen()),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
