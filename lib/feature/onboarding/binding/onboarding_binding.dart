import 'package:get/get.dart';
import 'package:vipin_final/feature/onboarding/controller/onboarding_controller.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(  OnboardingController());
  }
}