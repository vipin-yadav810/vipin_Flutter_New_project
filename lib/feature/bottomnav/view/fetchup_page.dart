import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vipin_final/feature/attendence/view/att_view.dart';
import 'package:vipin_final/feature/bottomnav/controller/fetchup_controller.dart';
import 'package:vipin_final/feature/home2/view/home2_page.dart';
import 'package:vipin_final/feature/profile/view/profile_page.dart';
import 'package:vipin_final/feature/setting/view/setting_view.dart';



class FetchupView extends GetView<FetchupController> {
  FetchupView({super.key});

  FetchupController bottomNavigationController = Get.put( FetchupController());

  final screens = [
    Home2Page(),
    AttView(),
    ProfilePage(),
    SettingView()

  ];

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Obx(
            ()=> IndexedStack(
          index: controller.selectedIndex.value,
          children: screens,
        ),),
      bottomNavigationBar: Obx(()=> BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (index){
          controller.changeIndex(index);
        },
        currentIndex: controller.selectedIndex.value,
        items: [
          BottomNavigationBarItem(

            icon: Icon(Icons.house_outlined,),
            label:'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page_sharp,),
            label: "Attendence",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_sharp,),
            label: "Profile",
          ),


          BottomNavigationBarItem(

            icon: Icon(Icons.settings,),
            label:'Setting',
          ),




        ],
      ),
      ),
    );


  }

}