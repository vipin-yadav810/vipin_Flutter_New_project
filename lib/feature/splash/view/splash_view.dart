import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:vipin_final/feature/splash/controller/splash_controller.dart';



class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SplashController(),
        builder: (dynamic _) => Scaffold(
          backgroundColor: Colors.lightBlue,
          body: Center(

            child: Text('WELCOME',style: TextStyle(fontSize: 70,fontWeight: FontWeight.bold),),
          ),
        )
    );
  }
}