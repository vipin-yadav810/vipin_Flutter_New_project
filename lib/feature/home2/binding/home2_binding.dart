import 'package:get/get.dart';
import 'package:vipin_final/feature/home2/controller/home2_controller.dart';


class Home2Bindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    // Get.lazyPut(()=>FetchupRepoImpl());
    // Get.lazyPut(()=>DeleteRepoImpl());
    Get.put( Home2Controller());
  }

}