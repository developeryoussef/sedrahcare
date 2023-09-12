// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sedrahcare/controllers/adversecontroller.dart';
import 'package:sedrahcare/core/colors.dart';

import '../../controllers/onboardingcontroller.dart';
import '../../data/static/adverselist.dart';
import '../../data/static/onboardingdata.dart';

class CustomSliderAdverse extends StatelessWidget {
  const CustomSliderAdverse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AdverseControllerImp>(
      init: AdverseControllerImp(),
      builder: (controller) {
        return PageView.builder(
          physics: BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.normal,
          ),
          controller: controller.pageController,
          onPageChanged: (val) {
            controller.onPageChanged(val);
          },
          itemCount: adverseList.length,
          itemBuilder: (context, i) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(adverseList[i].title.toString(),
                            style: TextStyle(
                                fontFamily: 'ArbFONTS',
                                color: mainBlack.withOpacity(.85),
                                fontSize: 14,
                                fontWeight: FontWeight.w600)),
                        Text(adverseList[i].body.toString(),
                            style: TextStyle(
                                fontFamily: 'ArbFONTS',
                                color: mainBlack.withOpacity(.8),
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: opacitiedMainColor,
                    backgroundImage: AssetImage(
                      adverseList[i].image.toString(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
