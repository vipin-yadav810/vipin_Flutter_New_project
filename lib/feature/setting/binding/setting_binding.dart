import 'package:get/get.dart';
import 'package:vipin_final/feature/setting/controller/setting_controller.dart';

class SettingBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.put(SettingController());

  }




}