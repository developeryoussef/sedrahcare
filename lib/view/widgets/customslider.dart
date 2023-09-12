// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sedrahcare/core/colors.dart';

import '../../controllers/onboardingcontroller.dart';
import '../../data/static/onboardingdata.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        physics: BouncingScrollPhysics(
          decelerationRate: ScrollDecelerationRate.normal,
        ),
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset(
                    onBoardingList[i].image!,
                    width: 250,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(onBoardingList[i].title!,
                    style: TextStyle(
                        fontFamily: 'ArbFONTS',
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
                const SizedBox(height: 10),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onBoardingList[i].body!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'ArbFONTS',
                          fontSize: 20,
                          color: mainBlack),
                    )),
              ],
            ));
  }
}
