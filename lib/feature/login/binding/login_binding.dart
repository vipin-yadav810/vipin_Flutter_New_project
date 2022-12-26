import 'package:get/get.dart';
import 'package:vipin_final/feature/login/controller/login_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(LoginController());
  }




}