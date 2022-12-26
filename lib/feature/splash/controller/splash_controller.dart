import 'dart:async';
import 'package:vipin_final/core/globals.dart' as globals;
import 'package:get/get.dart';
import 'package:vipin_final/core/route_constant.dart';

class SplashController extends GetxController{


  @override
  void onReady() {
    Timer(const Duration(seconds: 3),
            () =>
        globals.autologin.value==false ? Get.offAllNamed(RouteConstant.onboarding) : Get.offAllNamed(RouteConstant.home)
    );
    super.onReady();
  }





}