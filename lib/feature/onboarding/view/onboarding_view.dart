import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vipin_final/core/route_constant.dart';
import 'package:vipin_final/feature/onboarding/controller/onboarding_controller.dart';
class OnboardingView extends GetView<OnboardingController> {
  final controller = OnboardingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              controller: controller.pageController,
              onPageChanged: controller.selectedPageIndex,
              itemCount: controller.onboardingPages.length,
              itemBuilder: (context, index) {
                return Container(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Image.asset(
                          controller.onboardingPages[index].imageAsset),
                      
                      Text(
                        controller.onboardingPages[index].title,
                        style: TextStyle(
                            fontSize: 52, fontWeight: FontWeight.bold,color: Colors.lightGreen),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50.0),
                        child: Text(
                          controller.onboardingPages[index].description,
                          textAlign: TextAlign.center,

                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                );
              }),
          Positioned(
            bottom: 10,
            left: 150,
            child: Row(
              children: List.generate(
                controller.onboardingPages.length,
                    (index) => Obx(() {
                  return Container(
                    margin: const EdgeInsets.all(4),
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: controller.selectedPageIndex.value == index
                          ? Colors.yellow
                          : Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  );
                }),
              ),
            ),
          ),
          Positioned(
            right: 80,
            bottom: 40,

            child: Container(
              width: 200,
              child: FloatingActionButton(

                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                elevation: 0,
                onPressed: controller. Nextscreen,
                child: Obx(() {
                  return Text(controller.Lastscreen ? 'Next' : 'Next');
                }),
              ),
            ),
          ),

          Positioned(
            right: 20,
            top: 40,
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                padding: const EdgeInsets.all(15.0),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {  Get.toNamed(RouteConstant.home);},
              child: const Text('Skip >'),
            ),

          ),



        ],
      ),
    );
  }
}