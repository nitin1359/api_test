import 'package:api_test/controllers/auth_controller.dart';
import 'package:api_test/screens/signup_screen.dart';
import 'package:api_test/utils/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final AuthController authController = Get.find();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 36),
            customText(
              text: 'FarmerEats',
              fontColor: const Color(0xff000000),
            ),
            const SizedBox(height: 90),
            customText(
              text: 'Welcome back!',
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                customText(
                  text: 'New here?',
                  fontColor: const Color(0xff000000).withOpacity(0.3),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                TextButton(
                  onPressed: () => Get.to(() => SignupScreen()),
                  child: customText(
                    text: 'Create account',
                    fontColor: const Color(0xffD5715B),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 72),
          ],
        ),
      ),
    );
  }
}
