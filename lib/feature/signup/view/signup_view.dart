
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vipin_final/core/route_constant.dart';
import 'package:vipin_final/feature/signup/controller/signup_controller.dart';

class SignupView  extends GetView<SignupController>{

  final countryPicker = const FlCountryCodePicker();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),

      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(
                    top: 20.0)),
                  Text('CREATE ACCOUNT',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  Padding(padding: EdgeInsets.only(
                      top: 10.0)),
                  Text('ENTER YOUR PHONE NUMBER TO SEND OTP',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),

                  Padding(padding: EdgeInsets.only(
                      top: 100.0)),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          final code = await countryPicker.showPicker(context: context);
                          if (code != null)  print(code);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(Radius.circular(5.0))),
                          child: Text('+91',
                              style: const TextStyle(color: Colors.white)),
                        ),
                      ),




                      Container(
                        width:280,
                        child: TextFormField(

                            decoration: InputDecoration(

                                labelText: 'Enter Phone Number',
                                border: OutlineInputBorder()
                            ),
                            // controller: controller.userNameController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Phone Number is Required";
                              }

                            }
                        ),
                      ),
                    ],
                  ),

                  Padding(padding: EdgeInsets.only(
                      top: 120.0)),

              Container(
                width: 300,
                height: 50,
                child: ElevatedButton(

                    style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent
                    ) ,

                    onPressed: (){



                      Get.toNamed(RouteConstant.verify);


                    },
                    child:Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text('Send OTP',style: TextStyle(color: Colors.white,fontSize: 20),)])),
              ),

                Padding(padding: EdgeInsets.only(
                top: 20.0
              )),

                     Text('OR',style: TextStyle(color: Colors.black,fontSize: 20),),

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
                    height: 50,

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
            ],
          ),


        ),
      ),


    );
  }



}


