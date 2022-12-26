import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vipin_final/core/route_constant.dart';
import 'package:vipin_final/feature/verify/controller/verify_controller.dart';
import 'package:flutter/services.dart';

class VerifyView extends GetView< VerifyController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(

        title: Text('VERIFY'),
      ),

      body: SingleChildScrollView(
        child: Center(
         child: Form(
           child: Column(
           children: [
             Padding(padding: EdgeInsets.only(
                 top: 20.0)),
             Text('VERIFY',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
             Padding(padding: EdgeInsets.only(
                 top: 10.0)),
             Text('We have sent an OTP to the Entered Mobile Number',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),

             Padding(padding: EdgeInsets.only(
                 top: 100.0)),












               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   SizedBox(
                     height: 68,
                     width: 64,
                     child: TextFormField(
                       onChanged: (value){
                         if(value.length== 1){
                           FocusScope.of(context).nextFocus();

                         }


                       },
                       onSaved: (pin1){},
                       decoration: const InputDecoration(hintText: '0'),

                       style: Theme.of(context).textTheme.headline6,
                       keyboardType: TextInputType.number,
                       textAlign: TextAlign.center,
                       inputFormatters: [
                         LengthLimitingTextInputFormatter(1),
                         FilteringTextInputFormatter.digitsOnly,

                       ],
                     ),

                   ),


                   SizedBox(
                     height: 68,
                     width: 64,
                     child: TextFormField(

                       onChanged: (value){
                         if(value.length== 1){
                           FocusScope.of(context).nextFocus();

                         }
                         },

                       onSaved: (pin2){},
                       decoration: const InputDecoration(hintText: '0'),

                       style: Theme.of(context).textTheme.headline6,
                       keyboardType: TextInputType.number,
                       textAlign: TextAlign.center,
                       inputFormatters: [
                         LengthLimitingTextInputFormatter(1),
                         FilteringTextInputFormatter.digitsOnly,

                       ],
                     ),

                   ),



                   SizedBox(
                     height: 68,
                     width: 64,
                     child: TextFormField(

                       onChanged: (value){
                         if(value.length== 1){
                           FocusScope.of(context).nextFocus();

                         }


                       },
                       onSaved: (pin3){},
                       decoration: const InputDecoration(hintText: '0'),

                       style: Theme.of(context).textTheme.headline6,
                       keyboardType: TextInputType.number,
                       textAlign: TextAlign.center,
                       inputFormatters: [
                         LengthLimitingTextInputFormatter(1),
                         FilteringTextInputFormatter.digitsOnly,

                       ],
                     ),

                   ),



                   SizedBox(
                     height: 68,
                     width: 64,
                     child: TextFormField(

                       onChanged: (value){
                         if(value.length== 1){
                           FocusScope.of(context).nextFocus();

                         }


                       },

                       onSaved: (pin4){},
                       decoration: const InputDecoration(hintText: '0'),


                       style: Theme.of(context).textTheme.headline6,
                       keyboardType: TextInputType.number,
                       textAlign: TextAlign.center,
                       inputFormatters: [
                         LengthLimitingTextInputFormatter(1),
                         FilteringTextInputFormatter.digitsOnly,

                       ],
                     ),

                   ),





                 ],


               ),

             Padding(padding: EdgeInsets.only(
                 top: 10.0)),

             TextButton(onPressed: (){}, child: Text('Resend OTP')),




             Padding(padding: EdgeInsets.only(
                 top: 100.0)),

             Container(
               width: 300,
               height: 50,
               child: ElevatedButton(

                   style:ElevatedButton.styleFrom(
                       backgroundColor: Colors.blueAccent
                   ) ,

                   onPressed: (){


                     Get.toNamed(RouteConstant.detail);



                   },
                   child:Row(

                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [

                         Text('Verify OTP',style: TextStyle(color: Colors.white,fontSize: 20),)])),
             ),




             ],
           ),
         ),

        ),
      ),





    );
  }




}