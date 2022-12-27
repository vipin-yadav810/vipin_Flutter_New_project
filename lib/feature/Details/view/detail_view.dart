import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vipin_final/feature/Details/controller/detail_controller.dart';

class DetailView extends GetView<DetailController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
             title: Text('detail page'),

      ),



      body: SingleChildScrollView(
        child: Center(

          child: Column(
            children: [



               Form(
                key: controller.LoginFormKey,
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(
                        top: 40.0)),

                Text('Enter Detail',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),




                    Padding(padding: EdgeInsets.only(
                        top: 50.0)),






                    TextFormField(
                        controller: controller.name,
                        decoration: InputDecoration(
                            labelText: 'Enter your Name',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue, style: BorderStyle.solid)
                            )
                        ),
                        validator: (value) {
                          if (value == null || value == '') {
                            return "Name is Required";
                          }
                        }


                    ),

                    Padding(padding: EdgeInsets.only(
                        top: 20.0)),

                    TextFormField(
                        controller: controller.emailId,
                        decoration: InputDecoration(
                            labelText: 'Enter Your Email',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue, style: BorderStyle.solid)
                            )
                        ),
                        validator: (value) {
                          if (value == null || value == '') {
                            return "Email is Required";
                          }
                        }


                    ),

                    Padding(padding: EdgeInsets.only(
                        top: 20.0)),

                    TextFormField(
                        obscureText:true,
                        controller: controller.password,
                        decoration: InputDecoration(
                            labelText: 'Enter Your password',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue, style: BorderStyle.solid)
                            )
                        ),
                        validator: (value) {
                          if (value == null || value == '') {
                            return "password is Required";
                          }
                        }


                    ),

                    Padding(padding: EdgeInsets.only(
                        top: 20.0)),

                    TextFormField(
                        controller: controller.phoneNumber,
                        obscureText:true,
                        decoration: InputDecoration(
                            labelText: 'Enter Your PhoneNumber',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue, style: BorderStyle.solid)
                            )
                        ),
                        validator: (value) {
                          if (value == null || value == '') {
                            return "Enter your PhoneNumber";
                          }
                        }


                    ),


                    Padding(padding: EdgeInsets.only(top: 50)),


                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),

                      onPressed: () {

                        controller.signupAPI();



                      },

                      child: Container(
                        height: 60,
                        width: 300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Submit'),
                          ],
                        ),
                      ),
                    ),





                  ],
                ),
              ),




            ],



          ),


        ),
      ),

    );
  }




}