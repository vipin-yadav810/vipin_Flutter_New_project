import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'feature/login/controller/login_controller.dart';

class ShareFile extends GetView<LoginController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Form(

            child: Column(
              children: [

                   TextFormField(
                    controller: controller.share,

                  ),
                    SizedBox(height: 30,),
                    ElevatedButton(onPressed: (){
                      controller.sharetext();

                      }
                    , child: Text("share")),




              ],
            ),
          ),
        ),
      ),

    );
  }
}




// SignupResponse ["response"];