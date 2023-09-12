import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sedrahcare/controllers/adversecontroller.dart';
import 'package:sedrahcare/core/colors.dart';

import '../../data/static/adverselist.dart';

class CustomDotControllerAdverse extends StatelessWidget {
  const CustomDotControllerAdverse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AdverseControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    adverseList.length,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 5),
                          duration: const Duration(milliseconds: 900),
                          width: controller.currentPage == index ? 20 : 10,
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
