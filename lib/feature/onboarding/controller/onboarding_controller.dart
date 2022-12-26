import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vipin_final/core/model/onbording.dart';
import 'package:vipin_final/core/route_constant.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get Lastscreen => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  Nextscreen() {
    if (Lastscreen) {
      Get.toNamed(RouteConstant.home);
    } else
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<Onboardingpages> onboardingPages = [
    Onboardingpages('image/Onboarding1.jpg',
        'PLANNING',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
    Onboardingpages('image/Onboarding2.jpg',
        'STARTUP',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
    Onboardingpages('image/Onboarding3.jpg',
        'SUCCESS',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry')
  ];
}