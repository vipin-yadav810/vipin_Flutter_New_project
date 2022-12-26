import 'package:get/get.dart';
import 'package:vipin_final/core/repository/signupRepo/signup_repo_impl.dart';
import 'package:vipin_final/feature/Details/controller/detail_controller.dart';

class DetailBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(SignupRepoImpl());
    Get.lazyPut(()=>DetailController());
  }





}