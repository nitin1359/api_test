import 'package:api_test/screens/home_screen.dart';
import 'package:api_test/screens/onboarding_screen.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var isLoggedIn = false.obs;

  void login(String email, String password) {
    isLoggedIn.value = true;
    Get.off(() => HomeScreen());
  }

  void signup(String email, String password) {
    isLoggedIn.value = true;
    Get.off(() => HomeScreen());
  }

  void logout() {
    isLoggedIn.value = false;
    Get.offAll(() => OnboardingScreen());
  }
}
