import 'package:get/get.dart';
import 'package:vipin_final/feature/verify/controller/verify_controller.dart';

class VerifyBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(VerifyController());
  }





}