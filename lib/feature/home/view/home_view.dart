import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vipin_final/core/route_constant.dart';
import 'package:vipin_final/feature/home/controller/home_controller.dart';

class HomeView extends GetView<HomeController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(


      ),
    body: SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right:150 ),
              child: Text('WELCOME',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            Container(
              height: 300,
              child: Image.asset('image/home.png'),
            ),



            Padding(padding: EdgeInsets.only(
                top: 80.0
            )),

            Container(
              height: 60,
              width: 300,
              child: ElevatedButton(

                  style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent
                  ) ,

                  onPressed: (){
                    Get.toNamed(RouteConstant.login);

                  },
                  child:Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text('Login',style: TextStyle(color: Colors.white,fontSize: 20),)])),
            ),
            Padding(padding: EdgeInsets.only(
                top: 20.0
            )),
            Container(
              height: 60,
              width: 300,
              child: OutlinedButton(
                  style:OutlinedButton.styleFrom(

                      side: BorderSide(color: Colors.blueAccent,width: 2, style:BorderStyle.solid )

                  ) ,
                  onPressed: (){

                    Get.toNamed(RouteConstant.signup);


                  },
                  child:Container(
                    height: 40,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text('Sign Up',style: TextStyle(color:Colors.blueAccent,fontSize: 20 ),),
                      ],
                    ),


                  )


              ),
            ),









          ],


        ),



      ),
    ),



    );
  }

}