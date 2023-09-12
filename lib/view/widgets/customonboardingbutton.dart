import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sedrahcare/core/colors.dart';

import '../../controllers/onboardingcontroller.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      width: Get.width - 50,
      decoration: BoxDecoration(
          color: seconderyColor, borderRadius: BorderRadius.circular(10)),
      height: 50,
      child: MaterialButton(
          textColor: Colors.white,
          onPressed: () {
            controller.next();
          },
          child: const Text(
            "التالي",
            style: TextStyle(
              fontFamily: 'ArbFONTS',
            ),
          )),
    );
  }
}
