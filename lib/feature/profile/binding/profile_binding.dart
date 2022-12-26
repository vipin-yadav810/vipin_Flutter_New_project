import 'package:get/get.dart';
import 'package:vipin_final/feature/profile/controller/profile_controller.dart';


class ProfileBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    //Get.lazyPut(() => FetchupRepoImpl());
    Get.put(ProfileController());
  }





}