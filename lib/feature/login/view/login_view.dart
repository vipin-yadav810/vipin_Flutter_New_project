import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vipin_final/core/route_constant.dart';
import 'package:vipin_final/feature/login/controller/login_controller.dart';
class LoginView extends GetView<LoginController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    bool _obscureText= true;
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),


      ),
    body: SingleChildScrollView(
      child: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 250,
                child: Image.asset('image/home.png'),
              ),
              Form(
                key:controller.loginFormKey,
                child: Column(
                  children: [
                    Container(
                      width: 330,
                      child: TextFormField(

                          decoration: InputDecoration(
                              labelText: 'Enter Email Id/Phone Number',
                              border: OutlineInputBorder()
                          ),
                         // controller: controller.userNameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Email/Phone Number is Required";
                            }

                          }
                      ),
                    ),


              Padding(padding: EdgeInsets.only(
                  top: 30.0
              )),


              Container(
                width: 330,
                child: TextFormField(
                  obscureText: _obscureText,

                    decoration: InputDecoration(
                        suffixIcon:GestureDetector(onTap: (){
                          controller.eye();

                          },
                        child: Icon(_obscureText ?Icons.visibility : Icons.visibility_off),


                        ),
                        labelText: 'Enter Password',
                        border: OutlineInputBorder()
                    ),
                    //controller: controller.PasswordController,
                    validator: (value){
                      if(value==null || value==""){
                        return "Password is Required";
                      }
                    }
                ),
              ),
                ],
              ),
              ),
              Padding(padding: EdgeInsets.only(
                  top: 10.0
              )),

             Container(
               margin: EdgeInsets.only(left: 200),
               child: Text('Forgot Password',style: TextStyle(color: Colors.blueAccent),),

             ),
              Container(
                height: 60,
                width: 300,
                child: ElevatedButton(



                    style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,


                    ) ,

                    onPressed: (){

                      Get.toNamed(RouteConstant.nav);

                     //controller.validation();
                    },
                    child:Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text('Login',style: TextStyle(color: Colors.white,fontSize: 20),),

                        ])),
              ),

              Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('create an account?'),
                    TextButton(onPressed: (){

                      Get.toNamed(RouteConstant.signup);

                    }, child:Text('Sign Up',style: TextStyle(color: Colors.blueAccent),))
                    
                    
                  ],
                  
                  
                ),
              ),




            ],
          ),

        ),


      ),
    ),




    );
  }





}