import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:vipin_final/feature/splash/controller/splash_controller.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    //Get.lazyPut(()=>DeleteRepoImpl());
    Get.put( SplashController());



  }





}