import 'package:api_test/controllers/auth_controller.dart';
import 'package:api_test/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Api Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.beVietnamProTextTheme(),
      ),
      home: OnboardingScreen(),
      initialBinding: BindingsBuilder(() {
        Get.put(AuthController());
      }),
    );
  }
}
