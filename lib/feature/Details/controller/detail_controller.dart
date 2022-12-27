import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vipin_final/core/repository/signupRepo/signup_repo_impl.dart';
import 'package:vipin_final/core/route_constant.dart';

class DetailController extends GetxController{

  late TextEditingController name = TextEditingController();
  late TextEditingController emailId = TextEditingController();
  late TextEditingController  password= TextEditingController();
  late TextEditingController  phoneNumber = TextEditingController();




  final GlobalKey<FormState> LoginFormKey = GlobalKey<FormState>();

  SignupRepoImpl _signupRepo = Get.find<SignupRepoImpl>();

  DetailController(){
    _signupRepo = Get.find<SignupRepoImpl>();
  }




  signupAPI()async{
    var isvalide =LoginFormKey.currentState?.validate();

    if(isvalide==true){
      Get.toNamed(RouteConstant.login);
      final responce = await _signupRepo.signupAPI(name.text,emailId.text,password.text,phoneNumber.text);



      print("Response print");

    }else
    {
      Get.toNamed(RouteConstant.detail);



      print("Filled the Text Field ");}
  }




}