import 'package:get/get.dart';
import 'package:vipin_final/feature/attendence/controller/att_controller.dart';
import 'package:vipin_final/feature/bottomnav/controller/fetchup_controller.dart';
import 'package:vipin_final/feature/home2/controller/home2_controller.dart';
import 'package:vipin_final/feature/profile/controller/profile_controller.dart';
import 'package:vipin_final/feature/setting/controller/setting_controller.dart';


class FetchupBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    // Get.lazyPut(() => DateRepoImpl());
    // Get.lazyPut(() => DeleteRepoImpl());
    // Get.lazyPut(() => FetchupRepoImpl());
    Get.put(FetchupController());
    Get.put( Home2Controller());
    Get.put( AttController());
    Get.put( ProfileController());
    Get.put( SettingController());

  }




}