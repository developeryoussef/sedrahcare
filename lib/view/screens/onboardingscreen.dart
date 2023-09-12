import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sedrahcare/core/colors.dart';

import '../../controllers/onboardingcontroller.dart';
import '../widgets/customonboardingbutton.dart';
import '../widgets/customslider.dart';
import '../widgets/dotcont.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        backgroundColor: mainLightColor,
        body: SafeArea(
          child: Column(children: [
            const Expanded(
              flex: 4,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    CustomDotControllerOnBoarding(),
                    Spacer(flex: 2),
                    CustomButtonOnBoarding()
                  ],
                ))
          ]),
        ));
  }
}
