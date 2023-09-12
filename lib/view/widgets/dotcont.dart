import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sedrahcare/core/colors.dart';

import '../../controllers/onboardingcontroller.dart';
import '../../data/static/onboardingdata.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBoardingList.length,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 5),
                          duration: const Duration(milliseconds: 900),
                          width: controller.currentPage == index ? 20 : 20,
                          height: controller.currentPage == index ? 20 : 8,
                          decoration: BoxDecoration(
                              color: controller.currentPage == index
                                  ? seconderyColor
                                  : mainColor,
                              borderRadius: BorderRadius.circular(15)),
                        ))
              ],
            ));
  }
}
