import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  bool _obscureText= false;
eye(){
  _obscureText=!_obscureText;
}
  GlobalKey<FormState> loginFormKey = new GlobalKey<FormState>();


  validation(){
    var isValid = loginFormKey.currentState?.validate();
    if (isValid!) {
      return null;
    } else {
      print ('Form Validation');
    }


  }










}