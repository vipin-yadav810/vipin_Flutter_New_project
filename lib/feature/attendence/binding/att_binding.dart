import 'package:get/get.dart';
import 'package:vipin_final/feature/attendence/controller/att_controller.dart';

class AttBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(AttController());
  }




}