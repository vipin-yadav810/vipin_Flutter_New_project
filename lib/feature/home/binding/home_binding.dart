import 'package:get/get.dart';
import 'package:vipin_final/feature/home/controller/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(HomeController());
  }




}